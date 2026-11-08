#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

FOUNDATION_EXPORT UIViewController * _Nullable HSONTopViewController(void);
FOUNDATION_EXPORT UIViewController * _Nullable HSONFindViewControllerNamed(NSString *className);
FOUNDATION_EXPORT UIView * _Nullable HSONFindSubviewNamed(UIView * _Nullable root, NSString *className);
FOUNDATION_EXPORT id _Nullable HSONValue(id _Nullable object, NSString *key);
FOUNDATION_EXPORT BOOL HSONResponds(id _Nullable object, NSString *selectorName);
FOUNDATION_EXPORT id _Nullable HSONCallObject0(id _Nullable object, NSString *selectorName);
FOUNDATION_EXPORT id _Nullable HSONCallObject1(id _Nullable object, NSString *selectorName, id _Nullable argument);
FOUNDATION_EXPORT id _Nullable HSONCallObjectUInt(id _Nullable object, NSString *selectorName, NSUInteger argument);
FOUNDATION_EXPORT BOOL HSONCallBool0(id _Nullable object, NSString *selectorName, BOOL fallback);
FOUNDATION_EXPORT BOOL HSONCallBool1(id _Nullable object, NSString *selectorName, id _Nullable argument, BOOL fallback);
FOUNDATION_EXPORT NSUInteger HSONCallUInteger0(id _Nullable object, NSString *selectorName, NSUInteger fallback);
FOUNDATION_EXPORT NSUInteger HSONCallUIntegerUInt(id _Nullable object, NSString *selectorName, NSUInteger argument, NSUInteger fallback);
FOUNDATION_EXPORT BOOL HSONCallBoolUInt(id _Nullable object, NSString *selectorName, NSUInteger argument, BOOL fallback);
FOUNDATION_EXPORT void HSONCallVoid0(id _Nullable object, NSString *selectorName);
FOUNDATION_EXPORT void HSONCallVoid1(id _Nullable object, NSString *selectorName, id _Nullable argument);
FOUNDATION_EXPORT void HSONCallVoidUInt(id _Nullable object, NSString *selectorName, NSUInteger argument);
FOUNDATION_EXPORT void HSONCallVoidUIntBool(id _Nullable object, NSString *selectorName, NSUInteger first, BOOL second);
FOUNDATION_EXPORT void HSONPresentAlert(NSString *title, NSString *message);
FOUNDATION_EXPORT void HSONPresentImagePreview(NSData *data, NSString *title);
FOUNDATION_EXPORT void HSONLog(NSString *message);

NS_ASSUME_NONNULL_END
