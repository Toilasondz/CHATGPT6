#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <objc/runtime.h>
#import "Features/HSONFeatureBridge.h"
#import "Features/HSONReplaceLayer.h"
#import "Features/HSONLastCode.h"
#import "Features/HSONBeatSplit.h"
#import "Features/HSONMultiSceneApply.h"

static __weak UIWindow *gHSONWindow;
static UIButton *gHSONLauncher;
static UIView *gHSONDimView;
static UIView *gHSONPanel;
static NSInteger gHSONSelectedTab = 0;

@class HSONMenuActionTarget;
@class HSONLauncherTarget;
static HSONMenuActionTarget *gHSONActionTarget;
static HSONLauncherTarget *gHSONLauncherTarget;

static UIColor *HSONColor(CGFloat r, CGFloat g, CGFloat b, CGFloat a) {
    return [UIColor colorWithRed:r / 255.0 green:g / 255.0 blue:b / 255.0 alpha:a];
}

static CAGradientLayer *HSONGradient(UIView *view, NSString *name, NSArray<UIColor *> *colors) {
    if (!view) return nil;
    CAGradientLayer *gradient = nil;
    for (CALayer *layer in view.layer.sublayers) {
        if ([layer.name isEqualToString:name] && [layer isKindOfClass:CAGradientLayer.class]) {
            gradient = (CAGradientLayer *)layer;
            break;
        }
    }
    if (!gradient) {
        gradient = [CAGradientLayer layer];
        gradient.name = name;
        [view.layer insertSublayer:gradient atIndex:0];
    }
    NSMutableArray *cg = [NSMutableArray arrayWithCapacity:colors.count];
    for (UIColor *color in colors) [cg addObject:(id)color.CGColor];
    gradient.colors = cg;
    gradient.locations = @[@0.0, @0.55, @1.0];
    gradient.startPoint = CGPointMake(0, 0);
    gradient.endPoint = CGPointMake(1, 1);
    gradient.frame = view.bounds;
    gradient.cornerRadius = view.layer.cornerRadius;
    return gradient;
}

static UILabel *HSONLabel(NSString *text, UIFont *font, UIColor *color) {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    label.text = text;
    label.font = font;
    label.textColor = color;
    label.numberOfLines = 0;
    label.adjustsFontForContentSizeCategory = YES;
    return label;
}

static UIWindow *HSONKeyWindow(void) {
    UIApplication *application = UIApplication.sharedApplication;
    UIWindow *fallbackWindow = nil;

    // Prefer the key window in a foreground scene.
    for (UIScene *scene in application.connectedScenes) {
        if (![scene isKindOfClass:UIWindowScene.class]) continue;
        UIWindowScene *windowScene = (UIWindowScene *)scene;
        if (windowScene.activationState != UISceneActivationStateForegroundActive &&
            windowScene.activationState != UISceneActivationStateForegroundInactive) continue;

        for (UIWindow *window in windowScene.windows) {
            if (window.isKeyWindow && !window.hidden && window.alpha > 0.01) return window;
            // Some editors temporarily have no key window while presenting launch/editor overlays.
            if (!window.hidden && window.alpha > 0.01 && window.rootViewController &&
                window.windowLevel <= UIWindowLevelNormal &&
                CGRectGetWidth(window.bounds) > 0 && CGRectGetHeight(window.bounds) > 0) {
                if (!fallbackWindow || window.windowLevel > fallbackWindow.windowLevel) {
                    fallbackWindow = window;
                }
            }
        }
    }
    if (fallbackWindow) return fallbackWindow;

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
    for (UIWindow *window in application.windows) {
        if (window.isKeyWindow && !window.hidden && window.alpha > 0.01) {
            return window;
        }
        if (!fallbackWindow && !window.hidden && window.alpha > 0.01 && window.rootViewController &&
            CGRectGetWidth(window.bounds) > 0 && CGRectGetHeight(window.bounds) > 0) {
            fallbackWindow = window;
        }
    }
    if (!fallbackWindow) fallbackWindow = application.keyWindow;
#pragma clang diagnostic pop
    return fallbackWindow;
}

