#import "HSONMultiSceneApply.h"
#import "HSONFeatureBridge.h"
#import "HSONReplaceLayer.h"
#import <CoreImage/CoreImage.h>
#import <PhotosUI/PhotosUI.h>
#import <objc/message.h>
#import <UIKit/UIKit.h>

@interface HSONMultiSceneFlow : NSObject <PHPickerViewControllerDelegate>
@property (nonatomic, weak) UIViewController *reviewController;
@property (nonatomic, strong) id project;
@property (nonatomic, strong) id qrManager;
@property (nonatomic, strong) id previousQRDelegate;
@property (nonatomic, strong) UINavigationController *sceneNavigationController;
@property (nonatomic, weak) UIViewController *sceneEditor;
@property (nonatomic) NSUInteger firstScene;
@property (nonatomic) NSUInteger lastScene;
@property (nonatomic) NSUInteger currentScene;
@property (nonatomic) NSUInteger scenesCompleted;
@property (nonatomic) BOOL running;
- (void)waitForSceneMediaReadyAttempt:(NSUInteger)attempt;
@end

static HSONMultiSceneFlow *gMultiSceneFlow;

static NSString *HSONReadQRString(NSData *imageData) {
    UIImage *image = imageData.length ? [UIImage imageWithData:imageData] : nil;
    if (!image) return nil;
    // UIImage does not provide a CIImage constructor named imageWithImage:.
    // Prefer its CIImage backing when available, otherwise wrap its CGImage.
    CIImage *ciImage = image.CIImage;
    if (!ciImage && image.CGImage) {
        ciImage = [CIImage imageWithCGImage:image.CGImage];
    }
    if (!ciImage) return nil;
    CIDetector *detector = [CIDetector detectorOfType:CIDetectorTypeQRCode
                                               context:nil
                                               options:@{ CIDetectorAccuracy: CIDetectorAccuracyHigh }];
    for (CIFeature *feature in [detector featuresInImage:ciImage]) {
        if ([feature isKindOfClass:CIQRCodeFeature.class]) {
            NSString *message = ((CIQRCodeFeature *)feature).messageString;
            if (message.length) return message;
        }
    }
    return nil;
}

@implementation HSONMultiSceneFlow

- (void)beginWithReview:(UIViewController *)review project:(id)project sceneCount:(NSUInteger)sceneCount {
    self.reviewController = review;
    self.project = project;
    self.firstScene = 0;
    self.lastScene = sceneCount ? sceneCount - 1 : 0;
    self.currentScene = 0;
    self.scenesCompleted = 0;
    self.running = YES;

    self.qrManager = HSONCallObject0(NSClassFromString(@"QRCodeManager"), @"sharedInstance");
    if (!self.qrManager || !HSONResponds(self.qrManager, @"selectedCode:withImageData:")) {
        [self stopWithMessage:@"Không tìm thấy API QRCodeManager.selectedCode:withImageData: trong Video Star."];
        return;
    }
    self.previousQRDelegate = HSONValue(self.qrManager, @"delegate");

    HSONCallVoid0(review, @"showMergeScenes");
    [self presentSceneRangePrompt:sceneCount];
}

