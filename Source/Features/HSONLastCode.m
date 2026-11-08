#import "HSONLastCode.h"
#import "HSONFeatureBridge.h"
#import <CoreImage/CoreImage.h>
#import <UIKit/UIKit.h>

static NSString *HSONLastCodePath(void) {
    NSString *documents = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;
    return documents ? [documents stringByAppendingPathComponent:@"VideoStarTool_LastQR.png"] : nil;
}

static BOOL HSONImageDataContainsQR(NSData *data, CIDetector *detector) {
    if (data.length == 0 || data.length > 24 * 1024 * 1024) return NO;
    CIImage *image = [CIImage imageWithData:data options:@{ kCIImageApplyOrientationProperty: @YES }];
    if (!image) return NO;
    NSArray<CIFeature *> *features = [detector featuresInImage:image];
    for (CIFeature *feature in features) {
        if ([feature isKindOfClass:CIQRCodeFeature.class] && ((CIQRCodeFeature *)feature).messageString.length > 0) return YES;
    }
    return NO;
}

static NSDate *HSONModificationDate(NSURL *url) {
    NSDate *date = nil;
    [url getResourceValue:&date forKey:NSURLContentModificationDateKey error:nil];
    if (!date) [url getResourceValue:&date forKey:NSURLCreationDateKey error:nil];
    return date ?: NSDate.distantPast;
}

static NSData *HSONFindLatestQRImage(void) {
    NSDictionary *options = @{ CIDetectorAccuracy: CIDetectorAccuracyHigh };
    CIDetector *detector = [CIDetector detectorOfType:CIDetectorTypeQRCode context:nil options:options];
    if (!detector) return nil;

    NSString *knownPath = HSONLastCodePath();

    NSString *home = NSHomeDirectory();
    NSArray<NSString *> *roots = @[
        [home stringByAppendingPathComponent:@"Library/Caches"],
        [home stringByAppendingPathComponent:@"Library/Application Support"],
        [home stringByAppendingPathComponent:@"Documents"]
    ];
    NSSet<NSString *> *extensions = [NSSet setWithArray:@[@"png", @"jpg", @"jpeg", @"heic", @"webp", @"tif", @"tiff"]];
    NSMutableArray<NSDictionary *> *candidates = [NSMutableArray arrayWithCapacity:300];
    NSFileManager *fm = NSFileManager.defaultManager;

    for (NSString *root in roots) {
        BOOL isDirectory = NO;
        if (![fm fileExistsAtPath:root isDirectory:&isDirectory] || !isDirectory) continue;
        NSUInteger rootCandidateStart = candidates.count;
        NSDirectoryEnumerator<NSURL *> *enumerator = [fm enumeratorAtURL:[NSURL fileURLWithPath:root isDirectory:YES]
                                                  includingPropertiesForKeys:@[NSURLIsDirectoryKey, NSURLContentModificationDateKey, NSURLFileSizeKey]
                                                                     options:NSDirectoryEnumerationSkipsHiddenFiles | NSDirectoryEnumerationSkipsPackageDescendants
                                                                errorHandler:^BOOL(NSURL *url, NSError *error) {
            HSONLog([NSString stringWithFormat:@"QR scan skipped %@ (%@)", url.lastPathComponent, error.localizedDescription]);
            return YES;
        }];
        for (NSURL *url in enumerator) {
            NSNumber *isDir = nil;
            [url getResourceValue:&isDir forKey:NSURLIsDirectoryKey error:nil];
            if (isDir.boolValue) continue;
            if (![extensions containsObject:url.pathExtension.lowercaseString]) continue;
            NSNumber *size = nil;
            [url getResourceValue:&size forKey:NSURLFileSizeKey error:nil];
            if (size.unsignedLongLongValue == 0 || size.unsignedLongLongValue > 24ULL * 1024ULL * 1024ULL) continue;
            [candidates addObject:@{ @"url": url, @"date": HSONModificationDate(url) }];
            if (candidates.count - rootCandidateStart >= 900) break;
        }
    }

    [candidates sortUsingComparator:^NSComparisonResult(NSDictionary *a, NSDictionary *b) {
        return [b[@"date"] compare:a[@"date"]];
    }];

    for (NSDictionary *candidate in candidates) {
        NSURL *url = candidate[@"url"];
        NSData *data = [NSData dataWithContentsOfURL:url options:NSDataReadingMappedIfSafe error:nil];
        if (!HSONImageDataContainsQR(data, detector)) continue;
        if (knownPath) [data writeToFile:knownPath options:NSDataWritingAtomic error:nil];
        HSONLog([NSString stringWithFormat:@"Latest QR image: %@", url.lastPathComponent]);
        return data;
    }
    return nil;
}

BOOL HSONRunLastCode(void) {
    dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INITIATED, 0), ^{
        @autoreleasepool {
            NSData *data = HSONFindLatestQRImage();
            dispatch_async(dispatch_get_main_queue(), ^{
                if (data.length) HSONPresentImagePreview(data, @"Code gần nhất");
                else HSONPresentAlert(@"Thông báo", @"Không tìm thấy ảnh chứa QR trong Caches, Application Support hoặc Documents của Video Star.");
            });
        }
    });
    return YES;
}
