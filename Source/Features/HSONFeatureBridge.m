#import "HSONFeatureBridge.h"
#import <objc/message.h>
#import <objc/runtime.h>

static UIViewController *HSONResolveController(UIViewController *controller) {
    if (!controller) return nil;
    UIViewController *presented = controller.presentedViewController;
    if (presented && !presented.isBeingDismissed) return HSONResolveController(presented);
    if ([controller isKindOfClass:UINavigationController.class]) {
        UIViewController *visible = ((UINavigationController *)controller).visibleViewController;
        if (visible) return HSONResolveController(visible);
    }
    if ([controller isKindOfClass:UITabBarController.class]) {
        UIViewController *selected = ((UITabBarController *)controller).selectedViewController;
        if (selected) return HSONResolveController(selected);
    }
    return controller;
}

UIViewController *HSONTopViewController(void) {
    UIApplication *app = UIApplication.sharedApplication;
    for (UIScene *scene in app.connectedScenes) {
        if (![scene isKindOfClass:UIWindowScene.class]) continue;
        UIWindowScene *windowScene = (UIWindowScene *)scene;
        if (windowScene.activationState != UISceneActivationStateForegroundActive &&
            windowScene.activationState != UISceneActivationStateForegroundInactive) continue;
        for (UIWindow *window in windowScene.windows) {
            if (window.isKeyWindow && window.rootViewController) {
                return HSONResolveController(window.rootViewController);
            }
        }
    }
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
    UIWindow *legacyWindow = app.keyWindow;
#pragma clang diagnostic pop
    return legacyWindow.rootViewController ? HSONResolveController(legacyWindow.rootViewController) : nil;
}

static UIViewController *HSONSearchControllerTree(UIViewController *controller, Class target) {
    if (!controller || !target) return nil;
    if ([controller isKindOfClass:target]) return controller;
    UIViewController *presented = controller.presentedViewController;
    UIViewController *found = HSONSearchControllerTree(presented, target);
    if (found) return found;
    for (UIViewController *child in controller.childViewControllers) {
        found = HSONSearchControllerTree(child, target);
        if (found) return found;
    }
    if ([controller isKindOfClass:UINavigationController.class]) {
        for (UIViewController *child in ((UINavigationController *)controller).viewControllers) {
            found = HSONSearchControllerTree(child, target);
            if (found) return found;
        }
    }
    return nil;
}

UIViewController *HSONFindViewControllerNamed(NSString *className) {
    Class cls = NSClassFromString(className);
    if (!cls) return nil;
    UIApplication *app = UIApplication.sharedApplication;
    for (UIScene *scene in app.connectedScenes) {
        if (![scene isKindOfClass:UIWindowScene.class]) continue;
        for (UIWindow *window in ((UIWindowScene *)scene).windows) {
            if (!window.rootViewController) continue;
            UIViewController *found = HSONSearchControllerTree(window.rootViewController, cls);
            if (found) return found;
        }
    }
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
    UIWindow *window = app.keyWindow;
#pragma clang diagnostic pop
    return HSONSearchControllerTree(window.rootViewController, cls);
}

UIView *HSONFindSubviewNamed(UIView *root, NSString *className) {
    if (!root || className.length == 0) return nil;
    Class cls = NSClassFromString(className);
    if (!cls) return nil;
    if ([root isKindOfClass:cls]) return root;
    for (UIView *child in root.subviews.reverseObjectEnumerator) {
        UIView *found = HSONFindSubviewNamed(child, className);
        if (found) return found;
    }
    return nil;
}

id HSONValue(id object, NSString *key) {
    if (!object || key.length == 0) return nil;
    @try { return [object valueForKey:key]; }
    @catch (__unused NSException *exception) {
        NSString *ivarName = [key hasPrefix:@"_"] ? key : [@"_" stringByAppendingString:key];
        for (Class cls = object_getClass(object); cls; cls = class_getSuperclass(cls)) {
            Ivar ivar = class_getInstanceVariable(cls, ivarName.UTF8String);
            if (ivar) return object_getIvar(object, ivar);
        }
    }
    return nil;
}

BOOL HSONResponds(id object, NSString *selectorName) {
    if (!object || selectorName.length == 0) return NO;
    return [object respondsToSelector:NSSelectorFromString(selectorName)];
}

id HSONCallObject0(id object, NSString *selectorName) {
    SEL sel = NSSelectorFromString(selectorName ?: @"");
    if (!object || ![object respondsToSelector:sel]) return nil;
    @try { return ((id (*)(id, SEL))objc_msgSend)(object, sel); }
    @catch (__unused NSException *exception) { return nil; }
}

