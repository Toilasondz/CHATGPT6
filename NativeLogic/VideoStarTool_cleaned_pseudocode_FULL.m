// VideoStarTool.dylib - lifted from arm64 machine code
// Pseudo-Objective-C: register dataflow resolved to message sends, ivars, strings and classes.
// Control flow is kept as labels/gotos (no structuring). Types come from the runtime metadata.

// ======================= VSLogoView =======================
@implementation VSLogoView

// IMP 0x4534
- (BOOL)pointInside:(CGPoint)arg1 withEvent:(id)arg2 {
    [self bounds];
    id r2 = CGRectContainsPoint();
    return r2;
}

@end

// ======================= VSQRCaptureProxy =======================
@implementation VSQRCaptureProxy

// IMP 0x4568
- (BOOL)respondsToSelector:(SEL)arg1 {
    local_0 = self;
    local_8 = VSQRCaptureProxy;
    id r1 = [super respondsToSelector:arg1];
    if (!(r1 & (1<<0))) goto L_45b0;
    goto L_45e4;
L_45b0:
    id r2 = [x21 target];
    [r2 respondsToSelector:x19];
L_45e4:
    return x19;
}

// IMP 0x45fc
- (id)forwardingTargetForSelector:(SEL)arg1 {
    id r1 = [self target];
    id r2 = [r1 respondsToSelector:arg1];
    if (r2 == 0) goto L_4668;
    [self target];
    goto L_4688;
L_4668:
    local_0 = x20;
    local_8 = VSQRCaptureProxy;
    [super forwardingTargetForSelector:x19];
L_4688:
    return x0;
}

// IMP 0x46a8
- (id)dataToShare {
    id r1 = [self target];
    if (@selector(dataToShare) == 0) goto L_4718;
    id r2 = [r1 respondsToSelector:@selector(dataToShare)];
    if (r2 == 0) goto L_4718;
    [r1 dataToShare];
    goto L_471c;
L_4718:
L_471c:
    return x20;
}

// IMP 0x473c
- (void)importedData:(id)arg1 code:(id)arg2 {
    id r1 = [self captured];
    if (r1 == 0) goto L_47a0;
    ((id(*)())(*(r1 + 0x10)))(r1, arg1, arg2);
L_47a0:
    return x0;
}

// IMP 0x47c4
- (void)setActivityiPadPopup:(id)arg1 {
    id r1 = [self target];
    if (@selector(setActivityiPadPopup:) == 0) goto L_484c;
    id r2 = [r1 respondsToSelector:@selector(setActivityiPadPopup:)];
    if (r2 == 0) goto L_484c;
    [r1 setActivityiPadPopup:arg1];
L_484c:
    return x0;
}

// IMP 0x4878
- (id)codePrefix {
    id r1 = [self target];
    if (@selector(codePrefix) == 0) goto L_48ec;
    id r2 = [r1 respondsToSelector:@selector(codePrefix)];
    if (r2 == 0) goto L_48ec;
    [r1 codePrefix];
    goto L_48f0;
L_48ec:
L_48f0:
    return ((x20 == 0) ? @"" : x20);
}

// IMP 0x4934
- (id)qrLabel {
    id r1 = [self target];
    if (@selector(qrLabel) == 0) goto L_49a8;
    id r2 = [r1 respondsToSelector:@selector(qrLabel)];
    if (r2 == 0) goto L_49a8;
    [r1 qrLabel];
    goto L_49ac;
L_49a8:
L_49ac:
    return ((x20 == 0) ? @"" : x20);
}

// IMP 0x49f0
- (id)qrSetupLabel {
    id r1 = [self target];
    if (@selector(qrSetupLabel) == 0) goto L_4a64;
    id r2 = [r1 respondsToSelector:@selector(qrSetupLabel)];
    if (r2 == 0) goto L_4a64;
    [r1 qrSetupLabel];
    goto L_4a68;
L_4a64:
L_4a68:
    return ((x20 == 0) ? @"" : x20);
}

// IMP 0x4aac
- (id)qrImage {
    id r1 = [self target];
    if (@selector(qrImage) == 0) goto L_4b1c;
    id r2 = [r1 respondsToSelector:@selector(qrImage)];
    if (r2 == 0) goto L_4b1c;
    [r1 qrImage];
    goto L_4b20;
L_4b1c:
L_4b20:
    return x20;
}

// IMP 0x4b40
- (id)qrIcon {
    id r1 = [self target];
    if (@selector(qrIcon) == 0) goto L_4bb0;
    id r2 = [r1 respondsToSelector:@selector(qrIcon)];
    if (r2 == 0) goto L_4bb0;
    [r1 qrIcon];
    goto L_4bb4;
L_4bb0:
L_4bb4:
    return x20;
}

// IMP 0x4bd4
- (BOOL)validCode:(id)arg1 {
    id r1 = [self target];
    if (r1 == 0) goto L_4c9c;
    id r2 = [self target];
    id r3 = [r2 respondsToSelector:@selector(validCode:)];
    if (r3 == 0) goto L_4c9c;
    id r4 = [self target];
    [r4 validCode:arg1];
    goto L_4ca0;
L_4c9c:
L_4ca0:
    return x20;
}

// IMP 0x4cc4
- (id)target {
    return self->_target;
}

// IMP 0x4cdc
- (void)setTarget:(id)arg1 {
    self->_target = arg1;
    return x0;
}

// IMP 0x4ce8
- (id /* block */)captured {
    id r1 = objc_getProperty();
    return r1;
}

// IMP 0x4cf4
- (void)setCaptured:(id /* block */)arg1 {
    id r1 = objc_setProperty_nonatomic_copy();
    return r1;
}

// IMP 0x4cfc
- (void).cxx_destruct {
    self->_captured = 0;
    return x0;
}

@end

// ======================= VSToolOverlay =======================
@implementation VSToolOverlay

// IMP 0x4d28
- (id)initWithFrame:(CGRect)arg1 {
    local_48 = self;
    local_50 = VSToolOverlay;
    id r1 = [super initWithFrame:CGRectMake(d0, d1, d2, d3)];
    if (r1 == 0) goto L_564c;
    local_40 = @selector(initWithFrame:);
    g_32728 = r1;
    local_38 = @selector(clearColor);
    id r2 = [UIColor clearColor];
    [r1 setBackgroundColor:r2];
    local_30 = @selector(setUserInteractionEnabled:);
    [r1 setUserInteractionEnabled:1];
    [r1 setAutoresizingMask:0x12];
    r1->_selectedTab = 0;
    r1->_activeFeature = -1;
    id r6 = [NSMutableArray arrayWithCapacity:4];
    r1->_featureStates = r6;
L_4e74:
    objc_msgSend(*(x22 + 0x148), x24);
    objc_msgSend(x19[x21], x25);
    if (x28 != 1) goto L_4e74;
    id r9 = [*(x20 + 0x140) array];
    x19->_mergeCodeImages = r9;
    id r10 = [*(x20 + 0x140) array];
    x19->_mergePresets = r10;
    id r11 = [*(x20 + 0x140) array];
    x19->_tempMergeNavigators = r11;
    x19->_beatSplitRunning = 0;
    x19->_beatSplitView = 0;
    x19->_beatSplitProject = 0;
    *&x19->_beatSplitLastTime = *kCMTimeInvalid;
    *(&x19->_beatSplitLastTime + 0x10) = *(kCMTimeInvalid + 0x10);
    id r12 = [[VSLogoView alloc] initWithFrame:CGRectMake(bits(0), bits(0), bits(0x404f000000000000), bits(0x404f000000000000))];
    x19->_logoControl = r12;
    [UIColor clearColor];
    objc_msgSend(x19->_logoControl, x23);
    id r15 = [*(page_32000 + 0x138) colorWithRed:lit_1de80 green:lit_1de88 blue:1.0 alpha:1.0];
    id r16 = [r15 CGColor];
    id r17 = [x19->_logoControl layer];
    [r17 setShadowColor:r16];
    id r19 = [x19->_logoControl layer];
    [r19 setShadowRadius:12.0];
    id r21 = [x19->_logoControl layer];
    [r21 setShadowOpacity:lit_1e140];
    id r23 = [x19->_logoControl layer];
    [r23 setShadowOffset:CGSizeMake(d8, d9)];
    id r25 = [x19->_logoControl bounds];
    id r26 = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(r25, r25.f1, r25.f2, r25.f3)];
    id r27 = [r26 CGPath];
    id r28 = [x19->_logoControl layer];
    [r28 setShadowPath:r27];
    [x19->_logoControl setClipsToBounds:0];
    id r31 = [[UIImageView alloc] initWithFrame:CGRectMake(*CGRectZero, *(CGRectZero + 0x8), *(CGRectZero + 0x10), *(CGRectZero + 0x18))];
    [r31 setContentMode:1];
    [r31 setClipsToBounds:0];
    id r34 = [x19 loadCustomLogo];
    local_40 = r34;
    if (r34 == 0) goto L_525c;
    [r31 setImage:r34];
    goto L_5288;
L_525c:
    if (0 != -1) goto L_5694;
L_526c:
    [x21 setImage:0];
L_5288:
    objc_msgSend(x21, x20);
    [x21 setTranslatesAutoresizingMaskIntoConstraints:0];
    local_38 = @selector(addSubview:);
    [x19[x26] addSubview:x21];
    local_18 = NSLayoutConstraint;
    id r40 = [x21 leadingAnchor];
    local_30 = r40;
    id r41 = [x19[x26] leadingAnchor];
    local_28 = r41;
    id r42 = [r40 constraintEqualToAnchor:r41];
    local_20 = r42;
    local_58 = r42;
    id r43 = [x21 trailingAnchor];
    local_10 = r43;
    id r44 = [x19[x26] trailingAnchor];
    local_8 = r44;
    id r45 = [r43 constraintEqualToAnchor:r44];
    local_0 = r45;
    local_60 = r45;
    id r46 = [x21 topAnchor];
    id r47 = [x19[x26] topAnchor];
    id r48 = [r46 constraintEqualToAnchor:r47];
    local_68 = r48;
    id r49 = [x21 bottomAnchor];
    id r50 = [x19[x26] bottomAnchor];
    id r51 = [r49 constraintEqualToAnchor:r50];
    local_70 = r51;
    id r52 = [NSArray arrayWithObjects:&local_58 count:4];
    [NSLayoutConstraint activateConstraints:r52];
    id r54 = [[UIPanGestureRecognizer alloc] initWithTarget:x19 action:@selector(handleLogoPan:)];
    x19->_logoPanGesture = r54;
    [x19->_logoPanGesture setMaximumNumberOfTouches:1];
    [x19->_logoPanGesture setMinimumNumberOfTouches:1];
    [x19->_logoPanGesture setCancelsTouchesInView:1];
    id r58 = [[UITapGestureRecognizer alloc] initWithTarget:x19 action:@selector(handleLogoTap:)];
    x19->_logoTapGesture = r58;
    [x19->_logoTapGesture setNumberOfTapsRequired:1];
    [x19->_logoTapGesture setNumberOfTouchesRequired:1];
    [x19->_logoTapGesture setCancelsTouchesInView:1];
    [x19->_logoTapGesture requireGestureRecognizerToFail:x19->_logoPanGesture];
    [x19[x26] addGestureRecognizer:x19->_logoPanGesture];
    [x19[x26] addGestureRecognizer:x19->_logoTapGesture];
    [x19 addSubview:x19[x26]];
    [x19 bringSubviewToFront:x19[x26]];
L_564c:
    return x19;
L_5694:
    dispatch_once(&g_32738, _NSConcreteGlobalBlock);
    goto L_526c;
}

// IMP 0x56f0
- (id)loadCustomLogo {
    id r1 = [NSData dataWithBytes:&sym_1e14c length:0x7aee];
    id r2 = [UIImage imageWithData:r1 scale:2.0];
    if (r2 == 0) goto L_5788;
    goto L_5a44;
L_5788:
    id r3 = NSHomeDirectory();
    id r4 = [@"Documents" stringByAppendingPathComponent:@"VideoStarToolLogo.png"];
    id r5 = [r3 stringByAppendingPathComponent:r4];
    frame_m70 = r5;
    id r6 = [NSBundle mainBundle];
    id r7 = [r6 bundlePath];
    local_0 = @selector(stringByAppendingPathComponent:);
    id r8 = [r7 stringByAppendingPathComponent:@"VideoStarToolLogo.png"];
    frame_m68 = r8;
    id r9 = [NSArray arrayWithObjects:&frame_m70 count:2];
    local_50 = 0.0;
    local_60 = 0.0;
    local_30 = 0.0;
    local_40 = 0.0;
    id r10 = [r9 countByEnumeratingWithState:&local_30 objects:&local_70 count:0x10];
    if (r10 == 0) goto L_5964;
L_58e0:
L_58f4:
    if (*local_40 == x26) goto L_590c;
    objc_enumerationMutation(x22);
L_590c:
    id r12 = objc_msgSend(*(x21 + 0x190), x25);
    if (r12 != 0) goto L_5a28;
    if (x27 != (x28 + 0x1)) goto L_58f4;
    id r13 = objc_msgSend(x22, x23);
    if (r13 != 0) goto L_58e0;
L_5964:
    id r14 = dladdr(&block_VSToolOverlay_loadCustomLogo_1, &local_10);
    if (r14 == 0) goto L_5a34;
    if (local_10 == 0) goto L_5a34;
    id r15 = [NSString stringWithUTF8String:local_10];
    id r16 = [r15 stringByDeletingLastPathComponent];
    id r17 = [r16 stringByAppendingPathComponent:@"VideoStarToolLogo.png"];
    id r18 = [*(x21 + 0x190) imageWithContentsOfFile:r17];
    if (r18 != 0) goto L_5a20;
L_5a20:
    goto L_5a2c;
L_5a28:
L_5a2c:
    goto L_5a38;
L_5a34:
L_5a38:
L_5a44:
    return x24;
}

// IMP 0x5a98
- (BOOL)pointInside:(CGPoint)arg1 withEvent:(id)arg2 {
    if (self->_panel == 0) goto L_5b04;
    id r1 = [self->_panel isHidden];
    if ((r1 & (1<<0))) goto L_5b04;
    [self->_panel frame];
    id r3 = CGRectContainsPoint();
    if ((r3 & (1<<0))) goto L_5b7c;
L_5b04:
    if (x20->_logoControl == 0) goto L_5b3c;
    [x20->_logoControl frame];
    CGRectInset(-8.0);
    id r6 = CGRectContainsPoint();
    if ((r6 & (1<<0))) goto L_5b7c;
L_5b3c:
    if (x20->_flowView == 0) goto L_5b84;
    id r7 = [x20->_flowView isHidden];
    if ((r7 & (1<<0))) goto L_5b84;
    [x20->_flowView frame];
    id r9 = CGRectContainsPoint();
    if (!(r9 & (1<<0))) goto L_5b84;
L_5b7c:
    goto L_5b88;
L_5b84:
L_5b88:
    return x20;
}

// IMP 0x5ba8
- (BOOL)gestureRecognizer:(id)arg1 shouldReceiveTouch:(id)arg2 {
    return 1;
}

// IMP 0x5bb0
- (BOOL)gestureRecognizer:(id)arg1 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)arg2 {
    return 0;
}

// IMP 0x5bb8
- (void)layoutSubviews {
    local_0 = self;
    local_8 = VSToolOverlay;
    [super layoutSubviews];
    [self bounds];
    id r3 = CGRectGetWidth();
    [self bounds];
    id r5 = CGRectGetHeight();
    if (r3 <= 0.0) goto L_5ec8;
    if (r5 <= 0.0) goto L_5ec8;
    id r6 = [self bounds];
    if (self->_didInitialLogoPosition == 0) goto L_5cc0;
    /* unknown insn 0x1e630420 */
    if (*&self->_lastOverlaySize == r6.f2) goto L_5d30;
    if (self->_logoGestureActive != 0) goto L_5d30;
    if (self->_hasSavedLogoPosition == 0) goto L_5d30;
    [self->_logoControl setCenter:CGPointMake((r3 * *&self->_normalizedLogoPosition), (r5 * *(&self->_normalizedLogoPosition + 0x8)))];
    goto L_5d20;
L_5cc0:
    if (x19->_hasSavedLogoPosition == 0) goto L_5ce8;
    goto L_5cfc;
L_5ce8:
L_5cfc:
    [x19->_logoControl setCenter:CGPointMake(d0, (d9 * d1))];
    x19->_didInitialLogoPosition = 1;
L_5d20:
    [x19 clampLogoPosition];
L_5d30:
    id r10 = objc_msgSend(x19, x20);
    *x21 = r10.f2;
    *(x21 + 0x8) = r10.f3;
    if (x19->_panel == 0) goto L_5ec8;
    if (x19->_panelPositionNeedsRestore == 0) goto L_5de4;
    [x19->_panel setBounds:CGRectMake(bits(0), bits(0), ?(fmin((d8 + -24.0), lit_1de98), lit_1dea8), ?(fmin((d9 + bits(0xc044000000000000)), lit_1dea0), lit_1deb0))];
    if (x19->_hasSavedPanelPosition == 0) goto L_5e44;
    goto L_5e4c;
L_5de4:
    if (x19->_didInitialPanelPosition == 0) goto L_5ee4;
    id r12 = [x0 center];
    [x19[x20] setBounds:CGRectMake(bits(0), bits(0), d10, d11)];
    [x19[x20] setCenter:CGPointMake(r12, r12.f1)];
    goto L_5e78;
L_5e44:
L_5e4c:
    [x19[x20] setCenter:CGPointMake((d8 * d0), (d9 * d1))];
    x19[x21] = 0;
    x19->_didInitialPanelPosition = 1;
L_5e78:
    [x19 clampPanelPosition];
    [x19 layoutPanelContents];
    if (x19->_flowView == 0) goto L_5ec8;
    id r18 = [x19->_flowView isHidden];
    if ((r18 & (1<<0))) goto L_5ec8;
    [x19 layoutFlowView];
L_5ec8:
    return;
L_5ee4:
    [x0 setFrame:CGRectMake(((d8 - d10) * 0.5), ((d9 - d11) * 0.5), d10, d11)];
    x19[x21] = 1;
    goto L_5e78;
}

// IMP 0x5f18
- (void)clampLogoPosition {
    if (self->_logoControl == 0) goto L_5f5c;
    [self bounds];
    id r2 = CGRectIsEmpty();
    if (!(r2 & (1<<0))) goto L_5f74;
L_5f5c:
    return;
L_5f74:
    id r3 = [x19->_logoControl center];
    [x19 bounds];
    id r5 = CGRectGetWidth();
    [x19 bounds];
    id r7 = CGRectGetHeight();
    id r8 = [x19->_logoControl setCenter:CGPointMake(((fmax(r3, bits(0x4040000000000000)) < (r5 + bits(0xc040000000000000))) ? fmax(r3, bits(0x4040000000000000)) : (r5 + bits(0xc040000000000000))), ((fmax(r3.f1, bits(0x4040000000000000)) < (r7 + bits(0xc040000000000000))) ? fmax(r3.f1, bits(0x4040000000000000)) : (r7 + bits(0xc040000000000000))))];
    return r8;
}

// IMP 0x6000
- (void)saveLogoPosition:(CGPoint)arg1 {
    [self bounds];
    id r2 = CGRectGetWidth();
    [self bounds];
    id r4 = CGRectGetHeight();
    *&self->_normalizedLogoPosition = (d0 / fmax(r2, 1.0));
    *(&self->_normalizedLogoPosition + 0x8) = (d1 / fmax(r4, 1.0));
    self->_hasSavedLogoPosition = 1;
    return;
}

// IMP 0x6094
- (void)handleLogoTap:(id)arg1 {
    id r1 = [arg1 state];
    if (r1 != 3) goto L_60cc;
    if (self->_logoGestureActive == 0) goto L_60d8;
L_60cc:
    return;
L_60d8:
    id r2 = [x19 togglePanel];
    return r2;
}

// IMP 0x60f0
- (void)handleLogoPan:(id)arg1 {
    id r1 = [arg1 state];
    if ((r1 - 3) >=u 3) goto L_6190;
    [self->_logoControl setAlpha:1.0];
    [self clampLogoPosition];
    [self->_logoControl center];
    [self saveLogoPosition:x2];
    self->_logoGestureActive = 0;
    goto L_62e4;
L_6190:
    if (x0 == 2) goto L_6208;
    if (x0 != 1) goto L_62e4;
    x20->_logoGestureActive = 1;
    id r6 = [x20->_logoControl center];
    *&x20->_logoPanStartCenter = r6;
    *(&x20->_logoPanStartCenter + 0x8) = r6.f1;
    [x20->_logoControl setAlpha:lit_1deb8];
    [x20 bringSubviewToFront:x20->_logoControl];
    goto L_62e4;
L_6208:
    id r9 = [x19 translationInView:x20];
    [x20->_logoControl bounds];
    id r11 = CGRectGetWidth();
    [x20->_logoControl bounds];
    id r13 = CGRectGetHeight();
    [x20 bounds];
    id r15 = CGRectGetWidth();
    [x20 bounds];
    id r17 = CGRectGetHeight();
    [x20->_logoControl setCenter:CGPointMake((((((r9 + *&x20->_logoPanStartCenter) < ((r11 * 0.5) + 4.0)) ? ((r11 * 0.5) + 4.0) : (r9 + *&x20->_logoPanStartCenter)) < ((r15 - (r11 * 0.5)) + -4.0)) ? (((r9 + *&x20->_logoPanStartCenter) < ((r11 * 0.5) + 4.0)) ? ((r11 * 0.5) + 4.0) : (r9 + *&x20->_logoPanStartCenter)) : ((r15 - (r11 * 0.5)) + -4.0)), (((((r9.f1 + *(&x20->_logoPanStartCenter + 0x8)) < ((r13 * 0.5) + 4.0)) ? ((r13 * 0.5) + 4.0) : (r9.f1 + *(&x20->_logoPanStartCenter + 0x8))) < ((r17 - (r13 * 0.5)) + -4.0)) ? (((r9.f1 + *(&x20->_logoPanStartCenter + 0x8)) < ((r13 * 0.5) + 4.0)) ? ((r13 * 0.5) + 4.0) : (r9.f1 + *(&x20->_logoPanStartCenter + 0x8))) : ((r17 - (r13 * 0.5)) + -4.0)))];
L_62e4:
    return x0;
}

// IMP 0x6304
- (void)togglePanel {
    id r1 = objc_msgSend(self, *((self->_panel == 0) ? @selector(openPanel) : @selector(closePanel)));
    return r1;
}

// IMP 0x6330
- (void)openPanel {
    local_68 = @selector(initWithFrame:);
    local_58 = *(CGRectZero + 0x18);
    id r1 = [[UIView alloc] initWithFrame:CGRectMake(*CGRectZero, *(CGRectZero + 0x8), *(CGRectZero + 0x10), *(CGRectZero + 0x18))];
    self->_panel = r1;
    id r2 = [UIColor colorWithRed:lit_1dec0 green:lit_1dec8 blue:lit_1ded0 alpha:lit_1ded8];
    [self->_panel setBackgroundColor:r2];
    id r4 = [self->_panel layer];
    local_d0 = @selector(setCornerRadius:);
    [r4 setCornerRadius:20.0];
    id r6 = [*(page_32000 + 0x138) colorWithRed:lit_1de80 green:lit_1de88 blue:1.0 alpha:1.0];
    local_e0 = @selector(CGColor);
    id r7 = [r6 CGColor];
    id r8 = [self->_panel layer];
    local_e8 = @selector(setBorderColor:);
    [r8 setBorderColor:r7];
    id r10 = [self->_panel layer];
    local_c8 = @selector(setBorderWidth:);
    [r10 setBorderWidth:1.5];
    id r12 = [*(page_32000 + 0x138) colorWithRed:d15 green:d9 blue:d14 alpha:d14];
    id r13 = [r12 CGColor];
    id r14 = [self->_panel layer];
    [r14 setShadowColor:r13];
    id r16 = [self->_panel layer];
    [r16 setShadowRadius:16.0];
    local_d8 = @selector(layer);
    id r18 = [self->_panel layer];
    [r18 setShadowOpacity:lit_1e144];
    id r20 = [self->_panel layer];
    [r20 setShadowOffset:CGSizeMake(d8, d12)];
    [self->_panel setClipsToBounds:0];
    id r23 = [[UIView alloc] initWithFrame:CGRectMake(d13, d10, d11, d8)];
    id r24 = [*(page_32000 + 0x138) colorWithRed:lit_1dee0 green:lit_1dee8 blue:lit_1def0 alpha:d14];
    local_18 = @selector(setBackgroundColor:);
    [r23 setBackgroundColor:r24];
    [r23 setTag:0x385];
    local_f0 = @selector(addSubview:);
    local_48 = r23;
    [self->_panel addSubview:r23];
    id r28 = [[UIImageView alloc] initWithFrame:CGRectMake(d13, d10, d11, d8)];
    local_90 = @selector(systemImageNamed:);
    id r29 = [UIImage systemImageNamed:@"star.fill"];
    local_a8 = @selector(setImage:);
    [r28 setImage:r29];
    id r31 = [*(page_32000 + 0x138) colorWithRed:d15 green:d9 blue:d14 alpha:d14];
    local_b0 = @selector(setTintColor:);
    [r28 setTintColor:r31];
    [r28 setContentMode:1];
    local_98 = @selector(setTag:);
    [r28 setTag:0x386];
    local_20 = r28;
    [self->_panel addSubview:r28];
    id r36 = [[UILabel alloc] initWithFrame:CGRectMake(d13, d10, d11, d8)];
    self->_brandLabel = r36;
    [self->_brandLabel setText:@"VideoStar Tool"];
    local_60 = @selector(colorWithRed:green:blue:alpha:);
    id r38 = [*(page_32000 + 0x138) colorWithRed:d15 green:d9 blue:d14 alpha:d14];
    [self->_brandLabel setTextColor:r38];
    id r40 = [UIFont systemFontOfSize:22.0 weight:*UIFontWeightBold];
    [self->_brandLabel setFont:r40];
    [self->_panel addSubview:self->_brandLabel];
    id r43 = [[UILabel alloc] initWithFrame:CGRectMake(d13, d10, d11, d8)];
    self->_subtitleLabel = r43;
    [self->_subtitleLabel setText:@"Make by tele: @tuancuongcrack"];
    id r45 = [UIColor colorWithRed:d15 green:d9 blue:d14 alpha:d14];
    local_0 = @selector(setTextColor:);
    [self->_subtitleLabel setTextColor:r45];
    local_c0 = @selector(systemFontOfSize:weight:);
    id r47 = [*(page_32000 + 0x1b8) systemFontOfSize:12.0 weight:*UIFontWeightMedium];
    local_b8 = @selector(setFont:);
    [self->_subtitleLabel setFont:r47];
    [self->_panel addSubview:self->_subtitleLabel];
    local_88 = @selector(buttonWithType:);
    id r50 = [UIButton buttonWithType:1];
    self->_closeButton = r50;
    id r51 = [UIImageSymbolConfiguration configurationWithPointSize:14.0 weight:d1];
    local_10 = r51;
    id r52 = [UIImage systemImageNamed:@"xmark" withConfiguration:r51];
    id r53 = [UIButtonConfiguration plainButtonConfiguration];
    local_8 = r52;
    [r53 setImage:r52];
    [r53 setContentInsets:UIEdgeInsetsMake(bits(0), bits(0), bits(0), bits(0))];
    id r56 = [*(page_32000 + 0x138) whiteColor];
    [r53 setBaseForegroundColor:r56];
    [self->_closeButton setConfiguration:r53];
    id r59 = [*(page_32000 + 0x138) whiteColor];
    [self->_closeButton setTintColor:r59];
    id r61 = [self->_closeButton layer];
    [r61 setCornerRadius:16.0];
    id r63 = [*(page_32000 + 0x138) colorWithRed:lit_1def8 green:lit_1df00 blue:lit_1df08 alpha:lit_1df10];
    id r64 = [r63 CGColor];
    id r65 = [self->_closeButton layer];
    [r65 setBorderColor:r64];
    id r67 = [self->_closeButton layer];
    [r67 setBorderWidth:d14];
    local_80 = @selector(addTarget:action:forControlEvents:);
    [self->_closeButton addTarget:self action:@selector(closePanel) forControlEvents:0x40];
    [self->_panel addSubview:self->_closeButton];
    frame_mb8 = @"Home";
    frame_mb0 = @"Function";
    frame_ma8 = @"Dev";
    id r71 = [NSArray arrayWithObjects:&frame_mb8 count:3];
    local_b0 = r71;
    frame_md0 = @"house.fill";
    frame_mc8 = @"gearshape";
    frame_mc0 = @"chevron.left.forwardslash.chevron.right";
    id r72 = [*(page_32000 + 0x170) arrayWithObjects:&frame_md0 count:3];
    local_a8 = r72;
    id r73 = [NSMutableArray array];
    local_a0 = r73;
    local_70 = @selector(setImage:forState:);
    local_78 = @selector(titleLabel);
L_6da0:
    id r74 = [UIButton buttonWithType:1];
    [r74 setTag:x22];
    id r76 = [r74 layer];
    [r76 setCornerRadius:d12];
    id r78 = [r74 layer];
    [r78 setBorderWidth:d14];
    id r80 = [UIFont systemFontOfSize:d13 weight:d15];
    id r81 = objc_msgSend(r74, local_78);
    [r81 setFont:r80];
    id r83 = objc_msgSend(local_a8, x20);
    [UIImage systemImageNamed:r83];
    objc_msgSend(r74, local_70);
    objc_msgSend(local_b0, x20);
    objc_msgSend(r74, x27);
    objc_msgSend(r74, x28);
    objc_msgSend(r74, x26);
    [r74 addTarget:@selector(setBorderColor:) action:x19 forControlEvents:0x40];
    [@selector(setBorderColor:)[@selector(CGColor)] addSubview:r74];
    objc_msgSend(local_a0, x25);
    if ((x22 + 0x1) != 3) goto L_6da0;
    @selector(setBorderColor:)->_tabButtons = local_a0;
    local_d8 = local_a0;
    id r93 = [[UIScrollView alloc] initWithFrame:CGRectMake(d12, d10, d11, d15)];
    @selector(setBorderColor:)->_contentScrollView = r93;
    [@selector(setBorderColor:)->_contentScrollView setShowsVerticalScrollIndicator:0];
    [@selector(setBorderColor:)->_contentScrollView setAlwaysBounceVertical:0];
    [@selector(setBorderColor:)[@selector(CGColor)] addSubview:@selector(setBorderColor:)->_contentScrollView];
    id r97 = [[UIView alloc] initWithFrame:CGRectMake(d12, d10, d11, d15)];
    @selector(setBorderColor:)->_footerLeftRule = r97;
    id r98 = [UIColor colorWithRed:d13 green:d9 blue:1.0 alpha:1.0];
    [@selector(setBorderColor:)->_footerLeftRule setBackgroundColor:r98];
    [@selector(setBorderColor:)->_footerLeftRule setAlpha:lit_1df18];
    [@selector(setBorderColor:)[@selector(CGColor)] addSubview:@selector(setBorderColor:)->_footerLeftRule];
    id r102 = [[*(page_32000 + 0x1a8) alloc] initWithFrame:CGRectMake(d12, d10, d11, d15)];
    @selector(setBorderColor:)->_footerRightRule = r102;
    id r103 = [UIColor colorWithRed:d13 green:d9 blue:d14 alpha:d14];
    [@selector(setBorderColor:)->_footerRightRule setBackgroundColor:r103];
    [@selector(setBorderColor:)->_footerRightRule setAlpha:d8];
    [@selector(setBorderColor:)[@selector(CGColor)] addSubview:@selector(setBorderColor:)->_footerRightRule];
    id r107 = [[UILabel alloc] initWithFrame:CGRectMake(d12, d10, d11, d15)];
    @selector(setBorderColor:)->_footerLabel = r107;
    frame_me0 = *NSKernAttributeName;
    id r108 = [NSNumber numberWithDouble:0.5];
    frame_md8 = r108;
    id r109 = [NSDictionary dictionaryWithObjects:&frame_md8 forKeys:&frame_me0 count:1];
    id r110 = [[NSAttributedString alloc] initWithString:@"VIDEOSTAR  ·  QIOS" attributes:r109];
    [@selector(setBorderColor:)->_footerLabel setAttributedText:r110];
    [@selector(setBorderColor:)->_footerLabel setTextAlignment:1];
    id r113 = [UIColor colorWithRed:d13 green:d9 blue:d14 alpha:d14];
    [@selector(setBorderColor:)->_footerLabel setTextColor:r113];
    id r115 = [UIFont systemFontOfSize:8.0 weight:*UIFontWeightSemibold];
    [@selector(setBorderColor:)->_footerLabel setFont:r115];
    [@selector(setBorderColor:)[@selector(CGColor)] addSubview:@selector(setBorderColor:)->_footerLabel];
    [@selector(setBorderColor:) addSubview:@selector(setBorderColor:)[@selector(CGColor)]];
    @selector(setBorderColor:)->_panelPositionNeedsRestore = 1;
    @selector(setBorderColor:)->_didInitialPanelPosition = 0;
    [@selector(setBorderColor:) bringSubviewToFront:@selector(setBorderColor:)[@selector(CGColor)]];
    [@selector(setBorderColor:) bringSubviewToFront:@selector(setBorderColor:)->_logoControl];
    id r121 = [[UIView alloc] initWithFrame:CGRectMake(d12, d10, d11, d15)];
    @selector(setBorderColor:)->_panelDragHandle = r121;
    [@selector(setBorderColor:)->_panelDragHandle setUserInteractionEnabled:1];
    [@selector(setBorderColor:)[@selector(CGColor)] addSubview:@selector(setBorderColor:)->_panelDragHandle];
    id r124 = [[UIPanGestureRecognizer alloc] initWithTarget:@selector(setBorderColor:) action:@selector(handlePanelPan:)];
    @selector(setBorderColor:)->_panelPanGesture = r124;
    [@selector(setBorderColor:)->_panelPanGesture setMaximumNumberOfTouches:1];
    [@selector(setBorderColor:)->_panelDragHandle addGestureRecognizer:@selector(setBorderColor:)->_panelPanGesture];
    @selector(setBorderColor:)->_lastPanelSize = *CGSizeZero;
    [@selector(setBorderColor:)[@selector(CGColor)] setAlpha:bits(0)];
    id r128 = CGAffineTransformMakeScale(lit_1df20);
    local_120 = local_150;
    local_130 = local_160;
    local_140 = local_170;
    [@selector(setBorderColor:)[@selector(CGColor)] setTransform:CGAffineTransformMake(local_170, local_160, r128.f2, r128.f3, d4, d5)];
    [@selector(setBorderColor:) setNeedsLayout];
    local_f8 = _NSConcreteStackBlock;
    local_100 = lit_1df28;
    local_108 = &block_VSToolOverlay_openPanel_1;
    local_110 = &g_2c0e8;
    local_118 = @selector(setBorderColor:);
    [*(page_32000 + 0x1a8) animateWithDuration:lit_1df30 animations:&local_f8];
    return;
}

// IMP 0x7644
- (void)clampPanelPosition {
    if (self->_panel == 0) goto L_768c;
    [self bounds];
    id r2 = CGRectIsEmpty();
    if (!(r2 & (1<<0))) goto L_76a8;
L_768c:
    return;
L_76a8:
    [x19->_panel bounds];
    id r4 = CGRectGetWidth();
    [x19->_panel bounds];
    id r6 = CGRectGetHeight();
    id r7 = [x19->_panel center];
    [x19 bounds];
    id r9 = CGRectGetWidth();
    [x19 bounds];
    id r11 = CGRectGetHeight();
    id r12 = [x19->_panel setCenter:CGPointMake(((((r7 < ((r4 * 0.5) + 6.0)) ? ((r4 * 0.5) + 6.0) : r7) < ((r9 - (r4 * 0.5)) + -6.0)) ? ((r7 < ((r4 * 0.5) + 6.0)) ? ((r4 * 0.5) + 6.0) : r7) : ((r9 - (r4 * 0.5)) + -6.0)), ((((r7.f1 < ((r6 * 0.5) + 6.0)) ? ((r6 * 0.5) + 6.0) : r7.f1) < ((r11 - (r6 * 0.5)) + -6.0)) ? ((r7.f1 < ((r6 * 0.5) + 6.0)) ? ((r6 * 0.5) + 6.0) : r7.f1) : ((r11 - (r6 * 0.5)) + -6.0)))];
    return r12;
}

// IMP 0x7774
- (void)handlePanelPan:(id)arg1 {
    if (self->_panel == 0) goto L_7934;
    id r1 = [arg1 state];
    if (r1 != 1) goto L_77f0;
    id r2 = [self->_panel center];
    *&self->_panelPanStartCenter = r2;
    *(&self->_panelPanStartCenter + 0x8) = r2.f1;
    goto L_7934;
L_77f0:
    id r3 = objc_msgSend(x19, x21);
    if (r3 != 2) goto L_78d8;
    [x19 translationInView:x20];
    [x20->_panel bounds];
    CGRectGetWidth();
    [x20->_panel bounds];
    CGRectGetHeight();
    [x20 bounds];
    CGRectGetWidth();
    [x20 bounds];
    CGRectGetHeight();
    goto L_7930;
L_78d8:
    id r13 = objc_msgSend(x19, x21);
    if (r13 == 3) goto L_7914;
    id r14 = objc_msgSend(x19, x21);
    if (r14 == 4) goto L_7914;
    id r15 = objc_msgSend(x19, x21);
    if (r15 != 5) goto L_7934;
L_7914:
    [x20->_panel center];
L_7930:
    objc_msgSend(x0, x1);
L_7934:
    return x0;
}

// IMP 0x7954
- (void)savePanelPosition:(CGPoint)arg1 {
    [self bounds];
    id r2 = CGRectGetWidth();
    [self bounds];
    id r4 = CGRectGetHeight();
    *&self->_normalizedPanelPosition = (d0 / fmax(r2, 1.0));
    *(&self->_normalizedPanelPosition + 0x8) = (d1 / fmax(r4, 1.0));
    self->_hasSavedPanelPosition = 1;
    return;
}

