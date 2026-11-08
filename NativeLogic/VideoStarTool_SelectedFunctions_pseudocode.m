/*
 * VideoStarTool.dylib - selected reverse-engineered routines
 * Architecture: arm64 Mach-O
 *
 * NOTE: This is decompiler pseudocode, NOT original compilable Objective-C source.
 * Register/stack temporaries (x19, local_*, helper_*) and selector/ivar recovery
 * artifacts are retained. Private Video Star runtime classes/selectors are required.
 */


// ===== MediaLayerApply: source pseudocode lines 1462-1835 =====
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


// ===== BeatSplit: source pseudocode lines 2015-2460 =====
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


// ===== MultiSceneApply: source pseudocode lines 2690-3910 =====
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
