#import "HSONReplaceLayer.h"
#import "HSONFeatureBridge.h"
#import <AVFoundation/AVFoundation.h>
#import <objc/message.h>
#import <objc/runtime.h>
#import <UIKit/UIKit.h>

static void (*gOriginalPickedWithClipResponse)(id, SEL, id) = NULL;
static BOOL gPickedResponseHookInstalled = NO;
static void HSONPickedWithClipPickerResponse(id self, SEL selector, id response);

static id HSONCloneClipPickerResponse(id response) {
    if (!response) return nil;
    Class responseClass = NSClassFromString(@"ClipPickerResponse");
    if (!responseClass) responseClass = NSClassFromString(@"_TtC10Video_Star18ClipPickerResponse");
    if (!responseClass) responseClass = [response class];
    SEL typeSEL = NSSelectorFromString(@"clipPickerResponseType");
    SEL indexSEL = NSSelectorFromString(@"clipIndex");
    SEL initSEL = NSSelectorFromString(@"initWithClipPickerResponseType:clipIndex:");
    if (![response respondsToSelector:typeSEL] || ![response respondsToSelector:indexSEL] ||
        ![responseClass instancesRespondToSelector:initSEL]) return nil;
    @try {
        NSInteger type = ((NSInteger (*)(id, SEL))objc_msgSend)(response, typeSEL);
        NSInteger index = ((NSInteger (*)(id, SEL))objc_msgSend)(response, indexSEL);
        id clone = ((id (*)(id, SEL, NSInteger, NSInteger))objc_msgSend)([responseClass alloc], initSEL, type, index);
        return (clone && clone != response) ? clone : nil;
    } @catch (__unused NSException *exception) {
        return nil;
    }
}

static BOOL HSONInstallPickedResponseHook(Class editorClass) {
    if (gPickedResponseHookInstalled) return YES;
    SEL selector = NSSelectorFromString(@"pickedWithClipPickerResponse:");
    Method method = class_getInstanceMethod(editorClass, selector);
    if (!method) return NO;
    IMP original = method_getImplementation(method);
    const char *types = method_getTypeEncoding(method);
    if (class_addMethod(editorClass, selector, original, types)) {
        method = class_getInstanceMethod(editorClass, selector);
    }
    gOriginalPickedWithClipResponse = (void (*)(id, SEL, id))method_setImplementation(method, (IMP)HSONPickedWithClipPickerResponse);
    gPickedResponseHookInstalled = gOriginalPickedWithClipResponse != NULL;
    return gPickedResponseHookInstalled;
}

@interface HSONReplaceLayerJob : NSObject
@property (nonatomic, weak) id editor;
@property (nonatomic, strong) id engine;
@property (nonatomic, strong) id capturedResponse;
@property (nonatomic, copy) NSArray<NSDictionary *> *targets;
@property (nonatomic) NSUInteger targetIndex;
@property (nonatomic) NSUInteger changedCount;
@property (nonatomic) NSUInteger selectedLayerBefore;
@property (nonatomic) BOOL responseCaptured;
@property (nonatomic) BOOL running;
@property (nonatomic) BOOL showResultAlert;
@property (nonatomic, copy) HSONReplaceLayerCompletion completion;
@property (nonatomic) BOOL completionSent;
- (void)captureResponse:(id)response;
- (void)continueWithNextTarget;
- (void)finishWithMessage:(NSString *)message;
- (void)finishSuccessfully;
- (void)sendCompletion:(BOOL)success message:(NSString *)message;
@end

static HSONReplaceLayerJob *gReplaceLayerJob;

static BOOL HSONStoredFlagIsTrue(id value) {
    if (!value || value == NSNull.null) return NO;
    if ([value respondsToSelector:@selector(boolValue)]) return [value boolValue];
    return YES;
}