// IMP 0x79e8
- (void)closePanel {
    if (self->_panel == 0) goto L_7ae8;
    [self->_panel center];
    [self savePanelPosition:x2];
    self->_panel = 0;
    local_28 = _NSConcreteStackBlock;
    local_38 = &block_VSToolOverlay_closePanel_1;
    local_40 = &g_2c0e8;
    local_48 = self->_panel;
    local_0 = _NSConcreteStackBlock;
    local_10 = &block_VSToolOverlay_closePanel_2;
    local_18 = &g_2c118;
    local_20 = self->_panel;
    [UIView animateWithDuration:lit_1df38 animations:&local_28 completion:&local_0];
L_7ae8:
    return;
}

// IMP 0x7b80
- (void)selectTab:(id)arg1 {
    id r1 = [arg1 tag];
    self->_selectedTab = r1;
    [self updateTabAppearance];
    id r3 = [self renderSelectedTab];
    return r3;
}

// IMP 0x7bd4
- (void)updateTabAppearance {
    local_8 = _NSConcreteGlobalBlock;
    local_10 = lit_1df48;
    local_18 = &block_VSToolOverlay_updateTabAppearance_1;
    local_20 = &g_2c148;
    local_28 = self;
    [self->_tabButtons enumerateObjectsUsingBlock:&local_8];
    return;
}

// IMP 0x7e80
- (void)layoutPanelContents {
    [self->_panel bounds];
    id r2 = [self->_panel viewWithTag:0x385];
    [r2 setFrame:CGRectMake(16.0, bits(0x4052000000000000), d10, 1.0)];
    id r4 = [self->_panel viewWithTag:0x386];
    [r4 setFrame:CGRectMake(18.0, 18.0, bits(0x4043000000000000), bits(0x4043000000000000))];
    [self->_brandLabel setFrame:CGRectMake(bits(0x4050000000000000), d10, (d8 + bits(0xc061000000000000)), 29.0)];
    [self->_subtitleLabel setFrame:CGRectMake(lit_1dfb8, bits(0x4047000000000000), (d8 + lit_1dfb0), d10)];
    [self->_panelDragHandle setFrame:CGRectMake(12.0, 10.0, ?((d8 + lit_1dfc0), bits(0x405e000000000000)), bits(0x404e000000000000))];
    id r9 = [self->_panel viewWithTag:0x387];
    [r9 setFrame:CGRectMake(bits(0), (d9 + bits(0xc04a000000000000)), d8, d10)];
    [r9 setTextAlignment:1];
    [self->_closeButton setFrame:CGRectMake((d8 + bits(0xc049000000000000)), d10, bits(0x4040000000000000), bits(0x4040000000000000))];
    id r13 = [self->_tabButtons count];
    if (r13 == 0) goto L_814c;
L_80ec:
    id r14 = objc_msgSend(x19->_tabButtons, x23);
    [r14 setFrame:CGRectMake(d13, d11, d10, d12)];
    id r16 = objc_msgSend(x19->_tabButtons, x24);
    if ((x22 + 0x1) <u r16) goto L_80ec;
L_814c:
    [x19->_contentScrollView setFrame:CGRectMake(13.0, lit_1dfd8, (d8 + -26.0), ?((d9 + bits(0xc066000000000000)), bits(0x4044000000000000)))];
    [x19->_footerLeftRule setFrame:CGRectMake(20.0, (d9 + -21.0), ?(((d8 + bits(0xc067000000000000)) * 0.5), 24.0), 1.0)];
    [x19->_footerRightRule setFrame:CGRectMake(((d8 + -20.0) - ?(((d8 + bits(0xc067000000000000)) * 0.5), 24.0)), (d9 + -21.0), ?(((d8 + bits(0xc067000000000000)) * 0.5), 24.0), 1.0)];
    [x19->_footerLabel setFrame:CGRectMake(((d8 + lit_1dfe0) * 0.5), (d9 + -29.0), lit_1dfe8, 16.0)];
    if (*&x19->_lastPanelSize != d8) goto L_8260;
    if (*(&x19->_lastPanelSize + 0x8) == d9) goto L_8274;
L_8260:
    *x8 = d8;
    *(x8 + 0x8) = d9;
    [x19 renderSelectedTab];
L_8274:
    [x19 updateTabAppearance];
    return x0;
}

// IMP 0x82b0
- (void)renderSelectedTab {
    if (self->_contentScrollView == 0) goto L_8460;
    id r1 = [self->_panel viewWithTag:0x387];
    [r1 removeFromSuperview];
    local_20 = 0.0;
    local_30 = 0.0;
    local_0 = 0.0;
    local_10 = 0.0;
    id r3 = [self->_contentScrollView subviews];
    id r4 = [r3 copy];
    id r5 = [r4 countByEnumeratingWithState:&local_0 objects:&local_48 count:0x10];
    if (r5 == 0) goto L_83fc;
L_83a4:
L_83a8:
    if (*local_10 == x25) goto L_83c0;
    objc_enumerationMutation(x21);
L_83c0:
    [local_8[(x26 << 3)] removeFromSuperview];
    if ((x26 + 0x1) <u x23) goto L_83a8;
    id r8 = objc_msgSend(x21, x22);
    if (r8 != 0) goto L_83a4;
L_83fc:
    id r9 = [x19->_contentScrollView bounds];
    if (r9.f2 <= 0.0) goto L_8460;
    if (x19->_selectedTab == 1) goto L_8440;
    if (x19->_selectedTab != 0) goto L_844c;
    goto L_8454;
L_8440:
    goto L_8454;
L_844c:
L_8454:
    objc_msgSend(x19, x1);
L_8460:
    return;
}

// IMP 0x849c
- (id)labelWithText:(id)arg1 font:(id)arg2 color:(id)arg3 frame:(CGRect)arg4 {
    id r1 = [[UILabel alloc] initWithFrame:CGRectMake(d11, d10, d9, d8)];
    [r1 setText:arg1];
    [r1 setFont:arg2];
    [r1 setTextColor:arg3];
    [r1 setNumberOfLines:0];
    return r1;
}

// IMP 0x85a0
- (void)renderHomeWithWidth:(double)arg1 {
    local_10 = @selector(systemFontOfSize:weight:);
    id r1 = [UIFont systemFontOfSize:24.0 weight:*UIFontWeightBold];
    id r2 = [UIColor whiteColor];
    local_8 = @selector(labelWithText:font:color:frame:);
    id r3 = [self labelWithText:@"Xin chào!" font:r1 color:r2 frame:x5];
    local_0 = @selector(addSubview:);
    [self->_contentScrollView addSubview:r3];
    id r5 = [*(page_32000 + 0x1b8) systemFontOfSize:15.0];
    id r6 = [*(page_32000 + 0x138) colorWithRed:lit_1dff0 green:lit_1dff8 blue:lit_1e000 alpha:1.0];
    id r7 = [self labelWithText:@"Đây là VideoStar Tool, 1 công cụ giúp bạn sử dụng VideoStar thuận tiện, nhanh chóng và dễ dàng hơn." font:r5 color:r6 frame:x5];
    id r8 = [NSMutableParagraphStyle new];
    [r8 setLineSpacing:1.5];
    local_30 = r8;
    local_18 = *NSParagraphStyleAttributeName;
    local_20 = *NSFontAttributeName;
    id r10 = [r7 font];
    local_38 = r10;
    local_28 = *NSForegroundColorAttributeName;
    id r11 = [r7 textColor];
    local_40 = r11;
    id r12 = [NSDictionary dictionaryWithObjects:&local_30 forKeys:&local_18 count:3];
    id r13 = [[NSAttributedString alloc] initWithString:@"Đây là VideoStar Tool, 1 công cụ giúp bạn sử dụng VideoStar thuận tiện, nhanh chóng và dễ dàng hơn." attributes:r12];
    [r7 setAttributedText:r13];
    [self->_contentScrollView addSubview:r7];
    [self->_contentScrollView setScrollEnabled:0];
    [self->_contentScrollView setContentOffset:CGPointMake(*CGPointZero, *(CGPointZero + 0x8))];
    id r18 = [self->_contentScrollView bounds];
    [self->_contentScrollView setContentSize:CGSizeMake(r18.f2, r18.f3)];
    id r20 = [UIFont systemFontOfSize:11.5 weight:*UIFontWeightMedium];
    id r21 = [UIColor colorWithRed:lit_1de80 green:lit_1de88 blue:d8 alpha:d8];
    [self->_panel bounds];
    CGRectGetHeight();
    [self->_panel bounds];
    CGRectGetWidth();
    id r26 = [self labelWithText:@"Phiên bản đang sử dụng: V1.0" font:r20 color:r21 frame:x5];
    [r26 setTag:0x387];
    [r26 setTextAlignment:1];
    [self->_panel addSubview:r26];
    return;
}

// IMP 0x8a84
- (void)renderFunctionsWithWidth:(double)arg1 {
    frame_md8 = self;
    [self->_contentScrollView setScrollEnabled:1];
    frame_mc0 = @"Auto nhập ảnh vào các lớp hình ảnh";
    frame_mb8 = @"Hiển thị code gần nhất từng nhập";
    frame_mb0 = @"Auto chia beat";
    frame_ma8 = @"Auto nhập code và ảnh vào các phân cảnh";
    id r2 = [NSArray arrayWithObjects:&frame_mc0 count:4];
    id r3 = [r2 count];
    if (r3 == 0) goto L_8f90;
    frame_me0 = IVAR_0x60;
    local_e8 = @selector(objectAtIndexedSubscript:);
    local_e0 = *UIFontWeightMedium;
    local_d8 = @selector(systemFontOfSize:weight:);
    local_c8 = (d8 + bits(0xc057000000000000));
    local_b8 = @selector(setTextAlignment:);
    local_c0 = @selector(labelWithText:font:color:frame:);
    local_b0 = @selector(initWithFrame:);
    local_a0 = *(CGRectZero + 0x8);
    local_a8 = *CGRectZero;
    local_90 = *(CGRectZero + 0x18);
    local_98 = *(CGRectZero + 0x10);
    local_80 = @selector(setOnTintColor:);
    local_88 = @selector(setTag:);
    local_70 = @selector(setOn:);
    local_78 = @selector(boolValue);
    local_68 = @selector(featureSwitchChanged:);
    local_50 = @selector(sizeToFit);
    local_58 = @selector(addTarget:action:forControlEvents:);
    local_48 = @selector(setCenter:);
    local_38 = (d8 + -16.0);
    local_30 = @selector(setBackgroundColor:);
    local_28 = lit_1e028;
    local_20 = lit_1e030;
    local_18 = lit_1e038;
    local_10 = lit_1e040;
    local_40 = IVAR_0x100;
    local_d0 = r2;
    frame_md0 = @selector(colorWithRed:green:blue:alpha:);
    local_60 = *(page_31000 + 0x918);
    frame_mc8 = @selector(addSubview:);
L_8ce0:
    [x25 objectAtIndexedSubscript:x21];
    [UIFont systemFontOfSize:15.0 weight:local_e0];
    objc_msgSend(*(page_32000 + 0x138), x28);
    id r7 = objc_msgSend(frame_md8, local_c0);
    objc_msgSend(r7, local_b8);
    [frame_md8->_contentScrollView addSubview:r7];
    id r10 = [[UISwitch alloc] initWithFrame:CGRectMake(local_a8, local_a0, local_98, local_90)];
    objc_msgSend(r10, local_88);
    [*(page_32000 + 0x138) colorWithRed:d12 green:d13 blue:d11 alpha:d11];
    objc_msgSend(r10, local_80);
    id r14 = [frame_md8->_featureStates objectAtIndexedSubscript:x21];
    objc_msgSend(r14, local_78);
    objc_msgSend(r10, local_70);
    objc_msgSend(r10, local_58);
    objc_msgSend(r10, local_50);
    [r10 setCenter:CGPointMake(d15, (d14 + bits(0x4045000000000000)))];
    [frame_md8->_contentScrollView addSubview:r10];
    if (x21 == 0) goto L_8f58;
    id r21 = [[UIView alloc] initWithFrame:CGRectMake(8.0, d14, local_38, d11)];
    id r22 = [*(page_32000 + 0x138) colorWithRed:local_28 green:local_20 blue:local_18 alpha:local_10];
    [r21 setBackgroundColor:r22];
    [frame_md8->_contentScrollView addSubview:r21];
L_8f58:
    id r25 = objc_msgSend(local_d0, local_60);
    if ((x21 + 0x1) <u r25) goto L_8ce0;
L_8f90:
    id r26 = objc_msgSend(x25, x22);
    [frame_md8[x20] setContentSize:CGSizeMake(d8, ((double)(unsigned)r26 * bits(0x4055000000000000)))];
    return;
}

// IMP 0x9018
- (void)renderDeveloperWithWidth:(double)arg1 {
    [self->_contentScrollView setScrollEnabled:0];
    [self->_contentScrollView setContentOffset:CGPointMake(*CGPointZero, *(CGPointZero + 0x8))];
    id r3 = [UIFont systemFontOfSize:17.0 weight:*UIFontWeightSemibold];
    id r4 = [UIColor whiteColor];
    id r5 = [self labelWithText:@"Người tạo ra sản phẩm này là QuangIos/QIOS" font:r3 color:r4 frame:x5];
    [r5 setTextAlignment:0];
    [self->_contentScrollView addSubview:r5];
    id r8 = [*(page_32000 + 0x1b8) systemFontOfSize:16.0 weight:*UIFontWeightMedium];
    id r9 = [*(page_32000 + 0x138) colorWithRed:lit_1de80 green:lit_1de88 blue:1.0 alpha:1.0];
    id r10 = [self labelWithText:@"Telegram: @tuancuongcrack" font:r8 color:r9 frame:x5];
    [r10 setTextAlignment:0];
    [self->_contentScrollView addSubview:r10];
    id r13 = [self->_contentScrollView bounds];
    [self->_contentScrollView setContentSize:CGSizeMake(r13.f2, r13.f3)];
    return x0;
}

// IMP 0x9278
- (void)ensureFlowView {
    if (self->_flowView == 0) goto L_92e8;
    return;
L_92e8:
    local_18 = *CGRectZero;
    id r1 = [[UIView alloc] initWithFrame:CGRectMake(*CGRectZero, *(CGRectZero + 0x8), *(CGRectZero + 0x10), *(CGRectZero + 0x18))];
    x0->_flowView = r1;
    local_20 = lit_1ded0;
    id r2 = [UIColor colorWithRed:lit_1dec0 green:lit_1dec8 blue:lit_1ded0 alpha:lit_1ded8];
    local_48 = @selector(setBackgroundColor:);
    [x0->_flowView setBackgroundColor:r2];
    id r4 = [x0->_flowView layer];
    local_40 = @selector(setCornerRadius:);
    [r4 setCornerRadius:18.0];
    id r6 = [x0->_flowView layer];
    local_38 = @selector(setBorderWidth:);
    [r6 setBorderWidth:lit_1e048];
    id r8 = [*(page_32000 + 0x138) colorWithRed:lit_1de80 green:lit_1de88 blue:1.0 alpha:1.0];
    local_28 = @selector(CGColor);
    id r9 = [r8 CGColor];
    id r10 = [x0->_flowView layer];
    local_30 = @selector(setBorderColor:);
    [r10 setBorderColor:r9];
    id r12 = [*(page_32000 + 0x138) colorWithRed:d10 green:d11 blue:d9 alpha:d9];
    id r13 = [r12 CGColor];
    id r14 = [x0->_flowView layer];
    [r14 setShadowColor:r13];
    id r16 = [x0->_flowView layer];
    [r16 setShadowOpacity:0.25];
    local_8 = @selector(layer);
    id r18 = [x0->_flowView layer];
    [r18 setShadowRadius:14.0];
    id r20 = [x0->_flowView layer];
    [r20 setShadowOffset:CGSizeMake(d8, d12)];
    [x0 addSubview:x0->_flowView];
    id r23 = [[UILabel alloc] initWithFrame:CGRectMake(d8, d13, d14, d15)];
    x0->_flowTitle = r23;
    id r24 = [*(page_32000 + 0x138) colorWithRed:d10 green:d11 blue:d9 alpha:d9];
    [x0->_flowTitle setTextColor:r24];
    id r26 = [UIFont systemFontOfSize:18.0 weight:*UIFontWeightBold];
    [x0->_flowTitle setFont:r26];
    [x0->_flowView addSubview:x0->_flowTitle];
    id r29 = [[UILabel alloc] initWithFrame:CGRectMake(d8, d13, d14, d15)];
    x0->_flowMessage = r29;
    id r30 = [*(page_32000 + 0x138) colorWithRed:lit_1e050 green:lit_1e058 blue:lit_1e060 alpha:d9];
    [x0->_flowMessage setTextColor:r30];
    id r32 = [UIFont systemFontOfSize:13.0];
    [x0->_flowMessage setFont:r32];
    [x0->_flowMessage setNumberOfLines:0];
    local_10 = @selector(addSubview:);
    [x0->_flowView addSubview:x0->_flowMessage];
    id r36 = [[UIScrollView alloc] initWithFrame:CGRectMake(d8, d13, d14, d15)];
    x0->_flowScroll = r36;
    [x0->_flowScroll setShowsVerticalScrollIndicator:0];
    [x0->_flowView addSubview:x0->_flowScroll];
    id r39 = [UIButton buttonWithType:1];
    x0->_flowPrimaryButton = r39;
    id r40 = [x0->_flowPrimaryButton layer];
    [r40 setCornerRadius:11.0];
    id r42 = [x0->_flowPrimaryButton layer];
    [r42 setBorderWidth:d9];
    id r44 = [UIColor colorWithRed:d10 green:d11 blue:d9 alpha:d9];
    id r45 = [r44 CGColor];
    id r46 = [x0->_flowPrimaryButton layer];
    [r46 setBorderColor:r45];
    id r48 = [*(page_32000 + 0x138) colorWithRed:lit_1df90 green:lit_1df98 blue:lit_1dfa0 alpha:lit_1de90];
    [x0->_flowPrimaryButton setBackgroundColor:r48];
    id r50 = [*(page_32000 + 0x138) colorWithRed:d10 green:d11 blue:d9 alpha:d9];
    local_18 = @selector(setTitleColor:forState:);
    [x0->_flowPrimaryButton setTitleColor:r50 forState:0];
    [x0->_flowPrimaryButton addTarget:x0 action:@selector(flowPrimaryTapped) forControlEvents:0x40];
    [x0->_flowView addSubview:x0->_flowPrimaryButton];
    id r54 = [UIButton buttonWithType:1];
    x0->_flowSecondaryButton = r54;
    id r55 = [x0->_flowSecondaryButton layer];
    [r55 setCornerRadius:d8];
    id r57 = [x0->_flowSecondaryButton layer];
    [r57 setBorderWidth:d9];
    id r59 = [*(page_32000 + 0x138) colorWithRed:lit_1df68 green:lit_1df70 blue:lit_1df78 alpha:d9];
    id r60 = [r59 CGColor];
    id r61 = [x0->_flowSecondaryButton layer];
    [r61 setBorderColor:r60];
    id r63 = [*(page_32000 + 0x138) colorWithRed:lit_1df80 green:lit_1ded0 blue:lit_1df88 alpha:lit_1df10];
    [x0->_flowSecondaryButton setBackgroundColor:r63];
    id r65 = [*(page_32000 + 0x138) colorWithRed:lit_1df50 green:lit_1df58 blue:lit_1df60 alpha:d9];
    [x0->_flowSecondaryButton setTitleColor:r65 forState:0];
    [x0->_flowSecondaryButton addTarget:x0 action:@selector(flowSecondaryTapped) forControlEvents:0x40];
    id r68 = [x0->_flowView addSubview:x0->_flowSecondaryButton];
    return r68;
}

// IMP 0x9bec
- (void)layoutFlowView {
    if (self->_flowView == 0) goto L_9ca0;
    [self bounds];
    CGRectGetWidth();
    if (self->_flowImageView == 0) goto L_9c7c;
    id r3 = [self->_flowImageView isHidden];
    if (!(r3 & (1<<0))) goto L_9cc0;
L_9c7c:
    IVAR_0x128 = x8;
    id r4 = objc_msgSend(x19[x8], x21);
    if (!(r4 & (1<<0))) goto L_9cf8;
    goto L_9d2c;
L_9ca0:
    return;
L_9cc0:
    objc_msgSend(x19, x20);
    CGRectGetHeight();
    goto L_9d2c;
L_9cf8:
    objc_msgSend(x19, x20);
    CGRectGetHeight();
L_9d2c:
    objc_msgSend(x19, x20);
    id r10 = CGRectGetWidth();
    objc_msgSend(x19, x20);
    id r12 = CGRectGetHeight();
    [x19->_flowView setFrame:CGRectMake(((r10 - d8) * 0.5), ?(((r12 - d9) * 0.5), 14.0), d8, d9)];
    [x19->_flowTitle setFrame:CGRectMake(18.0, 14.0, (d8 + bits(0xc042000000000000)), 28.0)];
    [x19->_flowMessage setFrame:CGRectMake(18.0, bits(0x4046000000000000), (d8 + bits(0xc042000000000000)), bits(0x4043000000000000))];
    if (x21 == 0) goto L_9e48;
    [x19->_flowImageView setFrame:CGRectMake(18.0, bits(0x4056000000000000), (d8 + bits(0xc042000000000000)), ?(((d9 + bits(0xc04a000000000000)) + bits(0xc05a000000000000)), bits(0x405e000000000000)))];
    *(page_32000 + 0x3ac) = CGRectZero;
    goto L_9e9c;
L_9e48:
    IVAR_0x128 = 0x4054000000000000;
    objc_msgSend(x19[0x4054000000000000], x20);
    if (x19->_flowImageView == 0) goto L_9ea4;
L_9e9c:
    objc_msgSend(x0, x20);
L_9ea4:
    objc_msgSend(x19->_flowSecondaryButton, x20);
    id r20 = objc_msgSend(x19->_flowPrimaryButton, x20);
    return r20;
}

// IMP 0x9f2c
- (void)showFlowTitle:(id)arg1 message:(id)arg2 primary:(id)arg3 secondary:(id)arg4 full:(BOOL)arg5 {
    [self ensureFlowView];
    [self->_flowView setHidden:0];
    [self->_flowTitle setText:arg1];
    [self->_flowMessage setText:arg2];
    [self->_flowPrimaryButton setTitle:arg3 forState:0];
    [self->_flowSecondaryButton setTitle:arg4 forState:0];
    id r7 = [arg4 length];
    [self->_flowSecondaryButton setHidden:(r7 != 0)];
    [self->_flowScroll setHidden:(arg5 ^ 0x1)];
    if (self->_flowImageView == 0) goto L_a0b8;
    [self->_flowImageView setHidden:1];
L_a0b8:
    [x19 bringSubviewToFront:x19->_flowView];
    [x19 bringSubviewToFront:x19->_logoControl];
    [x19 setNeedsLayout];
    [x19 layoutIfNeeded];
    id r15 = [x19 layoutFlowView];
    return r15;
}

// IMP 0xa130
- (void)hideFlow {
    [self->_flowView removeFromSuperview];
    self->_flowView = 0;
    self->_flowTitle = 0;
    self->_flowMessage = 0;
    self->_flowScroll = 0;
    self->_flowPrimaryButton = 0;
    self->_flowSecondaryButton = 0;
    self->_flowImageView = 0;
    return x0;
}

// IMP 0xa1e4
- (void)setFeatureState:(long long)arg1 on:(BOOL)arg2 {
    if ((arg1 & (1<<63))) goto L_a3b4;
    id r1 = [self->_featureStates count];
    if (r1 <=u arg1) goto L_a3b4;
    local_4 = arg2;
    id r2 = [NSNumber numberWithBool:arg2];
    [self->_featureStates setObject:r2 atIndexedSubscript:arg1];
    local_30 = 0.0;
    local_40 = 0.0;
    local_10 = 0.0;
    local_20 = 0.0;
    id r4 = [self->_contentScrollView subviews];
    local_8 = @selector(countByEnumeratingWithState:objects:count:);
    id r5 = [r4 countByEnumeratingWithState:&local_10 objects:&local_50 count:0x10];
    if (r5 == 0) goto L_a3ac;
L_a2f4:
L_a30c:
    if (*local_20 == x27) goto L_a324;
    objc_enumerationMutation(x21);
L_a324:
    objc_msgSend(UISwitch, x23);
    id r8 = objc_msgSend(local_18[(x19 << 3)], x24);
    if (r8 == 0) goto L_a360;
    id r9 = objc_msgSend(local_18[(x19 << 3)], x25);
    if (r9 == x20) goto L_a398;
L_a360:
    if (x22 != (x19 + 0x1)) goto L_a30c;
    id r10 = [x21 countByEnumeratingWithState:&local_10 objects:&local_50 count:0x10];
    if (r10 != 0) goto L_a2f4;
    goto L_a3ac;
L_a398:
    [x26 setOn:local_4];
L_a3ac:
L_a3b4:
    return;
}

// IMP 0xa3f0
- (void)finishFeatureIndex:(long long)arg1 {
    [self restoreToolOverlayAfterNativeUI];
    [self hideFlow];
    self->_activeFeature = -1;
    id r3 = [self setFeatureState:arg1 on:0];
    return r3;
}

// IMP 0xa450
- (void)showSimpleAlert:(id)arg1 message:(id)arg2 index:(long long)arg3 {
    [self finishFeatureIndex:arg3];
    id r2 = helper_a574();
    if (r2 == 0) goto L_a54c;
    id r3 = [UIAlertController alertControllerWithTitle:arg1 message:arg2 preferredStyle:1];
    id r4 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:0];
    [r3 addAction:r4];
    [r2 presentViewController:r3 animated:1 completion:0];
L_a54c:
    return x0;
}

// IMP 0xa944
- (void)showCompletionAlertWaitingForOK:(id)arg1 message:(id)arg2 index:(long long)arg3 {
    id r1 = helper_a574();
    if (r1 == 0) goto L_aa9c;
    id r2 = [UIAlertController alertControllerWithTitle:arg1 message:arg2 preferredStyle:1];
    local_38 = self;
    local_8 = _NSConcreteStackBlock;
    local_10 = lit_1df28;
    local_18 = &block_VSToolOverlay_showCompletionAlertWaitingForOK_message_index_1;
    local_20 = &g_2c168;
    objc_copyWeak((&local_8 + 0x20), &local_38, lit_1df28);
    local_30 = arg3;
    id r4 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:&local_8];
    [r2 addAction:r4];
    [r1 presentViewController:r2 animated:1 completion:0];
    goto L_aab0;
L_aa9c:
    [x24 finishFeatureIndex:x23];
L_aab0:
    return;
    goto L_aae8;
L_aae8:
    Unwind_Resume(x0);
    __builtin_trap();
}

// IMP 0xab60
- (void)restoreToolOverlayAfterNativeUI {
    if (0 == 0) goto L_ab90;
    [0 setHidden:0];
L_ab90:
    if (x19->_flowView == 0) goto L_abc4;
    [x19->_flowView setHidden:0];
    if (x19->_flowView == 0) goto L_abc4;
    objc_msgSend(x19, *(page_31000 + 0x6c8));
L_abc4:
    id r4 = [x19 bringSubviewToFront:x19->_logoControl];
    return r4;
}

// IMP 0xabe8
- (void)hideToolOverlayForNativeUI {
    if (self->_flowView == 0) goto L_ac14;
    [self->_flowView setHidden:1];
L_ac14:
    if (0 == 0) goto L_ac34;
    id r2 = [0 setHidden:1];
    return r2;
L_ac34:
    return;
}

// IMP 0xac40
- (void)beginNativeMediaChoiceForEditor:(id)arg1 mode:(long long)arg2 {
    if (arg1 == 0) goto L_ace4;
    id r1 = [arg1 respondsToSelector:@selector(pickNewContent)];
    if (!(r1 & (1<<0))) goto L_ace4;
    helper_ad24();
    self->_mediaSourceEditor = arg1;
    self->_mediaSourceMode = arg2;
    self->_mediaPickerResponseHandled = 0;
    [self hideToolOverlayForNativeUI];
    [self waitForNativeMediaEditorReady:arg1 attempt:0];
    goto L_ad10;
L_ace4:
    [x20 showSimpleAlert:@"Thông báo" message:@"Không tìm thấy bộ chọn nội dung gốc của Video Star." index:x20->_activeFeature];
L_ad10:
    return x0;
}

// IMP 0xae18
- (void)waitForNativeMediaEditorReady:(id)arg1 attempt:(unsigned long long)arg2 {
    if ((self->_activeFeature & (1<<63))) goto L_b1fc;
    if (self->_mediaSourceEditor != arg1) goto L_b1fc;
    local_0 = arg2;
    if (arg1 == 0) goto L_aecc;
    if (@selector(navigationController) == 0) goto L_aecc;
    id r1 = [arg1 respondsToSelector:@selector(navigationController)];
    if (r1 == 0) goto L_aec8;
    [arg1 navigationController];
    goto L_aecc;
L_aec8:
L_aecc:
    if (x25 == 0) goto L_af2c;
    if (@selector(getMultiLayerEngine) == 0) goto L_af2c;
    id r3 = objc_msgSend(x25, *(x26 + 0x520));
    if (r3 == 0) goto L_af28;
    [x25 getMultiLayerEngine];
    goto L_af2c;
L_af28:
L_af2c:
    if (x23 == 0) goto L_afc0;
    id r5 = [x23 viewIfLoaded];
    id r6 = [r5 window];
    if (r6 == 0) goto L_afd4;
    if (x21 == 0) goto L_afdc;
    id r7 = [x21 viewIfLoaded];
    [r7 window];
    goto L_afe0;
L_afc0:
    if (x21 != 0) goto L_aff8;
L_afcc:
    goto L_b04c;
L_afd4:
    goto L_afe0;
L_afdc:
L_afe0:
    if (x21 == 0) goto L_afcc;
L_aff8:
    id r9 = [x27 visibleViewController];
    if (r9 == 0) goto L_b040;
    [x27 visibleViewController];
    goto L_b044;
L_b040:
L_b044:
L_b04c:
    if ((((local_8 != 0) | (x28 ^ 0x1)) & (1<<0))) goto L_b0f8;
    if (x26 == 0) goto L_b0f8;
    frame_m58 = x22;
    id r11 = dispatch_time(0, 0x4c4b400);
    local_48 = _NSConcreteStackBlock;
    local_50 = lit_1df28;
    local_58 = &block_VSToolOverlay_waitForNativeMediaEditorReady_attempt_1;
    local_60 = &g_2c198;
    objc_copyWeak((&local_48 + 0x28), &frame_m58, lit_1df28);
    local_68 = x23;
    dispatch_after(r11, _dispatch_main_q, &local_48);
    goto L_b194;
L_b0f8:
    if (local_0 >u 59) goto L_b1a4;
    frame_m58 = x22;
    id r14 = dispatch_time(0, 0x5f5e100);
    local_10 = _NSConcreteStackBlock;
    local_18 = lit_1df28;
    local_20 = &block_VSToolOverlay_waitForNativeMediaEditorReady_attempt_2;
    local_28 = &g_2c1c8;
    objc_copyWeak((&local_10 + 0x28), &frame_m58, lit_1df28);
    local_30 = x23;
    local_40 = local_0;
    dispatch_after(r14, _dispatch_main_q, &local_10);
L_b194:
    goto L_b1f4;
L_b1a4:
    x22[x24] = 0;
    x22->_mediaSourceMode = -1;
    [x22 restoreToolOverlayAfterNativeUI];
    [x22 showSimpleAlert:@"Thông báo" message:@"Bộ chọn ảnh/video gốc của Video Star chưa sẵn sàng." index:x22->_activeFeature];
L_b1f4:
L_b1fc:
    return;
}

// IMP 0xb4b0
- (void)startMediaApplyToEditor:(id)arg1 image:(id)arg2 asset:(id)arg3 completion:(id /* block */)arg4 {
    if (self->_mediaApplyInProgress != 0) goto L_ba18;
    if (arg1 == 0) goto L_b550;
    if (arg3 != 0) goto L_b568;
    if (arg2 != 0) goto L_b568;
    if (self->_mediaApplyResponse != 0) goto L_b568;
L_b550:
    if (x27 == 0) goto L_ba18;
    ((id(*)())(*(x27 + 0x10)))(x27, 0);
    goto L_ba18;
L_b568:
    local_70 = x9;
    local_78 = x20;
    if (@selector(getMultiLayerEngine) == 0) goto L_b5c0;
    id r2 = [x26 respondsToSelector:@selector(getMultiLayerEngine)];
    if (r2 == 0) goto L_b5bc;
    [x26 getMultiLayerEngine];
    goto L_b5c0;
L_b5bc:
L_b5c0:
    id r4 = helper_ba74(x19);
    if (x20 == 0) goto L_b968;
    id r5 = [r4 count];
    if (r5 == 0) goto L_b968;
    local_20 = x26;
    local_28 = @selector(count);
    id r6 = [r4 count];
    id r7 = [NSMutableArray arrayWithCapacity:r6];
    local_90 = r7;
    local_c0 = 0.0;
    local_d0 = 0.0;
    local_e0 = 0.0;
    local_f0 = 0.0;
    local_40 = r4;
    local_88 = @selector(countByEnumeratingWithState:objects:count:);
    id r8 = [r4 countByEnumeratingWithState:&local_c0 objects:&frame_me0 count:0x10];
    local_a0 = ((x22 != 0) ? @"video" : ((x21 != 0) ? @"image" : 0));
    if (r8 == 0) goto L_b7f4;
    local_b8 = r4;
L_b6b8:
    local_a8 = @selector(respondsToSelector:);
    local_b0 = @selector(unsignedIntegerValue);
    local_98 = @selector(addObject:);
L_b6ec:
    if (*local_d0 == x26) goto L_b704;
    objc_enumerationMutation(local_b8);
L_b704:
    id r10 = objc_msgSend(local_c8[(x24 << 3)], x23);
    if (x22 == 0) goto L_b748;
    if (r10 == 0) goto L_b748;
    id r11 = objc_msgSend(x22, x21);
    if (r11 == 0) goto L_b7bc;
L_b748:
    id r12 = objc_msgSend(x20, x23);
    if (r12 == 0) goto L_b7bc;
    id r13 = objc_msgSend(x20, x23);
    id r14 = objc_msgSend(r13, local_a8);
    if (r14 == 0) goto L_b7bc;
    objc_msgSend(local_90, local_98);
L_b7bc:
    if ((x24 + 0x1) <u x19) goto L_b6ec;
    id r16 = [local_b8 countByEnumeratingWithState:&local_c0 objects:&frame_me0 count:0x10];
    if (r16 != 0) goto L_b6b8;
L_b7f4:
    local_48[local_70] = 1;
    local_48->_mediaApplyEditor = local_78;
    local_48->_mediaApplyEngine = local_68;
    id r17 = [local_90 copy];
    local_48->_mediaApplyLayers = r17;
    local_48->_mediaApplyIndex = 0;
    local_48->_mediaApplyChanged = 0;
    local_48->_mediaApplyImage = local_80;
    local_48->_mediaApplyAsset = local_30;
    if (local_48[local_38] != 0) goto L_b8bc;
L_b8bc:
    x28[x23] = x0;
    id r18 = objc_msgSend(local_50, x19);
    x28->_mediaApplyCompletion = r18;
    objc_msgSend(x21, local_28);
    objc_msgSend(x22, local_28);
    if (x28[x23] == 0) goto L_b980;
    [x28[x23] class];
    NSStringFromClass();
    goto L_b98c;
L_b968:
    if (x27 == 0) goto L_ba08;
    ((id(*)())(*(x27 + 0x10)))(x27, 0);
    goto L_ba08;
L_b980:
L_b98c:
    [x20 stringWithFormat:@"native layer replace sequence: candidates=%lu targets=%lu pickedKind=%@ response=%@"];
    helper_bf0c();
    if (x25 == 0) goto L_b9d4;
L_b9d4:
    [x28 applyNextMediaLayer];
L_ba08:
L_ba18:
    return;
}

// IMP 0xc0f8
- (void)applyNextMediaLayer {
    if (self->_mediaApplyInProgress == 0) goto L_c5e4;
    id r1 = [self->_mediaApplyLayers count];
    if (self->_mediaApplyIndex >=u r1) goto L_c200;
    self->_mediaApplyIndex = (self->_mediaApplyIndex + 0x1);
    id r2 = [self->_mediaApplyLayers objectAtIndexedSubscript:self->_mediaApplyIndex];
    id r3 = [r2 objectForKeyedSubscript:@"layerIndex"];
    [r3 unsignedIntegerValue];
    *(page_32000 + 0x3d0) = x8;
    *(page_32000 + 0x3d4) = x8;
    if (self[x8] != 0) goto L_c4e8;
    [self applyNextMediaLayer];
    goto L_c5cc;
L_c200:
    *(x22 + 0x3d0) = x22;
    *(x24 + 0x3d4) = x21;
    local_10 = x19->_mediaApplyChanged;
    local_18 = x19[x21];
    if (x19->_mediaApplyChanged == 0) goto L_c418;
    id r6 = [local_18 respondsToSelector:@selector(reloadLayerEffects)];
    if (r6 == 0) goto L_c294;
    if (@selector(reloadLayerEffects) == 0) goto L_c28c;
    id r7 = [local_18 respondsToSelector:@selector(reloadLayerEffects)];
    if (r7 == 0) goto L_c28c;
    [local_18 reloadLayerEffects];
L_c28c:
L_c294:
    id r9 = objc_msgSend(x20, x23);
    if (r9 == 0) goto L_c2f0;
    if (@selector(handleImageGenUpdate) == 0) goto L_c2e8;
    id r10 = objc_msgSend(x20, x23);
    if (r10 == 0) goto L_c2e8;
    [x20 handleImageGenUpdate];
L_c2e8:
L_c2f0:
    id r12 = objc_msgSend(x20, x23);
    if (r12 == 0) goto L_c34c;
    if (@selector(engineResync) == 0) goto L_c344;
    id r13 = objc_msgSend(x20, x23);
    if (r13 == 0) goto L_c344;
    [x20 engineResync];
L_c344:
L_c34c:
    id r15 = objc_msgSend(x20, x23);
    if (r15 == 0) goto L_c3a4;
    if (x20 == 0) goto L_c39c;
    if (@selector(refreshDisplay) == 0) goto L_c39c;
    id r16 = objc_msgSend(x20, x23);
    if (r16 == 0) goto L_c39c;
    [x20 refreshDisplay];
L_c39c:
L_c3a4:
    id r18 = objc_msgSend(x20, x23);
    if (r18 != 0) goto L_c3dc;
    id r19 = objc_msgSend(x20, x23);
    if (r19 == 0) goto L_c418;
L_c3dc:
    if (x20 == 0) goto L_c410;
    if (x24 == 0) goto L_c410;
    id r20 = objc_msgSend(x20, x23);
    if (r20 == 0) goto L_c410;
    objc_msgSend(x20, x24);
L_c410:
L_c418:
    x19->_mediaApplyCompletion = 0;
    x19[x28] = 0;
    x19[x22] = 0;
    x19[x21] = 0;
    x19[x27] = 0;
    x19[x26] = 0;
    x19->_mediaApplyImage = 0;
    x19->_mediaApplyAsset = 0;
    x19->_mediaApplyResponse = 0;
    if (x19->_mediaApplyCompletion == 0) goto L_c4b4;
    ((id(*)())(*(x19->_mediaApplyCompletion + 0x10)))(x19->_mediaApplyCompletion, local_10);
L_c4b4:
    return x0;
L_c4e8:
    id r23 = [x21 respondsToSelector:@selector(selectLayer:bordered:)];
    if (!(r23 & (1<<0))) goto L_c5bc;
    [x21 selectLayer:x23 bordered:0];
    local_58 = x19;
    id r25 = dispatch_time(0, 0x17d7840);
    local_20 = _NSConcreteStackBlock;
    local_28 = lit_1df28;
    local_30 = &block_VSToolOverlay_applyNextMediaLayer_1;
    local_38 = &g_2c1c8;
    objc_copyWeak((&local_20 + 0x28), &local_58, lit_1df28);
    local_40 = x20;
    dispatch_after(r25, _dispatch_main_q, &local_20);
    goto L_c5cc;
L_c5bc:
    [x19 applyNextMediaLayer];
L_c5cc:
L_c5e4:
    return;
    if (x1 != 1) goto L_c6e4;
    id r29 = objc_begin_catch(x0);
    id r30 = [r29 reason];
    if (r30 == 0) goto L_c654;
    goto L_c674;
L_c654:
    [x24 name];
L_c674:
    [x26 stringWithFormat:@"select media layer %lu exception: %@"];
    helper_bf0c();
    if (x28 == 0) goto L_c6b4;
L_c6b4:
    [x19 applyNextMediaLayer];
    objc_end_catch();
    goto L_c5cc;
    objc_end_catch();
L_c6e4:
    Unwind_Resume(x24);
    __builtin_trap();
}