static void HSONHideMenu(void) {
    [gHSONDimView removeFromSuperview];
    gHSONDimView = nil;
    gHSONPanel = nil;
}

static void HSONRunFeature(NSInteger index) {
    HSONHideMenu();
    switch (index) {
        case 0: HSONRunReplaceLayer(); break;
        case 1: HSONRunLastCode(); break;
        case 2: HSONRunBeatSplit(); break;
        case 3: HSONRunMultiSceneApply(); break;
        default: break;
    }
}

static void HSONBuildFeaturePage(UIScrollView *scroll, CGFloat width, BOOL homeVariant) {
    for (UIView *view in [scroll.subviews copy]) [view removeFromSuperview];
    scroll.contentOffset = CGPointZero;
    scroll.scrollEnabled = YES;

    UIView *hero = [[UIView alloc] initWithFrame:CGRectMake(7, 7, width - 14, 88)];
    hero.backgroundColor = HSONColor(19, 42, 72, 1);
    hero.layer.cornerRadius = 20;
    hero.layer.cornerCurve = kCACornerCurveContinuous;
    hero.layer.borderWidth = 1;
    hero.layer.borderColor = HSONColor(91, 188, 255, 0.34).CGColor;
    HSONGradient(hero, @"hson.hero", @[HSONColor(16, 91, 139, 0.92), HSONColor(46, 55, 129, 0.95), HSONColor(34, 33, 76, 1)]);
    [scroll addSubview:hero];

    UIView *mark = [[UIView alloc] initWithFrame:CGRectMake(15, 17, 52, 52)];
    mark.layer.cornerRadius = 17;
    mark.layer.cornerCurve = kCACornerCurveContinuous;
    mark.layer.borderWidth = 1;
    mark.layer.borderColor = HSONColor(177, 229, 255, 0.7).CGColor;
    HSONGradient(mark, @"hson.mark", @[HSONColor(24, 199, 255, 1), HSONColor(103, 88, 255, 1)]);
    [hero addSubview:mark];
    UILabel *hs = HSONLabel(@"HS", [UIFont systemFontOfSize:19 weight:UIFontWeightHeavy], UIColor.whiteColor);
    hs.frame = mark.bounds;
    hs.textAlignment = NSTextAlignmentCenter;
    [mark addSubview:hs];

    UILabel *eyebrow = HSONLabel(@"H SON  /  CREATOR EDITION", [UIFont systemFontOfSize:9 weight:UIFontWeightHeavy], HSONColor(176, 224, 255, 1));
    eyebrow.frame = CGRectMake(79, 17, width - 110, 15);
    [hero addSubview:eyebrow];
    UILabel *headline = HSONLabel(@"Chỉnh sửa nhanh hơn", [UIFont systemFontOfSize:18 weight:UIFontWeightHeavy], UIColor.whiteColor);
    headline.frame = CGRectMake(79, 34, width - 110, 25);
    [hero addSubview:headline];
    UILabel *caption = HSONLabel(@"4 công cụ native cho Video Star", [UIFont systemFontOfSize:10 weight:UIFontWeightMedium], HSONColor(195, 215, 242, 1));
    caption.frame = CGRectMake(80, 60, width - 110, 16);
    [hero addSubview:caption];

    UILabel *section = HSONLabel(homeVariant ? @"TRUY CẬP NHANH" : @"CHỌN CHỨC NĂNG",
                                 [UIFont systemFontOfSize:10 weight:UIFontWeightHeavy], HSONColor(132, 193, 247, 1));
    section.frame = CGRectMake(10, 105, width - 20, 18);
    [scroll addSubview:section];

    NSArray<NSDictionary *> *items = @[
        @{ @"glyph": @"IMAGE", @"title": @"Auto thay ảnh", @"detail": @"Chọn ảnh mới cho từng layer", @"color": HSONColor(54, 204, 255, 1) },
        @{ @"glyph": @"QR", @"title": @"Code gần nhất", @"detail": @"Tìm và hiển thị QR gần đây", @"color": HSONColor(170, 139, 255, 1) },
        @{ @"glyph": @"BEAT", @"title": @"Auto chia beat", @"detail": @"Chia phân cảnh theo nhịp", @"color": HSONColor(255, 183, 94, 1) },
        @{ @"glyph": @"SCENE", @"title": @"Multi Scene", @"detail": @"Nhập code và ảnh nhiều cảnh", @"color": HSONColor(89, 226, 174, 1) }
    ];
    CGFloat margin = 7;
    CGFloat gap = 10;
    CGFloat cardWidth = floor((width - margin * 2 - gap) / 2.0);
    CGFloat cardHeight = 116;
    CGFloat firstY = 130;
    for (NSInteger index = 0; index < 4; index++) {
        NSInteger row = index / 2;
        NSInteger column = index % 2;
        CGRect frame = CGRectMake(margin + column * (cardWidth + gap), firstY + row * (cardHeight + gap), cardWidth, cardHeight);
        NSDictionary *item = items[(NSUInteger)index];
        UIColor *accent = item[@"color"];
        UIButton *card = [UIButton buttonWithType:UIButtonTypeCustom];
        card.frame = frame;
        card.tag = index;
        card.backgroundColor = HSONColor(21, 38, 63, 0.98);
        card.layer.cornerRadius = 19;
        card.layer.cornerCurve = kCACornerCurveContinuous;
        card.layer.borderWidth = 1;
        card.layer.borderColor = [accent colorWithAlphaComponent:0.42].CGColor;
        card.layer.shadowColor = accent.CGColor;
        card.layer.shadowOpacity = 0.12;
        card.layer.shadowRadius = 10;
        card.layer.shadowOffset = CGSizeMake(0, 5);
        HSONGradient(card, [NSString stringWithFormat:@"hson.card.%ld", (long)index], @[HSONColor(27, 52, 83, 0.98), HSONColor(24, 34, 61, 0.98)]);
        [card addTarget:gHSONActionTarget action:@selector(hsonFeatureTapped:) forControlEvents:UIControlEventTouchUpInside];
        UIView *icon = [[UIView alloc] initWithFrame:CGRectMake(12, 12, 39, 39)];
        icon.layer.cornerRadius = 13;
        icon.layer.cornerCurve = kCACornerCurveContinuous;
        icon.backgroundColor = [accent colorWithAlphaComponent:0.17];
        icon.layer.borderWidth = 1;
        icon.layer.borderColor = [accent colorWithAlphaComponent:0.44].CGColor;
        icon.userInteractionEnabled = NO;
        [card addSubview:icon];
        UILabel *glyph = HSONLabel(item[@"glyph"], [UIFont systemFontOfSize:10 weight:UIFontWeightHeavy], accent);
        glyph.frame = icon.bounds;
        glyph.textAlignment = NSTextAlignmentCenter;
        glyph.adjustsFontSizeToFitWidth = YES;
        [icon addSubview:glyph];
        UILabel *name = HSONLabel(item[@"title"], [UIFont systemFontOfSize:13 weight:UIFontWeightHeavy], UIColor.whiteColor);
        name.frame = CGRectMake(12, 59, cardWidth - 24, 19);
        name.adjustsFontSizeToFitWidth = YES;
        name.minimumScaleFactor = 0.82;
        [card addSubview:name];
        UILabel *detail = HSONLabel(item[@"detail"], [UIFont systemFontOfSize:10 weight:UIFontWeightMedium], HSONColor(165, 188, 219, 1));
        detail.frame = CGRectMake(12, 80, cardWidth - 24, 27);
        detail.numberOfLines = 2;
        [card addSubview:detail];
        UILabel *arrow = HSONLabel(@"›", [UIFont systemFontOfSize:22 weight:UIFontWeightSemibold], accent);
        arrow.frame = CGRectMake(cardWidth - 25, 9, 17, 25);
        arrow.textAlignment = NSTextAlignmentCenter;
        [card addSubview:arrow];
        card.accessibilityLabel = item[@"title"];
        card.accessibilityHint = item[@"detail"];
        [scroll addSubview:card];
    }

    UILabel *hint = HSONLabel(@"Chọn một thẻ để chạy chức năng tương ứng.",
                              [UIFont systemFontOfSize:9 weight:UIFontWeightMedium], HSONColor(125, 150, 183, 1));
    hint.frame = CGRectMake(10, firstY + 2 * (cardHeight + gap) + 2, width - 20, 24);
    hint.textAlignment = NSTextAlignmentCenter;
    [scroll addSubview:hint];
    scroll.contentSize = CGSizeMake(width, CGRectGetMaxY(hint.frame) + 12);
}

