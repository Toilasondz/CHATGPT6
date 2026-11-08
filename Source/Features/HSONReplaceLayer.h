#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^HSONReplaceLayerCompletion)(BOOL success, NSUInteger changedCount, NSString * _Nullable message);

FOUNDATION_EXPORT BOOL HSONRunReplaceLayer(void);
FOUNDATION_EXPORT BOOL HSONRunReplaceLayerWithEditor(id editor, BOOL showResultAlert, HSONReplaceLayerCompletion _Nullable completion);

NS_ASSUME_NONNULL_END