- (void)presentSceneRangePrompt:(NSUInteger)sceneCount {
    UIViewController *presenter = HSONTopViewController() ?: self.reviewController;
    if (!presenter || presenter.presentedViewController) {
        [self stopWithMessage:@"Không thể mở hộp chọn phạm vi scene lúc này."];
        return;
    }
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Multi Scene — H SON"
                                                                   message:[NSString stringWithFormat:@"Chọn phạm vi scene từ 1 đến %lu. Mỗi scene sẽ nhập một ảnh QR và một media.", (unsigned long)sceneCount]
                                                            preferredStyle:UIAlertControllerStyleAlert];
    [alert addTextFieldWithConfigurationHandler:^(UITextField *field) {
        field.placeholder = @"Scene bắt đầu";
        field.keyboardType = UIKeyboardTypeNumberPad;
        field.text = @"1";
    }];
    [alert addTextFieldWithConfigurationHandler:^(UITextField *field) {
        field.placeholder = @"Scene kết thúc";
        field.keyboardType = UIKeyboardTypeNumberPad;
        field.text = [NSString stringWithFormat:@"%lu", (unsigned long)sceneCount];
    }];
    [alert addAction:[UIAlertAction actionWithTitle:@"Hủy" style:UIAlertActionStyleCancel handler:^(__unused UIAlertAction *action) {
        [self cancelAndRestore];
    }]];
    [alert addAction:[UIAlertAction actionWithTitle:@"Bắt đầu" style:UIAlertActionStyleDefault handler:^(__unused UIAlertAction *action) {
        NSUInteger start = alert.textFields.firstObject.text.integerValue;
        NSUInteger end = alert.textFields.lastObject.text.integerValue;
        if (start < 1 || end < start || end > sceneCount) {
            [self stopWithMessage:@"Phạm vi scene không hợp lệ. Không có thao tác nào được áp dụng."];
            return;
        }
        self.firstScene = start - 1;
        self.lastScene = end - 1;
        self.currentScene = self.firstScene;
        [self openCurrentSceneEditor];
    }]];
    [presenter presentViewController:alert animated:YES completion:nil];
}

- (void)openCurrentSceneEditor {
    if (!self.running) return;
    if (self.currentScene > self.lastScene) { [self finishAllScenes]; return; }
    Class navClass = NSClassFromString(@"MultiLayerNavController");
    SEL initSEL = NSSelectorFromString(@"initWithProject:sceneIndex:");
    if (!navClass || ![navClass instancesRespondToSelector:initSEL]) {
        [self stopWithMessage:@"Không tìm thấy MultiLayerNavController.initWithProject:sceneIndex:. Không thể mở editor theo từng scene."];
        return;
    }
    id navObject = nil;
    @try {
        navObject = ((id (*)(id, SEL, id, NSUInteger))objc_msgSend)([navClass alloc], initSEL, self.project, self.currentScene);
    } @catch (NSException *exception) {
        [self stopWithMessage:[NSString stringWithFormat:@"Không mở được editor cho scene %lu: %@", (unsigned long)(self.currentScene + 1), exception.reason ?: @"unknown"]];
        return;
    }
    if (![navObject isKindOfClass:UINavigationController.class]) {
        [self stopWithMessage:@"MultiLayerNavController không trả về UINavigationController hợp lệ."];
        return;
    }
    self.sceneNavigationController = (UINavigationController *)navObject;
    UIViewController *presenter = HSONTopViewController() ?: self.reviewController;
    if (!presenter || presenter.presentedViewController) {
        [self stopWithMessage:@"Không thể trình bày editor scene kế tiếp."];
        return;
    }
    [presenter presentViewController:self.sceneNavigationController animated:YES completion:^{
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.55 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            if (!self.running) return;
            UIViewController *editor = self.sceneNavigationController.topViewController;
            if (![NSStringFromClass(editor.class) isEqualToString:@"MultiLayerWizEffectVC"]) {
                editor = HSONFindViewControllerNamed(@"MultiLayerWizEffectVC");
            }
            if (!editor) {
                [self stopWithMessage:[NSString stringWithFormat:@"Không tìm thấy MultiLayerWizEffectVC ở scene %lu.", (unsigned long)(self.currentScene + 1)]];
                return;
            }
            self.sceneEditor = editor;
            HSONCallVoid0(editor, @"showMultiLayer");
            [self presentCodeImagePickerForCurrentScene];
        });
    }];
}

- (void)presentCodeImagePickerForCurrentScene {
    if (!self.running) return;
    UIViewController *editor = self.sceneEditor;
    if (!editor || editor.presentedViewController) {
        [self stopWithMessage:@"Không thể mở trình chọn ảnh QR trong editor scene."];
        return;
    }
    PHPickerConfiguration *configuration = [[PHPickerConfiguration alloc] init];
    configuration.filter = PHPickerFilter.imagesFilter;
    configuration.selectionLimit = 1;
    PHPickerViewController *picker = [[PHPickerViewController alloc] initWithConfiguration:configuration];
    picker.delegate = self;
    [editor presentViewController:picker animated:YES completion:nil];
}