id HSONCallObject1(id object, NSString *selectorName, id argument) {
    SEL sel = NSSelectorFromString(selectorName ?: @"");
    if (!object || ![object respondsToSelector:sel]) return nil;
    @try { return ((id (*)(id, SEL, id))objc_msgSend)(object, sel, argument); }
    @catch (__unused NSException *exception) { return nil; }
}

id HSONCallObjectUInt(id object, NSString *selectorName, NSUInteger argument) {
    SEL sel = NSSelectorFromString(selectorName ?: @"");
    if (!object || ![object respondsToSelector:sel]) return nil;
    @try { return ((id (*)(id, SEL, NSUInteger))objc_msgSend)(object, sel, argument); }
    @catch (__unused NSException *exception) { return nil; }
}

BOOL HSONCallBool0(id object, NSString *selectorName, BOOL fallback) {
    SEL sel = NSSelectorFromString(selectorName ?: @"");
    if (!object || ![object respondsToSelector:sel]) return fallback;
    @try { return ((BOOL (*)(id, SEL))objc_msgSend)(object, sel); }
    @catch (__unused NSException *exception) { return fallback; }
}

BOOL HSONCallBool1(id object, NSString *selectorName, id argument, BOOL fallback) {
    SEL sel = NSSelectorFromString(selectorName ?: @"");
    if (!object || ![object respondsToSelector:sel]) return fallback;
    @try { return ((BOOL (*)(id, SEL, id))objc_msgSend)(object, sel, argument); }
    @catch (__unused NSException *exception) { return fallback; }
}

NSUInteger HSONCallUInteger0(id object, NSString *selectorName, NSUInteger fallback) {
    SEL sel = NSSelectorFromString(selectorName ?: @"");
    if (!object || ![object respondsToSelector:sel]) return fallback;
    @try { return ((NSUInteger (*)(id, SEL))objc_msgSend)(object, sel); }
    @catch (__unused NSException *exception) { return fallback; }
}

NSUInteger HSONCallUIntegerUInt(id object, NSString *selectorName, NSUInteger argument, NSUInteger fallback) {
    SEL sel = NSSelectorFromString(selectorName ?: @"");
    if (!object || ![object respondsToSelector:sel]) return fallback;
    @try { return ((NSUInteger (*)(id, SEL, NSUInteger))objc_msgSend)(object, sel, argument); }
    @catch (__unused NSException *exception) { return fallback; }
}

BOOL HSONCallBoolUInt(id object, NSString *selectorName, NSUInteger argument, BOOL fallback) {
    SEL sel = NSSelectorFromString(selectorName ?: @"");
    if (!object || ![object respondsToSelector:sel]) return fallback;
    @try { return ((BOOL (*)(id, SEL, NSUInteger))objc_msgSend)(object, sel, argument); }
    @catch (__unused NSException *exception) { return fallback; }
}

void HSONCallVoid0(id object, NSString *selectorName) {
    SEL sel = NSSelectorFromString(selectorName ?: @"");
    if (!object || ![object respondsToSelector:sel]) return;
    @try { ((void (*)(id, SEL))objc_msgSend)(object, sel); }
    @catch (NSException *exception) { HSONLog([NSString stringWithFormat:@"%@ raised %@", selectorName, exception.reason ?: @"unknown"]); }
}

void HSONCallVoid1(id object, NSString *selectorName, id argument) {
    SEL sel = NSSelectorFromString(selectorName ?: @"");
    if (!object || ![object respondsToSelector:sel]) return;
    @try { ((void (*)(id, SEL, id))objc_msgSend)(object, sel, argument); }
    @catch (NSException *exception) { HSONLog([NSString stringWithFormat:@"%@ raised %@", selectorName, exception.reason ?: @"unknown"]); }
}

void HSONCallVoidUInt(id object, NSString *selectorName, NSUInteger argument) {
    SEL sel = NSSelectorFromString(selectorName ?: @"");
    if (!object || ![object respondsToSelector:sel]) return;
    @try { ((void (*)(id, SEL, NSUInteger))objc_msgSend)(object, sel, argument); }
    @catch (NSException *exception) { HSONLog([NSString stringWithFormat:@"%@ raised %@", selectorName, exception.reason ?: @"unknown"]); }
}

