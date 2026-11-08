#!/usr/bin/env python3
from pathlib import Path
import sys

root = Path(__file__).resolve().parents[1]
source = root / "Source"
tweak = (source / "Tweak.m").read_text()

features = [
    (0, "Auto thay ảnh", "HSONReplaceLayer.m", "HSONRunReplaceLayer"),
    (1, "Code gần nhất", "HSONLastCode.m", "HSONRunLastCode"),
    (2, "Auto chia beat", "HSONBeatSplit.m", "HSONRunBeatSplit"),
    (3, "Multi Scene", "HSONMultiSceneApply.m", "HSONRunMultiSceneApply"),
]

for index, title, filename, function in features:
    path = source / "Features" / filename
    if not path.exists():
        sys.exit(f"FAIL: missing module {path}")
    module = path.read_text()
    if function not in module or f"case {index}: {function}();" not in tweak:
        sys.exit(f"FAIL: menu index {index} ({title}) is not mapped to {function}")
    if title not in tweak:
        sys.exit(f"FAIL: H SON card title missing: {title}")

for forbidden in ("featureSwitchChanged:", "VSToolOverlay", "HSONDispatchNativeFeature"):
    combined = "\n".join(p.read_text() for p in source.rglob("*.m"))
    if forbidden in combined:
        sys.exit(f"FAIL: production source still references legacy dispatcher symbol {forbidden}")

makefile = (root / "Makefile").read_text()
for framework in ("CoreImage", "CoreMedia", "AVFoundation", "PhotosUI"):
    if framework not in makefile:
        sys.exit(f"FAIL: required framework missing from Makefile: {framework}")

print("PASS: four H SON menu entries map to four independent Objective-C modules.")
print("PASS: legacy VSToolOverlay / featureSwitchChanged dispatcher is absent from production source.")
