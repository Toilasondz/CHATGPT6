# H SON menu and native logic reference map

The table below keeps the original reverse-engineered entry points aligned with the independent H SON source modules. These selector names are reference evidence from the supplied binary; they are not called as a `VSToolOverlay` dispatcher by the new source.

| H SON menu index | H SON menu card | Original selector/reference | Reconstructed module |
|---:|---|---|---|
| 0 | Auto thay ảnh | `startFeatureReplaceMedia`; `startMediaApplyToEditor:image:asset:completion:`, `applyNextMediaLayer`, `waitForMediaLayerReplacement:editor:engine:beforeImage:beforeAsset:retry:record:` | `Source/Features/HSONReplaceLayer.m` |
| 1 | Code gần nhất | `startFeatureLastCode`; sandbox image scan, QR detection and image preview | `Source/Features/HSONLastCode.m` |
| 2 | Auto chia beat | `startFeatureBeatSplit`; `beatSplitAdvanceStepWithAttempt:`, `waitForBeatAdvanceFromTime:attempt:`, `finishBeatSplitNativeWorkflow` | `Source/Features/HSONBeatSplit.m` |
| 3 | Multi Scene | `startFeatureMultiSceneApply`; `beginMergeRangeFromNativePanel`, QR import and per-scene merge/media workflow | `Source/Features/HSONMultiSceneApply.m` |

The pseudocode and disassembly under `NativeLogic/` are reference-only. The decompiler output contains synthetic temporaries, block captures, helper functions and private ABI assumptions; it is not directly compilable Objective-C.
