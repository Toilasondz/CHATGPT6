# Build and runtime status — H SON Independent Menu v3

## Completed in source

- Replaced the previous H SON menu dispatcher with an independent floating launcher and dark H SON panel.
- Preserved the four H SON feature cards and their order: Auto thay ảnh, Code gần nhất, Auto chia beat, Multi Scene.
- Added separate Objective-C modules: `HSONReplaceLayer`, `HSONLastCode`, `HSONBeatSplit`, and `HSONMultiSceneApply`.
- Added runtime class/selector guards and bounded wait/retry paths in the reconstructed feature modules.
- Removed production-source use of `VSToolOverlay`, `featureSwitchChanged:`, and the prior feature dispatcher.
- Excluded the original dylib from the independent build package; pseudocode and ARM64 disassembly remain as development references only.

## Not verified

- No Theos installation or iOS SDK is available in this container, so a native compile/package was not run.
- No iPhone/iPad running Video Star 14.3.3 is attached, so no UI, media-picker, QR import, beat-splitting, or multi-scene runtime test was performed.
- Private method signatures and object lifetimes can vary between app releases. The selector names were inferred from the supplied reverse-engineering material, not verified against a live 14.3.3 process.
- Multi Scene relies on undocumented QRCodeManager delegate/import behavior and should be considered experimental until tested.

**Status:** source reconstruction prepared; build and Video Star 14.3.3 runtime compatibility remain unverified. It is not accurate to describe this as 100% working or stable yet.

## Static checks run in this workspace

- PASS: all four menu cards map to the expected Objective-C module entry functions.
- PASS: production source contains no legacy `VSToolOverlay`, `featureSwitchChanged:`, or `HSONDispatchNativeFeature` dispatcher reference.
- PASS: delimiter-balance sanity check across all `.m` and `.h` files.
- PASS: all 20 exported bridge helpers declared in `HSONFeatureBridge.h` have implementations in `HSONFeatureBridge.m`.
- PASS: no `.dylib` is bundled in this independent source tree.

These are source-structure checks only; they do not replace an iOS SDK compile or real-device test.

## Build log fix (2026-11-08)
- Fixed `Source/Tweak.m` tab loop signedness warning treated as an error by Clang.
- Loop index now uses `NSUInteger` to match `NSArray.count`; explicit casts are used for the `CGFloat` frame coordinate and `NSInteger` button tag.
- Static feature-map verification passes after the change.
- A full Theos/iOS SDK compile and runtime test are still required; this environment does not establish compatibility with Video Star 14.3.3.
- Added `scripts/fix-tab-loop-signedness.py` and a CI step before compilation. It patches the exact stale `NSInteger`/`tabTitles.count` loop if an older source file is present, then asserts the `NSUInteger` form before invoking Theos.


## Build fix 4 — HSONReplaceLayer.m line 180

The compile error came from accessing `viewIfLoaded` on an `id`. The code now checks whether the runtime editor object is a `UIViewController`, accesses `isViewLoaded`/`view` through a typed pointer, and otherwise safely falls back to the popup container when it is a `UIView`. This is a compile-level source fix; a full Theos/iOS SDK build and in-app runtime test still need to be run in GitHub Actions/on device.


## FIX 5 — Core Image QR construction

- Replaced the invalid `[CIImage imageWithImage:image]` call in `Source/Features/HSONMultiSceneApply.m`.
- QR decoding now prefers `UIImage.CIImage` and falls back to `[CIImage imageWithCGImage:image.CGImage]`.
- The `main.yml` workflow now fails early if the invalid selector is reintroduced and verifies the fallback path is present.
- Kept one active workflow (`.github/workflows/main.yml`) to avoid duplicate builds.
- Static validation only; an actual Theos build and on-device Video Star 14.3.3 test are still required.


## FIX 6 — launcher visibility and lifecycle attachment
- Expanded host-window lookup: prefer the foreground scene key window, then a visible normal-level application window, with a legacy windows fallback.
- Launcher attachment now retries for up to 60 seconds when no host window exists, re-fronts an existing launcher, and retries after app/scene activation and window key/visible notifications.
- Added launch-time retries after 0.4, 1.2 and 2.5 seconds to handle app launch overlays that appear after the tweak constructor.
- Added `[HSONMenu]` diagnostic logs for constructor load, bundle mismatch, missing window and successful attachment.
- Bumped package version to 3.0.1 so package managers can recognize the replacement build.
- These changes address likely UI attachment/lifecycle causes. Runtime visibility still requires installing this exact package, restarting Video Star/respringing, and checking device logs if it remains absent.