static BOOL HSONLayerIsExcluded(id editor, id engine, id layer, NSUInteger index) {
    if (!layer) return YES;
    if (HSONResponds(layer, @"isNullLayer") && HSONCallBool0(layer, @"isNullLayer", NO)) return YES;
    if (HSONResponds(layer, @"is3DLayer") && HSONCallBool0(layer, @"is3DLayer", NO)) return YES;
    if (HSONResponds(engine, @"isNullLayer:" ) && HSONCallBoolUInt(engine, @"isNullLayer:", index, NO)) return YES;
    NSArray<NSString *> *flags = @[@"particlesExistOnLayerNum:", @"gifExistsOnLayerNum:",
                                   @"drawingExistsOnLayerNum:", @"overlayObjectExistsOnLayerNum:"];
    for (NSString *selector in flags) {
        if (HSONCallBoolUInt(engine, selector, index, NO)) return YES;
    }
    if (HSONStoredFlagIsTrue(HSONValue(layer, @"layerGIF")) ||
        HSONStoredFlagIsTrue(HSONValue(layer, @"layerDrawing")) ||
        HSONStoredFlagIsTrue(HSONValue(layer, @"layerOverlay"))) return YES;
    id textDictionary = HSONValue(layer, @"textDictionary");
    if ([textDictionary isKindOfClass:NSDictionary.class] && [textDictionary count] > 0) return YES;
    (void)editor;
    return NO;
}

static NSArray<NSDictionary *> *HSONCollectMediaTargets(id editor, id engine) {
    NSMutableArray<NSDictionary *> *targets = [NSMutableArray array];
    for (NSUInteger index = 0; index < 30; index++) {
        id layer = HSONCallObjectUInt(engine, @"layerAtLayerNum:", index);
        if (!layer || HSONLayerIsExcluded(editor, engine, layer, index)) continue;
        id asset = HSONCallObjectUInt(engine, @"assetForLayer:", index);
        id layerImage = HSONCallObject0(layer, @"layerImage");
        if (!layerImage && ![asset isKindOfClass:UIImage.class]) layerImage = HSONValue(layer, @"layerImage");

        NSString *mediaKind = nil;
        if ([asset isKindOfClass:AVAsset.class]) {
            NSArray *videoTracks = [asset tracksWithMediaType:AVMediaTypeVideo];
            if (videoTracks.count > 0) mediaKind = @"video";
            else if (layerImage) mediaKind = @"image";
        } else if (layerImage || [asset isKindOfClass:UIImage.class]) {
            mediaKind = @"image";
        }
        if (!mediaKind) continue;
        [targets addObject:@{ @"layerIndex": @(index), @"mediaKind": mediaKind }];
    }
    [targets sortUsingComparator:^NSComparisonResult(NSDictionary *a, NSDictionary *b) {
        return [a[@"layerIndex"] compare:b[@"layerIndex"]];
    }];
    return targets;
}

static id HSONCurrentLayerState(id engine, NSUInteger index) {
    id asset = HSONCallObjectUInt(engine, @"assetForLayer:", index);
    id layer = HSONCallObjectUInt(engine, @"layerAtLayerNum:", index);
    id image = HSONCallObject0(layer, @"layerImage");
    return @{ @"asset": asset ?: NSNull.null, @"image": image ?: NSNull.null };
}

static BOOL HSONLayerStateChanged(NSDictionary *before, NSDictionary *after) {
    id beforeAsset = before[@"asset"], afterAsset = after[@"asset"];
    id beforeImage = before[@"image"], afterImage = after[@"image"];
    BOOL assetChanged = ((beforeAsset == NSNull.null) != (afterAsset == NSNull.null)) ||
                        (beforeAsset != NSNull.null && afterAsset != NSNull.null &&
                         beforeAsset != afterAsset && ![beforeAsset isEqual:afterAsset]);
    BOOL imageChanged = ((beforeImage == NSNull.null) != (afterImage == NSNull.null)) ||
                        (beforeImage != NSNull.null && afterImage != NSNull.null &&
                         beforeImage != afterImage && ![beforeImage isEqual:afterImage]);
    return assetChanged || imageChanged;
}

static BOOL HSONIsReplaceTitle(id value) {
    if (![value isKindOfClass:NSString.class]) return NO;
    NSString *normalized = [(NSString *)value lowercaseString];
    return [normalized containsString:@"replace"] || [normalized containsString:@"thay nội dung"] ||
           [normalized isEqualToString:@"thay"];
}