// IMP 0xeaf0
- (void)waitForMediaLayerReplacement:(unsigned long long)arg1 editor:(id)arg2 engine:(id)arg3 beforeImage:(id)arg4 beforeAsset:(id)arg5 retry:(unsigned long long)arg6 record:(id)arg7 {
    local_60 = arg1;
    if (self->_mediaApplyInProgress == 0) goto L_f1cc;
    id r1 = [frame_10 objectForKeyedSubscript:@"mediaKind"];
    local_50 = self;
    local_58 = r1;
    local_18 = @selector(respondsToSelector:);
    local_20 = arg6;
    local_28 = frame_10;
    id r2 = [arg3 respondsToSelector:@selector(layerAtLayerNum:)];
    if (r2 == 0) goto L_ebec;
    [arg3 layerAtLayerNum:arg1];
    goto L_ebf0;
L_ebec:
L_ebf0:
    id r4 = helper_d11c(x21, x26, local_60);
    id r5 = [AVAsset class];
    id r6 = [r4 isKindOfClass:r5];
    if (r6 == 0) goto L_ec5c;
    id r7 = helper_f308(r4);
    if (!(r7 & (1<<0))) goto L_ec5c;
    goto L_ec88;
L_ec5c:
    objc_msgSend(*(x20 + 0x190), x19);
    objc_msgSend(x21, x23);
L_ec88:
    helper_d37c(x26);
    objc_msgSend(*(x20 + 0x190), x19);
    id r12 = objc_msgSend(x21, x23);
    if (!(r12 & (1<<0))) goto L_ecd4;
    goto L_ed30;
L_ecd4:
    if (x22 == 0) goto L_ed28;
    if (@selector(layerImage) == 0) goto L_ed28;
    id r13 = objc_msgSend(x22, local_18);
    if (r13 == 0) goto L_ed24;
    [x22 layerImage];
    goto L_ed28;
L_ed24:
L_ed28:
L_ed30:
    objc_msgSend(AVAsset, x19);
    id r16 = objc_msgSend(x21, x23);
    if (!(r16 & (1<<0))) goto L_ed64;
    goto L_edc0;
L_ed64:
    if (x22 == 0) goto L_edb8;
    if (@selector(asset) == 0) goto L_edb8;
    id r17 = objc_msgSend(x22, local_18);
    if (r17 == 0) goto L_edb4;
    [x22 asset];
    goto L_edb8;
L_edb4:
L_edb8:
L_edc0:
    if (local_58 == 0) goto L_ee4c;
    if (x24 == 0) goto L_ee4c;
    id r19 = [local_58 isEqualToString:x24];
    if (r19 == 0) goto L_ee4c;
    if (local_50->_mediaApplyAsset == 0) goto L_efe4;
    objc_msgSend(AVAsset, x19);
    id r21 = objc_msgSend(x28, x23);
    if (r21 == 0) goto L_efe4;
    if (x28 == local_50->_mediaApplyAsset) goto L_f088;
    [x28 isEqual:local_50->_mediaApplyAsset];
    goto L_f048;
L_ee4c:
L_ee7c:
    if (x26 >u 13) goto L_ef8c;
    frame_m60 = local_50;
    id r23 = dispatch_time(0, 0x2aea540);
    local_68 = _NSConcreteStackBlock;
    local_70 = lit_1df28;
    local_78 = &block_VSToolOverlay_waitForMediaLayerReplacement_editor_engine_beforeImage_beforeAsset_retry_record_2;
    local_80 = &g_2c2b8;
    objc_copyWeak((&local_68 + 0x48), &frame_m60, lit_1df28);
    local_88 = x24;
    local_b8 = local_60;
    local_90 = x21;
    local_98 = x23;
    local_a0 = x25;
    local_a8 = x22;
    dispatch_after(r23, _dispatch_main_q, &local_68);
    goto L_f1c4;
L_ef8c:
    local_0 = local_60;
    [NSString stringWithFormat:@"native media state did not verify for layer %lu"];
    helper_bf0c();
    helper_df24(x24);
    [x20 applyNextMediaLayer];
    goto L_f1c4;
L_efe4:
    if (local_50->_mediaApplyImage == 0) goto L_f088;
    objc_msgSend(UIImage, x19);
    id r31 = objc_msgSend(x27, x23);
    if (r31 == 0) goto L_f088;
    if (x27 == local_50->_mediaApplyImage) goto L_f088;
    [x27 isEqual:local_50->_mediaApplyImage];
L_f048:
    if (((/*flags?*/ eq) & (1<<0))) goto L_f0b8;
    if (!(x19 & (1<<0))) goto L_ee7c;
    goto L_f0b8;
L_f088:
L_f0b8:
    id r33 = objc_msgSend(local_38, local_18);
    if (r33 == 0) goto L_f120;
    if (local_38 == 0) goto L_f118;
    if (@selector(handleImageGenUpdate) == 0) goto L_f118;
    id r34 = objc_msgSend(local_38, local_18);
    if (r34 == 0) goto L_f118;
    [local_38 handleImageGenUpdate];
L_f118:
L_f120:
    x20->_mediaApplyChanged = (x20->_mediaApplyChanged + 0x1);
    helper_df24(x24);
    frame_m60 = x20;
    id r37 = dispatch_time(0, 0x989680);
    frame_m88 = _NSConcreteStackBlock;
    frame_m80 = lit_1df28;
    frame_m78 = &block_VSToolOverlay_waitForMediaLayerReplacement_editor_engine_beforeImage_beforeAsset_retry_record_1;
    frame_m70 = &g_2c288;
    objc_copyWeak((&frame_m88 + 0x20), &frame_m60, lit_1df28);
    dispatch_after(r37, _dispatch_main_q, &frame_m88);
L_f1c4:
L_f1cc:
    return;
    goto L_f228;
    goto L_f228;
    goto L_f228;
    goto L_f228;
    goto L_f228;
L_f228:
    if (x1 != 1) goto L_f2fc;
    id r40 = objc_begin_catch(x0);
    id r41 = [r40 reason];
    if (r41 == 0) goto L_f278;
    goto L_f298;
L_f278:
    [x19 name];
L_f298:
    local_0 = local_60;
    local_8 = x23;
    [x22 stringWithFormat:@"verify native replace layer %lu exception: %@"];
    helper_bf0c();
    if (x24 == 0) goto L_f2dc;
L_f2dc:
    objc_end_catch();
    goto L_ee7c;
    objc_end_catch();
L_f2fc:
    Unwind_Resume(x19);
    __builtin_trap();
}

// IMP 0xf48c
- (void)handleNativePickedMediaResponse:(id)arg1 editor:(id)arg2 {
    if (arg2 == 0) goto L_f530;
    if (self->_mediaSourceEditor != arg2) goto L_f530;
    if (self->_mediaPickerResponseHandled != 0) goto L_f530;
    self->_mediaPickerResponse = arg1;
    [self waitForNativePickedMediaResponse:arg1 editor:arg2 attempt:0];
L_f530:
    return x0;
}

// IMP 0xf54c
- (void)waitForNativePickedMediaResponse:(id)arg1 editor:(id)arg2 attempt:(unsigned long long)arg3 {
    if (arg2 == 0) goto L_fae4;
    if (self->_mediaSourceEditor != arg2) goto L_fae4;
    if (self->_mediaPickerResponseHandled != 0) goto L_fae4;
    local_0 = IVAR_0x1c0;
    local_10 = IVAR_0x200;
    if (@selector(getMultiLayerEngine) == 0) goto L_f628;
    id r1 = [arg2 respondsToSelector:@selector(getMultiLayerEngine)];
    if (r1 == 0) goto L_f628;
    id r2 = [arg2 getMultiLayerEngine];
    local_20 = r2;
    goto L_f62c;
L_f628:
    local_20 = 0;
L_f62c:
    local_18 = x23;
    if (@selector(lastSelectedLayer) == 0) goto L_f6ec;
    id r3 = [x23 respondsToSelector:@selector(lastSelectedLayer)];
    if (!(r3 & (1<<0))) goto L_f6ec;
    id r4 = [x23 lastSelectedLayer];
    if (r4 == 0) goto L_f6f8;
    id r5 = [r4 respondsToSelector:@selector(layerNum)];
    if (r5 == 0) goto L_f6f8;
    if (@selector(layerNum) == 0) goto L_fb18;
    id r6 = [r4 respondsToSelector:@selector(layerNum)];
    if (r6 == 0) goto L_fb14;
    [r4 layerNum];
    goto L_fb18;
L_f6ec:
L_f6f8:
    id r8 = helper_d37c(x24);
    local_30 = 0;
    if (r8 == 0) goto L_f75c;
    if (@selector(asset) == 0) goto L_f75c;
    id r9 = [r8 respondsToSelector:@selector(asset)];
    if (r9 == 0) goto L_f758;
    id r10 = [r8 asset];
    local_30 = r10;
    goto L_f75c;
L_f758:
    local_30 = 0;
L_f75c:
    id r11 = objc_msgSend(*(x28 + 0x210), *(x27 + 0x9f8));
    id r12 = [local_30 isKindOfClass:r11];
    if (r12 == 0) goto L_f7bc;
    id r13 = helper_f308(local_30);
    if (r13 == 0) goto L_f7bc;
    goto L_f878;
L_f7bc:
    local_8 = x25;
    if (x25 == 0) goto L_f81c;
    if (@selector(layerImage) == 0) goto L_f81c;
    id r14 = [x25 respondsToSelector:@selector(layerImage)];
    if (r14 == 0) goto L_f818;
    [x25 layerImage];
    goto L_f81c;
L_f818:
L_f81c:
    objc_msgSend(UIImage, x28);
    id r17 = objc_msgSend(x23, x24);
    if (r17 == 0) goto L_f85c;
    goto L_f864;
L_f85c:
L_f864:
L_f878:
L_f880:
    if (!(x27 & (1<<0))) goto L_f9b4;
    x21->_mediaPickerResponseHandled = 1;
    if (x21->_mediaSourceMode != 0) goto L_f8f0;
    x21->_mediaSourceEditor = 0;
L_f8f0:
    x21[x22] = -1;
    frame_m60 = x21;
    id r18 = dispatch_time(0, 0x5f5e100);
    local_38 = _NSConcreteStackBlock;
    local_40 = lit_1df28;
    local_48 = &block_VSToolOverlay_waitForNativePickedMediaResponse_editor_attempt_2;
    local_50 = &g_2c348;
    objc_copyWeak((&local_38 + 0x38), &frame_m60, lit_1df28);
    local_58 = x26;
    local_60 = x24;
    local_68 = x25;
    dispatch_after(r18, _dispatch_main_q, &local_38);
    goto L_fa64;
L_f9b4:
    if (x22 >u 15) goto L_fa74;
    frame_m60 = x21;
    id r21 = dispatch_time(0, 0x7270e00);
    local_80 = _NSConcreteStackBlock;
    local_88 = lit_1df28;
    local_90 = &block_VSToolOverlay_waitForNativePickedMediaResponse_editor_attempt_1;
    local_98 = &g_2c2e8;
    objc_copyWeak((&local_80 + 0x30), &frame_m60, lit_1df28);
    local_a0 = x19;
    local_a8 = x23;
    dispatch_after(r21, _dispatch_main_q, &local_80);
L_fa64:
    goto L_fad4;
L_fa74:
    x21->_mediaPickerResponseHandled = 1;
    x21->_mediaSourceEditor = 0;
    x21->_mediaSourceMode = -1;
    [x21 restoreToolOverlayAfterNativeUI];
    [x21 showSimpleAlert:@"Thông báo" message:@"Video Star đã nhận lựa chọn nhưng không lấy được media từ lớp vừa chọn." index:x21[x26]];
L_fad4:
L_fae4:
    return;
L_fb14:
L_fb18:
    if (local_20 == 0) goto L_fc10;
    if (x23 == 0x7fffffffffffffff) goto L_fc10;
    id r26 = objc_msgSend(local_20, x25);
    if (r26 == 0) goto L_fc10;
    id r27 = [local_20 assetForLayer:x23];
    id r28 = objc_msgSend(*(x28 + 0x210), *(x27 + 0x9f8));
    id r29 = [r27 isKindOfClass:r28];
    if (r29 == 0) goto L_fbc8;
    id r30 = helper_f308(r27);
    if (r30 == 0) goto L_fbc8;
    goto L_f880;
L_fbc8:
    objc_msgSend(UIImage, x24);
    id r32 = objc_msgSend(x23, x25);
    if (r32 == 0) goto L_fc08;
    goto L_f880;
L_fc08:
L_fc10:
    goto L_f6f8;
}

// IMP 0xff0c
- (void)finishNativeMediaChoiceForEditor:(id)arg1 image:(id)arg2 asset:(id)arg3 {
    if (self->_mediaSourceEditor != 0) goto L_fff8;
    self->_mediaSourceEditor = 0;
    self->_mediaSourceMode = -1;
    if (arg2 != 0) goto L_ff8c;
    if (arg3 == 0) goto L_fff8;
L_ff8c:
    if (x21->_activeFeature == 3) goto L_ffc0;
    if (x21->_activeFeature != 0) goto L_fff8;
    [x21 handleNativePickedMediaResponse:0 editor:x19];
    goto L_fff8;
L_ffc0:
    x21->_pendingMediaImage = x24;
    x21->_pendingMediaAsset = x23;
    [x21 applyMergePresetsAndMedia];
L_fff8:
    return x0;
}

// IMP 0x10020
- (void)startFeatureReplaceMedia {
    id r1 = helper_a574();
    id r2 = NSClassFromString(@"MultiLayerWizEffectVC");
    if (r1 == 0) goto L_1008c;
    if (r2 == 0) goto L_1008c;
    id r3 = [r1 isKindOfClass:r2];
    if (!(r3 & (1<<0))) goto L_1008c;
    helper_ad24();
    [self beginNativeMediaChoiceForEditor:r1 mode:0];
    goto L_100b0;
L_1008c:
    [x20 showSimpleAlert:@"Thông báo" message:@"Bạn chưa trong phần nhiều lớp h/ả." index:0];
L_100b0:
    return x0;
}

// IMP 0x100c0
- (void)startFeatureBeatSplit {
    id r1 = helper_a574();
    id r2 = NSClassFromString(@"VideoReviewEditVC");
    id r3 = NSClassFromString(@"MultiSplitView");
    if (r1 == 0) goto L_101d0;
    if (r2 == 0) goto L_101d0;
    id r4 = [r1 isKindOfClass:r2];
    if (r3 == 0) goto L_101d0;
    if (r4 == 0) goto L_101d0;
    [r1 view];
    id r6 = helper_10c68();
    if (r6 == 0) goto L_101d0;
    local_c0 = @selector(isKindOfClass:);
    if (@selector(project) == 0) goto L_10220;
    id r7 = [r1 respondsToSelector:@selector(project)];
    if (r7 == 0) goto L_1021c;
    [r1 project];
    goto L_10220;
L_101d0:
    [x20 showSimpleAlert:@"Thông báo" message:@"Bạn chưa trong phần chia phân cảnh." index:2];
L_101f4:
    return;
L_1021c:
L_10220:
    if (@selector(sceneIndex) == 0) goto L_10268;
    id r10 = objc_msgSend(x25, *(x23 + 0x520));
    if (r10 == 0) goto L_10268;
    id r11 = [x25 sceneIndex];
    local_b8 = r11;
    goto L_1026c;
L_10268:
    local_b8 = 0;
L_1026c:
    objc_msgSend(x26, x24);
    id r13 = helper_10c68();
    if (x21 == 0) goto L_103e4;
    if (r13 == 0) goto L_103e4;
    id r14 = objc_msgSend(r13, *(x23 + 0x520));
    if (r14 == 0) goto L_103e4;
    id r15 = objc_msgSend(r13, *(x23 + 0x520));
    if (!(r15 & (1<<0))) goto L_103e4;
    local_a8 = x21;
    id r16 = objc_msgSend(x26, *(x23 + 0x520));
    local_b0 = *(x23 + 0x520);
    if (r16 == 0) goto L_10330;
    id r17 = [x26 isEnoughStorageAvailableForSplit];
    if (r17 == 0) goto L_1043c;
L_10330:
    id r18 = objc_msgSend(local_a8, x27);
    if (r18 == 0) goto L_10368;
    id r19 = [local_a8 sceneHasAtLeastOneClipWithSceneIndex:local_b8];
    if (r19 == 0) goto L_1041c;
L_10368:
    id r20 = objc_msgSend(x26, x27);
    if (r20 == 0) goto L_1042c;
    id r21 = [x26 clipCountForSceneIndex:local_b8];
    if (r21 == 0) goto L_1041c;
    local_50 = x26;
    if (@selector(fileManager) == 0) goto L_10454;
    id r22 = objc_msgSend(x26, x27);
    if (r22 == 0) goto L_10454;
    [x26 fileManager];
    goto L_10458;
L_103e4:
    [x20 showSimpleAlert:@"Thông báo" message:@"Không tìm thấy chức năng chia beat gốc của Video Star." index:2];
L_10408:
    goto L_101f4;
L_1041c:
    goto L_10434;
L_1042c:
L_10434:
    goto L_1085c;
L_1043c:
    goto L_1085c;
L_10454:
L_10458:
    local_80 = @selector(class);
    local_88 = @selector(clipURLForSceneIndex:clipIndex:);
    local_30 = @selector(fileURLWithPath:);
    local_38 = 0;
    local_20 = @selector(path);
    local_28 = @selector(defaultManager);
    local_18 = @selector(fileExistsAtPath:);
    local_70 = @selector(URLAssetWithURL:options:);
    local_78 = @selector(isFileURL);
    local_60 = @selector(tracksWithMediaType:);
    local_68 = *AVMediaTypeVideo;
    local_58 = @selector(count);
    local_10 = @selector(duration);
    local_40 = @selector(stringWithFormat:);
    local_48 = ((x24 >u 1) ? x24 : (0 + 1));
    local_c0 = *(x28 + 0xa00);
L_10508:
    if (x21 == 0) goto L_10548;
    id r25 = objc_msgSend(x21, local_b0);
    if (r25 == 0) goto L_10548;
    id r26 = objc_msgSend(x21, local_88);
    if (r26 != 0) goto L_10588;
L_10548:
    id r27 = objc_msgSend(local_50, local_b0);
    if (r27 == 0) goto L_10584;
    objc_msgSend(local_50, x24);
    goto L_10588;
L_10584:
L_10588:
    objc_msgSend(NSURL, local_80);
    id r30 = objc_msgSend(x23, x28);
    if (r30 == 0) goto L_105bc;
    goto L_105fc;
L_105bc:
    objc_msgSend(NSString, x21);
    id r32 = objc_msgSend(x23, x28);
    if (r32 == 0) goto L_107c4;
    objc_msgSend(NSURL, local_30);
L_105fc:
    if (x0 == 0) goto L_107c4;
    id r34 = objc_msgSend(x0, local_78);
    if (r34 == 0) goto L_10670;
    id r35 = objc_msgSend(NSFileManager, local_28);
    id r36 = objc_msgSend(x0, local_20);
    id r37 = [r35 fileExistsAtPath:r36];
    if (!(r37 & (1<<0))) goto L_10808;
L_10670:
    id r38 = objc_msgSend(AVURLAsset, local_70);
    id r39 = objc_msgSend(r38, local_60);
    id r40 = [r39 count];
    if (r40 == 0) goto L_10708;
    if (r38 == 0) goto L_10744;
    [r38 duration];
    if (!(frame_m64 & (1<<0))) goto L_10750;
    frame_m90 = frame_m70;
    frame_m80 = frame_m60;
    id r42 = CMTimeGetSeconds(&frame_m90, frame_m70);
    if (r42 <= 0.0) goto L_10750;
    goto L_10784;
L_10708:
    local_0 = (x27 + 0x1);
    id r43 = objc_msgSend(NSString, local_40);
    local_38 = r43;
    goto L_10784;
L_10744:
    frame_m70 = 0;
    frame_m68 = 0;
    frame_m60 = 0;
L_10750:
    local_0 = (x27 + 0x1);
    id r44 = objc_msgSend(NSString, local_40);
    local_38 = r44;
L_10784:
    if (x21 != 0) goto L_107f8;
    if (local_48 != (x27 + 0x1)) goto L_10508;
    goto L_10854;
L_107c4:
    local_0 = (x27 + 0x1);
    objc_msgSend(NSString, local_40);
    goto L_10848;
L_107f8:
    goto L_10854;
L_10808:
    local_0 = (x27 + 0x1);
    objc_msgSend(NSString, local_40);
L_10848:
L_10854:
L_1085c:
    if (!(x21 & (1<<0))) goto L_1091c;
    if (x20->_beatSplitRunning != 0) goto L_10b38;
    x20->_beatSplitRunning = 1;
    local_c0 = &x20->_beatSplitView;
    x20->_beatSplitView = x25;
    x20->_beatSplitProject = local_a0;
    id r47 = objc_msgSend(x26, local_b0);
    if (r47 == 0) goto L_1094c;
    if (@selector(sceneCount) == 0) goto L_1095c;
    id r48 = objc_msgSend(x26, local_b0);
    if (r48 == 0) goto L_10958;
    [x26 sceneCount];
    goto L_1095c;
L_1091c:
    [x20 showSimpleAlert:@"Thông báo" message:((x27 == 0) ? @"Tất cả clip trong phân cảnh phải hợp lệ trước khi chia." : x27) index:2];
    goto L_10b38;
L_1094c:
    goto L_10968;
L_10958:
L_1095c:
L_10968:
    x20->_beatSplitSceneBefore = x28;
    x20->_beatSplitQueued = 0;
    x20->_beatSplitGuard = 0;
    x20->_beatSplitNoAdvanceRetries = 0;
    *&x20->_beatSplitLastTime = *kCMTimeInvalid;
    *(&x20->_beatSplitLastTime + 0x10) = *(kCMTimeInvalid + 0x10);
    x20->_beatSplitInitialSplitCount = 0;
    if (@selector(splitTimes) == 0) goto L_10a14;
    id r51 = objc_msgSend(x22, local_b0);
    if (r51 == 0) goto L_10a10;
    [x22 splitTimes];
    goto L_10a14;
L_10a10:
L_10a14:
    [NSArray class];
    id r54 = objc_msgSend(x24, x26);
    if (r54 == 0) goto L_10a58;
    id r55 = [x24 count];
    x20[x23] = r55;
L_10a58:
    id r56 = objc_msgSend(x28, local_b0);
    if (r56 == 0) goto L_10aac;
    id r57 = [x28 beatModeOn];
    if ((r57 & (1<<0))) goto L_10aac;
    id r58 = objc_msgSend(x28, local_b0);
    if (r58 == 0) goto L_10aac;
    [x28 toggleBeatMode];
L_10aac:
    frame_m70 = x20;
    id r60 = dispatch_time(0, 0xaba9500);
    frame_mb8 = _NSConcreteStackBlock;
    frame_mb0 = lit_1df28;
    frame_ma8 = &block_VSToolOverlay_startFeatureBeatSplit_1;
    frame_ma0 = &g_2c288;
    objc_copyWeak((&frame_mb8 + 0x20), &frame_m70, lit_1df28);
    dispatch_after(r60, _dispatch_main_q, &frame_mb8);
L_10b38:
    goto L_10408;
    goto L_10b4c;
L_10b4c:
    if (x1 != 1) goto L_10c5c;
    id r63 = objc_begin_catch(x0);
    x20[x21] = 0;
    *local_c0 = 0;
    *x25 = 0;
    id r64 = [r63 reason];
    if (r64 == 0) goto L_10bc0;
    goto L_10be0;
L_10bc0:
    [x23 name];
L_10be0:
    id r66 = [x25 stringWithFormat:@"Video Star gặp lỗi khi chuẩn bị chia beat: %@"];
    [x20 showSimpleAlert:@"Thông báo" message:r66 index:2];
    if (x21 == 0) goto L_10c3c;
L_10c3c:
    objc_end_catch();
    goto L_10b38;
    objc_end_catch();
L_10c5c:
    Unwind_Resume(x23);
    __builtin_trap();
}

// IMP 0x10e60
- (void)beatSplitAdvanceStepWithAttempt:(unsigned long long)arg1 {
    if (self->_beatSplitRunning == 0) goto L_10fd8;
    if (self->_beatSplitView == 0) goto L_10fd8;
    if (self->_beatSplitProject == 0) goto L_10fd8;
    self->_beatSplitGuard = (self->_beatSplitGuard + 0x1);
    if (self->_beatSplitGuard <u 4096) goto L_10ee4;
L_10ed0:
    [x20 finishBeatSplitNativeWorkflow];
    goto L_10fd0;
L_10ee4:
    id r2 = [x19 respondsToSelector:@selector(currentTime)];
    if (r2 == 0) goto L_10f18;
    [x19 currentTime];
    goto L_10f30;
L_10f18:
    frame_m40 = *kCMTimeInvalid;
    frame_m30 = *(kCMTimeInvalid + 0x10);
L_10f30:
    id r4 = helper_10fec(x19, "nextButton", @selector(jumpToNextBeat));
    if (!(r4 & (1<<0))) goto L_10f78;
    local_0 = frame_m40;
    local_10 = frame_m30;
    [x20 waitForBeatAdvanceFromTime:&local_0 attempt:0];
    goto L_10fd0;
L_10f78:
    if (x21 >u 29) goto L_10ed0;
    dispatch_time(0, 0xe4e1c0);
    local_20 = _NSConcreteStackBlock;
    local_28 = lit_1df28;
    local_30 = &block_VSToolOverlay_beatSplitAdvanceStepWithAttempt_1;
    local_38 = &g_2c378;
    dispatch_after(lit_1df28);
L_10fd0:
L_10fd8:
    return;
}

// IMP 0x11370
- (void)waitForBeatAdvanceFromTime:(struct)arg1 attempt:(unsigned long long)arg2 {
    if (self->_beatSplitRunning == 0) goto L_1167c;
    if (self->_beatSplitView == 0) goto L_1167c;
    id r1 = [self->_beatSplitView respondsToSelector:@selector(currentTime)];
    if (r1 == 0) goto L_113f4;
    [self->_beatSplitView currentTime];
    goto L_1140c;
L_113f4:
    frame_m60 = *kCMTimeInvalid;
    frame_m50 = *(kCMTimeInvalid + 0x10);
L_1140c:
    if ((frame_m54 & (1<<0))) goto L_114ac;
L_11414:
    if (x21 >u 99) goto L_11604;
    frame_m80 = x20;
    id r3 = dispatch_time(0, 0xb71b00);
    local_28 = _NSConcreteStackBlock;
    local_30 = lit_1df28;
    local_38 = &block_VSToolOverlay_waitForBeatAdvanceFromTime_attempt_1;
    local_40 = &g_2c3a8;
    objc_copyWeak((&local_28 + 0x20), &frame_m80, lit_1df28);
    local_68 = *(x22 + 0x10);
    local_58 = *x22;
    dispatch_after(r3, _dispatch_main_q, &local_28, *x22);
    goto L_115f4;
L_114ac:
    if (!(*(x22 + 0xc) & (1<<0))) goto L_114e8;
    frame_m80 = frame_m60;
    frame_m70 = frame_m50;
    local_80 = *(x22 + 0x10);
    local_70 = *x22;
    id r6 = CMTimeCompare(&frame_m80, &local_70, *x22);
    if (r6 <= 0) goto L_11414;
L_114e8:
    if (!(*(&x20->_beatSplitLastTime + 0xc) & (1<<0))) goto L_11530;
    frame_m80 = frame_m60;
    frame_m70 = frame_m50;
    local_80 = *(&x20->_beatSplitLastTime + 0x10);
    local_70 = *&x20->_beatSplitLastTime;
    id r7 = CMTimeCompare(&frame_m80, &local_70, *&x20->_beatSplitLastTime);
    if (r7 <= 0) goto L_11664;
L_11530:
    *(x21 + 0x10) = frame_m50;
    *x21 = frame_m60;
    x20->_beatSplitNoAdvanceRetries = 0;
    id r8 = helper_10fec(x19, "setButton", @selector(setSplitPoint), frame_m60);
    if (!(r8 & (1<<0))) goto L_11664;
    x20->_beatSplitQueued = (x20->_beatSplitQueued + 0x1);
    frame_m80 = x20;
    id r9 = dispatch_time(0, 0xe4e1c0);
    local_0 = _NSConcreteStackBlock;
    local_8 = lit_1df28;
    local_10 = &block_VSToolOverlay_waitForBeatAdvanceFromTime_attempt_2;
    local_18 = &g_2c288;
    objc_copyWeak((&local_0 + 0x20), &frame_m80, lit_1df28);
    dispatch_after(r9, _dispatch_main_q, &local_0);
L_115f4:
    goto L_11674;
L_11604:
    id r12 = objc_msgSend(x19, x23);
    if (r12 == 0) goto L_11630;
    id r13 = [x19 hasNextBeat];
    if (!(r13 & (1<<0))) goto L_11664;
L_11630:
    if (x20->_beatSplitNoAdvanceRetries >u 1) goto L_11664;
    x20->_beatSplitNoAdvanceRetries = (x20->_beatSplitNoAdvanceRetries + 0x1);
    [x20 beatSplitAdvanceStepWithAttempt:0];
    goto L_11674;
L_11664:
    [x20 finishBeatSplitNativeWorkflow];
L_11674:
L_1167c:
    return;
    if (x1 != 1) goto L_116ac;
    objc_begin_catch();
    objc_end_catch();
    goto L_11630;
L_116ac:
    Unwind_Resume();
    __builtin_trap();
}

// IMP 0x1175c
- (void)finishBeatSplitNativeWorkflow {
    if (self->_beatSplitRunning == 0) goto L_11864;
    self->_beatSplitRunning = 0;
    self->_beatSplitView = 0;
    self->_beatSplitProject = 0;
    if (self->_beatSplitQueued == 0) goto L_11880;
    id r1 = helper_10fec(self->_beatSplitView, "splitButton", @selector(doSplit));
    if (!(r1 & (1<<0))) goto L_118a8;
    [NSString stringWithFormat:@"native manual beat workflow queued=%lu sceneCountBefore=%lu"];
    helper_bf0c();
    [self waitForBeatSplitCompletionOnProject:self->_beatSplitProject beforeSceneCount:self->_beatSplitSceneBefore expectedAdditional:self->_beatSplitQueued attempt:0];
    goto L_118cc;
L_11864:
    return;
L_11880:
    [x21 showSimpleAlert:@"Thông báo" message:@"Không còn beat nào để chia trong phân cảnh hiện tại." index:2];
    goto L_118cc;
L_118a8:
    [x21 showSimpleAlert:@"Thông báo" message:@"Không tìm thấy nút Chia của Video Star." index:2];
L_118cc:
    return x0;
    if (x1 != 1) goto L_119e0;
    id r7 = objc_begin_catch(x0);
    id r8 = [r7 reason];
    if (r8 == 0) goto L_11944;
    goto L_11964;
L_11944:
    [x22 name];
L_11964:
    id r10 = [x24 stringWithFormat:@"Không thể chia beat: %@"];
    [x21 showSimpleAlert:@"Thông báo" message:r10 index:2];
    if (x26 == 0) goto L_119c0;
L_119c0:
    objc_end_catch();
    goto L_118cc;
    objc_end_catch();
L_119e0:
    Unwind_Resume(x22);
    __builtin_trap();
}

// IMP 0x119ec
- (void)waitForBeatSplitCompletionOnProject:(id)arg1 beforeSceneCount:(unsigned long long)arg2 expectedAdditional:(unsigned long long)arg3 attempt:(unsigned long long)arg4 {
    if (self->_activeFeature != 2) goto L_11bd4;
    id r1 = [arg1 respondsToSelector:@selector(sceneCount)];
    if (r1 == 0) goto L_11b04;
    if (arg1 == 0) goto L_11afc;
    if (@selector(sceneCount) == 0) goto L_11afc;
    id r2 = [arg1 respondsToSelector:@selector(sceneCount)];
    if (!(r2 & (1<<0))) goto L_11afc;
    id r3 = [arg1 sceneCount];
    if (r3 <=u arg2) goto L_11b04;
    local_0 = (r3 - arg2);
    id r4 = [NSString stringWithFormat:@"Đã chia %lu phân cảnh từ các beat."];
    [self showSimpleAlert:@"Chia beat thành công" message:r4 index:2];
    goto L_11bd4;
L_11afc:
L_11b04:
    if (x20 >u 119) goto L_11bb0;
    frame_m48 = x23;
    id r6 = dispatch_time(0, 0x5f5e100);
    local_10 = _NSConcreteStackBlock;
    local_18 = lit_1df28;
    local_20 = &block_VSToolOverlay_waitForBeatSplitCompletionOnProject_beforeSceneCount_expectedAdditional_attempt_1;
    local_28 = &g_2c3d8;
    objc_copyWeak((&local_10 + 0x28), &frame_m48, lit_1df28);
    local_30 = x19;
    dispatch_after(r6, _dispatch_main_q, &local_10);
    goto L_11bd4;
L_11bb0:
    [x23 showSimpleAlert:@"Thông báo" message:@"Video Star chưa hoàn tất thao tác chia beat. Vui lòng kiểm tra lại phân cảnh." index:2];
L_11bd4:
    return;
}