static void HSONBuildCreatorPage(UIScrollView *scroll, CGFloat width) {
    for (UIView *view in [scroll.subviews copy]) [view removeFromSuperview];
    scroll.scrollEnabled = NO;
    UIView *card = [[UIView alloc] initWithFrame:CGRectMake(7, 10, width - 14, 210)];
    card.backgroundColor = HSONColor(23, 42, 70, 1);
    card.layer.cornerRadius = 22;
    card.layer.cornerCurve = kCACornerCurveContinuous;
    card.layer.borderWidth = 1;
    card.layer.borderColor = HSONColor(91, 188, 255, 0.38).CGColor;
    HSONGradient(card, @"hson.creator", @[HSONColor(17, 69, 110, 1), HSONColor(46, 43, 100, 1), HSONColor(26, 32, 58, 1)]);
    [scroll addSubview:card];
    UIView *avatar = [[UIView alloc] initWithFrame:CGRectMake(18, 18, 60, 60)];
    avatar.layer.cornerRadius = 19;
    avatar.layer.cornerCurve = kCACornerCurveContinuous;
    avatar.layer.borderWidth = 1;
    avatar.layer.borderColor = HSONColor(177, 229, 255, 0.75).CGColor;
    HSONGradient(avatar, @"hson.creator.avatar", @[HSONColor(21, 195, 255, 1), HSONColor(115, 88, 255, 1)]);
    [card addSubview:avatar];
    UILabel *hs = HSONLabel(@"HS", [UIFont systemFontOfSize:22 weight:UIFontWeightHeavy], UIColor.whiteColor);
    hs.frame = avatar.bounds;
    hs.textAlignment = NSTextAlignmentCenter;
    [avatar addSubview:hs];
    UILabel *overline = HSONLabel(@"CREATOR / UI DESIGN", [UIFont systemFontOfSize:9 weight:UIFontWeightHeavy], HSONColor(165, 218, 255, 1));
    overline.frame = CGRectMake(92, 25, width - 120, 16);
    [card addSubview:overline];
    UILabel *name = HSONLabel(@"H SON", [UIFont systemFontOfSize:26 weight:UIFontWeightHeavy], UIColor.whiteColor);
    name.frame = CGRectMake(90, 42, width - 120, 35);
    [card addSubview:name];
    UIView *line = [[UIView alloc] initWithFrame:CGRectMake(18, 96, width - 50, 1)];
    line.backgroundColor = HSONColor(116, 177, 231, 0.3);
    [card addSubview:line];
    UILabel *description = HSONLabel(@"Menu độc lập dành cho Video Star. Bốn module xử lý được tách riêng và gọi API nội bộ khi có sẵn.",
                                     [UIFont systemFontOfSize:12 weight:UIFontWeightMedium], HSONColor(203, 220, 242, 1));
    description.frame = CGRectMake(18, 112, width - 50, 70);
    [card addSubview:description];
    UILabel *version = HSONLabel(@"H SON  •  MODERN MENU", [UIFont systemFontOfSize:9 weight:UIFontWeightHeavy], HSONColor(138, 177, 219, 1));
    version.frame = CGRectMake(7, 230, width - 14, 18);
    version.textAlignment = NSTextAlignmentCenter;
    [scroll addSubview:version];
    scroll.contentSize = CGSizeMake(width, 260);
}