static UIButton *HSONFindReplaceContentButton(UIView *root) {
    if (!root) return nil;

    // CustomPopup stores button captions separately on some Video Star builds.
    id buttons = HSONValue(root, @"_buttons");
    id captions = HSONValue(root, @"_buttonStrings");
    if ([buttons isKindOfClass:NSArray.class] && [captions isKindOfClass:NSArray.class]) {
        NSArray *buttonArray = buttons;
        NSArray *captionArray = captions;
        NSUInteger count = MIN(buttonArray.count, captionArray.count);
        for (NSUInteger i = 0; i < count; i++) {
            id candidate = buttonArray[i];
            if ([candidate isKindOfClass:UIButton.class] && HSONIsReplaceTitle(captionArray[i])) {
                return candidate;
            }
        }
    }

    if ([root isKindOfClass:UIButton.class]) {
        UIButton *button = (UIButton *)root;
        NSString *title = [button titleForState:UIControlStateNormal] ?: button.currentTitle ?: @"";
        if (HSONIsReplaceTitle(title)) return button;
    }
    for (UIView *child in root.subviews) {
        UIButton *found = HSONFindReplaceContentButton(child);
        if (found) return found;
    }
    return nil;
}

static BOOL HSONPressReplaceContent(id editor) {
    id popup = HSONValue(editor, @"mlLayerButtonsCellLayerEditTitleCustomPopup");
    if (![popup isKindOfClass:UIView.class]) {
        id container = HSONValue(editor, @"mlLayerButtonsCellLayerEditTitleView");
        UIView *searchRoot = nil;

        // `editor` is intentionally typed as `id` because the host app's
        // private editor class is resolved at runtime. Only access
        // UIViewController properties after checking its runtime type.
        if ([editor isKindOfClass:UIViewController.class]) {
            UIViewController *editorController = (UIViewController *)editor;
            if (editorController.isViewLoaded) {
                searchRoot = editorController.view;
            }
        }

        // Fall back to the known popup container without forcing the
        // editor controller to load its view hierarchy.
        if (!searchRoot && [container isKindOfClass:UIView.class]) {
            searchRoot = (UIView *)container;
        }
        popup = HSONFindSubviewNamed(searchRoot, @"CustomPopup");
    }
    UIButton *button = HSONFindReplaceContentButton([popup isKindOfClass:UIView.class] ? popup : nil);
    if (!button) return NO;
    SEL buttonPressed = NSSelectorFromString(@"buttonPressed:");
    if ([popup respondsToSelector:buttonPressed]) {
        @try { ((void (*)(id, SEL, id))objc_msgSend)(popup, buttonPressed, button); }
        @catch (__unused NSException *exception) { [button sendActionsForControlEvents:UIControlEventTouchUpInside]; }
    } else {
        [button sendActionsForControlEvents:UIControlEventTouchUpInside];
    }
    return YES;
}

@implementation HSONReplaceLayerJob

- (void)captureResponse:(id)response {
    if (!self.running || self.responseCaptured || !response) return;
    self.responseCaptured = YES;
    self.capturedResponse = HSONCloneClipPickerResponse(response);
    if (!self.capturedResponse) {
        [self finishWithMessage:@"Không thể tạo bản sao ClipPickerResponse an toàn. Dừng để tránh áp dụng nhầm media."];
        return;
    }
    self.targets = HSONCollectMediaTargets(self.editor, self.engine);
    self.targetIndex = 0;
    if (self.targets.count == 0) {
        self.running = NO;
        NSString *message = @"Không tìm thấy layer ảnh/video hợp lệ để thay.";
        if (self.showResultAlert) HSONPresentAlert(@"Thông báo", message);
        [self sendCompletion:NO message:message];
        return;
    }
    HSONLog([NSString stringWithFormat:@"Captured clip picker response; targets=%lu", (unsigned long)self.targets.count]);
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.35 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self continueWithNextTarget];
    });
}

