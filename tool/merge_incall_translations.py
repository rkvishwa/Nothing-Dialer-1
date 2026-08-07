#!/usr/bin/env python3
"""Merge in-call UI strings from incall_by_locale.json into per-locale translation JSON files."""

from __future__ import annotations

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
TRANS = ROOT / "lib" / "l10n" / "translations"
BUNDLE = TRANS / "incall_by_locale.json"

# Locale stems that have both a translations/*.json and Android values-* output.
LOCALE_STEMS = ("hi", "de", "es", "fr", "ja", "zh_CN", "ar", "pt_BR", "ru", "ta")


def main() -> None:
    bundle = json.loads(BUNDLE.read_text(encoding="utf-8"))
    for stem in LOCALE_STEMS:
        incall = bundle.get(stem)
        if not incall:
            print(f"Skip {stem}: no bundle entry")
            continue
        path = TRANS / f"{stem}.json"
        data: dict = {}
        if path.exists():
            data = json.loads(path.read_text(encoding="utf-8"))
        data.update(incall)
        with path.open("w", encoding="utf-8") as f:
            json.dump(data, f, ensure_ascii=False, indent=2)
            f.write("\n")
        print(f"Merged {len(incall)} in-call keys into {path.name}")


if __name__ == "__main__":
    main()
