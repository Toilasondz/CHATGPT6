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

