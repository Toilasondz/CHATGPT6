#import "HSONBeatSplit.h"
#import "HSONFeatureBridge.h"
#import <CoreMedia/CoreMedia.h>
#import <objc/message.h>
#import <UIKit/UIKit.h>

static void HSONTapButton(id object, NSString *key) {
    id button = HSONValue(object, key);
    if ([button isKindOfClass:UIButton.class]) {
        [(UIButton *)button sendActionsForControlEvents:UIControlEventTouchUpInside];
    }
}

static CMTime HSONCurrentBeatTime(id splitView) {
    SEL selector = NSSelectorFromString(@"currentTime");
    if (!splitView || ![splitView respondsToSelector:selector]) return kCMTimeInvalid;
    @try { return ((CMTime (*)(id, SEL))objc_msgSend)(splitView, selector); }
    @catch (__unused NSException *exception) { return kCMTimeInvalid; }
}

@interface HSONBeatSplitJob : NSObject
@property (nonatomic, weak) id splitView;
@property (nonatomic, strong) id project;
@property (nonatomic, weak) UIViewController *reviewController;
@property (nonatomic) NSUInteger sceneCountBefore;
@property (nonatomic) NSUInteger queuedSplits;
@property (nonatomic) NSUInteger stepCount;
@property (nonatomic) NSUInteger maxSteps;
@property (nonatomic) NSUInteger noAdvanceRetries;
@property (nonatomic) BOOL running;
- (void)startWithReviewController:(UIViewController *)review splitView:(id)splitView project:(id)project;
@end

@implementation HSONBeatSplitJob

- (void)startWithReviewController:(UIViewController *)review splitView:(id)splitView project:(id)project {
    self.reviewController = review;
    self.splitView = splitView;
    self.project = project;
    self.sceneCountBefore = HSONCallUInteger0(project, @"sceneCount", 0);
    self.queuedSplits = 0;
    self.stepCount = 0;
    self.noAdvanceRetries = 0;
    NSArray *splitTimes = HSONCallObject0(splitView, @"splitTimes");
    self.maxSteps = splitTimes.count > 0 ? MIN(splitTimes.count + 2, 4096) : 512;
    self.running = YES;

    if (!HSONCallBool0(splitView, @"beatModeOn", NO)) {
        HSONCallVoid0(splitView, @"toggleBeatMode");
    }
    HSONLog([NSString stringWithFormat:@"Beat split started; sceneCount=%lu maxSteps=%lu",
             (unsigned long)self.sceneCountBefore, (unsigned long)self.maxSteps]);
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.18 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self advanceToNextBeat];
    });
}

- (void)advanceToNextBeat {
    if (!self.running) return;
    id splitView = self.splitView;
    if (!splitView || !self.project) { [self finishWithError:@"Giao diện chia beat đã đóng trước khi hoàn tất."]; return; }
    if (self.stepCount >= self.maxSteps) { [self finishWorkflow]; return; }

    BOOL hasNext = HSONCallBool0(splitView, @"hasNextBeat", YES);
    id nextButton = HSONValue(splitView, @"nextButton");
    if (!hasNext && ![nextButton isKindOfClass:UIButton.class]) { [self finishWorkflow]; return; }

    CMTime before = HSONCurrentBeatTime(splitView);
    if (!CMTIME_IS_VALID(before)) { [self finishWithError:@"Không đọc được currentTime từ MultiSplitView."]; return; }

    HSONCallVoid0(splitView, @"jumpToNextBeat");
    HSONTapButton(splitView, @"nextButton");
    [self waitForAdvanceFrom:before attempt:0];
}

- (void)waitForAdvanceFrom:(CMTime)before attempt:(NSUInteger)attempt {
    if (!self.running) return;
    id splitView = self.splitView;
    if (!splitView) { [self finishWithError:@"MultiSplitView không còn tồn tại."]; return; }
    CMTime now = HSONCurrentBeatTime(splitView);
    if (CMTIME_IS_VALID(now) && CMTimeCompare(now, before) > 0) {
        self.noAdvanceRetries = 0;
        HSONCallVoid0(splitView, @"setSplitPoint");
        HSONTapButton(splitView, @"setButton");
        self.queuedSplits += 1;
        self.stepCount += 1;
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.12 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self advanceToNextBeat];
        });
        return;
    }

    if (attempt < 100) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.12 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self waitForAdvanceFrom:before attempt:attempt + 1];
        });
        return;
    }

    BOOL stillHasNext = HSONCallBool0(splitView, @"hasNextBeat", NO);
    if (stillHasNext && self.noAdvanceRetries < 2 && self.stepCount < self.maxSteps) {
        self.noAdvanceRetries += 1;
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.15 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self advanceToNextBeat];
        });
    } else {
        [self finishWorkflow];
    }
}

