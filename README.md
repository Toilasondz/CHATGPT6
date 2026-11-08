# VideoStarTool — H SON Independent Menu v3

This package follows the supplied **H SON menu layout and its four actions**, but replaces the previous `VSToolOverlay`/`featureSwitchChanged:` dispatcher with an independent Objective-C menu and four separate feature modules.

## Menu layout

The floating `HS` launcher opens the H SON panel. The HOME and TOOLS tabs show the same four feature cards; H SON opens the creator page. Card order and mapping are kept stable:

| Menu index | H SON card | Objective-C module | Reconstructed behavior |
|---:|---|---|---|
| 0 | Auto thay ảnh | `HSONReplaceLayer.m/.h` | Opens Video Star's native media picker, captures the picker response, selects candidate media layers, invokes the native Replace Content action, replays a cloned picker response, and verifies that each target layer changed. Stops on an unverified layer. |
| 1 | Code gần nhất | `HSONLastCode.m/.h` | Searches image files in the app sandbox's Caches, Application Support and Documents folders, orders them by modification time, detects QR content with Core Image, caches the latest matching image, and previews it. |
| 2 | Auto chia beat | `HSONBeatSplit.m/.h` | Locates `VideoReviewEditVC` and `MultiSplitView`, checks project/storage conditions where selectors exist, advances beat positions, places split points and submits the native split action, then waits for scene-count changes. |
| 3 | Multi Scene | `HSONMultiSceneApply.m/.h` | Guided per-scene flow: selects a scene range, opens each scene's multilayer editor, asks for a QR image, decodes/submits it through `QRCodeManager`, then starts the reconstructed media-replacement flow for that scene. |

`HSONFeatureBridge.m/.h` contains guarded runtime helpers for looking up private classes, checking selectors, reading values and safely invoking known Objective-C methods. It does not dispatch to the original tool overlay.

## Build

Requires Theos and an iOS 15+ SDK. Build locally with:

```sh
make clean package FINALPACKAGE=1
```

Target: rootless jailbreak package, `arm64`, iOS 15+, bundle filter `com.frontierdesign.videostar`.

## Reverse-engineering references

`NativeLogic/` retains the user-supplied pseudocode and ARM64 disassembly as references. These listings are not included in the build and are not compiled directly. The implementation in `Source/Features/` is a manual Objective-C reconstruction, not a byte-for-byte translation of the original binary.

## Compatibility and limitations

- The build source no longer links to, loads, or dispatches through `VideoStarTool_original.dylib` or the old `VSToolOverlay` class.
- The four feature modules depend on private Video Star classes, properties and selectors observed in the supplied binary. Selector presence in a decompiled listing does not prove the live app has the same ABI or behavior.
- Last Code uses public Core Image/file APIs, but its search scope is limited to the current app sandbox and files readable by the process.
- Auto thay ảnh relies on the native `MultiLayerWizEffectVC` media picker and `ClipPickerResponse` initializer. It stops if those are unavailable or if a layer change cannot be verified.
- Auto chia beat relies on `VideoReviewEditVC`, `MultiSplitView`, beat controls and project methods. It must be tested against the exact Video Star version before use on an important project.
- Multi Scene is the least certain reconstruction: the native QR import callback/delegate contract and the editor lifecycle are private APIs. It is implemented as a guided flow with checks and abort paths, not as a certified one-click clone of the original native implementation.
- The source does not remove or bypass Video Star authentication, entitlement checks, purchase checks, or any authorization mechanism.
- This container does not include Theos or an iOS SDK, and no Video Star 14.3.3 device/runtime is attached. The package has therefore **not been compiled or tested on-device here**. No claim of 100% operation or stability is made.

Always build and test on a spare device and a duplicate project first. Keep a copy of important projects before testing private editor operations.


### FIX 5 build note
The Multi Scene QR decoder no longer calls the nonexistent `CIImage imageWithImage:` selector. It uses `UIImage.CIImage`, falling back to `CIImage imageWithCGImage:`. Run the single workflow at `.github/workflows/main.yml`.


## FIX 6 — launcher does not appear
The launcher now retries across app/scene activation and window key/visible notifications, searches visible app windows when no key window is available, and logs its attachment state with the `[HSONMenu]` prefix. Package version is `3.0.1`. After installing the new `.deb`, fully terminate and reopen Video Star (and respring/restart the tweak service if your jailbreak requires it). If the launcher is still absent, inspect device logs for `[HSONMenu] Constructor loaded`, `Not attaching`, `Waiting for`, or `Launcher attached`; absence of all these messages indicates the tweak was not injected/loaded, rather than a menu-layout problem.