- (void)picker:(PHPickerViewController *)picker didFinishPicking:(NSArray<PHPickerResult *> *)results {
    if (!self.running) { [picker dismissViewControllerAnimated:YES completion:nil]; return; }
    PHPickerResult *result = results.firstObject;
    if (!result) {
        [picker dismissViewControllerAnimated:YES completion:^{ [self cancelAndRestore]; }];
        return;
    }
    NSItemProvider *provider = result.itemProvider;
    if (![provider hasItemConformingToTypeIdentifier:@"public.image"]) {
        [picker dismissViewControllerAnimated:YES completion:^{ [self stopWithMessage:@"Tệp đã chọn không phải ảnh."]; }];
        return;
    }
    [provider loadDataRepresentationForTypeIdentifier:@"public.image" completionHandler:^(NSData *data, NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [picker dismissViewControllerAnimated:YES completion:^{
                if (error || data.length == 0) {
                    [self stopWithMessage:@"Không đọc được ảnh QR đã chọn."];
                    return;
                }
                [self importCodeImageData:data];
            }];
        });
    }];
}

- (void)importCodeImageData:(NSData *)imageData {
    if (!self.running) return;
    NSString *code = HSONReadQRString(imageData);
    if (code.length == 0) {
        [self stopWithMessage:[NSString stringWithFormat:@"Không đọc được QR trong ảnh của scene %lu.", (unsigned long)(self.currentScene + 1)]];
        return;
    }
    UIViewController *review = self.reviewController;
    UIViewController *editor = self.sceneEditor;
    id validator = HSONResponds(review, @"validQRCheck:") ? review : (HSONResponds(editor, @"validQRCheck:") ? editor : nil);
    if (validator && !HSONCallBool1(validator, @"validQRCheck:", code, NO)) {
        [self stopWithMessage:@"Ảnh đã chọn không chứa code Video Star hợp lệ."];
        return;
    }
    if (!validator) HSONLog(@"QR validator selector unavailable; QR syntax was decoded but native validity is not independently verified");

    id manager = self.qrManager;
    SEL importSEL = NSSelectorFromString(@"selectedCode:withImageData:");
    if (!manager || ![manager respondsToSelector:importSEL]) {
        [self stopWithMessage:@"QRCodeManager không còn sẵn sàng để nhập code."];
        return;
    }
    if ([manager respondsToSelector:NSSelectorFromString(@"setDelegate:")] &&
        HSONResponds(editor, @"importedData:code:")) {
        HSONCallVoid1(manager, @"setDelegate:", editor);
    }
    @try {
        ((void (*)(id, SEL, id, id))objc_msgSend)(manager, importSEL, code, imageData);
    } @catch (NSException *exception) {
        [self stopWithMessage:[NSString stringWithFormat:@"Video Star từ chối nhập code cho scene %lu: %@", (unsigned long)(self.currentScene + 1), exception.reason ?: @"unknown"]];
        return;
    }
    HSONLog([NSString stringWithFormat:@"QR code submitted for scene %lu", (unsigned long)(self.currentScene + 1)]);

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.65 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self waitForSceneMediaReadyAttempt:0];
    });
}

- (void)waitForSceneMediaReadyAttempt:(NSUInteger)attempt {
    if (!self.running) return;
    UIViewController *editor = self.sceneEditor;
    id engine = HSONCallObject0(editor, @"getMultiLayerEngine");
    BOOL ready = engine != nil;
    if (ready && HSONResponds(engine, @"numActiveLayers")) {
        ready = HSONCallUInteger0(engine, @"numActiveLayers", 0) > 0;
    }
    if (!ready && attempt < 100) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.6 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self waitForSceneMediaReadyAttempt:attempt + 1];
        });
        return;
    }
    if (!ready) {
        [self stopWithMessage:[NSString stringWithFormat:@"Code scene %lu đã gửi nhưng editor nhiều lớp chưa sẵn sàng sau thời gian chờ.", (unsigned long)(self.currentScene + 1)]];
        return;
    }

    __weak typeof(self) weakSelf = self;
    BOOL launched = HSONRunReplaceLayerWithEditor(editor, NO, ^(BOOL success, NSUInteger changedCount, NSString *message) {
        __strong typeof(weakSelf) strongSelf = weakSelf;
        if (!strongSelf || !strongSelf.running) return;
        if (!success) {
            [strongSelf stopWithMessage:[NSString stringWithFormat:@"Scene %lu: %@", (unsigned long)(strongSelf.currentScene + 1), message ?: @"Không thay được media."]];
            return;
        }
        strongSelf.scenesCompleted += 1;
        HSONLog([NSString stringWithFormat:@"Multi Scene scene %lu done; verified layers=%lu",
                 (unsigned long)(strongSelf.currentScene + 1), (unsigned long)changedCount]);
        [strongSelf closeCurrentSceneAndContinue];
    });
    if (!launched) {
        [self stopWithMessage:[NSString stringWithFormat:@"Không khởi chạy được Auto thay ảnh cho scene %lu.", (unsigned long)(self.currentScene + 1)]];
    }
}