@interface HSONMenuActionTarget : NSObject
- (void)hsonFeatureTapped:(UIButton *)sender;
- (void)hsonTabTapped:(UIButton *)sender;
- (void)hsonCloseTapped;
@end
@implementation HSONMenuActionTarget
- (void)hsonFeatureTapped:(UIButton *)sender { HSONRunFeature(sender.tag); }
- (void)hsonTabTapped:(UIButton *)sender {
    gHSONSelectedTab = sender.tag;
    if (!gHSONPanel) return;
    UIScrollView *scroll = [gHSONPanel viewWithTag:901];
    if (!scroll) return;
    CGFloat width = CGRectGetWidth(scroll.bounds);
    if (gHSONSelectedTab == 2) HSONBuildCreatorPage(scroll, width);
    else HSONBuildFeaturePage(scroll, width, gHSONSelectedTab == 0);
    UIView *tabContainer = [gHSONPanel viewWithTag:902];
    for (UIView *candidate in tabContainer.subviews) {
        if (![candidate isKindOfClass:UIButton.class]) continue;
        UIButton *tab = (UIButton *)candidate;
        BOOL selected = tab.tag == gHSONSelectedTab;
        tab.backgroundColor = selected ? HSONColor(31, 91, 139, 1) : HSONColor(25, 42, 68, 0.95);
        tab.layer.borderColor = (selected ? HSONColor(94, 198, 255, 0.75) : HSONColor(91, 157, 221, 0.25)).CGColor;
    }
}
- (void)hsonCloseTapped { HSONHideMenu(); }
@end