// IMP 0x11c48
- (void)startFeatureLastCode {
    local_20 = self;
    id r1 = helper_12984();
    id r2 = [r1 length];
    if (r2 != 0) goto L_12718;
    local_28 = @selector(length);
    local_18 = r1;
    id r3 = [NSFileManager defaultManager];
    id r4 = [NSMutableArray array];
    id r5 = NSHomeDirectory();
    id r6 = [r5 stringByAppendingPathComponent:@"Library/Caches"];
    [r4 addObject:r6];
    id r8 = [r5 stringByAppendingPathComponent:@"Library/Application Support"];
    [r4 addObject:r8];
    local_10 = r5;
    id r10 = [r5 stringByAppendingPathComponent:@"Documents"];
    local_90 = @selector(addObject:);
    [r4 addObject:r10];
    id r12 = [NSDate dateWithTimeIntervalSinceNow:lit_1e0b0];
    local_a8 = r12;
    id r13 = [*(page_32000 + 0x140) array];
    local_c0 = r13;
    local_190 = 0.0;
    local_1a0 = 0.0;
    local_1b0 = 0.0;
    local_1c0 = 0.0;
    local_68 = r4;
    local_78 = @selector(countByEnumeratingWithState:objects:count:);
    id r14 = [r4 countByEnumeratingWithState:&local_190 objects:&frame_me0 count:0x10];
    local_38 = r3;
    if (r14 == 0) goto L_122f0;
    local_e8 = 0;
    local_e0 = *NSURLContentModificationDateKey;
    local_f8 = *NSURLIsDirectoryKey;
    local_30 = *local_1a0;
L_11e74:
    local_b8 = *(x13 + 0x668);
    local_50 = *(x14 + 0x48);
    local_58 = *(x12 + 0xff8);
    local_40 = @selector(count);
    local_48 = ((x0 >u 1) ? x0 : (0 + 1));
    local_60 = *(x11 + 0x40);
L_11ea8:
    if (*local_1a0 == x19) goto L_11ec0;
    objc_enumerationMutation(local_68);
L_11ec0:
    local_1d8 = 0;
    id r16 = objc_msgSend(x25, x22);
    if (r16 == 0) goto L_122b4;
    objc_msgSend(NSURL, local_58);
    frame_mf0 = local_e0;
    frame_me8 = local_f8;
    objc_msgSend(NSArray, local_b8);
    id r19 = objc_msgSend(x25, local_50);
    local_170 = 0.0;
    local_180 = 0.0;
    local_150 = 0.0;
    local_160 = 0.0;
    local_e8 = r19;
    id r20 = [r19 countByEnumeratingWithState:&local_150 objects:&local_2b0 count:0x10];
    if (r20 == 0) goto L_12288;
    local_f0 = *local_160;
L_11fc4:
    local_b0 = @selector(compare:);
    local_d0 = @selector(lowercaseString);
    local_d8 = @selector(pathExtension);
    local_c8 = @selector(containsObject:);
    local_80 = @selector(distantPast);
    local_98 = @selector(count);
    local_a0 = @selector(dictionaryWithObjects:forKeys:count:);
L_1202c:
    if (*local_160 == local_f0) goto L_12048;
    objc_enumerationMutation(local_e8);
L_12048:
    local_148 = 0;
    objc_msgSend(local_158[(x26 << 3)], x21);
    id r23 = objc_msgSend(0, x27);
    if ((r23 & (1<<0))) goto L_12234;
    local_140 = 0;
    objc_msgSend(local_158[(x26 << 3)], x21);
    if (0 == 0) goto L_120c8;
    id r25 = objc_msgSend(0, local_b0);
    if (r25 == -1) goto L_12234;
L_120c8:
    id r26 = objc_msgSend(x28, local_d8);
    id r27 = objc_msgSend(r26, local_d0);
    local_288 = @"png";
    local_290 = @"jpg";
    local_298 = @"jpeg";
    local_2a0 = @"heic";
    local_2a8 = @"webp";
    id r28 = objc_msgSend(NSArray, local_b8);
    id r29 = [r28 containsObject:r27];
    if (r29 == 0) goto L_1222c;
    local_268 = @"url";
    local_270 = @"date";
    if (x22 == 0) goto L_121a4;
    goto L_121c8;
L_121a4:
    id r30 = [NSDate distantPast];
    local_88 = r30;
L_121c8:
    local_280 = x8;
    id r31 = objc_msgSend(NSDictionary, local_a0);
    [local_c0 addObject:r31];
    if (x24 == 0) goto L_12218;
L_12218:
    id r33 = objc_msgSend(local_c0, local_98);
    if (r33 >u 300) goto L_12270;
L_1222c:
L_12234:
    if (x25 != (x26 + 0x1)) goto L_1202c;
    id r34 = [local_e8 countByEnumeratingWithState:&local_150 objects:&local_2b0 count:0x10];
    if (r34 != 0) goto L_11fc4;
    goto L_12288;
L_12270:
L_12288:
    id r35 = objc_msgSend(local_c0, local_40);
    if (r35 >=u 301) goto L_122f4;
L_122b4:
    if ((x21 + 0x1) != x23) goto L_11ea8;
    id r36 = [local_68 countByEnumeratingWithState:&local_190 objects:&frame_me0 count:0x10];
    if (r36 != 0) goto L_11e74;
    goto L_122f4;
L_122f0:
    local_e8 = 0;
L_122f4:
    [local_c0 sortUsingComparator:_NSConcreteGlobalBlock];
    local_258 = *CIDetectorAccuracy;
    local_260 = *CIDetectorAccuracyHigh;
    id r38 = [NSDictionary dictionaryWithObjects:&local_260 forKeys:&local_258 count:1];
    id r39 = [CIDetector detectorOfType:*CIDetectorTypeQRCode context:0 options:r38];
    local_f0 = r39;
    local_120 = 0.0;
    local_130 = 0.0;
    local_100 = 0.0;
    local_110 = 0.0;
    local_d8 = local_c0;
    id r40 = [local_c0 countByEnumeratingWithState:&local_100 objects:&local_1d8 count:0x10];
    if (r40 == 0) goto L_125ec;
L_12414:
    local_e0 = *(x11 + 0xbe0);
    local_c8 = *(x9 + 0xaa8);
    local_d0 = *(x12 + 0xca8);
    local_b0 = @selector(count);
    local_b8 = *(x8 + 0xcc0);
    local_88 = *(x14 + 0x78);
    local_90 = *(x13 + 0x928);
    local_f8 = ((x0 >u 1) ? x0 : (0 + 1));
    local_98 = *(x15 + 0x10);
    local_a0 = *(x16 + 0xaa0);
    local_c0 = *(x10 + 0x70);
L_12468:
    if (*local_110 == x20) goto L_12480;
    objc_enumerationMutation(local_d8);
L_12480:
    objc_msgSend(local_108[(x26 << 3)], x25);
    id r43 = objc_msgSend(*(x21 + 0x188), x28);
    id r44 = objc_msgSend(r43, x19);
    if (r44 == 0) goto L_12580;
    id r45 = objc_msgSend(UIImage, local_e0);
    if (r45 == 0) goto L_12578;
    if (local_f0 == 0) goto L_125fc;
    id r46 = objc_msgSend([CIImage alloc], local_d0);
    if (r46 == 0) goto L_12560;
    id r47 = objc_msgSend(local_f0, local_b8);
    id r48 = [r47 compare:x2];
    if (r48 != 0) goto L_125f4;
L_12560:
L_12578:
L_12580:
    if (local_f8 != (x26 + 0x1)) goto L_12468;
    id r49 = [local_d8 countByEnumeratingWithState:&local_100 objects:&local_1d8 count:0x10];
    if (r49 != 0) goto L_12414;
    goto L_126cc;
L_125ec:
    goto L_126c8;
L_125f4:
L_125fc:
    id r50 = [x24 addObject:x2];
    g_32720 = r50;
    helper_1be7c();
    objc_msgSend(x24, local_88);
L_12648:
    id r53 = objc_msgSend(x22, local_98);
    local_0 = r53;
    objc_msgSend(NSString, local_a0);
    helper_bf0c();
L_126c8:
L_126cc:
L_12718:
    id r56 = objc_msgSend(x21, x19);
    if (r56 == 0) goto L_128f4;
    id r57 = [UIImage imageWithData:x21];
    if (r57 == 0) goto L_128f8;
    helper_12a34(x21);
    [local_20 showFlowTitle:@"Code gần nhất" message:@"Ảnh code gần nhất." primary:@"OK" secondary:@"" full:0];
    if (*&local_20->_flowImageView != 0) goto L_1285c;
    id r60 = [[UIImageView alloc] initWithFrame:CGRectMake(*CGRectZero, *(CGRectZero + 0x8), *(CGRectZero + 0x10), *(CGRectZero + 0x18))];
    *&local_20->_flowImageView = r60;
    [*&local_20->_flowImageView setContentMode:1];
    id r62 = [*&local_20->_flowImageView layer];
    [r62 setCornerRadius:12.0];
    [*&local_20->_flowImageView setClipsToBounds:1];
    [local_20->_flowView addSubview:*&local_20->_flowImageView];
L_1285c:
    [x0 setImage:x19];
    [*x21 setHidden:0];
    [x23->_flowMessage setText:@""];
    [x23->_flowScroll setHidden:1];
    [x23 setNeedsLayout];
    [x23 layoutIfNeeded];
    [x23 layoutFlowView];
    goto L_1291c;
L_128f4:
L_128f8:
    [local_20 showSimpleAlert:@"Thông báo" message:@"Không tìm thấy ảnh code đã nhập gần nhất." index:1];
L_1291c:
    return;
    if (x1 != 1) goto L_1297c;
    objc_begin_catch();
    objc_end_catch();
    goto L_12648;
L_1297c:
    Unwind_Resume();
    __builtin_trap();
}

// IMP 0x12c64
- (void)startFeatureMultiSceneApply {
    id r1 = helper_a574();
    id r2 = NSClassFromString(@"VideoReviewEditVC");
    if (r1 == 0) goto L_12d48;
    if (r2 == 0) goto L_12d48;
    id r3 = [r1 isKindOfClass:r2];
    if (!(r3 & (1<<0))) goto L_12d48;
    id r4 = [r1 respondsToSelector:@selector(showMergeScenes)];
    if (!(r4 & (1<<0))) goto L_12d84;
    self->_mergeReviewVC = r1;
    id r5 = [r1 respondsToSelector:@selector(lastViewedSceneIndex)];
    if (r5 == 0) goto L_12da0;
    if (@selector(lastViewedSceneIndex) == 0) goto L_12dac;
    id r6 = [r1 respondsToSelector:@selector(lastViewedSceneIndex)];
    if (r6 == 0) goto L_12da8;
    [r1 lastViewedSceneIndex];
    goto L_12dac;
L_12d48:
L_12d60:
    objc_msgSend(x20, x1);
L_12d6c:
    return x0;
L_12d84:
    goto L_12d60;
L_12da0:
    goto L_12db4;
L_12da8:
L_12dac:
L_12db4:
    x20->_mergeOriginalLastViewedSceneIndex = x24;
    if (@selector(showMergeScenes) == 0) goto L_12df0;
    id r9 = [x19 respondsToSelector:@selector(showMergeScenes)];
    if (r9 == 0) goto L_12df0;
    [x19 showMergeScenes];
L_12df0:
    [x20 showFlowTitle:@"Chọn phân cảnh" message:@"Chọn điểm bắt đầu và điểm cuối trong Hợp nhất phân cảnh, rồi bấm Bắt đầu." primary:@"Bắt đầu" secondary:@"Hủy" full:0];
    goto L_12d6c;
}

// IMP 0x12e30
- (void)flowPrimaryTapped {
    if (self->_activeFeature == 3) goto L_12ec0;
    if (self->_activeFeature != 1) goto L_13000;
    id r1 = [self finishFeatureIndex:1];
    return r1;
L_12ec0:
    if ((x0->_mergeStartScene | x0->_mergeEndScene) != 0) goto L_12ef4;
    if (x0->_mergeProject == 0) goto L_13038;
L_12ef4:
    local_0 = ((x9 <u x8) ? 0 : ((x9 - x8) + 1));
    local_8 = x0;
    local_30 = 0.0;
    local_40 = 0.0;
    local_10 = 0.0;
    local_20 = 0.0;
    id r2 = [x0->_mergePresets countByEnumeratingWithState:&local_10 objects:&local_50 count:0x10];
    if (r2 == 0) goto L_12fd8;
L_12f54:
L_12f60:
    if (*local_20 == x27) goto L_12f78;
    objc_enumerationMutation(x20);
L_12f78:
    if (local_18[(x19 << 3)] == 0) goto L_12fa8;
    [NSNull null];
L_12fa8:
    if ((x19 + 0x1) <u x22) goto L_12f60;
    id r5 = [x20 countByEnumeratingWithState:&local_10 objects:&local_50 count:0x10];
    if (r5 != 0) goto L_12f54;
    goto L_12fdc;
L_12fd8:
L_12fdc:
    if (local_0 == 0) goto L_13000;
    if (x26 != local_0) goto L_13000;
    [local_8 beginNativeMediaChoiceForMergeProject];
L_13000:
    return;
L_13038:
    id r7 = [x0 beginMergeRangeFromNativePanel];
    return r7;
}

// IMP 0x1307c
- (void)flowSecondaryTapped {
    [self cancelActiveFlow];
    if ((self->_activeFeature & (1<<63))) goto L_130c8;
    id r2 = [self setFeatureState:self->_activeFeature on:0];
    return r2;
L_130c8:
    return;
}

// IMP 0x130d4
- (void)beginMergeRangeFromNativePanel {
    if (self->_mergeReviewVC == 0) goto L_1310c;
    goto L_1311c;
L_1310c:
    id r1 = helper_a574();
    if (r1 == 0) goto L_1336c;
L_1311c:
    if (@selector(project) == 0) goto L_13164;
    id r2 = [x0 respondsToSelector:@selector(project)];
    if (r2 == 0) goto L_13164;
    [x0 project];
    goto L_13168;
L_13164:
L_13168:
    if (x22 == 0) goto L_131bc;
    if (@selector(sceneCount) == 0) goto L_131bc;
    id r4 = objc_msgSend(x22, *(page_31000 + 0x520));
    if (r4 == 0) goto L_131b8;
    [x22 sceneCount];
    goto L_131bc;
L_131b8:
L_131bc:
    id r6 = helper_dbcc(x20, @"startScene");
    [r6 unsignedIntegerValue];
    id r8 = helper_dbcc(x20, @"lastScene");
    id r9 = [r8 unsignedIntegerValue];
    if (r9 <u x23) goto L_13260;
    [x19->_flowMessage setText:@"Chưa chọn được phạm vi hợp lệ. Hãy chọn lại trong Hợp nhất phân cảnh."];
    goto L_13344;
L_13260:
    x19->_mergeProject = x22;
    x19->_mergeStartScene = x24;
    x19->_mergeEndScene = x25;
    x19->_mergeCodeIndex = 0;
    [x19->_mergeCodeImages removeAllObjects];
    [x19->_mergePresets removeAllObjects];
    [x19->_tempMergeNavigators removeAllObjects];
    id r14 = objc_msgSend(x20, *(page_31000 + 0x520));
    if (r14 == 0) goto L_13334;
    if (@selector(closeMergePanel) == 0) goto L_1332c;
    id r15 = objc_msgSend(x20, *(page_31000 + 0x520));
    if (r15 == 0) goto L_1332c;
    [x20 closeMergePanel];
L_1332c:
L_13334:
    [x19 buildMergeCodePickerUI];
L_13344:
    return x0;
L_1336c:
    return;
}

// IMP 0x13388
- (void)buildMergeCodePickerUI {
    local_0 = ((self->_mergeEndScene - self->_mergeStartScene) + 0x1);
    frame_md8 = @selector(stringWithFormat:);
    id r1 = [NSString stringWithFormat:@"Có %lu phân cảnh. Nhập từng code một."];
    [self showFlowTitle:@"Nhập code" message:r1 primary:@"" secondary:@"Hủy" full:1];
    [self->_flowPrimaryButton setHidden:1];
    id r4 = [self->_flowScroll subviews];
    [r4 makeObjectsPerformSelector:@selector(removeFromSuperview)];
    frame_md0 = IVAR_0x128;
    id r6 = [self->_flowScroll bounds];
    if (r6.f2 > 0.0) goto L_134f4;
    [self bounds];
    CGRectGetWidth();
L_134f4:
    if (x20 == 0) goto L_13b28;
    frame_mf0 = @selector(initWithFrame:);
    frame_ma8 = @selector(setCornerRadius:);
    frame_ma0 = @selector(layer);
    frame_mb0 = @selector(colorWithRed:green:blue:alpha:);
    local_e8 = @selector(setTag:);
    local_f0 = @selector(setBackgroundColor:);
    local_d8 = @selector(setTextColor:);
    local_e0 = @selector(whiteColor);
    local_d0 = *UIFontWeightSemibold;
    local_c0 = @selector(setFont:);
    local_c8 = @selector(systemFontOfSize:weight:);
    frame_mb8 = @selector(addSubview:);
    local_b0 = @selector(buttonWithType:);
    local_b8 = @selector(systemFontOfSize:);
    local_a8 = (d8 + lit_1e0c0);
    local_98 = 0x405c000000000000;
    local_a0 = @selector(setFrame:);
    local_88 = @selector(CGColor);
    local_90 = @selector(setBorderWidth:);
    local_78 = @selector(setTitle:forState:);
    local_80 = @selector(setBorderColor:);
    local_68 = @selector(mergeCodeButtonTapped:);
    local_70 = @selector(setTitleColor:forState:);
    local_60 = lit_1e0c8;
    local_58 = lit_1e0d0;
    local_50 = lit_1e0d8;
    local_48 = lit_1e0e0;
    local_40 = lit_1e0e8;
    local_38 = lit_1e0f0;
    local_30 = lit_1e0f8;
    local_28 = lit_1e100;
    local_18 = @selector(setText:);
    local_20 = @selector(addTarget:action:forControlEvents:);
    frame_me8 = x23;
    frame_me0 = x22;
L_136a0:
    id r9 = [[UIView alloc] initWithFrame:CGRectMake(bits(0), d11, d8, local_60)];
    id r10 = objc_msgSend(r9, frame_ma0);
    objc_msgSend(r10, frame_ma8);
    [UIColor colorWithRed:local_58 green:local_50 blue:local_48 alpha:d13];
    objc_msgSend(r9, local_f0);
    frame_mc8 = x24;
    objc_msgSend(r9, local_e8);
    id r15 = [[UILabel alloc] initWithFrame:CGRectMake(d12, 8.0, d9, 24.0)];
    local_0 = ((x24 + x21[x23]) + 0x1);
    [NSString stringWithFormat:@"Phân cảnh %lu"];
    objc_msgSend(r15, local_18);
    objc_msgSend(*(page_32000 + 0x138), local_e0);
    objc_msgSend(r15, local_d8);
    objc_msgSend(UIFont, local_c8);
    frame_mc0 = r15;
    objc_msgSend(r15, local_c0);
    [r9 addSubview:r15];
    id r23 = [[*(page_32000 + 0x1b0) alloc] initWithFrame:CGRectMake(d12, d15, d9, 22.0)];
    objc_msgSend(r23, local_18);
    [UIColor colorWithRed:local_40 green:local_38 blue:local_30 alpha:d13];
    objc_msgSend(r23, local_d8);
    objc_msgSend(UIFont, local_b8);
    objc_msgSend(r23, local_c0);
    objc_msgSend(r23, local_e8);
    [r9 addSubview:r23];
    id r31 = objc_msgSend(UIButton, local_b0);
    objc_msgSend(r31, local_a0);
    objc_msgSend(r31, local_e8);
    id r34 = objc_msgSend(r31, frame_ma0);
    objc_msgSend(r34, frame_ma8);
    id r36 = objc_msgSend(r31, frame_ma0);
    objc_msgSend(r36, local_90);
    id r38 = [*(page_32000 + 0x138) colorWithRed:d10 green:d14 blue:d13 alpha:d13];
    objc_msgSend(r38, local_88);
    id r40 = objc_msgSend(r31, frame_ma0);
    objc_msgSend(r40, local_80);
    objc_msgSend(r31, local_78);
    [*(page_32000 + 0x138) colorWithRed:d10 green:d14 blue:d13 alpha:d13];
    objc_msgSend(r31, local_70);
    objc_msgSend(r31, local_20);
    [r9 addSubview:r31];
    [local_f8->_flowScroll addSubview:r9];
    if (x24 != frame_me0) goto L_136a0;
    goto L_13b2c;
L_13b28:
L_13b2c:
    [x21->_flowScroll setContentSize:CGSizeMake(d8, d11)];
    local_0 = local_10;
    id r49 = [NSString stringWithFormat:@"Đã nhận 0/%lu code."];
    [x21->_flowMessage setText:r49];
    return x0;
}

// IMP 0x13bc4
- (void)mergeCodeButtonTapped:(id)arg1 {
    id r1 = [arg1 tag];
    if ((r1 + -6000) >=u ((self->_mergeEndScene <u self->_mergeStartScene) ? 0 : ((self->_mergeEndScene - self->_mergeStartScene) + 1))) goto L_13c4c;
    if (self->_activeFeature != 3) goto L_13c4c;
    self->_mergeCodeIndex = (r1 + -6000);
    id r2 = [self startNativeQRImportForIndex:(r1 + -6000)];
    return r2;
L_13c4c:
    return;
}

// IMP 0x13c58
- (void)startNativeQRImportForIndex:(unsigned long long)arg1 {
    if (self->_activeFeature != 3) goto L_13f04;
    id r1 = NSClassFromString(@"QRCodeManager");
    if (r1 == 0) goto L_13cec;
    if (@selector(sharedInstance) == 0) goto L_13cf8;
    id r2 = [r1 respondsToSelector:@selector(sharedInstance)];
    if (r2 == 0) goto L_13cf4;
    [r1 sharedInstance];
    goto L_13cf8;
L_13cec:
    goto L_13ed8;
L_13cf4:
L_13cf8:
    if (x19 == 0) goto L_13ed8;
    id r4 = objc_msgSend(x19, *(x22 + 0x520));
    if (!(r4 & (1<<0))) goto L_13ed8;
    id r5 = helper_dbcc(x19, @"delegate");
    id r6 = [VSQRCaptureProxy new];
    [r6 setTarget:r5];
    local_58 = x20;
    id r8 = helper_12984();
    id r9 = [r8 copy];
    local_18 = _NSConcreteStackBlock;
    local_20 = lit_1df28;
    local_28 = &block_VSToolOverlay_startNativeQRImportForIndex_1;
    local_30 = &g_2c408;
    objc_copyWeak((&local_18 + 0x30), &local_58, lit_1df28);
    local_38 = r5;
    local_40 = r9;
    [r6 setCaptured:&local_18];
    x20->_qrPreviousDelegate = r5;
    x20->_qrCaptureProxy = r6;
    helper_1424c(x19, r6);
    [x20 hideToolOverlayForNativeUI];
    if (@selector(startQRImport) == 0) goto L_13e94;
    id r14 = objc_msgSend(x19, *(x22 + 0x520));
    if (r14 == 0) goto L_13e94;
    [x19 startQRImport];
L_13e94:
L_13e9c:
    goto L_13efc;
L_13ed8:
    [x20 showSimpleAlert:@"Thông báo" message:@"Không tìm thấy chức năng nhập QR gốc của Video Star." index:3];
L_13efc:
L_13f04:
    return;
    if (x1 != 1) goto L_14054;
    id r17 = objc_begin_catch(x0);
    local_10 = r17;
    helper_1424c(x19, x23);
    *x28 = 0;
    *x26 = 0;
    [x20 restoreToolOverlayAfterNativeUI];
    id r20 = [r17 reason];
    if (r20 == 0) goto L_13fac;
    goto L_13fcc;
L_13fac:
    [local_10 name];
L_13fcc:
    id r22 = [x27 stringWithFormat:@"Video Star gặp lỗi khi mở nhập QR: %@"];
    [x20 showSimpleAlert:@"Thông báo" message:r22 index:3];
    if (x25 == 0) goto L_14028;
L_14028:
    objc_end_catch();
    goto L_13e9c;
    objc_end_catch();
    goto L_14054;
    goto L_14050;
L_14050:
L_14054:
    goto L_14064;
L_14064:
    Unwind_Resume(x25);
    __builtin_trap();
}

// IMP 0x142cc
- (void)startSingleCodeImagePickerForIndex:(unsigned long long)arg1 {
    id r1 = [self startNativeQRImportForIndex:arg1];
    return r1;
}

// IMP 0x142d8
- (void)picker:(id)arg1 didFinishPicking:(id)arg2 {
    if (self->_singleCodePicker != arg1) goto L_143a4;
    self->_singleCodePicker = 0;
    [self restoreToolOverlayAfterNativeUI];
    local_8 = _NSConcreteStackBlock;
    local_10 = lit_1df28;
    local_18 = &block_VSToolOverlay_picker_didFinishPicking_1;
    local_20 = &g_2c498;
    local_28 = arg2;
    local_30 = self;
    local_38 = self->_singleCodePickerIndex;
    [arg1 dismissViewControllerAnimated:1 completion:&local_8];
L_143a4:
    return;
}

// IMP 0x14760
- (void)processSingleCodeImage:(id)arg1 index:(unsigned long long)arg2 {
    if (self->_activeFeature != 3) goto L_14f08;
    local_98 = @selector(length);
    id r1 = [arg1 length];
    if (r1 == 0) goto L_14f08;
    id r2 = NSClassFromString(@"QRCodeManager");
    if (r2 == 0) goto L_14884;
    if (@selector(sharedInstance) == 0) goto L_14828;
    id r3 = [r2 respondsToSelector:@selector(sharedInstance)];
    if (r3 == 0) goto L_14828;
    [r2 sharedInstance];
    goto L_1482c;
L_14828:
L_1482c:
    if (x24 == 0) goto L_14884;
    id r5 = [UIImage imageWithData:x21];
    local_70 = r5;
    if (r5 == 0) goto L_148ac;
    goto L_148b8;
L_14884:
    [x22 showSimpleAlert:@"Thông báo" message:@"Không tìm thấy bộ xử lý code của Video Star." index:3];
    goto L_14f08;
L_148ac:
L_148b8:
    id r7 = objc_msgSend(x0, x1);
    frame_m70 = *CIDetectorAccuracy;
    frame_m68 = *CIDetectorAccuracyHigh;
    id r8 = [NSDictionary dictionaryWithObjects:&frame_m68 forKeys:&frame_m70 count:1];
    id r9 = [CIDetector detectorOfType:*CIDetectorTypeQRCode context:0 options:r8];
    local_68 = r7;
    if (r7 == 0) goto L_14988;
    if (r9 == 0) goto L_14988;
    [r9 featuresInImage:r7];
    goto L_14998;
L_14988:
L_14998:
    [NSMutableArray array];
    local_f0 = 0.0;
    local_100 = 0.0;
    local_110 = 0.0;
    local_120 = 0.0;
    local_a0 = @selector(countByEnumeratingWithState:objects:count:);
    local_a8 = x0;
    id r12 = [x0 countByEnumeratingWithState:&local_f0 objects:&frame_mf0 count:0x10];
    if (r12 == 0) goto L_14aac;
L_14a08:
L_14a24:
    if (*local_100 == x28) goto L_14a3c;
    objc_enumerationMutation(local_a8);
L_14a3c:
    id r14 = NSClassFromString(x22);
    if (r14 != 0) goto L_14a64;
    objc_msgSend(*(x24 + 0x238), x23);
L_14a64:
    id r16 = objc_msgSend(x19, x25);
    if (r16 == 0) goto L_14a84;
    objc_msgSend(x21, x26);
L_14a84:
    if ((x27 + 0x1) <u x20) goto L_14a24;
    id r18 = objc_msgSend(local_a8, local_a0);
    if (r18 != 0) goto L_14a08;
L_14aac:
    if (local_70 == 0) goto L_14ad0;
    [x21 addObject:local_70];
L_14ad0:
    if (local_68 == 0) goto L_14af4;
    [x21 addObject:local_68];
L_14af4:
    local_d0 = 0.0;
    local_e0 = 0.0;
    local_b0 = 0.0;
    local_c0 = 0.0;
    id r21 = objc_msgSend(x21, local_a0);
    if (r21 == 0) goto L_14dfc;
    local_88 = *local_c0;
L_14b44:
    local_40 = *(x9 + 0xa90);
    local_48 = @selector(class);
    local_30 = *(x10 + 0xa98);
    local_38 = *(x11 + 0xaa0);
    local_80 = ((x0 >u 1) ? x0 : (0 + 1));
L_14b80:
    if (*local_c0 == local_88) goto L_14b9c;
    objc_enumerationMutation(x27);
L_14b9c:
    if (x25 == 0) goto L_14bf4;
    id r23 = objc_msgSend(x24, x23);
    if (r23 == 0) goto L_14bf4;
    objc_msgSend(x24, x25);
    goto L_14bf8;
L_14bf4:
L_14bf8:
    if (x20 != 0) goto L_14e3c;
L_14c0c:
    id r25 = objc_msgSend(x26, x23);
    if (r25 == 0) goto L_14c3c;
    objc_msgSend(x26, x21);
    goto L_14c40;
L_14c3c:
L_14c40:
    id r27 = [x26 length];
    if (r27 == 0) goto L_14cb8;
    if (x25 == 0) goto L_14ca0;
    id r28 = objc_msgSend(x22, x23);
    if (r28 == 0) goto L_14ca0;
    objc_msgSend(x22, x25);
    goto L_14ca4;
L_14ca0:
L_14ca4:
    if (x20 != 0) goto L_14e30;
L_14cb8:
    if (local_80 != (x28 + 0x1)) goto L_14b80;
    goto L_14dc4;
    if (x1 != 1) goto L_14f54;
    objc_begin_catch(x0);
    id r31 = objc_end_catch();
    goto L_14cb8;
    if (x1 != 1) goto L_14f54;
    id r32 = objc_begin_catch(r31);
    local_28 = r32;
    objc_msgSend(x26, local_48);
    id r34 = objc_msgSend(r32, local_40);
    local_20 = r34;
    if (r34 == 0) goto L_14d54;
    goto L_14d70;
L_14d54:
    id r35 = objc_msgSend(local_28, local_30);
    local_18 = r35;
L_14d70:
    local_0 = x20;
    local_8 = x8;
    objc_msgSend(x19, local_38);
    helper_bf0c();
    if (x24 == 0) goto L_14dac;
L_14dac:
    objc_end_catch();
    goto L_14c0c;
L_14dc4:
    id r39 = objc_msgSend(x27, local_a0);
    if (r39 != 0) goto L_14b44;
L_14dfc:
    [x22 showSimpleAlert:@"Thông báo" message:@"Không đọc được QR trong ảnh code." index:3];
    goto L_14ed4;
L_14e30:
L_14e3c:
    id r41 = objc_msgSend(x22, x23);
    if (r41 == 0) goto L_14e74;
    id r42 = [x22 validQRCheck:x20];
    if (!(r42 & (1<<0))) goto L_14ea0;
L_14e74:
    [local_78 acceptMergePreset:x20 imageData:local_60 index:local_50];
    goto L_14ed0;
L_14ea0:
    [local_78 showSimpleAlert:@"Thông báo" message:@"Ảnh đã chọn không chứa code Video Star hợp lệ." index:3];
L_14ed0:
L_14ed4:
L_14f08:
    return;
    objc_end_catch();
L_14f54:
    Unwind_Resume(x19);
    __builtin_trap();
}

// IMP 0x14f60
- (void)acceptMergePreset:(id)arg1 imageData:(id)arg2 index:(unsigned long long)arg3 {
    if (arg1 == 0) goto L_15120;
    if (self->_activeFeature != 3) goto L_15120;
    local_8 = arg2;
    id r1 = [self->_mergePresets count];
    if (r1 >u arg3) goto L_1504c;
L_15000:
    objc_msgSend(*(x22 + 0x218), x24);
    objc_msgSend(x25, x26);
    id r4 = objc_msgSend(x21[x28], x23);
    if (r4 <=u x20) goto L_15000;
L_1504c:
    local_0 = @selector(setObject:atIndexedSubscript:);
    [x25 setObject:x19 atIndexedSubscript:x20];
    id r6 = objc_msgSend(x21->_mergeCodeImages, x23);
    if (r6 >u x20) goto L_150d8;
L_15090:
    objc_msgSend(*(x22 + 0x218), x25);
    objc_msgSend(x21[x24], x26);
    id r9 = objc_msgSend(x21[x24], x23);
    if (r9 <=u x20) goto L_15090;
L_150d8:
    id r10 = [local_8 copy];
    [x21[x24] setObject:r10 atIndexedSubscript:x20];
    [x21 mergeCodeCapturedAtIndex:x20];
L_15120:
    return x0;
}

// IMP 0x1514c
- (void)mergeCodeCapturedAtIndex:(unsigned long long)arg1 {
    local_20 = arg1;
    local_10 = ((self->_mergeEndScene - self->_mergeStartScene) + 0x1);
    local_18 = self;
    local_70 = 0.0;
    local_80 = 0.0;
    local_90 = 0.0;
    local_a0 = 0.0;
    local_28 = @selector(countByEnumeratingWithState:objects:count:);
    id r1 = [self->_mergePresets countByEnumeratingWithState:&local_70 objects:&frame_me0 count:0x10];
    if (r1 == 0) goto L_15278;
L_151fc:
L_15204:
    if (*local_80 == x28) goto L_1521c;
    objc_enumerationMutation(x22);
L_1521c:
    objc_msgSend(*(x19 + 0x218), x24);
    if ((x20 + 0x1) <u x23) goto L_15204;
    id r4 = [x22 countByEnumeratingWithState:&local_70 objects:&frame_me0 count:0x10];
    if (r4 != 0) goto L_151fc;
    goto L_1527c;
L_15278:
L_1527c:
    local_50 = 0.0;
    local_60 = 0.0;
    local_30 = 0.0;
    local_40 = 0.0;
    id r5 = [local_18->_flowScroll subviews];
    id r6 = [r5 countByEnumeratingWithState:&local_30 objects:&local_b0 count:0x10];
    if (r6 == 0) goto L_1534c;
L_152e0:
L_152f0:
    if (*local_40 == x19) goto L_15308;
    objc_enumerationMutation(x22);
L_15308:
    id r8 = objc_msgSend(local_38[(x20 << 3)], x23);
    if (r8 == x21) goto L_15354;
    if (x26 != (x20 + 0x1)) goto L_152f0;
    id r9 = [x22 countByEnumeratingWithState:&local_30 objects:&local_b0 count:0x10];
    if (r9 != 0) goto L_152e0;
L_1534c:
    goto L_15360;
L_15354:
L_15360:
    id r10 = [x21 viewWithTag:0x1389];
    [r10 setText:@"Đã nhận code"];
    id r12 = [UIColor colorWithRed:lit_1de80 green:lit_1de88 blue:1.0 alpha:1.0];
    [r10 setTextColor:r12];
    id r14 = [x21 viewWithTag:(local_20 + 0x1770)];
    [r14 setTitle:@"Đổi code" forState:0];
    id r16 = [NSString stringWithFormat:@"Đã nhận %lu/%lu code."];
    [x28->_flowMessage setText:r16];
    if (x27 != local_10) goto L_154f4;
    [x28->_flowPrimaryButton setHidden:0];
    [x28->_flowSecondaryButton setHidden:0];
    [x28->_flowPrimaryButton setTitle:@"Chọn ảnh/video" forState:0];
    [x28->_flowPrimaryButton setEnabled:1];
L_154f4:
    return;
}

// IMP 0x15548
- (void)waitForNativeMergeMediaEditorAttempt:(unsigned long long)arg1 {
    if (self->_activeFeature != 3) goto L_159cc;
    if (self->_mergeProject == 0) goto L_159cc;
    if (self->_mergeEndScene <u self->_mergeStartScene) goto L_159cc;
    id r1 = helper_a574();
    id r2 = helper_159ec();
    if (((r2 != 0) ? r1 : 0) == 0) goto L_1569c;
    local_0 = ((r2 != 0) ? r1 : 0);
    if (@selector(navigationController) == 0) goto L_15638;
    id r3 = [((r2 != 0) ? r1 : 0) respondsToSelector:@selector(navigationController)];
    if (r3 == 0) goto L_15638;
    [((r2 != 0) ? r1 : 0) navigationController];
    goto L_1563c;
L_15638:
L_1563c:
    if (x27 == 0) goto L_15710;
    if (@selector(navProject) == 0) goto L_156ac;
    id r5 = [x27 respondsToSelector:@selector(navProject)];
    if (r5 == 0) goto L_156ac;
    id r6 = [x27 navProject];
    local_30 = r6;
    goto L_156b0;
L_1569c:
    goto L_158d4;
L_156ac:
    local_30 = 0;
L_156b0:
    id r7 = objc_msgSend(x28, x27);
    if (r7 == 0) goto L_15724;
    if (@selector(navSceneIndex) == 0) goto L_15730;
    id r8 = objc_msgSend(x28, x27);
    if (r8 == 0) goto L_15730;
    id r9 = [x28 navSceneIndex];
    local_20 = r9;
    goto L_15734;
L_15710:
    local_2c = 0;
    local_30 = 0;
    local_20 = 0x7fffffffffffffff;
    goto L_157dc;
L_15724:
    local_20 = 0x7fffffffffffffff;
    goto L_1573c;
L_15730:
    local_20 = 0;
L_15734:
L_1573c:
    id r10 = [x26 viewIfLoaded];
    id r11 = [r10 window];
    if (r11 == 0) goto L_157c0;
    id r12 = [x28 viewIfLoaded];
    id r13 = [r12 window];
    local_2c = (r13 == 0);
    goto L_157c4;
L_157c0:
    local_2c = 0;
L_157c4:
L_157dc:
    if (@selector(getMultiLayerEngine) == 0) goto L_15828;
    id r14 = [x26 respondsToSelector:@selector(getMultiLayerEngine)];
    if (r14 == 0) goto L_15828;
    [x26 getMultiLayerEngine];
    goto L_1582c;
L_15828:
L_1582c:
    if (x26 == 0) goto L_158d4;
    if (((local_2c ^ 0x1) & (1<<0))) goto L_158d4;
    if (local_30 == 0) goto L_15858;
    if (local_30 != x21[x19]) goto L_158d4;
L_15858:
    if (local_20 == 0x7fffffffffffffff) goto L_15874;
    if (local_20 != x21->_mergeStartScene) goto L_158d4;
L_15874:
    x21->_mediaSourceNav = x27;
    x21->_mediaSourceEditor = local_0;
    x21->_mediaSourceMode = 3;
    x21->_mediaPickerResponseHandled = 0;
    [x21 beginNativeMediaChoiceForEditor:x28 mode:3];
    goto L_159a4;
L_158d4:
    if (x23 >u 49) goto L_15970;
    frame_m58 = x21;
    id r17 = dispatch_time(0, 0x5f5e100);
    local_38 = _NSConcreteStackBlock;
    local_40 = lit_1df28;
    local_48 = &block_VSToolOverlay_waitForNativeMergeMediaEditorAttempt_1;
    local_50 = &g_2c4c8;
    objc_copyWeak((&local_38 + 0x20), &frame_m58, lit_1df28);
    dispatch_after(r17, _dispatch_main_q, &local_38);
    goto L_159a4;
L_15970:
    [x21 restoreToolOverlayAfterNativeUI];
    [x21 showSimpleAlert:@"Thông báo" message:@"Không mở được bộ chọn ảnh/video gốc của Video Star." index:3];
L_159a4:
L_159cc:
    return;
}

// IMP 0x15a90
- (void)beginNativeMediaChoiceForMergeProject {
    if (self->_mergeProject == 0) goto L_15ae0;
    if (self->_mergeEndScene >=u self->_mergeStartScene) goto L_15b1c;
L_15ae0:
    id r1 = [x20 showSimpleAlert:@"Thông báo" message:@"Chưa có phạm vi phân cảnh hợp lệ." index:3];
    return r1;
L_15b1c:
    if (x20->_mergeReviewVC == 0) goto L_15b38;
    goto L_15b4c;
L_15b38:
    id r2 = helper_a574();
    if (r2 == 0) goto L_15c88;
L_15b4c:
    id r3 = [x19 respondsToSelector:@selector(showMultiLayer)];
    if (!(r3 & (1<<0))) goto L_15c88;
    helper_ad24();
    [x20 hideToolOverlayForNativeUI];
    id r6 = [x19 respondsToSelector:@selector(setLastViewedSceneIndex:)];
    if (r6 == 0) goto L_15bb0;
    [x19 setLastViewedSceneIndex:x20[x24]];
L_15bb0:
    x20->_mediaSourceNav = 0;
    x20->_mediaSourceEditor = 0;
    x20->_mediaSourceMode = 3;
    x20->_mediaPickerResponseHandled = 0;
    objc_msgSend(x19, x22);
    local_38 = x20;
    id r9 = dispatch_time(0, 0x8f0d180);
    local_10 = _NSConcreteStackBlock;
    local_18 = lit_1df28;
    local_20 = &block_VSToolOverlay_beginNativeMediaChoiceForMergeProject_1;
    local_28 = &g_2c288;
    objc_copyWeak((&local_10 + 0x20), &local_38, lit_1df28);
    dispatch_after(r9, _dispatch_main_q, &local_10);
    goto L_15cac;
L_15c88:
    [x20 showSimpleAlert:@"Thông báo" message:@"Không tìm thấy giao diện nhiều lớp của Video Star." index:3];
L_15cac:
    return;
    if (x1 != 1) goto L_15e00;
    objc_begin_catch(x0);
    id r14 = objc_msgSend(x19, x21);
    if (r14 == 0) goto L_15d20;
    objc_msgSend(x19, x23);
L_15d20:
    [x20 restoreToolOverlayAfterNativeUI];
    id r17 = [x21 reason];
    if (r17 == 0) goto L_15d64;
    goto L_15d84;
L_15d64:
    [x21 name];
L_15d84:
    id r19 = [x23 stringWithFormat:@"Không mở được phần nhiều lớp: %@"];
    [x20 showSimpleAlert:@"Thông báo" message:r19 index:3];
    if (x25 == 0) goto L_15de0;
L_15de0:
    objc_end_catch();
    goto L_15cac;
    objc_end_catch();
L_15e00:
    Unwind_Resume(x21);
    __builtin_trap();
}

