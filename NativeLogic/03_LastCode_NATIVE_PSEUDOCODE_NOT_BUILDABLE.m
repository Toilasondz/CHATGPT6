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