static void HSONOpenMenu(void) {
    UIWindow *window = HSONKeyWindow();
    if (!window) return;
    if (gHSONDimView) { HSONHideMenu(); return; }
    gHSONWindow = window;
    gHSONActionTarget = [HSONMenuActionTarget new];
    UIView *dim = [[UIView alloc] initWithFrame:window.bounds];
    dim.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    dim.backgroundColor = [UIColor colorWithWhite:0 alpha:0.68];
    UITapGestureRecognizer *dismiss = [[UITapGestureRecognizer alloc] initWithTarget:gHSONActionTarget action:@selector(hsonCloseTapped)];
    [dim addGestureRecognizer:dismiss];
    [window addSubview:dim];
    gHSONDimView = dim;

    CGFloat maxWidth = MIN(390, CGRectGetWidth(window.bounds) - 30);
    CGFloat maxHeight = MIN(575, CGRectGetHeight(window.bounds) - 60);
    UIView *panel = [[UIView alloc] initWithFrame:CGRectMake((CGRectGetWidth(window.bounds) - maxWidth) / 2,
                                                             (CGRectGetHeight(window.bounds) - maxHeight) / 2,
                                                             maxWidth, maxHeight)];
    panel.backgroundColor = HSONColor(8, 13, 27, 1);
    panel.layer.cornerRadius = 27;
    panel.layer.cornerCurve = kCACornerCurveContinuous;
    panel.layer.borderWidth = 1;
    panel.layer.borderColor = HSONColor(90, 192, 255, 0.42).CGColor;
    panel.layer.shadowColor = HSONColor(33, 124, 255, 1).CGColor;
    panel.layer.shadowOpacity = 0.32;
    panel.layer.shadowRadius = 28;
    panel.layer.shadowOffset = CGSizeMake(0, 15);
    panel.clipsToBounds = YES;
    HSONGradient(panel, @"hson.panel", @[HSONColor(7, 14, 29, 1), HSONColor(13, 28, 51, 1), HSONColor(31, 22, 59, 1)]);
    [dim addSubview:panel];
    gHSONPanel = panel;

    UILabel *brand = HSONLabel(@"H SON", [UIFont systemFontOfSize:24 weight:UIFontWeightHeavy], UIColor.whiteColor);
    brand.frame = CGRectMake(18, 12, 150, 30);
    [panel addSubview:brand];
    UILabel *subtitle = HSONLabel(@"VIDEO STAR  /  CREATOR EDITION", [UIFont systemFontOfSize:9 weight:UIFontWeightBold], HSONColor(127, 203, 255, 1));
    subtitle.frame = CGRectMake(19, 41, maxWidth - 90, 14);
    [panel addSubview:subtitle];

    UIButton *close = [UIButton buttonWithType:UIButtonTypeSystem];
    close.frame = CGRectMake(maxWidth - 52, 13, 36, 34);
    [close setTitle:@"×" forState:UIControlStateNormal];
    close.titleLabel.font = [UIFont systemFontOfSize:25 weight:UIFontWeightMedium];
    [close setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    close.backgroundColor = HSONColor(38, 61, 95, 0.9);
    close.layer.cornerRadius = 12;
    close.layer.borderWidth = 1;
    close.layer.borderColor = HSONColor(115, 193, 255, 0.35).CGColor;
    [close addTarget:gHSONActionTarget action:@selector(hsonCloseTapped) forControlEvents:UIControlEventTouchUpInside];
    [panel addSubview:close];

    CGFloat contentTop = 66;
    CGFloat tabHeight = 38;
    CGFloat bottomPadding = 12;
    UIView *tabContainer = [[UIView alloc] initWithFrame:CGRectMake(14, contentTop, maxWidth - 28, tabHeight)];
    tabContainer.tag = 902;
    NSArray<NSString *> *tabTitles = @[@"HOME", @"TOOLS", @"H SON"];
    CGFloat tabGap = 8;
    CGFloat tabWidth = (CGRectGetWidth(tabContainer.bounds) - tabGap * 2) / 3.0;
    NSMutableArray<UIButton *> *tabButtons = [NSMutableArray array];
    for (NSUInteger i = 0; i < tabTitles.count; i++) {
        UIButton *tab = [UIButton buttonWithType:UIButtonTypeSystem];
        tab.frame = CGRectMake((CGFloat)i * (tabWidth + tabGap), 0, tabWidth, tabHeight);
        tab.tag = (NSInteger)i;
        [tab setTitle:tabTitles[i] forState:UIControlStateNormal];
        tab.titleLabel.font = [UIFont systemFontOfSize:10 weight:UIFontWeightHeavy];
        [tab setTitleColor:HSONColor(190, 222, 255, 1) forState:UIControlStateNormal];
        tab.backgroundColor = HSONColor(25, 42, 68, 0.95);
        tab.layer.cornerRadius = 13;
        tab.layer.cornerCurve = kCACornerCurveContinuous;
        tab.layer.borderWidth = 1;
        tab.layer.borderColor = HSONColor(91, 157, 221, 0.25).CGColor;
        [tab addTarget:gHSONActionTarget action:@selector(hsonTabTapped:) forControlEvents:UIControlEventTouchUpInside];
        [tabContainer addSubview:tab];
        [tabButtons addObject:tab];
    }
    [panel addSubview:tabContainer];

    CGFloat scrollY = contentTop + tabHeight + 8;
    UIScrollView *scroll = [[UIScrollView alloc] initWithFrame:CGRectMake(10, scrollY, maxWidth - 20, maxHeight - scrollY - bottomPadding)];
    scroll.tag = 901;
    scroll.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [panel addSubview:scroll];
    gHSONSelectedTab = 0;
    HSONBuildFeaturePage(scroll, CGRectGetWidth(scroll.bounds), YES);
    [gHSONActionTarget hsonTabTapped:tabButtons[0]];
}

static void HSONLauncherTapped(void) { HSONOpenMenu(); }

static BOOL gHSONLoggedBundleMismatch = NO;

static void HSONAttachLauncherAttempt(NSUInteger attempt) {
    NSString *bundleID = NSBundle.mainBundle.bundleIdentifier ?: @"";
    if (![bundleID isEqualToString:@"com.frontierdesign.videostar"]) {
        if (!gHSONLoggedBundleMismatch) {
            NSLog(@"[HSONMenu] Not attaching: unexpected host bundle id '%@'", bundleID);
            gHSONLoggedBundleMismatch = YES;
        }
        return;
    }

    UIWindow *window = HSONKeyWindow();
    if (!window) {
        if (attempt == 0) NSLog(@"[HSONMenu] Waiting for a visible Video Star window");
        if (attempt < 120) {
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)),
                           dispatch_get_main_queue(), ^{
                HSONAttachLauncherAttempt(attempt + 1);
            });
        } else if (attempt == 120) {
            NSLog(@"[HSONMenu] Could not find a visible Video Star window after 60 seconds");
        }
        return;
    }

    if (gHSONLauncher && gHSONLauncher.superview == window) {
        gHSONLauncher.hidden = NO;
        gHSONLauncher.alpha = 1.0;
        [window bringSubviewToFront:gHSONLauncher];
        return;
    }

    [gHSONLauncher removeFromSuperview];
    gHSONWindow = window;
    UIButton *launcher = [UIButton buttonWithType:UIButtonTypeCustom];
    CGFloat size = 54;
    CGFloat width = CGRectGetWidth(window.bounds);
    CGFloat height = CGRectGetHeight(window.bounds);
    CGFloat y = MIN(MAX(height * 0.68, 110.0), MAX(110.0, height - size - 100.0));
    launcher.frame = CGRectMake(MAX(12.0, width - size - 18.0), y, size, size);
    launcher.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleTopMargin;
    launcher.backgroundColor = HSONColor(20, 93, 148, 1);
    launcher.layer.cornerRadius = size / 2;
    launcher.layer.borderWidth = 1.5;
    launcher.layer.borderColor = HSONColor(171, 231, 255, 0.9).CGColor;
    launcher.layer.shadowColor = HSONColor(17, 147, 255, 1).CGColor;
    launcher.layer.shadowOpacity = 0.45;
    launcher.layer.shadowRadius = 14;
    launcher.layer.shadowOffset = CGSizeMake(0, 5);
    HSONGradient(launcher, @"hson.launcher", @[HSONColor(24, 199, 255, 1), HSONColor(103, 88, 255, 1)]);
    UILabel *logo = HSONLabel(@"HS", [UIFont systemFontOfSize:17 weight:UIFontWeightHeavy], UIColor.whiteColor);
    logo.frame = launcher.bounds;
    logo.textAlignment = NSTextAlignmentCenter;
    logo.userInteractionEnabled = NO;
    [launcher addSubview:logo];
    [launcher addTarget:gHSONLauncherTarget action:@selector(hsonLaunch:) forControlEvents:UIControlEventTouchUpInside];
    launcher.accessibilityLabel = @"Open H SON menu";
    launcher.accessibilityHint = @"Show the H SON tool menu";
    [window addSubview:launcher];
    [window bringSubviewToFront:launcher];
    gHSONLauncher = launcher;
    NSLog(@"[HSONMenu] Launcher attached to Video Star window %@", window);
}

