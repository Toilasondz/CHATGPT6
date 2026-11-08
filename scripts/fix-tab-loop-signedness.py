#!/usr/bin/env python3
"""Normalize the tabTitles loop index before the Theos build.

This protects CI runs that still contain the previous signed NSInteger loop.
The project source should also keep this fix committed in Source/Tweak.m.
"""
from pathlib import Path
import re
import sys

source = Path("Source/Tweak.m")
if not source.is_file():
    print(f"ERROR: {source} not found; run this script from the project root", file=sys.stderr)
    sys.exit(1)

text = source.read_text(encoding="utf-8")
pattern = re.compile(
    r"for\s*\(\s*NSInteger\s+i\s*=\s*0\s*;\s*"
    r"i\s*<\s*tabTitles\.count\s*;\s*i\+\+\s*\)"
)
text, replacements = pattern.subn(
    "for (NSUInteger i = 0; i < tabTitles.count; i++)", text
)

if replacements:
    source.write_text(text, encoding="utf-8")
    print(f"Patched {replacements} stale tabTitles loop(s) in {source}.")
else:
    print("No stale NSInteger/tabTitles loop found; source is already normalized.")

if not re.search(
    r"for\s*\(\s*NSUInteger\s+i\s*=\s*0\s*;\s*"
    r"i\s*<\s*tabTitles\.count\s*;\s*i\+\+\s*\)",
    text,
):
    print("ERROR: expected NSUInteger tabTitles loop is still missing", file=sys.stderr)
    sys.exit(1)

print("PASS: tabTitles.count is compared with an NSUInteger loop index.")