// IMP 0x15e4c
- (id)makeMultiLayerEditorForProject:(id)arg1 sceneIndex:(unsigned long long)arg2 {
    id r1 = NSClassFromString(@"MultiLayerNavController");
    if (arg1 == 0) goto L_1619c;
    if (r1 == 0) goto L_1619c;
    id r2 = [r1 instancesRespondToSelector:@selector(initWithProject:sceneIndex:)];
    if (r2 == 0) goto L_15f58;
    id r3 = [r1 initWithProject:arg1 sceneIndex:arg2];
    if (r3 == 0) goto L_15f60;
    [self->_tempMergeNavigators addObject:r3];
    if (@selector(topViewController) == 0) goto L_15f6c;
    id r5 = [r3 respondsToSelector:@selector(topViewController)];
    if (r5 == 0) goto L_15f68;
    [r3 topViewController];
    goto L_15f6c;
L_15f58:
    goto L_1619c;
L_15f60:
    goto L_16194;
L_15f68:
L_15f6c:
    if (x21 != 0) goto L_15ff4;
    if (@selector(viewControllers) == 0) goto L_15fc4;
    id r7 = objc_msgSend(x22, *(page_31000 + 0x520));
    if (r7 == 0) goto L_15fc0;
    [x22 viewControllers];
    goto L_15fc4;
L_15fc0:
L_15fc4:
    id r9 = [x23 firstObject];
    if (r9 == 0) goto L_16050;
L_15ff4:
    id r10 = NSClassFromString(@"MultiLayerWizEffectVC");
    if (r10 == 0) goto L_16048;
    id r11 = [x21 isKindOfClass:r10];
    if (r11 == 0) goto L_16050;
    goto L_1618c;
L_16048:
L_16050:
    local_20 = 0.0;
    local_30 = 0.0;
    local_0 = 0.0;
    local_10 = 0.0;
    if (*(x25 + 0xd30) == 0) goto L_160a4;
    id r12 = objc_msgSend(x22, *(page_31000 + 0x520));
    if (r12 == 0) goto L_160a0;
    objc_msgSend(x22, *(x25 + 0xd30));
    goto L_160a4;
L_160a0:
L_160a4:
    id r14 = [((x23 == 0) ? *__NSArray0__ : x23) countByEnumeratingWithState:&local_0 objects:&local_40 count:0x10];
    if (r14 == 0) goto L_16168;
L_16104:
L_16110:
    if (*local_10 == x26) goto L_16128;
    objc_enumerationMutation(x22);
L_16128:
    id r16 = helper_159ec(local_8[(x27 << 3)], page_31000);
    if ((r16 & (1<<0))) goto L_16178;
    if (x28 != (x27 + 0x1)) goto L_16110;
    id r17 = objc_msgSend(x22, x23);
    if (r17 != 0) goto L_16104;
L_16168:
    goto L_1618c;
L_16178:
L_1618c:
L_16194:
L_1619c:
    return x23;
}

// IMP 0x161e4
- (void)applyMergePresetsAndMedia {
    if (self->_activeFeature != 3) goto L_16350;
    id r1 = [self->_mergePresets count];
    if (r1 != ((self->_mergeEndScene - self->_mergeStartScene) + 0x1)) goto L_16350;
    id r2 = [self->_mergeCodeImages count];
    if (r2 != ((self->_mergeEndScene - self->_mergeStartScene) + 0x1)) goto L_16350;
    if (self->_pendingMediaImage != 0) goto L_1628c;
    if (self->_pendingMediaAsset == 0) goto L_16350;
L_1628c:
    [x19 showFlowTitle:@"Đang áp dụng" message:@"Đang mở từng phân cảnh, nhập code và thay media…" primary:@"Đang xử lý…" secondary:@"" full:0];
    [x19->_flowPrimaryButton setEnabled:0];
    [x19->_flowSecondaryButton setHidden:1];
    x19->_mergeWaitingForNativeImport = 0;
    x19->_mergeImportEditor = 0;
    x19->_mergeImportOffset = 0;
    id r6 = [x19 applyMergeSceneOffset:0 project:x19->_mergeProject];
    return r6;
L_16350:
    return;
}

// IMP 0x16360
- (void)openMergeSceneEditorAtOffset:(unsigned long long)arg1 project:(id)arg2 attempt:(unsigned long long)arg3 {
    if (self->_activeFeature != 3) goto L_1684c;
    local_38 = (self->_mergeStartScene + arg1);
    id r1 = helper_a574();
    id r2 = helper_159ec();
    if (((r2 != 0) ? r1 : 0) == 0) goto L_164ac;
    local_30 = r1;
    if (@selector(navigationController) == 0) goto L_16440;
    id r3 = [((r2 != 0) ? r1 : 0) respondsToSelector:@selector(navigationController)];
    if (r3 == 0) goto L_16440;
    [((r2 != 0) ? r1 : 0) navigationController];
    goto L_16444;
L_16440:
L_16444:
    if (x23 == 0) goto L_16520;
    id r5 = objc_msgSend(x23, *(x24 + 0x520));
    if (r5 == 0) goto L_16530;
    if (@selector(navSceneIndex) == 0) goto L_1653c;
    id r6 = objc_msgSend(x23, *(x24 + 0x520));
    if (r6 == 0) goto L_1653c;
    id r7 = [x23 navSceneIndex];
    local_18 = r7;
    goto L_16540;
L_164ac:
    if (x26 == 0) goto L_166b4;
L_164b8:
    if (x26 <=u 99) goto L_16758;
    local_0 = (local_38 + 0x1);
    id r8 = [NSString stringWithFormat:@"Không mở được phần nhiều lớp ở phân cảnh %lu."];
    [x22 showSimpleAlert:@"Thông báo" message:r8 index:3];
    goto L_1682c;
L_16520:
L_16524:
    if (x26 != 0) goto L_164b8;
    goto L_166b4;
L_16530:
    local_18 = 0x7fffffffffffffff;
    goto L_16548;
L_1653c:
    local_18 = 0;
L_16540:
L_16548:
    if (@selector(navProject) == 0) goto L_16594;
    id r10 = objc_msgSend(x23, x24);
    if (r10 == 0) goto L_16594;
    id r11 = [x23 navProject];
    local_40 = r11;
    goto L_16598;
L_16594:
    local_40 = 0;
L_16598:
    id r12 = [x28 viewIfLoaded];
    id r13 = [r12 window];
    if (r13 == 0) goto L_1668c;
    id r14 = [x23 viewIfLoaded];
    id r15 = [r14 window];
    if (r15 == 0) goto L_1669c;
    if (local_18 == 0x7fffffffffffffff) goto L_16650;
    if (local_18 != local_38) goto L_166a0;
L_16650:
    if (local_40 == 0) goto L_16668;
    if (local_40 != local_20) goto L_16524;
L_16668:
    [x22 beginNativeMergeCodeImportForEditor:x28 offset:x27 project:x19];
    goto L_1682c;
L_1668c:
    goto L_166a4;
L_1669c:
L_166a0:
L_166a4:
    if (x26 != 0) goto L_164b8;
L_166b4:
    if (x22->_mergeReviewVC == 0) goto L_166d4;
    goto L_166e8;
L_166d4:
    id r17 = helper_a574();
    if (r17 == 0) goto L_167fc;
L_166e8:
    id r18 = [x28 respondsToSelector:@selector(showMultiLayer)];
    if (!(r18 & (1<<0))) goto L_167fc;
    id r19 = [x28 respondsToSelector:@selector(setLastViewedSceneIndex:)];
    if (r19 == 0) goto L_1673c;
    [x28 setLastViewedSceneIndex:local_38];
L_1673c:
    objc_msgSend(x28, x24);
L_16758:
    frame_m58 = x22;
    id r22 = dispatch_time(0, 0x4c4b400);
    local_48 = _NSConcreteStackBlock;
    local_50 = lit_1df28;
    local_58 = &block_VSToolOverlay_openMergeSceneEditorAtOffset_project_attempt_1;
    local_60 = &g_2c4f8;
    objc_copyWeak((&local_48 + 0x28), &frame_m58, lit_1df28);
    local_68 = x19;
    dispatch_after(r22, _dispatch_main_q, &local_48);
    goto L_1682c;
L_167fc:
    [x22 showSimpleAlert:@"Thông báo" message:@"Không tìm thấy giao diện nhiều lớp của Video Star." index:3];
L_16828:
L_1682c:
L_1684c:
    return;
    if (x1 != 1) goto L_1697c;
    id r26 = objc_begin_catch(x0);
    id r27 = [r26 reason];
    if (r27 == 0) goto L_168c8;
    goto L_168e8;
L_168c8:
    [x25 name];
L_168e8:
    local_0 = (local_38 + 0x1);
    local_8 = x27;
    id r29 = [x21 stringWithFormat:@"Không mở được phân cảnh %lu: %@"];
    [x22 showSimpleAlert:@"Thông báo" message:r29 index:3];
    if (x23 == 0) goto L_1694c;
L_1694c:
    objc_end_catch();
    goto L_16828;
    objc_end_catch();
L_1697c:
    Unwind_Resume(x21);
    __builtin_trap();
}

// IMP 0x169d4
- (void)beginNativeMergeCodeImportForEditor:(id)arg1 offset:(unsigned long long)arg2 project:(id)arg3 {
    if (arg1 == 0) goto L_172b0;
    if (self->_activeFeature != 3) goto L_172b0;
    id r1 = [self->_mergePresets count];
    if (r1 <=u arg2) goto L_172b0;
    id r2 = [self->_mergeCodeImages count];
    if (r2 <=u arg2) goto L_172b0;
    id r3 = [self->_mergePresets objectAtIndexedSubscript:arg2];
    [self->_mergeCodeImages objectAtIndexedSubscript:arg2];
    id r5 = NSClassFromString(@"QRCodeManager");
    if (r5 == 0) goto L_16bcc;
    local_60 = r3;
    if (@selector(sharedInstance) == 0) goto L_16b20;
    id r6 = [r5 respondsToSelector:@selector(sharedInstance)];
    if (r6 == 0) goto L_16b20;
    [r5 sharedInstance];
    goto L_16b24;
L_16b20:
L_16b24:
    if (x24 == 0) goto L_16bcc;
    id r8 = [NSData class];
    id r9 = [x19 isKindOfClass:r8];
    if (r9 == 0) goto L_16bf4;
    local_78 = @selector(length);
    id r10 = [x19 length];
    if (r10 == 0) goto L_16bf4;
    id r11 = [UIImage imageWithData:x19];
    local_30 = r11;
    if (r11 == 0) goto L_16c00;
    goto L_16c0c;
L_16bcc:
    [x26 showSimpleAlert:@"Thông báo" message:@"Không tìm thấy bộ xử lý code của Video Star." index:3];
    goto L_172a0;
L_16bf4:
    if (x21 != 0) goto L_17080;
    goto L_170c8;
L_16c00:
L_16c0c:
    id r13 = objc_msgSend(x0, x1);
    local_40 = r13;
    frame_m70 = *CIDetectorAccuracy;
    frame_m68 = *CIDetectorAccuracyHigh;
    id r14 = [NSDictionary dictionaryWithObjects:&frame_m68 forKeys:&frame_m70 count:1];
    id r15 = [CIDetector detectorOfType:*CIDetectorTypeQRCode context:0 options:r14];
    local_38 = r15;
    [NSMutableArray array];
    if (r13 == 0) goto L_16ddc;
    if (r15 == 0) goto L_16ddc;
    id r17 = [r15 featuresInImage:r13];
    local_d0 = 0.0;
    local_e0 = 0.0;
    local_f0 = 0.0;
    local_100 = 0.0;
    local_88 = *(page_31000 + 0x6f8);
    id r18 = objc_msgSend(r17, *(page_31000 + 0x6f8));
    if (r18 == 0) goto L_16dc8;
L_16d40:
L_16d4c:
    if (*local_e0 == x26) goto L_16d64;
    objc_enumerationMutation(x22);
L_16d64:
    objc_msgSend(*(x19 + 0x238), x27);
    id r21 = objc_msgSend(local_d8[(x23 << 3)], x28);
    if (r21 == 0) goto L_16d9c;
    objc_msgSend(x21, x24);
L_16d9c:
    if ((x23 + 0x1) <u x20) goto L_16d4c;
    id r23 = objc_msgSend(x22, local_88);
    if (r23 != 0) goto L_16d40;
L_16dc8:
L_16ddc:
    if (local_30 == 0) goto L_16df4;
    [x21 addObject:local_30];
L_16df4:
    if (x20 == 0) goto L_16e0c;
    [x21 addObject:x20];
L_16e0c:
    local_b0 = 0.0;
    local_c0 = 0.0;
    local_90 = 0.0;
    local_a0 = 0.0;
    local_58 = x21;
    id r26 = objc_msgSend(x21, *(x22 + 0x6f8));
    if (r26 == 0) goto L_1703c;
    local_18 = *(x22 + 0x6f8);
    local_70 = *local_a0;
L_16e50:
    local_88 = @selector(respondsToSelector:);
    local_68 = ((x0 >u 1) ? x0 : (0 + 1));
L_16e7c:
    if (*local_a0 == local_70) goto L_16e98;
    objc_enumerationMutation(local_58);
L_16e98:
    if (x21 == 0) goto L_16ef0;
    id r28 = [local_80 respondsToSelector:x21];
    if (r28 == 0) goto L_16ef0;
    objc_msgSend(local_80, x21);
    goto L_16ef4;
L_16ef0:
L_16ef4:
    if (x22 != 0) goto L_17040;
L_16f08:
    id r30 = [x20 respondsToSelector:x19];
    if (r30 == 0) goto L_16f3c;
    objc_msgSend(x20, x19);
    goto L_16f40;
L_16f3c:
L_16f40:
    id r32 = [x20 length];
    if (r32 == 0) goto L_16fe0;
    if (x21 == 0) goto L_16fa0;
    id r33 = [x24 respondsToSelector:x21];
    if (r33 == 0) goto L_16fa0;
    objc_msgSend(x24, x21);
    goto L_16fa4;
L_16fa0:
L_16fa4:
    if (x20 == 0) goto L_16fe8;
    goto L_17040;
    if (x1 != 1) goto L_1746c;
    objc_begin_catch(x0);
    objc_end_catch();
L_16fe0:
L_16fe8:
    if (local_68 != (x25 + 0x1)) goto L_16e7c;
    goto L_17018;
    if (x1 != 1) goto L_1746c;
    objc_begin_catch(x0);
    objc_end_catch();
    goto L_16f08;
L_17018:
    id r39 = objc_msgSend(local_58, local_18);
    if (r39 != 0) goto L_16e50;
    goto L_17040;
L_1703c:
L_17040:
    if (local_60 == 0) goto L_170c8;
L_17080:
    if (x22 != 0) goto L_170c8;
    id r40 = [NSNull null];
    if (x21 == r40) goto L_17220;
    goto L_170cc;
L_170c8:
    if (x22 == 0) goto L_17220;
L_170cc:
    objc_msgSend(*(x20 + 0x188), x27);
    id r42 = objc_msgSend(x19, x28);
    if (r42 == 0) goto L_17224;
    id r43 = [x19 length];
    if (r43 == 0) goto L_17228;
    id r44 = [x24 respondsToSelector:@selector(selectedCode:withImageData:)];
    if (!(r44 & (1<<0))) goto L_172f8;
    x26->_mergeWaitingForNativeImport = 1;
    x26->_mergeImportEditor = local_48;
    local_28 = x25;
    x26->_mergeImportOffset = x25;
    id r45 = helper_dbcc(x24, @"delegate");
    x26->_mergeQRPreviousDelegate = r45;
    helper_1424c(x24, x23);
    local_80 = x24;
    [x24 selectedCode:@selector(respondsToSelector:) withImageData:x19];
    local_0 = (x26->_mergeStartScene + x25);
    [NSString stringWithFormat:@"native QR import requested for scene %lu"];
    helper_bf0c();
L_17218:
    goto L_17290;
L_17220:
    local_88 = 0;
L_17224:
L_17228:
    local_0 = ((x25 + x26->_mergeStartScene) + 0x1);
    id r50 = [NSString stringWithFormat:@"Thiếu code cho phân cảnh %lu."];
    [x26 showSimpleAlert:@"Thông báo" message:r50 index:3];
L_17290:
L_172a0:
L_172b0:
    return;
L_172f8:
    [x26 showSimpleAlert:@"Thông báo" message:@"Không gọi được bộ xử lý code của Video Star." index:3];
    goto L_17290;
    if (x1 != 1) goto L_1746c;
    id r54 = objc_begin_catch(r53);
    x28[x25] = 0;
    *x24 = 0;
    helper_1424c(local_80, x28[x26]);
    x28[x26] = 0;
    id r56 = [r54 reason];
    if (r56 == 0) goto L_173b8;
    goto L_173d8;
L_173b8:
    [x21 name];
L_173d8:
    local_0 = ((local_28 + x22) + 0x1);
    local_8 = x26;
    id r58 = [x20 stringWithFormat:@"Không nhập được code ở phân cảnh %lu: %@"];
    [x28 showSimpleAlert:@"Thông báo" message:r58 index:3];
    if (x19 == 0) goto L_17440;
L_17440:
    objc_end_catch();
    goto L_17218;
    objc_end_catch();
L_1746c:
    Unwind_Resume(x22);
    __builtin_trap();
}

// IMP 0x17478
- (void)handleNativeMergeImportedData:(id)arg1 editor:(id)arg2 code:(id)arg3 {
    if (self->_activeFeature != 3) goto L_17518;
    if (self->_mergeWaitingForNativeImport == 0) goto L_17518;
    if (self->_mergeImportEditor != arg2) goto L_17518;
    [self waitForMergeImportMatch:arg2 offset:self->_mergeImportOffset attempt:0];
L_17518:
    return x0;
}

// IMP 0x1753c
- (void)waitForMergeImportMatch:(id)arg1 offset:(unsigned long long)arg2 attempt:(unsigned long long)arg3 {
    if (self->_activeFeature != 3) goto L_184e4;
    if (self->_mergeWaitingForNativeImport == 0) goto L_184e4;
    if (self->_mergeImportEditor != arg1) goto L_184e4;
    local_1c8 = self;
    id r1 = [arg1 view];
    id r2 = [r1 window];
    local_70 = r2;
    id r3 = helper_dbcc(arg1, @"ourPopup");
    id r4 = helper_1857c();
    local_80 = r3;
    if (r3 == 0) goto L_1766c;
    if (r4 != 0) goto L_1766c;
    id r5 = helper_18a08(r3);
    local_78 = r5;
    goto L_1769c;
L_1766c:
    local_78 = x0;
    if (local_80 != 0) goto L_1769c;
    if (x0 == 0) goto L_1769c;
    id r6 = helper_de20(x0);
    local_80 = r6;
L_1769c:
    if (x8 == 0) goto L_17768;
    if (local_80 == 0) goto L_17768;
    id r7 = helper_e1bc(local_80, local_78);
    local_0 = ((x24 + 0x1) + x23->_mergeStartScene);
    local_8 = r7;
    [NSString stringWithFormat:@"merge native Match press scene=%lu pressed=%d"];
    helper_bf0c();
    if (x25 <u 16) goto L_1790c;
    if ((r7 ^ 0x1) == 0) goto L_1790c;
    local_0 = ((x24 + 0x1) + x23->_mergeStartScene);
    id r10 = [*(page_32000 + 0x1a0) stringWithFormat:@"Không tự động bấm được "Trùng khớp" ở phân cảnh %lu."];
    [x23 showSimpleAlert:@"Thông báo" message:r10 index:3];
    goto L_184c0;
L_17768:
    id r12 = helper_dbcc(x19, @"warningPopup");
    if (r12 == 0) goto L_177dc;
    id r13 = [UIView class];
    id r14 = [r12 isKindOfClass:r13];
    if (r14 == 0) goto L_177fc;
    id r15 = objc_msgSend(r12, x20);
    if (r15 != 0) goto L_177fc;
L_177dc:
    if (local_70 == 0) goto L_17998;
    id r16 = helper_18c14(local_70);
    if (r16 == 0) goto L_17998;
L_177fc:
    id r17 = helper_1c084(x21);
    id r18 = [r17 length];
    if (r18 == 0) goto L_179ec;
    id r19 = [r17 containsString:@"multi-layer qr"];
    if (r19 == 0) goto L_1785c;
    id r20 = [r17 containsString:@"than the scene"];
    if ((r20 & (1<<0))) goto L_17904;
L_1785c:
    id r21 = objc_msgSend(x27, x28);
    if (r21 == 0) goto L_178a4;
    id r22 = objc_msgSend(x27, x28);
    if ((r22 & (1<<0))) goto L_17904;
    id r23 = objc_msgSend(x27, x28);
    if ((r23 & (1<<0))) goto L_17904;
L_178a4:
    id r24 = objc_msgSend(x27, x28);
    if (r24 == 0) goto L_178d4;
    id r25 = objc_msgSend(x27, x28);
    if ((r25 & (1<<0))) goto L_17904;
L_178d4:
    id r26 = objc_msgSend(x27, x28);
    if ((r26 & (1<<0))) goto L_17904;
    id r27 = objc_msgSend(x27, x28);
    if (!(r27 & (1<<0))) goto L_18274;
L_17904:
    goto L_179f0;
L_1790c:
    id r28 = dispatch_time(0, 0x2aea540);
    local_188 = _NSConcreteStackBlock;
    local_190 = lit_1df28;
    local_198 = &block_VSToolOverlay_waitForMergeImportMatch_offset_attempt_1;
    local_1a0 = &g_2c4f8;
    objc_copyWeak((&local_188 + 0x28), &local_1c8, lit_1df28);
    local_1a8 = x19;
    dispatch_after(r28, _dispatch_main_q, &local_188);
    goto L_184c4;
L_17998:
    local_68 = 0;
    if (x19 == 0) goto L_18004;
    if (@selector(getMultiLayerEngine) == 0) goto L_18004;
    id r31 = [x19 respondsToSelector:@selector(getMultiLayerEngine)];
    if (r31 == 0) goto L_18000;
    id r32 = [x19 getMultiLayerEngine];
    local_68 = r32;
    goto L_18004;
L_179ec:
L_179f0:
    id r33 = helper_1c084(x21);
    id r34 = objc_msgSend(r33, x20);
    if (r34 == 0) goto L_17a98;
    id r35 = [r33 containsString:@"original preset layers"];
    if ((r35 & (1<<0))) goto L_17a80;
    id r36 = [r33 containsString:@"cai dat san"];
    if ((r36 & (1<<0))) goto L_17a80;
    id r37 = [r33 containsString:@"cài đặt sẵn"];
    if ((r37 & (1<<0))) goto L_17a80;
    id r38 = [r33 containsString:@"original layers"];
    if (!(r38 & (1<<0))) goto L_1829c;
L_17a80:
L_17a84:
    if ((x28 & (1<<0))) goto L_17aa4;
    if (!(x20 & (1<<0))) goto L_17b7c;
    goto L_17b94;
L_17a98:
    if (x28 == 0) goto L_17b7c;
L_17aa4:
    id r39 = helper_1857c(x21);
    if (r39 != 0) goto L_17ae0;
    id r40 = helper_18a08(x21);
    if (r40 == 0) goto L_17b8c;
L_17ae0:
    id r41 = helper_e1bc(x21, x20);
    if (r41 == 0) goto L_17b8c;
    id r42 = dispatch_time(0, 0x2aea540);
    local_148 = _NSConcreteStackBlock;
    local_150 = lit_1df28;
    local_158 = &block_VSToolOverlay_waitForMergeImportMatch_offset_attempt_2;
    local_160 = &g_2c4f8;
    objc_copyWeak((&local_148 + 0x28), &local_1c8, lit_1df28);
    local_168 = x19;
    dispatch_after(r42, _dispatch_main_q, &local_148);
    goto L_184b4;
L_17b7c:
    id r45 = helper_18df0(x21);
    if (r45 != 0) goto L_17b94;
    goto L_183ac;
L_17b8c:
L_17b94:
    local_68 = x21;
    id r46 = NSClassFromString(@"CustomPopup");
    if (r46 == 0) goto L_17ff8;
    local_60 = @selector(isKindOfClass:);
    id r47 = [x21 isKindOfClass:r46];
    if (r47 == 0) goto L_17ff8;
    id r48 = helper_dbcc(x21, @"_buttons");
    local_48 = r48;
    id r49 = helper_dbcc(x21, @"_buttonStrings");
    local_30 = r49;
    local_58 = @selector(class);
    id r50 = [NSArray class];
    id r51 = [r48 isKindOfClass:r50];
    if (r51 == 0) goto L_17e3c;
    local_38 = @selector(count);
    id r52 = [r48 count];
    if (r52 == 0) goto L_17e3c;
    local_18 = @selector(currentTitle);
    local_20 = @selector(isEqualToString:);
    local_28 = @selector(objectAtIndexedSubscript:);
    local_40 = @selector(containsString:);
L_17c78:
    id r53 = objc_msgSend(local_48, local_28);
    id r54 = [UIButton class];
    id r55 = [r53 isKindOfClass:r54];
    if (r55 == 0) goto L_17e1c;
    [r53 currentTitle];
    id r57 = helper_1bd14();
    local_50 = r57;
    id r58 = objc_msgSend(local_30, local_38);
    if (x27 >=u r58) goto L_17d7c;
    id r59 = objc_msgSend(local_30, local_28);
    id r60 = [NSString class];
    id r61 = [r59 isKindOfClass:r60];
    if (r61 == 0) goto L_17d74;
    objc_msgSend(local_30, local_28);
    helper_1bd14();
L_17d74:
L_17d7c:
    id r64 = objc_msgSend(local_50, local_20);
    if ((r64 & (1<<0))) goto L_18290;
    id r65 = [local_50 containsString:@"dong y"];
    if ((r65 & (1<<0))) goto L_18290;
    id r66 = [local_50 containsString:@"tiep tuc"];
    if ((r66 & (1<<0))) goto L_18290;
    id r67 = objc_msgSend(x28, local_20);
    if ((r67 & (1<<0))) goto L_18290;
    id r68 = [x28 containsString:@"dong y"];
    if ((r68 & (1<<0))) goto L_18290;
    id r69 = [x28 containsString:@"tiep tuc"];
    if ((r69 & (1<<0))) goto L_18290;
L_17e1c:
    id r70 = [local_48 count];
    if ((x27 + 0x1) <u r70) goto L_17c78;
L_17e3c:
    local_38 = @selector(respondsToSelector:);
    id r71 = [local_68 respondsToSelector:@selector(buttonWithTitle:)];
    if (r71 == 0) goto L_18208;
    *(&local_1d0 + 0x20) = 0.0;
    *(&local_1d0 + 0x30) = 0.0;
    *&local_1d0 = 0.0;
    *(&local_1d0 + 0x10) = 0.0;
    local_210 = @"OK";
    local_218 = @"Ok";
    local_220 = @"Đồng ý";
    local_228 = @"Tiếp tục";
    local_230 = @"Continue";
    id r72 = [NSArray arrayWithObjects:&local_210 count:5];
    local_50 = r72;
    local_28 = @selector(countByEnumeratingWithState:objects:count:);
    id r73 = [r72 countByEnumeratingWithState:&local_1d0 objects:&frame_me8 count:0x10];
    if (r73 == 0) goto L_182b8;
    local_40 = *local_1e0;
L_17f04:
L_17f10:
    if (*local_1e0 == local_40) goto L_17f2c;
    objc_enumerationMutation(local_50);
L_17f2c:
    if (x27 == 0) goto L_17f84;
    id r75 = [local_68 respondsToSelector:x27];
    if (r75 == 0) goto L_17f84;
    objc_msgSend(local_68, x27);
    goto L_17f88;
L_17f84:
L_17f88:
    id r77 = [UIButton class];
    id r78 = [x20 isKindOfClass:r77];
    if ((r78 & (1<<0))) goto L_17ff0;
    if (x22 != (x21 + 0x1)) goto L_17f10;
    id r79 = [local_50 countByEnumeratingWithState:&local_1d0 objects:&frame_me8 count:0x10];
    if (r79 != 0) goto L_17f04;
L_17ff0:
    goto L_182bc;
L_17ff8:
    goto L_182d4;
L_18000:
    local_68 = 0;
L_18004:
    if (local_68 == 0) goto L_180f8;
    id r80 = [local_68 respondsToSelector:@selector(numActiveLayers)];
    if (r80 == 0) goto L_18078;
    if (@selector(numActiveLayers) == 0) goto L_180f0;
    id r81 = [local_68 respondsToSelector:@selector(numActiveLayers)];
    if (r81 == 0) goto L_180f0;
    id r82 = [local_68 numActiveLayers];
    if (r82 == 0) goto L_180f8;
L_18078:
    x23[x27] = 0;
    x23[x22] = 0;
    id r83 = NSClassFromString(@"QRCodeManager");
    if (r83 == 0) goto L_18234;
    if (@selector(sharedInstance) == 0) goto L_18210;
    id r84 = objc_msgSend(r83, x21);
    if (r84 == 0) goto L_18210;
    [r83 sharedInstance];
    goto L_18214;
L_180f0:
L_180f8:
    if (x25 >u 179) goto L_181a0;
    frame_me8 = x23;
    id r86 = dispatch_time(0, 0x17d7840);
    local_88 = _NSConcreteStackBlock;
    local_90 = lit_1df28;
    local_98 = &block_VSToolOverlay_waitForMergeImportMatch_offset_attempt_5;
    local_a0 = &g_2c4f8;
    objc_copyWeak((&local_88 + 0x28), &frame_me8, lit_1df28);
    local_a8 = x26;
    dispatch_after(r86, _dispatch_main_q, &local_88);
    goto L_1826c;
L_181a0:
    local_0 = ((x24 + x23->_mergeStartScene) + 0x1);
    id r89 = [NSString stringWithFormat:@"Code ở phân cảnh %lu chưa hoàn tất xử lý native."];
    [x23 showSimpleAlert:@"Thông báo" message:r89 index:3];
    goto L_18268;
L_18208:
    goto L_182c4;
L_18210:
L_18214:
    if (x25 == 0) goto L_18238;
    *(x21 + 0x448) = x8;
    helper_1424c(x25, x23[x8]);
    goto L_18238;
L_18234:
L_18238:
    *(x21 + 0x448) = x8;
    x23[x8] = 0;
    [x23 waitForMergePresetReadyAndApplyMedia:x26 offset:x24 attempt:0];
L_18268:
L_1826c:
    goto L_184c0;
L_18274:
    objc_msgSend(x27, x28);
    goto L_179f0;
L_18290:
    goto L_182bc;
L_1829c:
    objc_msgSend(x27, x20);
    goto L_17a84;
L_182b8:
L_182bc:
L_182c4:
L_182d4:
    if (x20 == 0) goto L_183a4;
    id r95 = helper_e1bc(local_68, x20);
    if (r95 == 0) goto L_183a4;
    frame_me8 = x23;
    id r96 = dispatch_time(0, 0x2aea540);
    local_108 = _NSConcreteStackBlock;
    local_110 = lit_1df28;
    local_118 = &block_VSToolOverlay_waitForMergeImportMatch_offset_attempt_3;
    local_120 = &g_2c4f8;
    objc_copyWeak((&local_108 + 0x28), &frame_me8, lit_1df28);
    local_128 = x19;
    dispatch_after(r96, _dispatch_main_q, &local_108);
    goto L_184c0;
L_183a4:
L_183ac:
    if (x25 >u 179) goto L_18454;
    frame_me8 = x23;
    id r99 = dispatch_time(0, 0x17d7840);
    local_c8 = _NSConcreteStackBlock;
    local_d0 = lit_1df28;
    local_d8 = &block_VSToolOverlay_waitForMergeImportMatch_offset_attempt_4;
    local_e0 = &g_2c4f8;
    objc_copyWeak((&local_c8 + 0x28), &frame_me8, lit_1df28);
    local_e8 = x19;
    dispatch_after(r99, _dispatch_main_q, &local_c8);
    goto L_184bc;
L_18454:
    local_0 = ((x24 + x23->_mergeStartScene) + 0x1);
    id r102 = [NSString stringWithFormat:@"Cảnh báo của Video Star ở phân cảnh %lu chưa được xử lý tự động."];
    [x23 showSimpleAlert:@"Thông báo" message:r102 index:3];
L_184b4:
L_184bc:
L_184c0:
L_184c4:
L_184e4:
    return;
    goto L_18564;
    goto L_18564;
    goto L_18564;
    goto L_18564;
    goto L_18564;
    goto L_18564;
    goto L_18564;
    goto L_18564;
    goto L_18564;
    goto L_18564;
    goto L_18564;
    goto L_18564;
    goto L_18564;
    goto L_18564;
    goto L_18564;
L_18564:
    Unwind_Resume(x0);
    __builtin_trap();
}

// IMP 0x19098
- (void)waitForMergePresetReadyAndApplyMedia:(id)arg1 offset:(unsigned long long)arg2 attempt:(unsigned long long)arg3 {
    if (arg1 == 0) goto L_193d4;
    if (self->_activeFeature != 3) goto L_193d4;
    if (@selector(getMultiLayerEngine) == 0) goto L_192ac;
    id r1 = [arg1 respondsToSelector:@selector(getMultiLayerEngine)];
    if (!(r1 & (1<<0))) goto L_192ac;
    id r2 = [arg1 getMultiLayerEngine];
    if (r2 == 0) goto L_192b4;
    id r3 = [r2 respondsToSelector:@selector(numActiveLayers)];
    if (r3 == 0) goto L_191a0;
    if (@selector(numActiveLayers) == 0) goto L_19400;
    id r4 = [r2 respondsToSelector:@selector(numActiveLayers)];
    if (!(r4 & (1<<0))) goto L_19400;
    id r5 = [r2 numActiveLayers];
    if (r5 == 0) goto L_192b8;
L_191a0:
    id r6 = helper_ba74(x23);
    id r7 = [r6 count];
    x20->_mediaApplyResponse = x20->_mediaPickerResponse;
    local_88 = _NSConcreteStackBlock;
    local_98 = &block_VSToolOverlay_waitForMergePresetReadyAndApplyMedia_offset_attempt_1;
    local_a0 = &g_2c528;
    local_a8 = x23;
    local_b0 = x20;
    if (r7 == 0) goto L_1940c;
    local_50 = _NSConcreteStackBlock;
    local_60 = &block_VSToolOverlay_waitForMergePresetReadyAndApplyMedia_offset_attempt_2;
    local_68 = &g_2c558;
    local_80 = (x20->_mergeStartScene + x21);
    local_78 = &local_88;
    [x20 startMediaApplyToEditor:x23 image:x20->_pendingMediaImage asset:x20->_pendingMediaAsset completion:&local_50];
    goto L_19454;
L_192ac:
L_192b4:
L_192b8:
    if (x24 >u 99) goto L_19360;
    local_48 = x20;
    id r9 = dispatch_time(0, 0x3938700);
    local_8 = _NSConcreteStackBlock;
    local_10 = lit_1df28;
    local_18 = &block_VSToolOverlay_waitForMergePresetReadyAndApplyMedia_offset_attempt_3;
    local_20 = &g_2c4f8;
    objc_copyWeak((&local_8 + 0x28), &local_48, lit_1df28);
    local_28 = x23;
    dispatch_after(r9, _dispatch_main_q, &local_8);
    goto L_193c8;
L_19360:
    local_0 = ((x21 + x20->_mergeStartScene) + 0x1);
    id r12 = [NSString stringWithFormat:@"Code ở phân cảnh %lu đã nhập nhưng phần nhiều lớp chưa sẵn sàng."];
    [x20 showSimpleAlert:@"Thông báo" message:r12 index:3];
L_193c8:
L_193cc:
L_193d4:
    return;
L_19400:
    goto L_192b8;
L_1940c:
    local_0 = (x27 + 0x1);
    [NSString stringWithFormat:@"scene %lu has no eligible image/video layer; continue to native Create"];
    helper_bf0c();
    helper_19470(&local_88);
L_19454:
    goto L_193cc;
}