@interface HSONLauncherTarget : NSObject
- (void)hsonLaunch:(UIButton *)sender;
@end
@implementation HSONLauncherTarget
- (void)hsonLaunch:(UIButton *)sender { (void)sender; HSONLauncherTapped(); }
@end

static NSMutableArray *gHSONLifecycleObservers;

static void HSONInstallLifecycleObservers(void) {
    NSNotificationCenter *center = NSNotificationCenter.defaultCenter;
    gHSONLifecycleObservers = [NSMutableArray array];
    NSArray<NSString *> *names = @[
        UIApplicationDidBecomeActiveNotification,
        UISceneDidActivateNotification,
        UIWindowDidBecomeKeyNotification,
        UIWindowDidBecomeVisibleNotification
    ];
    for (NSString *name in names) {
        id token = [center addObserverForName:name object:nil queue:NSOperationQueue.mainQueue
                                  usingBlock:^(__unused NSNotification *notification) {
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.15 * NSEC_PER_SEC)),
                           dispatch_get_main_queue(), ^{
                HSONAttachLauncherAttempt(0);
            });
        }];
        if (token) [gHSONLifecycleObservers addObject:token];
    }
}

__attribute__((constructor)) static void HSONModernMenuInit(void) {
    NSLog(@"[HSONMenu] Constructor loaded in bundle %@", NSBundle.mainBundle.bundleIdentifier);
    dispatch_async(dispatch_get_main_queue(), ^{
        gHSONLauncherTarget = [HSONLauncherTarget new];
        HSONInstallLifecycleObservers();
        HSONAttachLauncherAttempt(0);

        // Re-attach after the app's launch UI has finished adding its own windows/views.
        NSArray<NSNumber *> *delays = @[@0.4, @1.2, @2.5];
        for (NSNumber *delay in delays) {
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW,
                          (int64_t)(delay.doubleValue * NSEC_PER_SEC)),
                           dispatch_get_main_queue(), ^{
                HSONAttachLauncherAttempt(0);
            });
        }
    });
}