- (void)continueWithNextTarget {
    if (!self.running) return;
    id editor = self.editor;
    id engine = self.engine;
    if (!editor || !engine) { [self finishWithMessage:@"Màn hình nhiều lớp đã đóng trong lúc thay ảnh."]; return; }
    if (self.targetIndex >= self.targets.count) { [self finishSuccessfully]; return; }

    NSDictionary *record = self.targets[self.targetIndex];
    NSUInteger layerIndex = [record[@"layerIndex"] unsignedIntegerValue];
    id layer = HSONCallObjectUInt(engine, @"layerAtLayerNum:", layerIndex);
    if (!layer) {
        [self finishWithMessage:[NSString stringWithFormat:@"Layer %lu không còn tồn tại; đã dừng để tránh thay nhầm layer.", (unsigned long)layerIndex]];
        return;
    }
    NSDictionary *before = HSONCurrentLayerState(engine, layerIndex);

    HSONCallVoidUIntBool(editor, @"selectLayer:bordered:", layerIndex, NO);
    SEL presentSEL = NSSelectorFromString(@"presentMLLayerButtonsCollectionViewItemLayerEditTitleViewWithMultiLayerLayer:");
    if (![editor respondsToSelector:presentSEL]) {
        HSONLog(@"Missing native layer edit selector; stop to avoid unintended edits");
        [self finishWithMessage:@"Video Star 14.3.3 không cung cấp selector mở menu chỉnh sửa layer cần thiết."];
        return;
    }
    @try { ((void (*)(id, SEL, id))objc_msgSend)(editor, presentSEL, layer); }
    @catch (NSException *exception) {
        [self finishWithMessage:[NSString stringWithFormat:@"Không mở được menu layer: %@", exception.reason ?: @"unknown"]];
        return;
    }

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.22 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (!self.running) return;
        if (!HSONPressReplaceContent(editor)) {
            HSONCallVoid0(editor, @"dismissMLLayerButtonsCollectionViewItemLayerEditTitleView");
            [self finishWithMessage:@"Không tìm thấy nút Replace Content trong menu layer. Không thực hiện thay thế tự động."];
            return;
        }
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.45 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            if (!self.running) return;
            id replay = HSONCloneClipPickerResponse(self.capturedResponse);
            SEL pickedSEL = NSSelectorFromString(@"pickedWithClipPickerResponse:");
            if (!gOriginalPickedWithClipResponse || ![editor respondsToSelector:pickedSEL] || !replay) {
                [self finishWithMessage:@"Không thể phát lại phản hồi chọn media của Video Star."];
                return;
            }
            @try { gOriginalPickedWithClipResponse(editor, pickedSEL, replay); }
            @catch (NSException *exception) {
                [self finishWithMessage:[NSString stringWithFormat:@"Video Star từ chối media cho layer %lu: %@", (unsigned long)layerIndex, exception.reason ?: @"unknown"]];
                return;
            }
            [self verifyLayer:layerIndex before:before attempt:0];
        });
    });
}

- (void)verifyLayer:(NSUInteger)layerIndex before:(NSDictionary *)before attempt:(NSUInteger)attempt {
    if (!self.running) return;
    NSDictionary *after = HSONCurrentLayerState(self.engine, layerIndex);
    if (HSONLayerStateChanged(before, after)) {
        self.changedCount += 1;
        HSONCallVoid0(self.editor, @"dismissMLLayerButtonsCollectionViewItemLayerEditTitleView");
        self.targetIndex += 1;
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.16 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self continueWithNextTarget];
        });
        return;
    }
    if (attempt >= 15) {
        HSONLog([NSString stringWithFormat:@"Unable to verify media replacement for layer %lu", (unsigned long)layerIndex]);
        [self finishWithMessage:[NSString stringWithFormat:@"Không xác minh được thay đổi trên layer %lu. Tác vụ đã dừng để tránh báo thành công giả.", (unsigned long)layerIndex]];
        return;
    }
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self verifyLayer:layerIndex before:before attempt:attempt + 1];
    });
}

- (void)finishSuccessfully {
    self.running = NO;
    HSONCallVoid0(self.editor, @"dismissMLLayerButtonsCollectionViewItemLayerEditTitleView");
    HSONCallVoid0(self.editor, @"unselectAllLayerButtons");
    HSONCallVoid0(self.editor, @"handleImageGenUpdate");
    HSONCallVoid0(self.engine, @"engineResync");
    HSONCallVoid0(self.editor, @"refreshDisplay");
    NSString *message = [NSString stringWithFormat:@"Đã xác minh thay đổi trên toàn bộ %lu/%lu layer.",
                         (unsigned long)self.changedCount, (unsigned long)self.targets.count];
    if (self.showResultAlert) HSONPresentAlert(@"Auto thay ảnh", message);
    [self sendCompletion:YES message:message];
    HSONLog([NSString stringWithFormat:@"Layer replacement completed; changed=%lu targets=%lu",
             (unsigned long)self.changedCount, (unsigned long)self.targets.count]);
}

