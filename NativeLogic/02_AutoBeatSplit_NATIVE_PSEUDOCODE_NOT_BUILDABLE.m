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