- (void)finishWorkflow {
    if (!self.running) return;
    self.running = NO;
    if (self.queuedSplits == 0) {
        HSONPresentAlert(@"Thông báo", @"Không tìm thấy beat mới để chia trong phân cảnh hiện tại.");
        return;
    }

    id splitView = self.splitView;
    HSONCallVoid0(splitView, @"doSplit");
    HSONTapButton(splitView, @"splitButton");
    HSONLog([NSString stringWithFormat:@"Beat split submitted; queued=%lu", (unsigned long)self.queuedSplits]);
    [self verifyCompletionAttempt:0];
}

- (void)verifyCompletionAttempt:(NSUInteger)attempt {
    NSUInteger currentCount = HSONCallUInteger0(self.project, @"sceneCount", self.sceneCountBefore);
    NSUInteger expectedCount = self.sceneCountBefore + self.queuedSplits;
    if (currentCount >= expectedCount && currentCount > self.sceneCountBefore) {
        HSONPresentAlert(@"Chia beat hoàn tất",
                         [NSString stringWithFormat:@"Đã xác minh Video Star tăng %lu phân cảnh (từ %lu lên %lu).",
                          (unsigned long)(currentCount - self.sceneCountBefore),
                          (unsigned long)self.sceneCountBefore, (unsigned long)currentCount]);
        HSONLog([NSString stringWithFormat:@"Beat split verified; expectedAdditional=%lu actualAdditional=%lu",
                 (unsigned long)self.queuedSplits, (unsigned long)(currentCount - self.sceneCountBefore)]);
        return;
    }
    if (attempt >= 120) {
        NSString *message = currentCount > self.sceneCountBefore
            ? [NSString stringWithFormat:@"Video Star chỉ xác nhận tăng %lu/%lu phân cảnh. Hãy kiểm tra thủ công trước khi thao tác tiếp.",
               (unsigned long)(currentCount - self.sceneCountBefore), (unsigned long)self.queuedSplits]
            : @"Video Star chưa báo tăng sceneCount. Hãy kiểm tra màn hình chia phân cảnh trước khi thao tác tiếp.";
        HSONPresentAlert(@"Chưa xác minh đủ", message);
        HSONLog([NSString stringWithFormat:@"Beat split verification incomplete; expectedAdditional=%lu actualAdditional=%lu",
                 (unsigned long)self.queuedSplits, (unsigned long)(currentCount - self.sceneCountBefore)]);
        return;
    }
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self verifyCompletionAttempt:attempt + 1];
    });
}

- (void)finishWithError:(NSString *)message {
    self.running = NO;
    HSONLog([NSString stringWithFormat:@"Beat split aborted: %@", message]);
    HSONPresentAlert(@"Không thể chia beat", message);
}
@end

static HSONBeatSplitJob *gBeatSplitJob;

BOOL HSONRunBeatSplit(void) {
    dispatch_async(dispatch_get_main_queue(), ^{
        UIViewController *review = HSONFindViewControllerNamed(@"VideoReviewEditVC");
        if (!review) {
            HSONPresentAlert(@"Thông báo", @"Bạn chưa ở màn hình chia phân cảnh của Video Star.");
            return;
        }
        [review loadViewIfNeeded];
        id project = HSONCallObject0(review, @"project");
        if (!project) {
            HSONPresentAlert(@"Thông báo", @"Không lấy được project hiện tại.");
            return;
        }
        id splitView = HSONFindSubviewNamed(review.view, @"MultiSplitView");
        if (!splitView) {
            HSONPresentAlert(@"Thông báo", @"Không tìm thấy MultiSplitView. Hãy mở giao diện Chia phân cảnh rồi thử lại.");
            return;
        }
        NSUInteger sceneIndex = HSONCallUInteger0(review, @"sceneIndex", 0);
        if (HSONResponds(project, @"clipCountForSceneIndex:")) {
            NSUInteger clipCount = HSONCallUIntegerUInt(project, @"clipCountForSceneIndex:", sceneIndex, NSUIntegerMax);
            if (clipCount == 0) {
                HSONPresentAlert(@"Thông báo", @"Phân cảnh hiện tại không có clip để chia.");
                return;
            }
        }
        if (HSONResponds(project, @"sceneHasAtLeastOneClipWithSceneIndex:") &&
            !HSONCallBoolUInt(project, @"sceneHasAtLeastOneClipWithSceneIndex:", sceneIndex, NO)) {
            HSONPresentAlert(@"Thông báo", @"Tất cả clip trong phân cảnh phải hợp lệ trước khi chia.");
            return;
        }
        if (HSONResponds(project, @"isEnoughStorageAvailableForSplit") &&
            !HSONCallBool0(project, @"isEnoughStorageAvailableForSplit", YES)) {
            HSONPresentAlert(@"Thông báo", @"Thiết bị không đủ dung lượng để chia phân cảnh.");
            return;
        }
        if (gBeatSplitJob.running) {
            HSONPresentAlert(@"Đang xử lý", @"Tác vụ Auto chia beat hiện vẫn đang chạy.");
            return;
        }
        gBeatSplitJob = [HSONBeatSplitJob new];
        [gBeatSplitJob startWithReviewController:review splitView:splitView project:project];
    });
    return YES;
}