void HSONCallVoidUIntBool(id object, NSString *selectorName, NSUInteger first, BOOL second) {
    SEL sel = NSSelectorFromString(selectorName ?: @"");
    if (!object || ![object respondsToSelector:sel]) return;
    @try { ((void (*)(id, SEL, NSUInteger, BOOL))objc_msgSend)(object, sel, first, second); }
    @catch (NSException *exception) { HSONLog([NSString stringWithFormat:@"%@ raised %@", selectorName, exception.reason ?: @"unknown"]); }
}

void HSONLog(NSString *message) {
    if (message.length == 0) return;
    NSLog(@"[HSON] %@", message);
    NSString *documents = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;
    if (!documents) return;
    NSString *path = [documents stringByAppendingPathComponent:@"HSONTool.log"];
    NSString *line = [NSString stringWithFormat:@"%@  %@\n", NSDate.date, message];
    NSData *data = [line dataUsingEncoding:NSUTF8StringEncoding];
    if (![[NSFileManager defaultManager] fileExistsAtPath:path]) {
        [data writeToFile:path atomically:YES];
        return;
    }
    NSFileHandle *handle = [NSFileHandle fileHandleForWritingAtPath:path];
    if (!handle) return;
    @try { [handle seekToEndOfFile]; [handle writeData:data]; [handle closeFile]; }
    @catch (__unused NSException *exception) { [handle closeFile]; }
}

void HSONPresentAlert(NSString *title, NSString *message) {
    dispatch_async(dispatch_get_main_queue(), ^{
        UIViewController *presenter = HSONTopViewController();
        if (!presenter || presenter.presentedViewController) return;
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:title ?: @"H SON Tool"
                                                                         message:message ?: @""
                                                                  preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
        [presenter presentViewController:alert animated:YES completion:nil];
    });
}

@interface HSONPreviewController : UIViewController
@property (nonatomic, strong) UIImage *previewImage;
@property (nonatomic, copy) NSString *previewTitle;
@end

@implementation HSONPreviewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:7/255.0 green:13/255.0 blue:28/255.0 alpha:1];
    self.title = self.previewTitle ?: @"Code gần nhất";
    UIImageView *imageView = [[UIImageView alloc] initWithImage:self.previewImage];
    imageView.translatesAutoresizingMaskIntoConstraints = NO;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.backgroundColor = UIColor.whiteColor;
    imageView.layer.cornerRadius = 14;
    imageView.clipsToBounds = YES;
    [self.view addSubview:imageView];
    UIButton *close = [UIButton buttonWithType:UIButtonTypeSystem];
    close.translatesAutoresizingMaskIntoConstraints = NO;
    [close setTitle:@"Đóng" forState:UIControlStateNormal];
    [close setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    close.backgroundColor = [UIColor colorWithRed:0.13 green:0.34 blue:0.58 alpha:1];
    close.layer.cornerRadius = 12;
    [close addTarget:self action:@selector(closeTapped) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:close];
    UILayoutGuide *safe = self.view.safeAreaLayoutGuide;
    [NSLayoutConstraint activateConstraints:@[
        [imageView.leadingAnchor constraintEqualToAnchor:safe.leadingAnchor constant:18],
        [imageView.trailingAnchor constraintEqualToAnchor:safe.trailingAnchor constant:-18],
        [imageView.topAnchor constraintEqualToAnchor:safe.topAnchor constant:18],
        [imageView.bottomAnchor constraintEqualToAnchor:close.topAnchor constant:-18],
        [close.leadingAnchor constraintEqualToAnchor:safe.leadingAnchor constant:18],
        [close.trailingAnchor constraintEqualToAnchor:safe.trailingAnchor constant:-18],
        [close.bottomAnchor constraintEqualToAnchor:safe.bottomAnchor constant:-12],
        [close.heightAnchor constraintEqualToConstant:46]
    ]];
}
- (void)closeTapped { [self dismissViewControllerAnimated:YES completion:nil]; }
@end

void HSONPresentImagePreview(NSData *data, NSString *title) {
    UIImage *image = data.length ? [UIImage imageWithData:data] : nil;
    if (!image) { HSONPresentAlert(@"H SON Tool", @"Không thể mở ảnh code."); return; }
    dispatch_async(dispatch_get_main_queue(), ^{
        UIViewController *presenter = HSONTopViewController();
        if (!presenter || presenter.presentedViewController) return;
        HSONPreviewController *preview = [HSONPreviewController new];
        preview.previewImage = image;
        preview.previewTitle = title ?: @"Code gần nhất";
        preview.modalPresentationStyle = UIModalPresentationFullScreen;
        [presenter presentViewController:preview animated:YES completion:nil];
    });
}