- (void)finishWithMessage:(NSString *)message {
    self.running = NO;
    HSONCallVoid0(self.editor, @"dismissMLLayerButtonsCollectionViewItemLayerEditTitleView");
    HSONCallVoid0(self.editor, @"unselectAllLayerButtons");
    if (self.showResultAlert) HSONPresentAlert(@"Không thể hoàn tất Auto thay ảnh", message);
    [self sendCompletion:NO message:message];
    HSONLog([NSString stringWithFormat:@"Layer replacement stopped: %@", message]);
}
- (void)sendCompletion:(BOOL)success message:(NSString *)message {
    if (self.completionSent) return;
    self.completionSent = YES;
    if (self.completion) self.completion(success, success ? self.changedCount : 0, message);
}
@end

static void HSONPickedWithClipPickerResponse(id self, SEL selector, id response) {
    HSONReplaceLayerJob *job = gReplaceLayerJob;
    if (job && job.running && job.editor == self) {
        [job captureResponse:response];
        return;
    }
    if (gOriginalPickedWithClipResponse) gOriginalPickedWithClipResponse(self, selector, response);
}

BOOL HSONRunReplaceLayerWithEditor(id editor, BOOL showResultAlert, HSONReplaceLayerCompletion completion) {
    if (!editor || !HSONResponds(editor, @"pickNewContent")) return NO;
    id engine = HSONCallObject0(editor, @"getMultiLayerEngine");
    if (!engine || !HSONResponds(engine, @"layerAtLayerNum:")) return NO;
    if (gReplaceLayerJob.running) return NO;
    if (!HSONInstallPickedResponseHook([editor class])) return NO;

    HSONReplaceLayerJob *job = [HSONReplaceLayerJob new];
    job.editor = editor;
    job.engine = engine;
    job.running = YES;
    job.showResultAlert = showResultAlert;
    job.completion = completion;
    id lastSelected = HSONCallObject0(editor, @"lastSelectedLayer");
    job.selectedLayerBefore = HSONCallUInteger0(lastSelected, @"layerNum", 0);
    gReplaceLayerJob = job;
    HSONLog(@"Opening native Video Star media picker for layer replacement");
    @try { HSONCallVoid0(editor, @"pickNewContent"); }
    @catch (__unused NSException *exception) {
        job.running = NO;
        [job sendCompletion:NO message:@"Video Star không mở được bộ chọn ảnh/video."];
        return NO;
    }
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(35 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (job.running && !job.responseCaptured) {
            job.running = NO;
            NSString *message = @"Không nhận được phản hồi từ bộ chọn nội dung. Hãy thử lại và chọn media.";
            if (job.showResultAlert) HSONPresentAlert(@"Đã hủy", message);
            [job sendCompletion:NO message:message];
        }
    });
    return YES;
}

BOOL HSONRunReplaceLayer(void) {
    dispatch_async(dispatch_get_main_queue(), ^{
        UIViewController *editor = HSONTopViewController();
        if (![NSStringFromClass(editor.class) isEqualToString:@"MultiLayerWizEffectVC"]) {
            editor = HSONFindViewControllerNamed(@"MultiLayerWizEffectVC");
        }
        if (!editor) {
            HSONPresentAlert(@"Thông báo", @"Bạn chưa ở giao diện nhiều lớp của Video Star.");
            return;
        }
        if (!HSONRunReplaceLayerWithEditor(editor, YES, nil)) {
            HSONPresentAlert(@"Không tương thích", @"Không thể khởi chạy Auto thay ảnh. Hãy mở đúng màn hình nhiều lớp và kiểm tra API nội bộ của Video Star 14.3.3.");
            return;
        }
    });
    return YES;
}