// IMP 0x1982c
- (void)waitForMergeCreateCompletionAtOffset:(unsigned long long)arg1 project:(id)arg2 editor:(id)arg3 attempt:(unsigned long long)arg4 {
    if (self->_activeFeature != 3) goto L_19b2c;
    local_8 = arg4;
    if (arg3 == 0) goto L_198e4;
    if (@selector(navigationController) == 0) goto L_198e4;
    id r1 = [arg3 respondsToSelector:@selector(navigationController)];
    if (r1 == 0) goto L_198e0;
    [arg3 navigationController];
    goto L_198e4;
L_198e0:
L_198e4:
    id r3 = helper_a574();
    id r4 = helper_159ec();
    if (x23 == 0) goto L_19a94;
    id r5 = [x23 viewIfLoaded];
    id r6 = [r5 window];
    if (r6 == 0) goto L_19a78;
    id r7 = [x23 presentingViewController];
    if (r7 == 0) goto L_19a94;
    if ((((r3 != x26) & r4) ^ 0x1) != 0) goto L_19a94;
    if (local_8 >u 139) goto L_19b5c;
    frame_m60 = x25;
    id r8 = dispatch_time(0, 0x3938700);
    local_60 = _NSConcreteStackBlock;
    local_68 = lit_1df28;
    local_70 = &block_VSToolOverlay_waitForMergeCreateCompletionAtOffset_project_editor_attempt_2;
    local_78 = &g_2c588;
    objc_copyWeak((&local_60 + 0x30), &frame_m60, lit_1df28);
    local_98 = local_20;
    local_80 = x28;
    local_88 = x26;
    local_a0 = local_8;
    dispatch_after(r8, _dispatch_main_q, &local_60);
    goto L_19b10;
L_19a78:
L_19a94:
    frame_m60 = x25;
    frame_m98 = _NSConcreteStackBlock;
    frame_m90 = lit_1df28;
    frame_m88 = &block_VSToolOverlay_waitForMergeCreateCompletionAtOffset_project_editor_attempt_1;
    frame_m80 = &g_2c1c8;
    objc_copyWeak((&frame_m98 + 0x28), &frame_m60, lit_1df28);
    frame_m68 = local_20;
    frame_m78 = x28;
    dispatch_async(_dispatch_main_q, &frame_m98);
L_19b10:
L_19b1c:
L_19b2c:
    return;
L_19b5c:
    id r13 = objc_msgSend(x23, x24);
    if (r13 == 0) goto L_19c04;
    frame_m60 = x25;
    local_28 = _NSConcreteStackBlock;
    local_30 = lit_1df28;
    local_38 = &block_VSToolOverlay_waitForMergeCreateCompletionAtOffset_project_editor_attempt_3;
    local_40 = &g_2c1c8;
    objc_copyWeak((&local_28 + 0x28), &frame_m60, lit_1df28);
    local_58 = local_20;
    local_48 = x28;
    [x23 dismissViewControllerAnimated:0 completion:&local_28];
    goto L_19b10;
L_19c04:
    id r16 = [x25 applyMergeSceneOffset:(local_20 + 0x1) project:x28];
    goto L_19b1c;
    Unwind_Resume(r16);
    __builtin_trap();
}

// IMP 0x19d28
- (void)applyMergeSceneOffset:(unsigned long long)arg1 project:(id)arg2 {
    if (self->_activeFeature != 3) goto L_1a228;
    if (((self->_mergeEndScene - self->_mergeStartScene) + 0x1) <=u arg1) goto L_19df4;
    if (arg1 != 0) goto L_1a160;
    if (self->_mediaSourceEditor == 0) goto L_1a160;
    if (@selector(navigationController) == 0) goto L_19f5c;
    id r1 = [self->_mediaSourceEditor respondsToSelector:@selector(navigationController)];
    if (r1 == 0) goto L_19f58;
    [self->_mediaSourceEditor navigationController];
    goto L_19f5c;
L_19df4:
    x20->_mergeWaitingForNativeImport = 0;
    x20->_mergeImportEditor = 0;
    id r3 = NSClassFromString(@"QRCodeManager");
    if (r3 == 0) goto L_19e98;
    if (@selector(sharedInstance) == 0) goto L_19e74;
    id r4 = objc_msgSend(r3, *(page_31000 + 0x520));
    if (r4 == 0) goto L_19e70;
    [r3 sharedInstance];
    goto L_19e74;
L_19e70:
L_19e74:
    if (x22 == 0) goto L_19e98;
    *(x25 + 0x448) = x8;
    helper_1424c(x22, x20[x8]);
L_19e98:
    *(x25 + 0x448) = x8;
    x20[x8] = 0;
    if (x20->_mergeReviewVC == 0) goto L_19ee8;
    id r7 = objc_msgSend(x20->_mergeReviewVC, *(x24 + 0x520));
    if (r7 == 0) goto L_19ee8;
    [x20->_mergeReviewVC setLastViewedSceneIndex:x20->_mergeOriginalLastViewedSceneIndex];
L_19ee8:
    x20->_mediaSourceEditor = 0;
    x20->_mediaSourceNav = 0;
    [NSString stringWithFormat:@"Đã áp dụng %lu code cho %lu phân cảnh."];
    goto L_1a218;
L_19f58:
L_19f5c:
    if (x22 == 0) goto L_19fc4;
    id r10 = [x22 respondsToSelector:@selector(navSceneIndex)];
    if (r10 == 0) goto L_19fd4;
    if (@selector(navSceneIndex) == 0) goto L_19fe0;
    id r11 = [x22 respondsToSelector:@selector(navSceneIndex)];
    if (r11 == 0) goto L_19fe0;
    id r12 = [x22 navSceneIndex];
    local_18 = r12;
    goto L_19fe4;
L_19fc4:
    local_18 = 0x7fffffffffffffff;
    goto L_1a040;
L_19fd4:
    local_18 = 0x7fffffffffffffff;
    goto L_19fec;
L_19fe0:
    local_18 = 0;
L_19fe4:
L_19fec:
    if (@selector(navProject) == 0) goto L_1a034;
    id r13 = objc_msgSend(x22, x24);
    if (r13 == 0) goto L_1a034;
    [x22 navProject];
    goto L_1a038;
L_1a034:
L_1a038:
L_1a040:
    id r15 = [x20[x27] viewIfLoaded];
    id r16 = [r15 window];
    if (x22 == 0) goto L_1a140;
    if (r16 == 0) goto L_1a140;
    id r17 = [x22 viewIfLoaded];
    id r18 = [r17 window];
    if (r18 == 0) goto L_1a150;
    if (local_18 == 0x7fffffffffffffff) goto L_1a0f4;
    if (local_18 != x20[x25]) goto L_1a150;
L_1a0f4:
    if (x24 == 0) goto L_1a100;
    if (x24 != x19) goto L_1a150;
L_1a100:
    if (x20[local_10] == 0) goto L_1a160;
    goto L_1a21c;
L_1a140:
L_1a150:
L_1a160:
    if (x20->_mergeReviewVC == 0) goto L_1a17c;
    goto L_1a190;
L_1a17c:
    id r19 = helper_a574();
    if (r19 == 0) goto L_1a1fc;
L_1a190:
    id r20 = [x23 respondsToSelector:@selector(showMultiLayer)];
    if (!(r20 & (1<<0))) goto L_1a1fc;
    id r21 = [x23 respondsToSelector:@selector(setLastViewedSceneIndex:)];
    if (r21 == 0) goto L_1a1e0;
    [x23 setLastViewedSceneIndex:(x20[x25] + x21)];
L_1a1e0:
    goto L_1a21c;
L_1a1fc:
L_1a218:
L_1a21c:
    objc_msgSend(x0, x1);
L_1a228:
    return x0;
}

// IMP 0x1a24c
- (void)featureSwitchChanged:(id)arg1 {
    id r1 = [arg1 tag];
    if ((r1 & (1<<63))) goto L_1a3f0;
    id r2 = [self->_featureStates count];
    if (r1 >=u r2) goto L_1a3f0;
    id r3 = [arg1 isOn];
    id r4 = [NSNumber numberWithBool:r3];
    [self->_featureStates setObject:r4 atIndexedSubscript:r1];
    id r6 = [arg1 isOn];
    if (!(r6 & (1<<0))) goto L_1a388;
    if (self->_activeFeature != r1) goto L_1a3a4;
    self->_activeFeature = r1;
    if (self->_panel == 0) goto L_1a35c;
    [self closePanel];
L_1a35c:
    if (x21 >u 3) goto L_1a3f0;
    goto *(&sub_1a37c + (&sym_1e148[x21] << 2)); /* jump table / tail call */
    goto L_1a398;
L_1a388:
    if (x9 != x21) goto L_1a3f0;
L_1a398:
    objc_msgSend(x20, x1);
    goto L_1a3f0;
L_1a3a4:
    [x19 setOn:0];
    objc_msgSend(*(page_32000 + 0x148), x22);
    objc_msgSend(x20->_featureStates, x23);
L_1a3f0:
    return x0;
    goto L_1a398;
    goto L_1a398;
    goto L_1a398;
}

// IMP 0x1a434
- (void)cancelActiveFlow {
    if (self->_singleCodePicker == 0) goto L_1a484;
    [self->_singleCodePicker dismissViewControllerAnimated:0 completion:0];
    self->_singleCodePicker = 0;
L_1a484:
    if (0 == 0) goto L_1a4a0;
    [0 setHidden:0];
L_1a4a0:
    if (x19->_flowView == 0) goto L_1a4bc;
    [x19->_flowView setHidden:0];
L_1a4bc:
    if (x19->_mediaSourceNav == 0) goto L_1a4e8;
    objc_msgSend(x19->_mediaSourceNav, *(x20 + 0xca0));
    x19->_mediaSourceNav = 0;
L_1a4e8:
    if (x19->_mergeReviewVC == 0) goto L_1a52c;
    id r5 = [x19->_mergeReviewVC respondsToSelector:@selector(setLastViewedSceneIndex:)];
    if (r5 == 0) goto L_1a52c;
    *(page_32000 + 0x414) = x8;
    [x19->_mergeReviewVC setLastViewedSceneIndex:x19[x8]];
L_1a52c:
    if (x19->_qrCaptureProxy == 0) goto L_1a5d4;
    id r7 = NSClassFromString(@"QRCodeManager");
    if (r7 == 0) goto L_1a5d4;
    id r8 = NSClassFromString(@"QRCodeManager");
    if (r8 == 0) goto L_1a5b0;
    if (@selector(sharedInstance) == 0) goto L_1a5b0;
    id r9 = [r8 respondsToSelector:@selector(sharedInstance)];
    if (r9 == 0) goto L_1a5ac;
    [r8 sharedInstance];
    goto L_1a5b0;
L_1a5ac:
L_1a5b0:
    if (x21 == 0) goto L_1a5d4;
    *(page_32000 + 0x42c) = x8;
    helper_1424c(x21, x19[x8]);
L_1a5d4:
    IVAR_0x178 = x8;
    x19[x8] = 0;
    x19->_qrCaptureProxy = 0;
    x19->_mediaSourceEditor = 0;
    x19->_mediaSourceMode = -1;
    x19->_mediaPickerResponseHandled = 0;
    x19->_mediaPickerResponse = 0;
    x19->_mediaApplyResponse = 0;
    x19->_mediaApplyInProgress = 0;
    x19->_mediaApplyEditor = 0;
    x19->_mediaApplyEngine = 0;
    x19->_mediaApplyLayers = 0;
    x19->_mediaApplyCompletion = 0;
    x19->_mediaApplyImage = 0;
    x19->_mediaApplyAsset = 0;
    x19->_mediaBeforeLayer = 0;
    x19->_mediaBeforeGenerator = 0;
    x19->_mediaBeforeImage = 0;
    x19->_mediaBeforeAsset = 0;
    x19->_mergeWaitingForNativeImport = 0;
    x19->_mergeImportEditor = 0;
    x19->_mergeImportOffset = 0;
    x19->_mergeQRPreviousDelegate = 0;
    x19->_pendingMediaImage = 0;
    x19->_pendingMediaURL = 0;
    x19->_pendingMediaAsset = 0;
    x19->_mergeProject = 0;
    x19->_mergeReviewVC = 0;
    *(page_32000 + 0x414) = x8;
    x19[x8] = 0;
    [x19->_tempMergeNavigators removeAllObjects];
    [x19->_mergeCodeImages removeAllObjects];
    [x19->_mergePresets removeAllObjects];
    objc_msgSend(x19->_flowPrimaryButton, *(page_31000 + 0x9d8));
    objc_msgSend(x19->_flowSecondaryButton, *(page_31000 + 0x9d8));
    [x19 hideFlow];
    x19->_activeFeature = -1;
    if ((x19->_activeFeature & (1<<63))) goto L_1a888;
    id r18 = [x19 setFeatureState:x19->_activeFeature on:0];
    return r18;
L_1a888:
    return;
}

// IMP 0x1a8a4
- (void).cxx_destruct {
    self->_beatSplitProject = 0;
    self->_beatSplitView = 0;
    self->_mergeQRPreviousDelegate = 0;
    self->_mergeImportEditor = 0;
    self->_mediaApplyCompletion = 0;
    self->_mediaApplyAsset = 0;
    self->_mediaApplyImage = 0;
    self->_mediaApplyLayers = 0;
    self->_mediaApplyEngine = 0;
    self->_mediaApplyEditor = 0;
    self->_mediaApplyResponse = 0;
    self->_mediaPickerResponse = 0;
    self->_singleCodePicker = 0;
    self->_mediaBeforeGenerator = 0;
    self->_mediaBeforeImage = 0;
    self->_mediaBeforeAsset = 0;
    self->_mediaBeforeLayer = 0;
    self->_mediaSourceEditor = 0;
    self->_mergeReviewVC = 0;
    self->_mediaSourceNav = 0;
    self->_mergeProject = 0;
    self->_pendingMediaAsset = 0;
    self->_pendingMediaURL = 0;
    self->_pendingMediaImage = 0;
    self->_tempMergeNavigators = 0;
    self->_qrPreviousDelegate = 0;
    self->_qrCaptureProxy = 0;
    self->_mergePresets = 0;
    self->_mergeCodeImages = 0;
    self->_flowImageView = 0;
    self->_flowSecondaryButton = 0;
    self->_flowPrimaryButton = 0;
    self->_flowScroll = 0;
    self->_flowMessage = 0;
    self->_flowTitle = 0;
    self->_flowView = 0;
    self->_featureStates = 0;
    self->_panelDragHandle = 0;
    self->_panelPanGesture = 0;
    self->_footerRightRule = 0;
    self->_footerLeftRule = 0;
    self->_footerLabel = 0;
    self->_contentScrollView = 0;
    self->_tabButtons = 0;
    self->_closeButton = 0;
    self->_subtitleLabel = 0;
    self->_brandLabel = 0;
    self->_panel = 0;
    self->_logoTapGesture = 0;
    self->_logoPanGesture = 0;
    self->_logoControl = 0;
    return x0;
}

@end

// ======================= VSPassthroughWindow =======================
@implementation VSPassthroughWindow

// IMP 0x1acb8
- (id)hitTest:(CGPoint)arg1 withEvent:(id)arg2 {
    local_0 = self;
    local_8 = VSPassthroughWindow;
    id r1 = [super hitTest:arg1 withEvent:arg2];
    if (r1 == self) goto L_1ad58;
    id r2 = [self rootViewController];
    id r3 = [r2 view];
    if (r1 == r3) goto L_1ad58;
    goto L_1ad5c;
L_1ad58:
L_1ad5c:
    return x20;
}

@end

// ======================= VSOverlayViewController =======================
@implementation VSOverlayViewController

// IMP 0x1ad7c
- (void)loadView {
    id r1 = [UIScreen mainScreen];
    id r2 = [r1 bounds];
    id r3 = [[VSToolOverlay alloc] initWithFrame:CGRectMake(r2, r2.f1, r2.f2, r2.f3)];
    [self setView:r3];
    return x0;
}

// IMP 0x1ae10
- (BOOL)shouldAutorotate {
    return 1;
}

// IMP 0x1ae18
- (unsigned long long)supportedInterfaceOrientations {
    return 0x1e;
}

@end

// ======================= Blocks and helper functions =======================

// 0x56b0
static id block_VSToolOverlay_loadCustomLogo_1(id block, ...) {
    if (0 != -1) goto L_56d8;
L_56c8:
    return 0;
L_56d8:
    dispatch_once(&g_32738, _NSConcreteGlobalBlock);
    goto L_56c8;
}

// 0x75c0
static id block_VSToolOverlay_openPanel_1(id block, ...) {
    id r1 = [block->cap_20->_panel setAlpha:1.0];
    local_0 = *CGAffineTransformIdentity;
    local_10 = *(CGAffineTransformIdentity + 0x10);
    local_20 = *(CGAffineTransformIdentity + 0x20);
    id r2 = [block->cap_20->_panel setTransform:CGAffineTransformMake(*(CGAffineTransformIdentity + 0x20), *(CGAffineTransformIdentity + 0x10), r1.f2, r1.f3, d4, d5)];
    return r2;
}

// 0x7634
static id helper_7634(id block, ...) {
    return *(arg1 + 0x20);
}

// 0x763c
static id helper_763c(id block, ...) {
    return x0;
}

// 0x7b00
static id block_VSToolOverlay_closePanel_1(id block, ...) {
    [block->cap_20 setAlpha:bits(0)];
    id r2 = CGAffineTransformMakeScale(lit_1df40);
    local_0 = local_30;
    local_10 = local_40;
    local_20 = local_50;
    id r3 = [block->cap_20 setTransform:CGAffineTransformMake(local_50, local_40, r2.f2, r2.f3, d4, d5)];
    return r3;
}

// 0x7b70
static id block_VSToolOverlay_closePanel_2(id block, ...) {
    id r1 = [block->cap_20 removeFromSuperview];
    return r1;
}

// 0x7c3c
static id block_VSToolOverlay_updateTabAppearance_1(id block, ...) {
    if (block->cap_20->_selectedTab != arg2) goto L_7cb4;
    goto L_7cd4;
L_7cb4:
L_7cd4:
    id r1 = objc_msgSend(x0, x1);
    [x19 setTitleColor:r1 forState:0];
    [x19 setTintColor:r1];
    if (x26 != x21) goto L_7d40;
    objc_msgSend(*(x25 + 0x138), x20);
    goto L_7d70;
L_7d40:
    objc_msgSend(x0, x20);
L_7d70:
    id r6 = [x23 CGColor];
    id r7 = [x19 layer];
    [r7 setBorderColor:r6];
    if (x27 == 0) goto L_7dcc;
L_7dcc:
    if (x28 == 0) goto L_7ddc;
L_7ddc:
    if (x26 != x21) goto L_7e0c;
    goto L_7e28;
L_7e0c:
L_7e28:
    id r9 = objc_msgSend(x0, x20);
    [x19 setBackgroundColor:r9];
    return x0;
}

// 0xa574
static id helper_a574(id block, ...) {
    id r1 = [UIApplication sharedApplication];
    if (r1 == 0) goto L_a8a4;
    local_c0 = 0.0;
    local_d0 = 0.0;
    local_a0 = 0.0;
    local_b0 = 0.0;
    local_0 = r1;
    id r2 = [r1 connectedScenes];
    local_40 = r2;
    local_58 = @selector(countByEnumeratingWithState:objects:count:);
    id r3 = [r2 countByEnumeratingWithState:&local_a0 objects:&frame_mf0 count:0x10];
    if (r3 == 0) goto L_a8b4;
    local_10 = *local_b0;
L_a62c:
    local_8 = @selector(isKeyWindow);
    local_28 = @selector(activationState);
    local_18 = @selector(windows);
    local_20 = ((x0 >u 1) ? x0 : (0 + 1));
L_a670:
    if (*local_b0 == x20) goto L_a688;
    objc_enumerationMutation(local_40);
L_a688:
    objc_msgSend(*(x21 + 0x258), x24);
    id r6 = objc_msgSend(local_a8[(x23 << 3)], x25);
    if (r6 == 0) goto L_a878;
    id r7 = objc_msgSend(local_a8[(x23 << 3)], x26);
    if (r7 == 0) goto L_a6dc;
    id r8 = objc_msgSend(local_a8[(x23 << 3)], x26);
    if (r8 != 1) goto L_a870;
L_a6dc:
    local_80 = 0.0;
    local_90 = 0.0;
    local_60 = 0.0;
    local_70 = 0.0;
    id r9 = objc_msgSend(x19, local_18);
    id r10 = [r9 countByEnumeratingWithState:&local_60 objects:&local_e0 count:0x10];
    if (r10 == 0) goto L_a828;
L_a724:
L_a750:
    if (*local_70 == x28) goto L_a768;
    objc_enumerationMutation(x19);
L_a768:
    if (local_68[(x24 << 3)] == 0) goto L_a7e4;
    id r12 = objc_msgSend(local_68[(x24 << 3)], x27);
    if ((r12 & (1<<0))) goto L_a7e4;
    objc_msgSend(local_68[(x24 << 3)], x26);
    if (0 == local_68[(x24 << 3)]) goto L_a7e4;
    id r14 = objc_msgSend(local_68[(x24 << 3)], x20);
    if (r14 != 0) goto L_a810;
    if (x22 != 0) goto L_a7e4;
    id r15 = objc_msgSend(local_68[(x24 << 3)], x25);
    if (r15 == 0) goto L_a7e4;
L_a7e4:
    if (x21 != (x24 + 0x1)) goto L_a750;
    id r16 = [x19 countByEnumeratingWithState:&local_60 objects:&local_e0 count:0x10];
    if (r16 != 0) goto L_a724;
    goto L_a828;
L_a810:
L_a828:
    if (x22 == 0) goto L_a85c;
    id r17 = [x22 isKeyWindow];
    if (!(r17 & (1<<0))) goto L_a870;
    goto L_a8ac;
L_a85c:
L_a870:
L_a878:
    if ((x23 + 0x1) != x27) goto L_a670;
    id r18 = [local_40 countByEnumeratingWithState:&local_a0 objects:&frame_mf0 count:0x10];
    if (r18 != 0) goto L_a62c;
    goto L_a8b4;
L_a8a4:
    goto L_a8fc;
L_a8ac:
L_a8b4:
    [x22 rootViewController];
    helper_1b3f4();
L_a8fc:
    return x19;
}

// 0xab08
static id block_VSToolOverlay_showCompletionAlertWaitingForOK_message_index_1(id block, ...) {
    if (*(block + 0x20) == 0) goto L_ab3c;
    [*(block + 0x20) finishFeatureIndex:block->cap_28];
L_ab3c:
    return x0;
}

// 0xab4c
static id helper_ab4c(id block, ...) {
    id r1 = objc_copyWeak((block + 0x20), (arg1 + 0x20));
    return r1;
}

// 0xab58
static id helper_ab58(id block, ...) {
    return x0;
}

// 0xad24
static id helper_ad24(id block, ...) {
    if ((g_32740 & (1<<0))) goto L_ade8;
    id r1 = NSClassFromString(@"MultiLayerWizEffectVC");
    if (r1 == 0) goto L_ade8;
    id r2 = class_getInstanceMethod();
    if (r2 == 0) goto L_adfc;
    id r3 = method_getImplementation();
    g_32748 = r3;
    local_8 = _NSConcreteStackBlock;
    local_10 = lit_1e0a8;
    local_18 = &helper_1b5b8;
    local_20 = &g_2c628;
    local_28 = @selector(pickedWithClipPickerResponse:);
    id r4 = imp_implementationWithBlock();
    method_setImplementation(r2, r4);
    *(page_32000 + 0x740) = 1;
    helper_bf0c(@"MultiLayerWizEffectVC pickedWithClipPickerResponse hook installed");
L_ade8:
    return x0;
L_adfc:
    id r7 = helper_bf0c(@"pickedWithClipPickerResponse hook unavailable");
    return r7;
}

// 0xb224
static id block_VSToolOverlay_waitForNativeMediaEditorReady_attempt_1(id block, ...) {
    if (*(block + 0x28) == 0) goto L_b2c0;
    if ((*(block + 0x28)->_activeFeature & (1<<63))) goto L_b2c0;
    if (*(block + 0x28)->_mediaSourceEditor != block->cap_20) goto L_b2c0;
    if (@selector(pickNewContent) == 0) goto L_b2b8;
    id r1 = [*(block + 0x28)->_mediaSourceEditor respondsToSelector:@selector(pickNewContent)];
    if (r1 == 0) goto L_b2b8;
    [*(block + 0x28)->_mediaSourceEditor pickNewContent];
L_b2b8:
L_b2c0:
    return x0;
    if (x1 != 1) goto L_b400;
    id r3 = objc_begin_catch(x0);
    x19[x22] = 0;
    x19->_mediaSourceMode = -1;
    [x19 restoreToolOverlayAfterNativeUI];
    id r5 = [r3 reason];
    if (r5 == 0) goto L_b360;
    goto L_b380;
L_b360:
    [x20 name];
L_b380:
    id r7 = [x22 stringWithFormat:@"Video Star gặp lỗi khi mở bộ chọn nội dung: %@"];
    [x19 showSimpleAlert:@"Thông báo" message:r7 index:x19[local_8]];
    if (x24 == 0) goto L_b3e0;
L_b3e0:
    objc_end_catch();
    goto L_b2c0;
    objc_end_catch();
L_b400:
    Unwind_Resume(x20);
    __builtin_trap();
}

// 0xb40c
static id helper_b40c(id block, ...) {
    id r1 = objc_copyWeak((block + 0x28), (arg1 + 0x28));
    return r1;
}

// 0xb43c
static id helper_b43c(id block, ...) {
    return x0;
}

// 0xb464
static id block_VSToolOverlay_waitForNativeMediaEditorReady_attempt_2(id block, ...) {
    if (*(block + 0x28) == 0) goto L_b4a0;
    [*(block + 0x28) waitForNativeMediaEditorReady:block->cap_20 attempt:(block->cap_30 + 0x1)];
L_b4a0:
    return x0;
}

// 0xba74
static id helper_ba74(id block, ...) {
    if (block == 0) goto L_bafc;
    if (@selector(getMultiLayerEngine) == 0) goto L_bafc;
    id r1 = [block respondsToSelector:@selector(getMultiLayerEngine)];
    if (r1 == 0) goto L_baf8;
    [block getMultiLayerEngine];
    goto L_bafc;
L_baf8:
L_bafc:
    if (x22 == 0) goto L_bea8;
    id r3 = [NSMutableArray array];
    local_40 = r3;
    id r4 = [NSMutableSet set];
    local_60 = r4;
    local_68 = *(x21 + 0x520);
L_bb5c:
    id r5 = objc_msgSend(x22, local_68);
    if (r5 == 0) goto L_bbb8;
    id r6 = objc_msgSend(x22, x20);
    helper_1b6dc(local_40, local_60, x22, r6, x19);
    if ((x19 + 0x1) != 30) goto L_bb5c;
L_bbb8:
    frame_m70 = @selector(multiLayerLayersWithContent);
    frame_m68 = @selector(layersWithContent);
    local_38 = @selector(countByEnumeratingWithState:objects:count:);
    local_10 = @selector(isKindOfClass:);
L_bbfc:
    id r8 = objc_msgSend(x22, local_68);
    if (r8 == 0) goto L_be74;
    local_48 = x22;
    if (x25[(x20 << 3)] == 0) goto L_bc58;
    id r9 = objc_msgSend(x22, local_68);
    if (r9 == 0) goto L_bc54;
    objc_msgSend(x22, x25[(x20 << 3)]);
    goto L_bc58;
L_bc54:
L_bc58:
    objc_msgSend(*(x26 + 0x170), x21);
    id r12 = objc_msgSend(x19, x24);
    if (r12 == 0) goto L_be6c;
    local_90 = 0.0;
    local_a0 = 0.0;
    local_70 = 0.0;
    local_80 = 0.0;
    id r13 = [x19 countByEnumeratingWithState:&local_70 objects:&local_b0 count:0x10];
    if (r13 == 0) goto L_be50;
L_bcc0:
    local_50 = @selector(containsObject:);
    local_58 = @selector(numberWithUnsignedInteger:);
L_bce8:
    if (*local_80 == x20) goto L_bd00;
    objc_enumerationMutation(x23);
L_bd00:
    if (local_78[(x28 << 3)] == 0) goto L_be24;
    id r15 = objc_msgSend(local_78[(x28 << 3)], local_68);
    if (r15 == 0) goto L_be24;
    if (x25 == 0) goto L_bd68;
    id r16 = objc_msgSend(local_78[(x28 << 3)], local_68);
    if (!(r16 & (1<<0))) goto L_bd68;
    id r17 = objc_msgSend(local_78[(x28 << 3)], x25);
    if (r17 <=u 29) goto L_bd74;
    goto L_be24;
L_bd68:
L_bd74:
    objc_msgSend(NSNumber, local_58);
    id r19 = objc_msgSend(local_60, local_50);
    if ((r19 & (1<<0))) goto L_be24;
    id r20 = objc_msgSend(local_48, local_68);
    if (!(r20 & (1<<0))) goto L_bdf0;
    objc_msgSend(local_48, x27);
    goto L_bdf8;
L_bdf0:
L_bdf8:
    helper_1b6dc(local_40, local_60, x26, ((x0 == 0) ? x21 : x0), x22);
L_be24:
    if ((x28 + 0x1) <u x24) goto L_bce8;
    id r23 = [x23 countByEnumeratingWithState:&local_70 objects:&local_b0 count:0x10];
    if (r23 != 0) goto L_bcc0;
L_be50:
L_be6c:
L_be74:
    if ((x20 + 0x1) != 2) goto L_bbfc;
    [local_40 sortUsingComparator:_NSConcreteGlobalBlock];
    goto L_bebc;
L_bea8:
    local_40 = *__NSArray0__;
L_bebc:
    return local_40;
}

// 0xbf0c
static id helper_bf0c(id block, ...) {
    local_0 = block;
    NSLog(@"[VideoStarTool] %@");
    id r2 = NSHomeDirectory();
    id r3 = [r2 stringByAppendingPathComponent:@"Documents"];
    id r4 = [r3 stringByAppendingPathComponent:@"VideoStarTool.log"];
    id r5 = [NSDate date];
    local_0 = r5;
    local_8 = block;
    id r6 = [NSString stringWithFormat:@"%@  %@\n"];
    id r7 = [NSFileHandle fileHandleForWritingAtPath:r4];
    if (r7 == 0) goto L_c07c;
    [r7 seekToEndOfFile];
    id r9 = [r6 dataUsingEncoding:4];
    [r7 writeData:r9];
    [r7 closeFile];
    goto L_c09c;
L_c07c:
    [x22 writeToFile:x21 atomically:1 encoding:4 error:0];
L_c09c:
L_c0b4:
    return x0;
    goto L_c0dc;
    goto L_c0dc;
    goto L_c0dc;
L_c0dc:
    if (x1 != 1) goto L_c0f0;
    objc_begin_catch();
    objc_end_catch();
    goto L_c0b4;
L_c0f0:
    Unwind_Resume();
    __builtin_trap();
}

// 0xc6f0
static id block_VSToolOverlay_applyNextMediaLayer_1(id block, ...) {
    if (*(block + 0x28) == 0) goto L_cb44;
    if (*(block + 0x28)->_mediaApplyInProgress == 0) goto L_cb44;
    id r1 = [*(block + 0x28)->_mediaApplyEngine respondsToSelector:@selector(layerAtLayerNum:)];
    if (r1 == 0) goto L_c79c;
    id r2 = [*(block + 0x28)->_mediaApplyEngine layerAtLayerNum:block->cap_30];
    if (r2 != 0) goto L_c7c4;
L_c79c:
    id r3 = [*(x23 + 0x20) objectForKeyedSubscript:@"layer"];
    if (r3 == 0) goto L_c7d8;
L_c7c4:
    id r4 = helper_cc74(x21, x22, *(x23 + 0x30));
    if (r4 == 0) goto L_c828;
L_c7d8:
    local_0 = *(x23 + 0x30);
    [NSString stringWithFormat:@"skip excluded/non-media layer %lu"];
    helper_bf0c();
    [x19 applyNextMediaLayer];
    goto L_cb2c;
L_c828:
    id r8 = helper_d11c(x21, x22, *(x23 + 0x30));
    id r9 = helper_d37c(x22);
    id r10 = [UIImage class];
    id r11 = [r8 isKindOfClass:r10];
    local_38 = r9;
    if (!(r11 & (1<<0))) goto L_c8a8;
    local_30 = r8;
    goto L_c90c;
L_c8a8:
    if (@selector(layerImage) == 0) goto L_c8fc;
    id r12 = objc_msgSend(x20, x27);
    if (r12 == 0) goto L_c8fc;
    id r13 = [x20 layerImage];
    local_30 = r13;
    goto L_c900;
L_c8fc:
    local_30 = 0;
L_c900:
L_c90c:
    objc_msgSend(AVAsset, x28);
    id r15 = objc_msgSend(x25, x26);
    if (!(r15 & (1<<0))) goto L_c940;
    goto L_c99c;
L_c940:
    if (local_38 == 0) goto L_c994;
    if (@selector(asset) == 0) goto L_c994;
    id r16 = objc_msgSend(local_38, x27);
    if (r16 == 0) goto L_c990;
    [local_38 asset];
    goto L_c994;
L_c990:
L_c994:
L_c99c:
    id r18 = objc_msgSend(x20, x27);
    if (r18 == 0) goto L_ca1c;
    if (x20 == 0) goto L_ca04;
    if (@selector(presentMLLayerButtonsCollectionViewItemLayerEditTitleViewWithMultiLayerLayer:) == 0) goto L_ca04;
    id r19 = objc_msgSend(x20, x27);
    if (r19 == 0) goto L_ca04;
    [x20 presentMLLayerButtonsCollectionViewItemLayerEditTitleViewWithMultiLayerLayer:x22];
L_ca04:
L_ca18:
L_ca1c:
    frame_m60 = x19;
    local_40 = _NSConcreteStackBlock;
    local_48 = lit_1df28;
    local_50 = &block_VSToolOverlay_applyNextMediaLayer_2;
    local_58 = &g_2c258;
    objc_copyWeak((&local_40 + 0x50), &frame_m60, lit_1df28);
    local_60 = x20;
    local_68 = 0;
    local_98 = *(x23 + 0x30);
    local_70 = x21;
    local_78 = local_30;
    local_80 = x28;
    local_88 = *(x23 + 0x20);
    ((id(*)())(local_50))(&local_40, 0);
L_cb2c:
L_cb44:
    return x0;
    if (x1 != 1) goto L_cc68;
    id r23 = objc_begin_catch(x0);
    local_18 = NSString;
    id r24 = [r23 reason];
    if (r24 == 0) goto L_cbc8;
    goto L_cbe8;
L_cbc8:
    [x20 name];
L_cbe8:
    [NSString stringWithFormat:@"present native layer edit view exception %lu: %@"];
    helper_bf0c();
    if (x25 == 0) goto L_cc28;
L_cc28:
    objc_end_catch();
    goto L_ca18;
    objc_end_catch();
    goto L_cc68;
L_cc68:
    Unwind_Resume(x25);
    __builtin_trap();
}

// 0xcc74
static id helper_cc74(id block, ...) {
    if (arg1 == 0) goto L_ced4;
    id r1 = [arg1 respondsToSelector:@selector(isNullLayer)];
    if (r1 == 0) goto L_ccf4;
    id r2 = [arg1 isNullLayer];
    if ((r2 & (1<<0))) goto L_ced4;
L_ccf4:
    id r3 = objc_msgSend(x20, x22);
    if (r3 == 0) goto L_cd20;
    id r4 = [x20 is3DLayer];
    if ((r4 & (1<<0))) goto L_ced4;
L_cd20:
    if (x19 == 0) goto L_cd54;
    id r5 = objc_msgSend(x19, x22);
    if (r5 == 0) goto L_cd54;
    id r6 = [x19 isNullLayer:x21];
    if ((r6 & (1<<0))) goto L_ced4;
L_cd54:
    local_18 = @selector(particlesExistOnLayerNum:);
    local_20 = @selector(gifExistsOnLayerNum:);
    local_28 = @selector(drawingExistsOnLayerNum:);
    local_30 = @selector(overlayObjectExistsOnLayerNum:);
L_cd84:
    if (x19 == 0) goto L_cdb4;
    id r7 = objc_msgSend(x19, x22);
    if (r7 == 0) goto L_cdb4;
    id r8 = objc_msgSend(x19, x25[x24]);
    if ((r8 & (1<<0))) goto L_ced4;
L_cdb4:
    if ((x24 + 0x8) != 32) goto L_cd84;
    if (@selector(particleLabModel) == 0) goto L_ce10;
    id r9 = objc_msgSend(x20, x22);
    if (r9 == 0) goto L_ce0c;
    [x20 particleLabModel];
    goto L_ce10;
L_ce0c:
L_ce10:
    if (x24 != 0) goto L_ced4;
    if (@selector(layerGIF) == 0) goto L_ce6c;
    id r11 = objc_msgSend(x23, x22);
    if (r11 == 0) goto L_ce68;
    [x23 layerGIF];
    goto L_ce6c;
L_ce68:
L_ce6c:
    if (x24 != 0) goto L_ced4;
    if (@selector(layerDrawing) == 0) goto L_cec8;
    id r13 = objc_msgSend(x23, x22);
    if (r13 == 0) goto L_cec4;
    [x23 layerDrawing];
    goto L_cec8;
L_cec4:
L_cec8:
    if (x24 == 0) goto L_cf20;
L_ced4:
L_ced8:
    return x21;
L_cf20:
    if (@selector(layerOverlay) == 0) goto L_cf78;
    id r15 = objc_msgSend(x23, x22);
    if (r15 == 0) goto L_cf78;
    id r16 = [x23 layerOverlay];
    if (r16 != 0) goto L_ced4;
    goto L_cf80;
L_cf78:
L_cf80:
    if (@selector(textDictionary) == 0) goto L_cfc8;
    id r17 = objc_msgSend(x23, x22);
    if (r17 == 0) goto L_cfc8;
    [x23 textDictionary];
    goto L_cfcc;
L_cfc8:
L_cfcc:
    id r19 = [NSDictionary class];
    id r20 = [x22 isKindOfClass:r19];
    if (r20 == 0) goto L_d020;
    id r21 = [x22 count];
    if (r21 == 0) goto L_d020;
    goto L_ced4;
L_d020:
L_d028:
    goto L_ced8;
    goto L_d040;
    goto L_d040;
    goto L_d040;
L_d040:
    if (x1 != 1) goto L_d110;
    id r23 = objc_begin_catch(x0);
    id r24 = [r23 reason];
    if (r24 == 0) goto L_d090;
    goto L_d0b0;
L_d090:
    [x22 name];
L_d0b0:
    [x24 stringWithFormat:@"layer exclude check exception idx=%lu: %@"];
    helper_bf0c();
    if (x26 == 0) goto L_d0f0;
L_d0f0:
    objc_end_catch();
    goto L_d028;
    objc_end_catch();
L_d110:
    Unwind_Resume(x22);
    __builtin_trap();
}