- (void)closeCurrentSceneAndContinue {
    if (!self.running) return;
    UINavigationController *nav = self.sceneNavigationController;
    self.sceneEditor = nil;
    self.sceneNavigationController = nil;
    if (nav.presentingViewController) {
        [nav dismissViewControllerAnimated:YES completion:^{
            self.currentScene += 1;
            [self openCurrentSceneEditor];
        }];
    } else {
        self.currentScene += 1;
        [self openCurrentSceneEditor];
    }
}

- (void)finishAllScenes {
    self.running = NO;
    [self restoreQRDelegate];
    HSONPresentAlert(@"Multi Scene hoàn tất",
                     [NSString stringWithFormat:@"Đã xử lý %lu/%lu scene trong phạm vi đã chọn. Mỗi scene đã nhập QR và xác minh các layer media được thay.",
                      (unsigned long)self.scenesCompleted,
                      (unsigned long)(self.lastScene - self.firstScene + 1)]);
    HSONLog([NSString stringWithFormat:@"Multi Scene completed: %lu scenes", (unsigned long)self.scenesCompleted]);
}

- (void)cancelAndRestore {
    if (!self.running) return;
    self.running = NO;
    [self restoreQRDelegate];
    if (self.sceneNavigationController.presentingViewController) {
        [self.sceneNavigationController dismissViewControllerAnimated:YES completion:nil];
    }
    HSONLog(@"Multi Scene cancelled by user");
}

- (void)stopWithMessage:(NSString *)message {
    self.running = NO;
    [self restoreQRDelegate];
    if (self.sceneNavigationController.presentingViewController) {
        [self.sceneNavigationController dismissViewControllerAnimated:YES completion:nil];
    }
    HSONLog([NSString stringWithFormat:@"Multi Scene stopped: %@", message]);
    HSONPresentAlert(@"Không thể hoàn tất Multi Scene", message);
}

- (void)restoreQRDelegate {
    if (self.qrManager && [self.qrManager respondsToSelector:NSSelectorFromString(@"setDelegate:")]) {
        HSONCallVoid1(self.qrManager, @"setDelegate:", self.previousQRDelegate);
    }
}
@end

BOOL HSONRunMultiSceneApply(void) {
    dispatch_async(dispatch_get_main_queue(), ^{
        if (gMultiSceneFlow.running) {
            HSONPresentAlert(@"Đang xử lý", @"Tác vụ Multi Scene hiện vẫn đang chạy.");
            return;
        }
        UIViewController *review = HSONFindViewControllerNamed(@"VideoReviewEditVC");
        if (!review || !HSONResponds(review, @"showMergeScenes")) {
            HSONPresentAlert(@"Thông báo", @"Bạn chưa ở giao diện Hợp nhất phân cảnh của Video Star.");
            return;
        }
        id project = HSONCallObject0(review, @"project");
        NSUInteger sceneCount = HSONCallUInteger0(project, @"sceneCount", 0);
        if (!project || sceneCount == 0) {
            HSONPresentAlert(@"Thông báo", @"Không đọc được số lượng phân cảnh của project.");
            return;
        }
        gMultiSceneFlow = [HSONMultiSceneFlow new];
        [gMultiSceneFlow beginWithReview:review project:project sceneCount:sceneCount];
    });
    return YES;
}