// 0xd11c
static id helper_d11c(id block, ...) {
    if (block == 0) goto L_d1f4;
    id r1 = [block respondsToSelector:@selector(assetForLayer:)];
    if (r1 == 0) goto L_d1f4;
    id r2 = [block assetForLayer:arg2];
    objc_msgSend(*(page_32000 + 0x210), *(page_31000 + 0x9f8));
    id r4 = objc_msgSend(r2, *(page_31000 + 0xa00));
    if ((r4 & (1<<0))) goto L_d34c;
    objc_msgSend(UIImage, *(page_31000 + 0x9f8));
    id r6 = objc_msgSend(r2, *(page_31000 + 0xa00));
    if ((r6 & (1<<0))) goto L_d34c;
L_d1f4:
    id r7 = helper_d37c(x20);
    if (r7 == 0) goto L_d254;
    if (@selector(asset) == 0) goto L_d254;
    id r8 = objc_msgSend(r7, *(page_31000 + 0x520));
    if (r8 == 0) goto L_d250;
    [r7 asset];
    goto L_d254;
L_d250:
L_d254:
    objc_msgSend(*(x25 + 0x210), *(x26 + 0x9f8));
    id r11 = objc_msgSend(x22, *(x24 + 0xa00));
    if (r11 == 0) goto L_d2a0;
    id r12 = helper_f308(x22);
    if (r12 == 0) goto L_d2a0;
    goto L_d33c;
L_d2a0:
    if (x21 == 0) goto L_d2f4;
    if (@selector(layerImage) == 0) goto L_d2f4;
    id r13 = objc_msgSend(x21, *(page_31000 + 0x520));
    if (r13 == 0) goto L_d2f0;
    [x21 layerImage];
    goto L_d2f4;
L_d2f0:
L_d2f4:
    objc_msgSend(UIImage, x23);
    id r16 = objc_msgSend(x25, x24);
    if (r16 == 0) goto L_d330;
    goto L_d334;
L_d330:
L_d334:
L_d33c:
L_d34c:
    return x23;
}

// 0xd37c
static id helper_d37c(id block, ...) {
    if (block == 0) goto L_d3e4;
    if (@selector(imageGenerator) == 0) goto L_d3e4;
    id r1 = [block respondsToSelector:@selector(imageGenerator)];
    if (r1 == 0) goto L_d3e0;
    [block imageGenerator];
    goto L_d3e4;
L_d3e0:
L_d3e4:
    return x20;
}

// 0xd408
static id block_VSToolOverlay_applyNextMediaLayer_2(id block, ...) {
    if (*(block + 0x50) == 0) goto L_db38;
    if (*(block + 0x50)->_mediaApplyInProgress == 0) goto L_db38;
    id r1 = helper_dbcc(block->cap_20, @"mlLayerButtonsCellLayerEditTitleCustomPopup");
    if (r1 == 0) goto L_d83c;
    id r2 = NSClassFromString(@"CustomPopup");
    if (r2 == 0) goto L_d83c;
    id r3 = [r1 isKindOfClass:r2];
    if (r3 == 0) goto L_d83c;
    id r4 = helper_dbcc(r1, @"_buttons");
    helper_dbcc(r1, @"_buttonStrings");
    local_50 = @selector(class);
    id r6 = [NSArray class];
    id r7 = [r4 isKindOfClass:r6];
    local_28 = r4;
    if (r7 == 0) goto L_d690;
    id r8 = [r4 count];
    if (r8 == 0) goto L_d690;
    local_30 = @selector(count);
    local_38 = @selector(currentTitle);
L_d554:
    id r9 = objc_msgSend(x23, x26);
    [UIButton class];
    id r11 = objc_msgSend(r9, x28);
    if (r11 == 0) goto L_d670;
    objc_msgSend(r9, local_38);
    id r13 = objc_msgSend(x25, x22);
    if (x27 >=u r13) goto L_d624;
    id r14 = objc_msgSend(x25, x26);
    [NSString class];
    id r16 = objc_msgSend(r14, x28);
    if (r16 == 0) goto L_d62c;
    objc_msgSend(x25, x26);
    goto L_d630;
L_d624:
    goto L_d640;
L_d62c:
L_d630:
L_d640:
    id r18 = helper_1bc54(x23);
    if ((r18 & (1<<0))) goto L_db98;
    id r19 = helper_1bc54(x28);
    if ((r19 & (1<<0))) goto L_db98;
L_d670:
    id r20 = objc_msgSend(x23, x22);
    if ((x27 + 0x1) <u r20) goto L_d554;
L_d690:
    local_38 = @selector(respondsToSelector:);
    id r21 = [x20 respondsToSelector:@selector(buttonWithTitle:)];
    if (r21 == 0) goto L_db78;
    *(&local_e0 + 0x20) = 0.0;
    *(&local_e0 + 0x30) = 0.0;
    *&local_e0 = 0.0;
    *(&local_e0 + 0x10) = 0.0;
    local_128 = @"Replace Content";
    local_130 = @"Replace";
    local_138 = @"Thay nội dung";
    local_140 = @"Thay";
    id r22 = [NSArray arrayWithObjects:&local_128 count:4];
    local_30 = r22;
    local_10 = @selector(countByEnumeratingWithState:objects:count:);
    id r23 = [r22 countByEnumeratingWithState:&local_e0 objects:&frame_me8 count:0x10];
    if (r23 == 0) goto L_d824;
L_d73c:
L_d748:
    if (*local_f0 == x28) goto L_d760;
    objc_enumerationMutation(local_30);
L_d760:
    if (x27 == 0) goto L_d7b8;
    id r25 = [x20 respondsToSelector:x27];
    if (r25 == 0) goto L_d7b8;
    objc_msgSend(x20, x27);
    goto L_d7bc;
L_d7b8:
L_d7bc:
    [UIButton class];
    id r28 = objc_msgSend(x24, local_48);
    if ((r28 & (1<<0))) goto L_db80;
    if (x26 != (x22 + 0x1)) goto L_d748;
    id r29 = [local_30 countByEnumeratingWithState:&local_e0 objects:&frame_me8 count:0x10];
    if (r29 != 0) goto L_d73c;
L_d824:
    goto L_dbb0;
L_d83c:
L_d840:
    if (x20 == 0) goto L_d870;
    if (x24 != 0) goto L_d870;
    helper_dc60(x20);
L_d870:
    if (x20 != 0) goto L_d88c;
    if (x24 == 0) goto L_d88c;
    helper_de20(x24);
L_d88c:
    if (x24 == 0) goto L_d898;
    if (x20 != 0) goto L_d940;
    goto L_da34;
L_d898:
    if (*(x21 + 0x20) == 0) goto L_d8f0;
    if (@selector(mlLayerButtonsCellLayerEditTitleView) == 0) goto L_d8f0;
    id r32 = [*(x21 + 0x20) respondsToSelector:@selector(mlLayerButtonsCellLayerEditTitleView)];
    if (r32 == 0) goto L_d8ec;
    [*(x21 + 0x20) mlLayerButtonsCellLayerEditTitleView];
    goto L_d8f0;
L_d8ec:
L_d8f0:
    if (x22 == 0) goto L_d930;
    id r34 = helper_dc60(x22);
    if (x20 != 0) goto L_d934;
    if (r34 == 0) goto L_d934;
    helper_de20(r34);
    goto L_d934;
L_d930:
L_d934:
    if (x20 == 0) goto L_da34;
L_d940:
    if (x24 == 0) goto L_da34;
    id r36 = helper_e1bc(x20, x24);
    if (!(r36 & (1<<0))) goto L_dad4;
    id r37 = dispatch_time(0, 0x3938700);
    local_58 = _NSConcreteStackBlock;
    local_60 = lit_1df28;
    local_68 = &block_VSToolOverlay_applyNextMediaLayer_4;
    local_70 = &g_2c228;
    objc_copyWeak((&local_58 + 0x48), x25, lit_1df28);
    local_a8 = *(x21 + 0x58);
    local_78 = *(x21 + 0x20);
    local_80 = *(x21 + 0x30);
    local_88 = *(x21 + 0x38);
    local_90 = *(x21 + 0x40);
    local_98 = *(x21 + 0x48);
    dispatch_after(r37, _dispatch_main_q, &local_58);
    goto L_db28;
L_da34:
    if (x26 >u 59) goto L_daa8;
    id r40 = dispatch_time(0, 0xb71b00);
    local_b0 = _NSConcreteStackBlock;
    local_b8 = lit_1df28;
    local_c0 = &block_VSToolOverlay_applyNextMediaLayer_3;
    local_c8 = &g_2c1f8;
    local_d0 = *(x21 + 0x28);
    local_d8 = x26;
    dispatch_after(r40, _dispatch_main_q, &local_b0);
    goto L_db28;
L_daa8:
    local_0 = *(x21 + 0x58);
    [NSString stringWithFormat:@"native Replace Content popup not found for layer %lu"];
    goto L_dafc;
L_dad4:
    local_0 = *(x21 + 0x58);
    [NSString stringWithFormat:@"Replace Content button press failed for layer %lu"];
L_dafc:
    helper_bf0c();
    helper_df24(*(x21 + 0x20));
    [x19 applyNextMediaLayer];
L_db28:
L_db38:
    return x0;
L_db78:
    goto L_dbac;
L_db80:
    goto L_dbb0;
L_db98:
L_dbac:
L_dbb0:
    goto L_d840;
}

// 0xdbcc
static id helper_dbcc(id block, ...) {
    if (block == 0) goto L_dc38;
    id r1 = [arg1 length];
    if (r1 == 0) goto L_dc38;
    [block valueForKey:arg1];
    goto L_dc3c;
    objc_begin_catch();
    objc_end_catch();
L_dc38:
L_dc3c:
    return x21;
}

// 0xdc60
static id helper_dc60(id block, ...) {
    if (block == 0) goto L_ddcc;
    id r1 = [UIButton class];
    id r2 = [block isKindOfClass:r1];
    if (r2 == 0) goto L_dd04;
    [block currentTitle];
    id r4 = helper_1bc54();
    if (r4 == 0) goto L_dd04;
    goto L_dddc;
L_dd04:
    local_20 = 0.0;
    local_30 = 0.0;
    local_0 = 0.0;
    local_10 = 0.0;
    id r5 = [x19 subviews];
    id r6 = [r5 countByEnumeratingWithState:&local_0 objects:&local_48 count:0x10];
    if (r6 == 0) goto L_ddc4;
L_dd54:
L_dd60:
    if (*local_10 == x23) goto L_dd78;
    objc_enumerationMutation(x20);
L_dd78:
    id r8 = helper_dc60(local_8[(x24 << 3)]);
    if (r8 != 0) goto L_ddd4;
    if (x25 != (x24 + 0x1)) goto L_dd60;
    id r9 = objc_msgSend(x20, x21);
    if (r9 != 0) goto L_dd54;
L_ddc4:
L_ddcc:
    goto L_dddc;
L_ddd4:
L_dddc:
    return x22;
}

// 0xde20
static id helper_de20(id block, ...) {
    if (block == 0) goto L_dec8;
L_de60:
    id r1 = NSClassFromString(x22);
    if (r1 == 0) goto L_de9c;
    id r2 = objc_msgSend(x24, x20);
    if (r2 == 0) goto L_dea4;
    goto L_ded0;
L_de9c:
L_dea4:
    id r3 = [x23 superview];
    if (r3 != 0) goto L_de60;
L_dec8:
    goto L_dee0;
L_ded0:
L_dee0:
    return x20;
}

// 0xdf00
static id block_VSToolOverlay_applyNextMediaLayer_3(id block, ...) {
    goto **(block->cap_20 + 0x10); /* jump table / tail call */
}

// 0xdf14
static id helper_df14(id block, ...) {
    id r1 = Block_object_assign((block + 0x20), *(arg1 + 0x20), 7);
    return r1;
}

// 0xdf24
static id helper_df24(id block, ...) {
    if (block == 0) goto L_e0bc;
    id r1 = [block respondsToSelector:@selector(dismissMLLayerButtonsCollectionViewItemLayerEditTitleView)];
    if (r1 == 0) goto L_e068;
    if (@selector(dismissMLLayerButtonsCollectionViewItemLayerEditTitleView) == 0) goto L_e0b4;
    id r2 = [block respondsToSelector:@selector(dismissMLLayerButtonsCollectionViewItemLayerEditTitleView)];
    if (r2 == 0) goto L_e0b4;
    id r3 = [block dismissMLLayerButtonsCollectionViewItemLayerEditTitleView];
    goto L_e0b4;
    if (x1 != 1) goto L_e1b0;
    id r4 = objc_begin_catch(r3);
    id r5 = [r4 reason];
    if (r5 == 0) goto L_dff4;
    goto L_e014;
L_dff4:
    [x21 name];
L_e014:
    [x23 stringWithFormat:@"layer edit title dismissal exception: %@"];
    helper_bf0c();
    if (x25 == 0) goto L_e054;
L_e054:
    objc_end_catch();
L_e068:
    id r10 = objc_msgSend(x19, x20);
    if (r10 == 0) goto L_e0bc;
    if (@selector(unselectAllLayerButtons) == 0) goto L_e0b4;
    id r11 = objc_msgSend(x19, x20);
    if (r11 == 0) goto L_e0b4;
    [x19 unselectAllLayerButtons];
L_e0b4:
L_e0bc:
    return x0;
    goto L_e1a8;
    if (x1 != 1) goto L_e1b0;
    id r13 = objc_begin_catch(x0);
    id r14 = [r13 reason];
    if (r14 == 0) goto L_e130;
    goto L_e150;
L_e130:
    [x20 name];
L_e150:
    [x22 stringWithFormat:@"unselect layer buttons exception: %@"];
    helper_bf0c();
    if (x24 == 0) goto L_e190;
L_e190:
    objc_end_catch();
    goto L_e0bc;
L_e1a8:
    objc_end_catch();
L_e1b0:
    Unwind_Resume(x21);
    __builtin_trap();
}

// 0xe1bc
static id helper_e1bc(id block, ...) {
    if (block == 0) goto L_e350;
    if (arg1 == 0) goto L_e350;
    id r1 = [block respondsToSelector:@selector(buttonPressed:)];
    if (r1 == 0) goto L_e338;
    if (@selector(buttonPressed:) == 0) goto L_e260;
    id r2 = [block respondsToSelector:@selector(buttonPressed:)];
    if (r2 == 0) goto L_e260;
    [block buttonPressed:arg1];
L_e260:
    goto L_e34c;
    if (x1 != 1) goto L_e458;
    id r4 = objc_begin_catch(x0);
    id r5 = [r4 reason];
    if (r5 == 0) goto L_e2c4;
    goto L_e2e4;
L_e2c4:
    [x21 name];
L_e2e4:
    [x23 stringWithFormat:@"CustomPopup buttonPressed exception: %@"];
    helper_bf0c();
    if (x25 == 0) goto L_e324;
L_e324:
    objc_end_catch();
L_e338:
    [x20 sendActionsForControlEvents:0x40];
L_e34c:
L_e350:
    return x21;
    goto L_e450;
    if (x1 != 1) goto L_e458;
    id r11 = objc_begin_catch(x21);
    id r12 = [r11 reason];
    if (r12 == 0) goto L_e3d4;
    goto L_e3f4;
L_e3d4:
    [x21 name];
L_e3f4:
    [x23 stringWithFormat:@"popup UIButton action exception: %@"];
    helper_bf0c();
    if (x25 == 0) goto L_e434;
L_e434:
    objc_end_catch();
    goto L_e350;
L_e450:
    objc_end_catch();
L_e458:
    Unwind_Resume(x21);
    __builtin_trap();
}

// 0xe464
static id block_VSToolOverlay_applyNextMediaLayer_4(id block, ...) {
    if (*(block + 0x48) == 0) goto L_e590;
    if (*(block + 0x48)->_mediaApplyInProgress == 0) goto L_e590;
    if (*(block + 0x48)->_mediaApplyResponse != 0) goto L_e4b8;
L_e4b8:
    id r1 = helper_e5a8();
    if (r1 == 0) goto L_e508;
    id r2 = helper_e834(*(x21 + 0x20), r1);
    if (!(r2 & (1<<0))) goto L_e534;
    local_0 = *(x21 + 0x40);
    [x19 waitForMediaLayerReplacement:*(x21 + 0x50) editor:*(x21 + 0x20) engine:*(x21 + 0x28) beforeImage:*(x21 + 0x30) beforeAsset:*(x21 + 0x38) retry:0 record:*(x21 + 0x40)];
    goto L_e588;
L_e508:
    local_0 = *(x21 + 0x50);
    [NSString stringWithFormat:@"no native ClipPickerResponse for layer %lu"];
    goto L_e55c;
L_e534:
    local_0 = *(x21 + 0x50);
    [NSString stringWithFormat:@"native pickedWithClipPickerResponse replay failed for layer %lu"];
L_e55c:
    helper_bf0c();
    helper_df24(*(x21 + 0x20));
    [x19 applyNextMediaLayer];
L_e588:
L_e590:
    return x0;
}

// 0xe5a8
static id helper_e5a8(id block, ...) {
    if (block == 0) goto L_e680;
    id r1 = NSClassFromString(@"ClipPickerResponse");
    if (r1 != 0) goto L_e5f8;
    id r2 = NSClassFromString(@"_TtC10Video_Star18ClipPickerResponse");
    if (r2 == 0) goto L_e670;
L_e5f8:
    id r3 = [x19 respondsToSelector:@selector(clipPickerResponseType)];
    if (r3 == 0) goto L_e670;
    id r4 = [x19 respondsToSelector:@selector(clipIndex)];
    if (!(r4 & (1<<0))) goto L_e670;
    if (@selector(clipPickerResponseType) == 0) goto L_e688;
    id r5 = [x19 respondsToSelector:@selector(clipPickerResponseType)];
    if (r5 == 0) goto L_e688;
    [x19 clipPickerResponseType];
    goto L_e68c;
L_e670:
    goto L_e724;
L_e680:
    goto L_e724;
L_e688:
L_e68c:
    if (x23 == 0) goto L_e6cc;
    id r7 = objc_msgSend(x25, x22);
    if (r7 == 0) goto L_e6cc;
    objc_msgSend(x25, x23);
    goto L_e6d0;
L_e6cc:
L_e6d0:
    [[x21 alloc] initWithClipPickerResponseType:x24 clipIndex:x22];
L_e724:
    return x20;
    if (x1 != 1) goto L_e828;
    id r10 = objc_begin_catch(x20);
    id r11 = [r10 reason];
    if (r11 == 0) goto L_e79c;
    goto L_e7bc;
L_e79c:
    [x21 name];
L_e7bc:
    [x23 stringWithFormat:@"ClipPickerResponse clone exception: %@"];
    helper_bf0c();
    if (x25 == 0) goto L_e7fc;
L_e7fc:
    objc_end_catch();
    goto L_e724;
    objc_end_catch();
L_e828:
    Unwind_Resume(x21);
    __builtin_trap();
}

// 0xe834
static id helper_e834(id block, ...) {
    if (block == 0) goto L_e898;
    if (arg1 == 0) goto L_e898;
    if (0 == 0) goto L_e898;
    ((id(*)())(0))(block, @selector(pickedWithClipPickerResponse:), arg1);
L_e898:
    return x21;
    if (x1 != 1) goto L_e99c;
    id r2 = objc_begin_catch(x21);
    id r3 = [r2 reason];
    if (r3 == 0) goto L_e918;
    goto L_e938;
L_e918:
    [x21 name];
L_e938:
    [x23 stringWithFormat:@"native picked response replay exception: %@"];
    helper_bf0c();
    if (x25 == 0) goto L_e978;
L_e978:
    objc_end_catch();
    goto L_e898;
    objc_end_catch();
L_e99c:
    Unwind_Resume(x21);
    __builtin_trap();
}

// 0xe9a8
static id helper_e9a8(id block, ...) {
    id r1 = objc_copyWeak((block + 0x48), (arg1 + 0x48));
    return r1;
}

// 0xe9f8
static id helper_e9f8(id block, ...) {
    return x0;
}

// 0xea40
static id helper_ea40(id block, ...) {
    Block_object_assign((block + 0x28), *(arg1 + 0x28), 7);
    id r2 = objc_copyWeak((block + 0x50), (arg1 + 0x50));
    return r2;
}

// 0xeaa0
static id helper_eaa0(id block, ...) {
    return x0;
}

// 0xf308
static id helper_f308(id block, ...) {
    if (block == 0) goto L_f374;
    id r1 = [block tracksWithMediaType:*AVMediaTypeVideo];
    [r1 count];
    goto L_f378;
    objc_begin_catch();
    objc_end_catch();
L_f374:
L_f378:
    return x21;
}

// 0xf394
static id block_VSToolOverlay_waitForMediaLayerReplacement_editor_engine_beforeImage_beforeAsset_retry_record_1(id block, ...) {
    if (*(block + 0x20) == 0) goto L_f3c0;
    [*(block + 0x20) applyNextMediaLayer];
L_f3c0:
    return x0;
}

// 0xf3d0
static id block_VSToolOverlay_waitForMediaLayerReplacement_editor_engine_beforeImage_beforeAsset_retry_record_2(id block, ...) {
    if (*(block + 0x48) == 0) goto L_f474;
    if (*(block + 0x48)->_mediaApplyInProgress == 0) goto L_f474;
    if (*(block + 0x48)->_mediaApplyResponse != 0) goto L_f424;
L_f424:
    id r1 = helper_e5a8();
    if (r1 == 0) goto L_f444;
    helper_e834(*(x20 + 0x20), r1);
L_f444:
    local_0 = *(x20 + 0x40);
    [x19 waitForMediaLayerReplacement:*(x20 + 0x50) editor:*(x20 + 0x20) engine:*(x20 + 0x28) beforeImage:*(x20 + 0x30) beforeAsset:*(x20 + 0x38) retry:(*(x20 + 0x58) + 0x1) record:*(x20 + 0x40)];
L_f474:
    return x0;
}

// 0xfc18
static id block_VSToolOverlay_waitForNativePickedMediaResponse_editor_attempt_1(id block, ...) {
    if (*(block + 0x30) == 0) goto L_fc54;
    [*(block + 0x30) waitForNativePickedMediaResponse:block->cap_20 editor:block->cap_28 attempt:(block->cap_38 + 0x1)];
L_fc54:
    return x0;
}

// 0xfc64
static id helper_fc64(id block, ...) {
    id r1 = objc_copyWeak((block + 0x30), (arg1 + 0x30));
    return r1;
}

// 0xfc9c
static id helper_fc9c(id block, ...) {
    return x0;
}

// 0xfccc
static id block_VSToolOverlay_waitForNativePickedMediaResponse_editor_attempt_2(id block, ...) {
    if (*(block + 0x38) == 0) goto L_fdbc;
    if (block->cap_40 == 3) goto L_fd60;
    if (block->cap_40 != 0) goto L_fdbc;
    if (*(block + 0x38)->_activeFeature != 0) goto L_fdbc;
    local_8 = _NSConcreteStackBlock;
    local_10 = lit_1df28;
    local_18 = &block_VSToolOverlay_waitForNativePickedMediaResponse_editor_attempt_3;
    local_20 = &g_2c318;
    local_28 = *(block + 0x38);
    [*(block + 0x38) startMediaApplyToEditor:block->cap_20 image:block->cap_28 asset:block->cap_30 completion:&local_8];
    goto L_fdbc;
L_fd60:
    if (x19->_activeFeature != 3) goto L_fdbc;
    x19->_pendingMediaImage = *(x20 + 0x28);
    x19->_pendingMediaAsset = *(x20 + 0x30);
    [x19 restoreToolOverlayAfterNativeUI];
    [x19 applyMergePresetsAndMedia];
L_fdbc:
    return x0;
}

// 0xfdd4
static id block_VSToolOverlay_waitForNativePickedMediaResponse_editor_attempt_3(id block, ...) {
    [block->cap_20 restoreToolOverlayAfterNativeUI];
    if (arg1 == 0) goto L_fe64;
    local_0 = arg1;
    id r2 = [NSString stringWithFormat:@"Đã thay nội dung cho %lu lớp media."];
    [block->cap_20 showSimpleAlert:@"Thay thành công" message:r2 index:0];
    return x0;
L_fe64:
    id r4 = [x19 showSimpleAlert:@"Thông báo" message:@"Không tìm thấy lớp media cùng loại để thay." index:0];
    return r4;
}

// 0xfe94
static id helper_fe94(id block, ...) {
    id r1 = objc_copyWeak((block + 0x38), (arg1 + 0x38));
    return r1;
}

// 0xfed4
static id helper_fed4(id block, ...) {
    return x0;
}

// 0x10c68
static id helper_10c68(id block, ...) {
    if (block == 0) goto L_10dd8;
    if (arg1 == 0) goto L_10dd8;
    id r1 = [block isKindOfClass:arg1];
    if (r1 == 0) goto L_10cd8;
    goto L_10dd8;
L_10cd8:
    local_20 = 0.0;
    local_30 = 0.0;
    local_0 = 0.0;
    local_10 = 0.0;
    id r2 = [x19 subviews];
    id r3 = [r2 reverseObjectEnumerator];
    id r4 = [r3 countByEnumeratingWithState:&local_0 objects:&local_48 count:0x10];
    if (r4 == 0) goto L_10dc0;
L_10d4c:
L_10d58:
    if (*local_10 == x24) goto L_10d70;
    objc_enumerationMutation(x21);
L_10d70:
    id r6 = helper_10c68(local_8[(x25 << 3)], x20);
    if (r6 != 0) goto L_10dd0;
    if (x26 != (x25 + 0x1)) goto L_10d58;
    id r7 = objc_msgSend(x21, x22);
    if (r7 != 0) goto L_10d4c;
L_10dc0:
    goto L_10dd8;
L_10dd0:
L_10dd8:
    return x23;
}

// 0x10e20
static id block_VSToolOverlay_startFeatureBeatSplit_1(id block, ...) {
    if (*(block + 0x20) == 0) goto L_10e50;
    [*(block + 0x20) beatSplitAdvanceStepWithAttempt:0];
L_10e50:
    return x0;
}

// 0x10fec
static id helper_10fec(id block, ...) {
    if (block == 0) goto L_1105c;
    if (arg2 == 0) goto L_11148;
    id r1 = [block respondsToSelector:arg2];
    if (r1 == 0) goto L_11148;
    objc_msgSend(block, arg2);
    goto L_11300;
L_1105c:
    goto L_11300;
    if (x1 != 1) goto L_1134c;
    id r3 = objc_begin_catch(x0);
    NSStringFromSelector(x22);
    id r5 = [r3 reason];
    if (r5 == 0) goto L_110cc;
    goto L_110ec;
L_110cc:
    [x21 name];
L_110ec:
    [x24 stringWithFormat:@"native split %@ exception: %@"];
    helper_bf0c();
    if (x26 == 0) goto L_1112c;
L_1112c:
    objc_end_catch();
L_11148:
    if (x20 == 0) goto L_11200;
    id r10 = [x19 class];
    id r11 = class_getInstanceVariable();
    if (r11 != 0) goto L_111ac;
    snprintf(&local_18, 0x80, "_%s");
    id r13 = class_getInstanceVariable(r10, &local_18);
    if (r13 == 0) goto L_11200;
L_111ac:
    id r14 = object_getIvar(x22);
    id r15 = objc_msgSend(UIButton, x21);
    [r14 isKindOfClass:r15];
    goto L_11204;
L_11200:
L_11204:
    if (x21 == 0) goto L_112f4;
    id r17 = [x21 sendActionsForControlEvents:0x40];
    goto L_112f8;
    goto L_11344;
    if (x1 != 1) goto L_1134c;
    id r18 = objc_begin_catch(r17);
    id r19 = [r18 reason];
    if (r19 == 0) goto L_11280;
    goto L_112a0;
L_11280:
    [x22 name];
L_112a0:
    [x24 stringWithFormat:@"native split button %s exception: %@"];
    helper_bf0c();
    if (x26 == 0) goto L_112e0;
L_112e0:
    objc_end_catch();
L_112f4:
L_112f8:
L_11300:
    return x20;
L_11344:
    objc_end_catch();
L_1134c:
    Unwind_Resume(x23);
    __builtin_trap();
}

// 0x11358
static id block_VSToolOverlay_beatSplitAdvanceStepWithAttempt_1(id block, ...) {
    id r1 = [block->cap_20 beatSplitAdvanceStepWithAttempt:(block->cap_28 + 0x1)];
    return r1;
}

// 0x116b4
static id block_VSToolOverlay_waitForBeatAdvanceFromTime_attempt_1(id block, ...) {
    if (*(block + 0x20) == 0) goto L_11704;
    local_10 = block->cap_40;
    local_0 = block->cap_30;
    [*(block + 0x20) waitForBeatAdvanceFromTime:&local_0 attempt:(block->cap_28 + 0x1)];
L_11704:
    return x0;
}

// 0x1171c
static id block_VSToolOverlay_waitForBeatAdvanceFromTime_attempt_2(id block, ...) {
    if (*(block + 0x20) == 0) goto L_1174c;
    [*(block + 0x20) beatSplitAdvanceStepWithAttempt:0];
L_1174c:
    return x0;
}

// 0x11bf8
static id block_VSToolOverlay_waitForBeatSplitCompletionOnProject_beforeSceneCount_expectedAdditional_attempt_1(id block, ...) {
    if (*(block + 0x28) == 0) goto L_11c38;
    [*(block + 0x28) waitForBeatSplitCompletionOnProject:block->cap_20 beforeSceneCount:block->cap_30 expectedAdditional:block->cap_38 attempt:(block->cap_40 + 0x1)];
L_11c38:
    return x0;
}

// 0x12984
static id helper_12984(id block, ...) {
    id r1 = helper_1be7c();
    id r2 = [NSData dataWithContentsOfFile:r1 options:1 error:0];
    id r3 = [r2 length];
    if (r3 == 0) goto L_12a10;
    id r4 = [r2 copy];
    *(page_32000 + 0x720) = r4;
L_12a10:
    return *(x20 + 0x720);
}

// 0x12a34
static id helper_12a34(id block, ...) {
    if (block == 0) goto L_12bb4;
    id r1 = [NSData class];
    id r2 = [block isKindOfClass:r1];
    if (r2 == 0) goto L_12aa0;
    [block copy];
    goto L_12ad4;
L_12aa0:
    objc_msgSend(UIImage, x20);
    id r5 = objc_msgSend(x19, x21);
    if (r5 == 0) goto L_12adc;
    UIImagePNGRepresentation(x19);
L_12ad4:
    goto L_12bb8;
L_12adc:
    objc_msgSend(CIImage, x20);
    id r8 = objc_msgSend(x19, x21);
    if (r8 == 0) goto L_12bb4;
    id r9 = [CIContext contextWithOptions:0];
    [x19 extent];
    id r11 = [r9 createCGImage:x19 fromRect:x3];
    if (r11 == 0) goto L_12ba0;
    id r12 = [*(x23 + 0x190) imageWithCGImage:r11];
    CGImageRelease(r11);
    UIImagePNGRepresentation(r12);
L_12ba0:
    goto L_12bb8;
L_12bb4:
L_12bb8:
    id r15 = [x20 length];
    if (r15 == 0) goto L_12c28;
    id r16 = [x20 copy];
    g_32720 = r16;
    id r17 = helper_1be7c();
    [x20 writeToFile:r17 atomically:1];
L_12c28:
    return x0;
    if (x1 != 1) goto L_12c5c;
    objc_begin_catch();
    objc_end_catch();
    goto L_12c28;
L_12c5c:
    Unwind_Resume();
    __builtin_trap();
}

// 0x14078
static id block_VSToolOverlay_startNativeQRImportForIndex_1(id block, ...) {
    if (*(block + 0x30) == 0) goto L_1422c;
    id r1 = NSClassFromString(@"QRCodeManager");
    if (r1 == 0) goto L_1413c;
    id r2 = NSClassFromString(@"QRCodeManager");
    if (r2 == 0) goto L_1411c;
    if (@selector(sharedInstance) == 0) goto L_1411c;
    id r3 = [r2 respondsToSelector:@selector(sharedInstance)];
    if (r3 == 0) goto L_14118;
    [r2 sharedInstance];
    goto L_1411c;
L_14118:
L_1411c:
    if (x23 == 0) goto L_1413c;
    helper_1424c(x23, *(x21 + 0x20));
L_1413c:
    x20->_qrCaptureProxy = 0;
    x20->_qrPreviousDelegate = 0;
    [x20 restoreToolOverlayAfterNativeUI];
    id r7 = helper_12984();
    id r8 = [r7 length];
    if (r8 == 0) goto L_141c8;
    if (x19 == 0) goto L_141e4;
L_1419c:
    id r9 = objc_msgSend(x22, x23);
    if (r9 == 0) goto L_14200;
    goto L_14220;
L_141c8:
    if (x19 != 0) goto L_1419c;
L_141e4:
    goto L_14218;
L_14200:
L_14218:
L_14220:
    objc_msgSend(x0, x1);
L_1422c:
    return x0;
}

// 0x1424c
static id helper_1424c(id block, ...) {
    if (block == 0) goto L_142a8;
    id r1 = [@"delegate" length];
    if (r1 == 0) goto L_142a8;
    [block setValue:arg1 forKey:@"delegate"];
L_142a8:
    return x0;
    objc_begin_catch();
    objc_end_catch();
    goto L_142a8;
}

// 0x143c8
static id block_VSToolOverlay_picker_didFinishPicking_1(id block, ...) {
    id r1 = [block->cap_20 firstObject];
    if (r1 == 0) goto L_144e8;
    id r2 = [r1 itemProvider];
    id r3 = [UIImage class];
    id r4 = [r2 canLoadObjectOfClass:r3];
    if (!(r4 & (1<<0))) goto L_144e8;
    id r5 = [r1 itemProvider];
    id r6 = [*(page_32000 + 0x190) class];
    local_0 = _NSConcreteStackBlock;
    local_8 = lit_1df28;
    local_10 = &block_VSToolOverlay_picker_didFinishPicking_2;
    local_18 = &g_2c468;
    local_20 = block->cap_28;
    [r5 loadObjectOfClass:r6 completionHandler:&local_0];
    goto L_1450c;
L_144e8:
    [*(x20 + 0x28) showSimpleAlert:@"Thông báo" message:@"Chưa chọn được ảnh code." index:3];
L_1450c:
    return x0;
}

// 0x14530
static id block_VSToolOverlay_picker_didFinishPicking_2(id block, ...) {
    local_0 = _NSConcreteStackBlock;
    local_8 = lit_1df28;
    local_10 = &block_VSToolOverlay_picker_didFinishPicking_3;
    local_18 = &g_2c438;
    local_20 = arg1;
    local_28 = arg2;
    local_30 = block->cap_20;
    dispatch_async(_dispatch_main_q, &local_0);
    return x0;
}

// 0x145f0
static id block_VSToolOverlay_picker_didFinishPicking_3(id block, ...) {
    if (block->cap_20 == 0) goto L_14610;
    if (block->cap_28 == 0) goto L_1463c;
L_14610:
    id r1 = [*(x20 + 0x30) showSimpleAlert:@"Thông báo" message:@"Không đọc được ảnh code đã chọn." index:3];
    return r1;
L_1463c:
    id r2 = UIImagePNGRepresentation();
    id r3 = [r2 length];
    if (r3 == 0) goto L_1467c;
    helper_12a34(r2);
    [*(x20 + 0x30) processSingleCodeImage:r2 index:*(x20 + 0x38)];
    goto L_146a0;
L_1467c:
    [*(x20 + 0x30) showSimpleAlert:@"Thông báo" message:@"Không lấy được dữ liệu ảnh code." index:3];
L_146a0:
    return x0;
}

// 0x146b0
static id helper_146b0(id block, ...) {
    return *(arg1 + 0x30);
}

// 0x146e0
static id helper_146e0(id block, ...) {
    return x0;
}

// 0x14710
static id helper_14710(id block, ...) {
    return *(arg1 + 0x28);
}

// 0x14738
static id helper_14738(id block, ...) {
    return x0;
}

// 0x159ec
static id helper_159ec(id block, ...) {
    id r1 = NSClassFromString(arg1);
    if (block == 0) goto L_15a30;
    if (r1 == 0) goto L_15a30;
    [block isKindOfClass:r1];
L_15a30:
    return x20;
}

// 0x15a48
static id block_VSToolOverlay_waitForNativeMergeMediaEditorAttempt_1(id block, ...) {
    if (*(block + 0x20) == 0) goto L_15a80;
    [*(block + 0x20) waitForNativeMergeMediaEditorAttempt:(block->cap_28 + 0x1)];
L_15a80:
    return x0;
}

// 0x15e0c
static id block_VSToolOverlay_beginNativeMediaChoiceForMergeProject_1(id block, ...) {
    if (*(block + 0x20) == 0) goto L_15e3c;
    [*(block + 0x20) waitForNativeMergeMediaEditorAttempt:0];
L_15e3c:
    return x0;
}

// 0x16988
static id block_VSToolOverlay_openMergeSceneEditorAtOffset_project_attempt_1(id block, ...) {
    if (*(block + 0x28) == 0) goto L_169c4;
    [*(block + 0x28) openMergeSceneEditorAtOffset:block->cap_30 project:block->cap_20 attempt:(block->cap_38 + 0x1)];
L_169c4:
    return x0;
}

// 0x1857c
static id helper_1857c(id block, ...) {
    if (block == 0) goto L_1897c;
    id r1 = NSClassFromString(@"CustomPopup");
    if (r1 == 0) goto L_1897c;
    id r2 = [block isKindOfClass:r1];
    if (r2 == 0) goto L_1897c;
    id r3 = helper_dbcc(block, @"_buttons");
    id r4 = helper_dbcc(block, @"_buttonStrings");
    local_20 = r4;
    local_28 = @selector(class);
    id r5 = [NSArray class];
    id r6 = [r3 isKindOfClass:r5];
    if (r6 == 0) goto L_187b0;
    id r7 = [r3 count];
    if (r7 == 0) goto L_187b0;
    local_18 = @selector(currentTitle);
L_18680:
    id r8 = objc_msgSend(x23, x26);
    id r9 = [*(x20 + 0x1c0) class];
    id r10 = [r8 isKindOfClass:r9];
    if (r10 == 0) goto L_1878c;
    [r8 currentTitle];
    id r12 = objc_msgSend(local_20, x28);
    if (x25 >=u r12) goto L_1874c;
    id r13 = objc_msgSend(local_20, x26);
    id r14 = [NSString class];
    id r15 = [r13 isKindOfClass:r14];
    if (r15 == 0) goto L_18754;
    objc_msgSend(local_20, x26);
    goto L_18758;
L_1874c:
    goto L_18760;
L_18754:
L_18758:
L_18760:
    id r17 = helper_1bfc4(x22);
    if ((r17 & (1<<0))) goto L_189dc;
    id r18 = helper_1bfc4(x20);
    if ((r18 & (1<<0))) goto L_189dc;
L_1878c:
    id r19 = objc_msgSend(x23, x27);
    if ((x25 + 0x1) <u r19) goto L_18680;
L_187b0:
    local_18 = @selector(respondsToSelector:);
    id r20 = [x19 respondsToSelector:@selector(buttonWithTitle:)];
    if (r20 == 0) goto L_189c4;
    local_50 = 0.0;
    local_60 = 0.0;
    local_70 = @"Trùng khớp";
    local_78 = @"Trùng Khớp";
    local_80 = @"Khớp";
    local_88 = @"Match";
    local_30 = 0.0;
    local_40 = 0.0;
    local_90 = @"MATCH";
    local_98 = @"Match Code";
    id r21 = [NSArray arrayWithObjects:&local_70 count:6];
    local_10 = r21;
    local_0 = @selector(countByEnumeratingWithState:objects:count:);
    id r22 = [r21 countByEnumeratingWithState:&local_30 objects:&local_a0 count:0x10];
    if (r22 == 0) goto L_1896c;
L_18874:
L_18880:
    if (*local_40 == x26) goto L_18898;
    objc_enumerationMutation(local_10);
L_18898:
    if (x25 == 0) goto L_188f4;
    id r24 = [x19 respondsToSelector:x25];
    if (r24 == 0) goto L_18900;
    objc_msgSend(x19, x25);
    goto L_18904;
L_188f4:
    goto L_18904;
L_18900:
L_18904:
    id r26 = [UIButton class];
    id r27 = [x24 isKindOfClass:r26];
    if ((r27 & (1<<0))) goto L_189cc;
    if (x23 != (x27 + 0x1)) goto L_18880;
    id r28 = [local_10 countByEnumeratingWithState:&local_30 objects:&local_a0 count:0x10];
    if (r28 != 0) goto L_18874;
L_1896c:
    goto L_189f0;
L_1897c:
L_18980:
    return x24;
L_189c4:
    goto L_189ec;
L_189cc:
    goto L_189f0;
L_189dc:
L_189ec:
L_189f0:
    goto L_18980;
}

// 0x18a08
static id helper_18a08(id block, ...) {
    if (block == 0) goto L_18b74;
    id r1 = [UIButton class];
    id r2 = [block isKindOfClass:r1];
    if (r2 == 0) goto L_18aac;
    [block currentTitle];
    id r4 = helper_1bfc4();
    if (r4 == 0) goto L_18aac;
    goto L_18b84;
L_18aac:
    local_20 = 0.0;
    local_30 = 0.0;
    local_0 = 0.0;
    local_10 = 0.0;
    id r5 = [x19 subviews];
    id r6 = [r5 countByEnumeratingWithState:&local_0 objects:&local_48 count:0x10];
    if (r6 == 0) goto L_18b6c;
L_18afc:
L_18b08:
    if (*local_10 == x23) goto L_18b20;
    objc_enumerationMutation(x20);
L_18b20:
    id r8 = helper_18a08(local_8[(x24 << 3)]);
    if (r8 != 0) goto L_18b7c;
    if (x25 != (x24 + 0x1)) goto L_18b08;
    id r9 = objc_msgSend(x20, x21);
    if (r9 != 0) goto L_18afc;
L_18b6c:
L_18b74:
    goto L_18b84;
L_18b7c:
L_18b84:
    return x22;
}

// 0x18bc8
static id block_VSToolOverlay_waitForMergeImportMatch_offset_attempt_1(id block, ...) {
    if (*(block + 0x28) == 0) goto L_18c04;
    [*(block + 0x28) waitForMergeImportMatch:block->cap_20 offset:block->cap_30 attempt:(block->cap_38 + 0x1)];
L_18c04:
    return x0;
}

// 0x18c14
static id helper_18c14(id block, ...) {
    if (block == 0) goto L_18d4c;
    id r1 = NSClassFromString(@"CustomPopup");
    if (r1 == 0) goto L_18c90;
    id r2 = [block isKindOfClass:r1];
    if (r2 == 0) goto L_18c90;
    id r3 = helper_18df0(block);
    if (r3 == 0) goto L_18c90;
    goto L_18d60;
L_18c90:
    local_20 = 0.0;
    local_30 = 0.0;
    local_0 = 0.0;
    local_10 = 0.0;
    id r4 = [x19 subviews];
    id r5 = [r4 countByEnumeratingWithState:&local_0 objects:&local_48 count:0x10];
    if (r5 == 0) goto L_18d44;
L_18ce0:
L_18cec:
    if (*local_10 == x23) goto L_18d04;
    objc_enumerationMutation(x20);
L_18d04:
    id r7 = helper_18c14(local_8[(x24 << 3)]);
    if (r7 != 0) goto L_18d54;
    if (x25 != (x24 + 0x1)) goto L_18cec;
    id r8 = [x20 countByEnumeratingWithState:&local_0 objects:&local_48 count:0x10];
    if (r8 != 0) goto L_18ce0;
L_18d44:
L_18d4c:
    goto L_18d60;
L_18d54:
L_18d60:
    return x22;
}

// 0x18da4
static id block_VSToolOverlay_waitForMergeImportMatch_offset_attempt_2(id block, ...) {
    if (*(block + 0x28) == 0) goto L_18de0;
    [*(block + 0x28) waitForMergeImportMatch:block->cap_20 offset:block->cap_30 attempt:(block->cap_38 + 0x1)];
L_18de0:
    return x0;
}

// 0x18df0
static id helper_18df0(id block, ...) {
    id r1 = helper_1c084();
    id r2 = [r1 length];
    if (r2 == 0) goto L_18f7c;
    id r3 = [r1 containsString:@"multi-layer qr"];
    if (r3 == 0) goto L_18e54;
    id r4 = [r1 containsString:@"than the scene"];
    if ((r4 & (1<<0))) goto L_18f74;
L_18e54:
    id r5 = objc_msgSend(x19, x20);
    if ((r5 & (1<<0))) goto L_18f74;
    id r6 = objc_msgSend(x19, x20);
    if ((r6 & (1<<0))) goto L_18f74;
    id r7 = objc_msgSend(x19, x20);
    if ((r7 & (1<<0))) goto L_18f74;
    id r8 = objc_msgSend(x19, x20);
    if ((r8 & (1<<0))) goto L_18f74;
    id r9 = objc_msgSend(x19, x20);
    if ((r9 & (1<<0))) goto L_18f74;
    id r10 = objc_msgSend(x19, x20);
    if ((r10 & (1<<0))) goto L_18f74;
    id r11 = objc_msgSend(x19, x20);
    if ((r11 & (1<<0))) goto L_18f74;
    id r12 = objc_msgSend(x19, x20);
    if ((r12 & (1<<0))) goto L_18f74;
    id r13 = objc_msgSend(x19, x20);
    if ((r13 & (1<<0))) goto L_18f74;
    id r14 = objc_msgSend(x19, x20);
    if ((r14 & (1<<0))) goto L_18f74;
    id r15 = objc_msgSend(x19, x20);
    if ((r15 & (1<<0))) goto L_18f74;
    id r16 = objc_msgSend(x19, x20);
    if (!(r16 & (1<<0))) goto L_18f98;
L_18f74:
    goto L_18f80;
L_18f7c:
L_18f80:
    return x20;
L_18f98:
    objc_msgSend(x19, x20);
    goto L_18f80;
}

// 0x18fb4
static id block_VSToolOverlay_waitForMergeImportMatch_offset_attempt_3(id block, ...) {
    if (*(block + 0x28) == 0) goto L_18ff0;
    [*(block + 0x28) waitForMergeImportMatch:block->cap_20 offset:block->cap_30 attempt:(block->cap_38 + 0x1)];
L_18ff0:
    return x0;
}

// 0x19000
static id block_VSToolOverlay_waitForMergeImportMatch_offset_attempt_4(id block, ...) {
    if (*(block + 0x28) == 0) goto L_1903c;
    [*(block + 0x28) waitForMergeImportMatch:block->cap_20 offset:block->cap_30 attempt:(block->cap_38 + 0x1)];
L_1903c:
    return x0;
}

// 0x1904c
static id block_VSToolOverlay_waitForMergeImportMatch_offset_attempt_5(id block, ...) {
    if (*(block + 0x28) == 0) goto L_19088;
    [*(block + 0x28) waitForMergeImportMatch:block->cap_20 offset:block->cap_30 attempt:(block->cap_38 + 0x1)];
L_19088:
    return x0;
}

// 0x19470
static id block_VSToolOverlay_waitForMergePresetReadyAndApplyMedia_offset_attempt_1(id block, ...) {
    id r1 = [block->cap_20 respondsToSelector:@selector(saveStateAndSetTimer)];
    if (r1 == 0) goto L_194d4;
    if (block->cap_20 != 0) goto L_19500;
    goto L_19520;
L_194d4:
    id r2 = objc_msgSend(x0, x20);
    if (r2 == 0) goto L_19528;
    if (@selector(saveState) == 0) goto L_19520;
    if (*(x19 + 0x20) == 0) goto L_19520;
L_19500:
    id r3 = objc_msgSend(x21, x20);
    if (r3 == 0) goto L_19520;
    objc_msgSend(x21, x22);
L_19520:
L_19528:
    id r5 = objc_msgSend(*(x19 + 0x20), x20);
    if (!(r5 & (1<<0))) goto L_195bc;
    if (@selector(create) == 0) goto L_19578;
    if (*(x19 + 0x20) == 0) goto L_19578;
    id r6 = objc_msgSend(*(x19 + 0x20), x20);
    if (r6 == 0) goto L_19578;
    [*(x19 + 0x20) create];
L_19578:
    id r8 = [*(x19 + 0x28) waitForMergeCreateCompletionAtOffset:*(x19 + 0x38) project:*(x19 + 0x28)->_mergeProject editor:*(x19 + 0x20) attempt:0];
    return r8;
L_195bc:
    id r9 = [*(x19 + 0x28) showSimpleAlert:@"Thông báo" message:@"Không tìm thấy nút tạo của phần nhiều lớp h/ả." index:3];
    return r9;
    if (x1 != 1) goto L_19704;
    id r10 = objc_begin_catch(r9);
    id r11 = [r10 reason];
    if (r11 == 0) goto L_19650;
    goto L_19670;
L_19650:
    [x20 name];
L_19670:
    local_0 = (x25 + 0x1);
    local_8 = x23;
    id r13 = [x22 stringWithFormat:@"Không tạo được phân cảnh %lu: %@"];
    [x21 showSimpleAlert:@"Thông báo" message:r13 index:3];
    if (x24 == 0) goto L_196d0;
L_196d0:
    id r15 = objc_end_catch();
    return r15;
    objc_end_catch();
L_19704:
    Unwind_Resume(x20);
    __builtin_trap();
}

// 0x19710
static id block_VSToolOverlay_waitForMergePresetReadyAndApplyMedia_offset_attempt_2(id block, ...) {
    if (arg1 == 0) goto L_1973c;
    goto **(block->cap_28 + 0x10); /* jump table / tail call */
L_1973c:
    local_0 = (*(x0 + 0x30) + 0x1);
    id r1 = [NSString stringWithFormat:@"Chưa thay được lớp ảnh/video ở phân cảnh %lu."];
    [*(x0 + 0x20) showSimpleAlert:@"Thông báo" message:r1 index:3];
    return x0;
}

// 0x197ac
static id helper_197ac(id block, ...) {
    id r1 = Block_object_assign((block + 0x28), *(arg1 + 0x28), 7);
    return r1;
}

// 0x197e0
static id block_VSToolOverlay_waitForMergePresetReadyAndApplyMedia_offset_attempt_3(id block, ...) {
    if (*(block + 0x28) == 0) goto L_1981c;
    [*(block + 0x28) waitForMergePresetReadyAndApplyMedia:block->cap_20 offset:block->cap_30 attempt:(block->cap_38 + 0x1)];
L_1981c:
    return x0;
}

// 0x19c44
static id block_VSToolOverlay_waitForMergeCreateCompletionAtOffset_project_editor_attempt_1(id block, ...) {
    if (*(block + 0x28) == 0) goto L_19c80;
    [*(block + 0x28) applyMergeSceneOffset:(block->cap_30 + 0x1) project:block->cap_20];
L_19c80:
    return x0;
}

// 0x19c90
static id block_VSToolOverlay_waitForMergeCreateCompletionAtOffset_project_editor_attempt_2(id block, ...) {
    if (*(block + 0x30) == 0) goto L_19ccc;
    [*(block + 0x30) waitForMergeCreateCompletionAtOffset:block->cap_38 project:block->cap_20 editor:block->cap_28 attempt:(block->cap_40 + 0x1)];
L_19ccc:
    return x0;
}

// 0x19cdc
static id block_VSToolOverlay_waitForMergeCreateCompletionAtOffset_project_editor_attempt_3(id block, ...) {
    if (*(block + 0x28) == 0) goto L_19d18;
    [*(block + 0x28) applyMergeSceneOffset:(block->cap_30 + 0x1) project:block->cap_20];
L_19d18:
    return x0;
}

// 0x1ae20
static id helper_1ae20(id block, ...) {
    objc_autoreleasePoolPush();
    id r2 = [NSBundle mainBundle];
    id r3 = [r2 bundleIdentifier];
    id r4 = [*(page_32000 + 0x198) mainBundle];
    id r5 = [r4 bundlePath];
    local_0 = r3;
    local_8 = r5;
    [NSString stringWithFormat:@"dylib ctor fired, bundle id = %@, path = %@"];
    helper_bf0c();
    id r8 = [*(page_32000 + 0x198) mainBundle];
    id r9 = [r8 bundlePath];
    id r10 = [r9 hasSuffix:@".app"];
    if (!(r10 & (1<<0))) goto L_1af84;
    dispatch_async(_dispatch_main_q, _NSConcreteGlobalBlock);
    goto L_1af90;
L_1af84:
    helper_bf0c(@"bo qua: khong phai .app chinh");
L_1af90:
    id r13 = objc_autoreleasePoolPop(x19);
    return r13;
}

// 0x1afb4
static id helper_1afb4(id block, ...) {
    UIGraphicsBeginImageContextWithOptions(0, bits(0x4060000000000000), bits(0x4060000000000000));
    id r2 = UIGraphicsGetCurrentContext();
    CGContextSaveGState();
    id r4 = CGPathCreateWithEllipseInRect(0);
    CGContextAddPath(r2, r4);
    CGContextClip(r2);
    id r7 = CGColorSpaceCreateDeviceRGB();
    local_20 = *&sym_25c40;
    local_30 = *(&sym_25c40 + 0x10);
    local_40 = *(&sym_25c40 + 0x20);
    local_50 = *(&sym_25c40 + 0x30);
    id r8 = CGGradientCreateWithColorComponents(*(&sym_25c40 + 0x20), *(&sym_25c40 + 0x30));
    CGContextDrawRadialGradient(r2, r8, 0, lit_1e110, lit_1e118);
    CGGradientRelease(r8);
    CGColorSpaceRelease(r7);
    CGContextRestoreGState(r2);
    id r13 = [UIColor colorWithRed:lit_1de80 green:lit_1de88 blue:1.0 alpha:1.0];
    id r14 = [r13 CGColor];
    CGContextSetStrokeColorWithColor(r2, r14);
    CGContextSetLineWidth(r2, 2.5);
    CGContextStrokeEllipseInRect(r2);
    CGPathCreateMutable();
    CGPathMoveToPoint(21.0);
L_1b184:
    CGPathAddLineToPoint(x22, 0, (*((x25 + x23) + 0x10) * d11), (*((x25 + x23) + 0x18) * d11));
    if ((x23 + 0x10) != 128) goto L_1b184;
    CGPathCloseSubpath(x22);
    CGContextSaveGState(x19);
    id r23 = objc_msgSend(*(page_32000 + 0x138), x20);
    id r24 = objc_msgSend(r23, x21);
    CGContextSetShadowWithColor(x19, r24, *CGSizeZero, *(CGSizeZero + 0x8), 3.0);
    CGContextAddPath(x19, x22);
    id r27 = objc_msgSend(*(page_32000 + 0x138), x20);
    id r28 = objc_msgSend(r27, x21);
    CGContextSetFillColorWithColor(x19, r28);
    CGContextFillPath(x19);
    CGContextRestoreGState(x19);
    local_0 = *NSFontAttributeName;
    id r32 = [UIFont boldSystemFontOfSize:12.5];
    local_10 = r32;
    local_8 = *NSForegroundColorAttributeName;
    id r33 = objc_msgSend(*(page_32000 + 0x138), x20);
    local_18 = r33;
    id r34 = [NSDictionary dictionaryWithObjects:&local_10 forKeys:&local_0 count:2];
    id r35 = [@"VS" sizeWithAttributes:r34];
    [@"VS" drawAtPoint:CGPointMake((bits(0x4050000000000000) - (r35 * d11)), (bits(0x405c000000000000) - (r35.f1 * d11))) withAttributes:r34];
    id r37 = UIGraphicsGetImageFromCurrentImageContext();
    g_32730 = r37;
    UIGraphicsEndImageContext();
    return x0;
}

// 0x1b3f4
static id helper_1b3f4(id block, ...) {
    if (block == 0) goto L_1b448;
    id r1 = [block presentedViewController];
    if (r1 == 0) goto L_1b450;
    helper_1b3f4(r1);
L_1b440:
    goto L_1b588;
L_1b448:
    goto L_1b590;
L_1b450:
    id r3 = [UINavigationController class];
    id r4 = [x19 isKindOfClass:r3];
    if (r4 == 0) goto L_1b4b4;
    id r5 = [x19 visibleViewController];
    helper_1b3f4(((r5 == 0) ? x19 : r5));
    goto L_1b578;
L_1b4b4:
    objc_msgSend(UITabBarController, x21);
    id r8 = objc_msgSend(x19, x22);
    if (r8 == 0) goto L_1b508;
    id r9 = [x19 selectedViewController];
    helper_1b3f4(((r9 == 0) ? x19 : r9));
    goto L_1b578;
L_1b508:
    objc_msgSend(UISplitViewController, x21);
    id r12 = objc_msgSend(x19, x22);
    if (r12 == 0) goto L_1b5ac;
    id r13 = [x19 viewControllers];
    id r14 = [r13 lastObject];
    helper_1b3f4(((r14 == 0) ? x19 : r14));
L_1b578:
L_1b588:
L_1b590:
    return x21;
L_1b5ac:
    goto L_1b440;
}

// 0x1b5b8
static id helper_1b5b8(id block, ...) {
    if (0 == 0) goto L_1b608;
    ((id(*)())(0))(arg1, block->cap_20, arg2);
L_1b608:
    if (g_32728 == 0) goto L_1b6a0;
    local_8 = _NSConcreteStackBlock;
    local_10 = lit_1df28;
    local_18 = &helper_1b6c4;
    local_20 = &g_2c5f8;
    local_28 = g_32728;
    local_30 = x20;
    local_38 = x19;
    dispatch_async(_dispatch_main_q, &local_8);
L_1b6a0:
    return x0;
}

// 0x1b6c4
static id helper_1b6c4(id block, ...) {
    id r1 = [block->cap_20 handleNativePickedMediaResponse:block->cap_28 editor:block->cap_30];
    return r1;
}

// 0x1b6dc
static id helper_1b6dc(id block, ...) {
    if (arg3 == 0) goto L_1bb24;
    if (arg4 >u 29) goto L_1bb24;
    id r1 = [NSNumber numberWithUnsignedInteger:arg4];
    id r2 = [arg1 containsObject:r1];
    if ((r2 & (1<<0))) goto L_1bb24;
    id r3 = helper_cc74(arg2, arg3, arg4);
    if ((r3 & (1<<0))) goto L_1bb24;
    helper_d11c(arg2, arg3, arg4);
    id r5 = helper_d37c(arg3);
    local_20 = r5;
    id r6 = helper_d11c(arg2, arg3, arg4);
    id r7 = [AVAsset class];
    id r8 = [r6 isKindOfClass:r7];
    if (r8 == 0) goto L_1b850;
    id r9 = helper_f308(r6);
    if (!(r9 & (1<<0))) goto L_1b850;
    goto L_1ba0c;
L_1b850:
    objc_msgSend(UIImage, x26);
    id r11 = objc_msgSend(x28, x27);
    if ((r11 & (1<<0))) goto L_1ba0c;
    local_8 = local_20;
    if (local_20 == 0) goto L_1b8e8;
    if (@selector(asset) == 0) goto L_1b8e8;
    id r12 = [local_20 respondsToSelector:@selector(asset)];
    if (r12 == 0) goto L_1b8e4;
    [local_20 asset];
    goto L_1b8e8;
L_1b8e4:
L_1b8e8:
    objc_msgSend(AVAsset, local_10);
    id r15 = objc_msgSend(x26, x27);
    if (!(r15 & (1<<0))) goto L_1b948;
    id r16 = helper_f308(x26);
    local_4 = r16;
    if (!(r16 & (1<<0))) goto L_1b958;
    goto L_1ba00;
L_1b948:
L_1b958:
    if (x25 == 0) goto L_1b9b8;
    if (@selector(layerImage) == 0) goto L_1b9b8;
    id r17 = [x25 respondsToSelector:@selector(layerImage)];
    if (r17 == 0) goto L_1b9b0;
    [x25 layerImage];
    goto L_1b9b8;
L_1b9b0:
L_1b9b8:
    objc_msgSend(UIImage, local_10);
    objc_msgSend(x26, x27);
L_1ba00:
L_1ba0c:
    if (x25 == 0) goto L_1bb14;
    if (x26 == 0) goto L_1bb14;
    local_28 = @"layer";
    local_30 = @"layerIndex";
    id r21 = [NSNumber numberWithUnsignedInteger:x23];
    local_38 = @"mediaKind";
    local_48 = r21;
    local_50 = x26;
    id r22 = [NSDictionary dictionaryWithObjects:&local_40 forKeys:&local_28 count:3];
    [x19 addObject:r22];
    id r24 = [NSNumber numberWithUnsignedInteger:x23];
    [x20 addObject:r24];
L_1bb14:
L_1bb24:
    return x0;
}

// 0x1bb80
static id helper_1bb80(id block, ...) {
    id r1 = [arg1 objectForKeyedSubscript:@"layerIndex"];
    id r2 = [r1 unsignedIntegerValue];
    id r3 = [arg2 objectForKeyedSubscript:@"layerIndex"];
    id r4 = [r3 unsignedIntegerValue];
    return ((r2 >=u r4) ? (r2 <=u r4) : ~0);
}

// 0x1bc54
static id helper_1bc54(id block, ...) {
    id r1 = helper_1bd14();
    id r2 = [r1 containsString:@"replace content"];
    if ((r2 & (1<<0))) goto L_1bcdc;
    id r3 = [r1 containsString:@"replace"];
    if ((r3 & (1<<0))) goto L_1bcdc;
    id r4 = [r1 containsString:@"thay noi dung"];
    if ((r4 & (1<<0))) goto L_1bcdc;
    id r5 = [r1 isEqualToString:@"thay"];
    if (!(r5 & (1<<0))) goto L_1bcf8;
L_1bcdc:
L_1bce0:
    return x20;
L_1bcf8:
    objc_msgSend(x19, x20);
    goto L_1bce0;
}

// 0x1bd14
static id helper_1bd14(id block, ...) {
    id r1 = [NSString class];
    id r2 = [block isKindOfClass:r1];
    if (r2 == 0) goto L_1be58;
    id r3 = [NSLocale localeWithLocaleIdentifier:@"vi_VN"];
    id r4 = [block stringByFoldingWithOptions:0x180 locale:r3];
    id r5 = [r4 lowercaseString];
    id r6 = [r5 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
    id r7 = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    [r6 stringByTrimmingCharactersInSet:r7];
    goto L_1be60;
L_1be58:
L_1be60:
    return x20;
}

// 0x1be7c
static id helper_1be7c(id block, ...) {
    id r1 = NSHomeDirectory();
    id r2 = [r1 stringByAppendingPathComponent:@"Documents"];
    id r3 = [r2 stringByAppendingPathComponent:@"VideoStarTool_LastQR.png"];
    return r3;
}

// 0x1bf04
static id helper_1bf04(id block, ...) {
    return 1;
}

// 0x1bf0c
static id helper_1bf0c(id block, ...) {
    id r1 = [arg2 objectForKeyedSubscript:@"date"];
    id r2 = [arg1 objectForKeyedSubscript:@"date"];
    id r3 = [r1 compare:r2];
    return r3;
}

// 0x1bfc4
static id helper_1bfc4(id block, ...) {
    id r1 = helper_1bd14();
    id r2 = [r1 length];
    if (r2 == 0) goto L_1c04c;
    id r3 = [r1 containsString:@"trung khop"];
    if ((r3 & (1<<0))) goto L_1c044;
    id r4 = [r1 isEqualToString:@"khop"];
    if ((r4 & (1<<0))) goto L_1c044;
    id r5 = [r1 containsString:@" match"];
    if (!(r5 & (1<<0))) goto L_1c068;
L_1c044:
    goto L_1c050;
L_1c04c:
L_1c050:
    return x20;
L_1c068:
    objc_msgSend(x19, x20);
    goto L_1c050;
}

// 0x1c084
static id helper_1c084(id block, ...) {
    if (block == 0) goto L_1c3ec;
    id r1 = [NSMutableArray array];
    id r2 = helper_dbcc(block, @"_title");
    helper_dbcc(block, @"_message");
    helper_dbcc(block, @"_messageLabel");
    helper_dbcc(block, @"text");
    id r6 = [NSString class];
    id r7 = [r2 isKindOfClass:r6];
    if (r7 == 0) goto L_1c198;
    [r1 addObject:r2];
L_1c198:
    id r9 = [NSString class];
    id r10 = [x28 isKindOfClass:r9];
    if (r10 == 0) goto L_1c1cc;
    [x20 addObject:x28];
L_1c1cc:
    id r12 = [NSString class];
    id r13 = [x21 isKindOfClass:r12];
    if (r13 == 0) goto L_1c200;
    [x20 addObject:x21];
L_1c200:
    id r15 = [NSString class];
    id r16 = [x22 isKindOfClass:r15];
    if (r16 == 0) goto L_1c234;
    [x20 addObject:x22];
L_1c234:
    id r18 = helper_dbcc(x19, @"_buttonStrings");
    id r19 = [NSArray class];
    local_30 = r18;
    id r20 = [r18 isKindOfClass:r19];
    if (r20 == 0) goto L_1c360;
    local_60 = 0.0;
    local_70 = 0.0;
    local_40 = 0.0;
    local_50 = 0.0;
    local_38 = @selector(countByEnumeratingWithState:objects:count:);
    id r21 = [r18 countByEnumeratingWithState:&local_40 objects:&local_80 count:0x10];
    if (r21 == 0) goto L_1c350;
L_1c2c8:
L_1c2d4:
    if (*local_50 == x19) goto L_1c2ec;
    objc_enumerationMutation(x28);
L_1c2ec:
    id r23 = [NSString class];
    id r24 = [local_48[(x21 << 3)] isKindOfClass:r23];
    if (r24 == 0) goto L_1c324;
    objc_msgSend(x20, x23);
L_1c324:
    if ((x21 + 0x1) <u x22) goto L_1c2d4;
    id r26 = [x28 countByEnumeratingWithState:&local_40 objects:&local_80 count:0x10];
    if (r26 != 0) goto L_1c2c8;
L_1c350:
L_1c360:
    id r27 = [UIView class];
    id r28 = [x19 isKindOfClass:r27];
    if (r28 == 0) goto L_1c390;
    helper_1c4ec(x19, x20);
L_1c390:
    id r30 = [x19 description];
    id r31 = [*(page_32000 + 0x1a0) class];
    id r32 = [r30 isKindOfClass:r31];
    if (r32 == 0) goto L_1c3f8;
    [x19 description];
    goto L_1c400;
L_1c3ec:
    goto L_1c4a4;
L_1c3f8:
L_1c400:
    id r34 = [x21 length];
    if (r34 == 0) goto L_1c430;
    [x20 addObject:x21];
L_1c430:
    [x20 componentsJoinedByString:@" "];
    helper_1bd14();
L_1c4a4:
    return x22;
}

// 0x1c4ec
static id helper_1c4ec(id block, ...) {
    if (block == 0) goto L_1c65c;
    id r1 = [UILabel class];
    id r2 = [block isKindOfClass:r1];
    if (r2 == 0) goto L_1c5a8;
    id r3 = [block text];
    id r4 = [r3 length];
    if (r4 == 0) goto L_1c5a0;
    [arg1 addObject:r3];
L_1c5a0:
L_1c5a8:
    local_20 = 0.0;
    local_30 = 0.0;
    local_0 = 0.0;
    local_10 = 0.0;
    id r6 = [x19 subviews];
    id r7 = [r6 countByEnumeratingWithState:&local_0 objects:&local_48 count:0x10];
    if (r7 == 0) goto L_1c654;
L_1c5fc:
L_1c600:
    if (*local_10 == x24) goto L_1c618;
    objc_enumerationMutation(x21);
L_1c618:
    helper_1c4ec(local_8[(x25 << 3)], x20);
    if ((x25 + 0x1) <u x23) goto L_1c600;
    id r10 = [x21 countByEnumeratingWithState:&local_0 objects:&local_48 count:0x10];
    if (r10 != 0) goto L_1c5fc;
L_1c654:
L_1c65c:
    return x0;
}

// 0x1c6a4
static id helper_1c6a4(id block, ...) {
    helper_1c7e8();
    id r2 = [NSNotificationCenter defaultCenter];
    id r3 = [NSOperationQueue mainQueue];
    [r2 addObserverForName:*UIApplicationDidBecomeActiveNotification object:0 queue:r3 usingBlock:_NSConcreteGlobalBlock];
    id r5 = [*(page_32000 + 0x2c8) mainQueue];
    [r2 addObserverForName:*UISceneDidActivateNotification object:0 queue:r5 usingBlock:_NSConcreteGlobalBlock];
    [NSTimer scheduledTimerWithTimeInterval:1.0 repeats:1 block:_NSConcreteGlobalBlock];
    helper_1ca20();
    return x0;
}

// 0x1c7e8
static id helper_1c7e8(id block, ...) {
    id r1 = NSClassFromString(@"QRCodeManager");
    if (r1 == 0) goto L_1c9f8;
    if ((g_32750 & (1<<0))) goto L_1c8ac;
    id r2 = class_getInstanceMethod(r1, @selector(readQRCode:));
    if (r2 == 0) goto L_1c8ac;
    id r3 = method_getImplementation();
    frame_m50 = _NSConcreteStackBlock;
    frame_m48 = lit_1e0a8;
    frame_m40 = &helper_1cfec;
    frame_m38 = &g_2c788;
    frame_m30 = r3;
    frame_m28 = @selector(readQRCode:);
    id r4 = imp_implementationWithBlock();
    method_setImplementation(r2, r4);
    *(page_32000 + 0x750) = 1;
    helper_bf0c(@"QRCodeManager readQRCode hook installed");
L_1c8ac:
    if ((g_32751 & (1<<0))) goto L_1c948;
    id r7 = class_getInstanceMethod(x19, @selector(selectedCode:withImageData:));
    if (r7 == 0) goto L_1c948;
    id r8 = method_getImplementation();
    local_30 = _NSConcreteStackBlock;
    local_38 = lit_1e0a8;
    local_40 = &helper_1d06c;
    local_48 = &g_2c7a8;
    local_50 = r8;
    local_58 = @selector(selectedCode:withImageData:);
    id r9 = imp_implementationWithBlock();
    method_setImplementation(r7, r9);
    *(page_32000 + 0x751) = 1;
    helper_bf0c(@"QRCodeManager selectedCode hook installed");
L_1c948:
    if ((g_32752 & (1<<0))) goto L_1c9f8;
    id r12 = NSClassFromString(@"MultiLayerWizEffectVC");
    if (r12 == 0) goto L_1c9f8;
    id r13 = class_getInstanceMethod();
    if (r13 == 0) goto L_1c9f8;
    id r14 = method_getImplementation();
    g_32758 = r14;
    local_0 = _NSConcreteStackBlock;
    local_8 = lit_1e0a8;
    local_10 = &helper_1d0f4;
    local_18 = &g_2c7a8;
    local_20 = r14;
    local_28 = @selector(importedData:code:);
    id r15 = imp_implementationWithBlock();
    method_setImplementation(r13, r15);
    *(page_32000 + 0x752) = 1;
    helper_bf0c(@"MultiLayerWizEffectVC importedData:code: hook installed");
L_1c9f8:
    return x0;
}

// 0x1ca0c
static id helper_1ca0c(id block, ...) {
    helper_1ca20();
    id r2 = helper_1c7e8();
    return r2;
}

// 0x1ca20
static id helper_1ca20(id block, ...) {
    id r1 = [NSThread isMainThread];
    if (!(r1 & (1<<0))) goto L_1cc00;
    id r2 = [UIApplication sharedApplication];
    if (r2 == 0) goto L_1ce44;
    local_20 = r2;
    local_30 = 0.0;
    local_40 = 0.0;
    local_50 = 0.0;
    local_60 = 0.0;
    id r3 = [*(page_32000 + 0x250) sharedApplication];
    local_18 = @selector(connectedScenes);
    id r4 = [r3 connectedScenes];
    local_28 = @selector(countByEnumeratingWithState:objects:count:);
    id r5 = [r4 countByEnumeratingWithState:&local_30 objects:&local_70 count:0x10];
    if (r5 == 0) goto L_1cbe4;
L_1cb1c:
L_1cb34:
    if (*local_40 == x28) goto L_1cb4c;
    objc_enumerationMutation(x22);
L_1cb4c:
    objc_msgSend(UIWindowScene, x24);
    id r8 = objc_msgSend(local_38[(x21 << 3)], x25);
    if (r8 == 0) goto L_1cbb0;
    id r9 = objc_msgSend(local_38[(x21 << 3)], x26);
    if (r9 == 0) goto L_1cc48;
    if (x23 != 0) goto L_1cbb0;
    id r10 = objc_msgSend(local_38[(x21 << 3)], x26);
    if (r10 != 1) goto L_1cbac;
    goto L_1cbb0;
L_1cbac:
L_1cbb0:
    if (x20 != (x21 + 0x1)) goto L_1cb34;
    id r11 = [x22 countByEnumeratingWithState:&local_30 objects:&local_70 count:0x10];
    if (r11 != 0) goto L_1cb1c;
L_1cbe4:
    goto L_1cc5c;
L_1cc00:
    id r12 = dispatch_async(_dispatch_main_q, _NSConcreteGlobalBlock);
    return r12;
L_1cc48:
L_1cc5c:
    if (g_32718 == 0) goto L_1ccf8;
    if (x20 == 0) goto L_1ccb0;
    id r13 = [g_32718 windowScene];
    if (r13 == x20) goto L_1ccb0;
    [*(page_32000 + 0x718) setWindowScene:x20];
L_1ccb0:
    [g_32718 setHidden:0];
    [*(page_32000 + 0x718) setWindowLevel:x2];
    [*(page_32000 + 0x718) setWindowLevel:x2];
    goto L_1ce3c;
L_1ccf8:
    if (x20 == 0) goto L_1ce0c;
    id r18 = [[VSPassthroughWindow alloc] initWithWindowScene:x20];
    if (r18 == 0) goto L_1ce3c;
L_1cd24:
    [x21 setWindowLevel:x2];
    id r20 = [UIColor clearColor];
    [x21 setBackgroundColor:r20];
    [x21 setHidden:0];
    g_32718 = x21;
    id r23 = [VSOverlayViewController new];
    [x21 setRootViewController:r23];
    [NSString stringWithFormat:@"overlay window + logo created (scene=%@)"];
    helper_bf0c();
    goto L_1ce34;
L_1ce0c:
    id r27 = [x23 connectedScenes];
    id r28 = [r27 count];
    if (r28 == 0) goto L_1ce84;
L_1ce34:
L_1ce3c:
L_1ce44:
    return x0;
L_1ce84:
    id r29 = [x23 applicationState];
    if (r29 != 0) goto L_1ce3c;
    id r30 = [UIScreen mainScreen];
    id r31 = [r30 bounds];
    id r32 = [[VSPassthroughWindow alloc] initWithFrame:CGRectMake(r31, r31.f1, r31.f2, r31.f3)];
    if (r32 != 0) goto L_1cd24;
    goto L_1ce3c;
    if (x1 != 1) goto L_1cfcc;
    id r34 = objc_begin_catch(r33);
    id r35 = [r34 name];
    id r36 = [r34 reason];
    local_0 = r35;
    local_8 = r36;
    [NSString stringWithFormat:@"overlay error: %@ - %@"];
    helper_bf0c();
    objc_end_catch();
    goto L_1ce3c;
    objc_end_catch();
L_1cfcc:
    Unwind_Resume(x22);
    __builtin_trap();
}

// 0x1cfd8
static id helper_1cfd8(id block, ...) {
    helper_1ca20();
    id r2 = helper_1c7e8();
    return r2;
}

// 0x1cfec
static id helper_1cfec(id block, ...) {
    helper_12a34();
L_1d020:
    id r2 = ((id(*)())(*(x21 + 0x20)))(x19, *(x21 + 0x28), x20);
    return r2;
    objc_begin_catch();
    objc_end_catch();
    goto L_1d020;
}

// 0x1d06c
static id helper_1d06c(id block, ...) {
    helper_12a34();
L_1d0b0:
    ((id(*)())(*(x21 + 0x20)))(x19, *(x21 + 0x28), x20, x22);
    return x0;
    objc_begin_catch();
    objc_end_catch();
    goto L_1d0b0;
}

// 0x1d0f4
static id helper_1d0f4(id block, ...) {
    ((id(*)())(block->cap_20))(arg1, block->cap_28, arg2, arg3);
    local_8 = _NSConcreteStackBlock;
    local_10 = lit_1df28;
    local_18 = &helper_1d1f8;
    local_20 = &g_2c5f8;
    local_38 = arg3;
    dispatch_async(_dispatch_main_q, &local_8);
    return x0;
}

// 0x1d1f8
static id helper_1d1f8(id block, ...) {
    if (g_32728 == 0) goto L_1d234;
    [g_32728 handleNativeMergeImportedData:block->cap_20 editor:block->cap_28 code:block->cap_30];
L_1d234:
    return x0;
}

// 0x1d244
static id helper_1d244(id block, ...) {
    id r1 = helper_1ca20();
    return r1;
}
