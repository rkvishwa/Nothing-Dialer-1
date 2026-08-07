#!/usr/bin/env python3
"""Merge About / Review settings strings into per-locale translation JSON files."""

from __future__ import annotations

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
TRANS = ROOT / "lib" / "l10n" / "translations"
BUNDLE = TRANS / "settings_sections_by_locale.json"

LOCALE_STEMS = ("hi", "de", "es", "fr", "ja", "zh_CN", "ar", "pt_BR", "ru")


def main() -> None:
    bundle = json.loads(BUNDLE.read_text(encoding="utf-8"))
    for stem in LOCALE_STEMS:
        section = bundle.get(stem)
        if not section:
            print(f"Skip {stem}: no bundle entry")
            continue
        path = TRANS / f"{stem}.json"
        data: dict = {}
        if path.exists():
            data = json.loads(path.read_text(encoding="utf-8"))
        data.update(section)
        with path.open("w", encoding="utf-8") as f:
            json.dump(data, f, ensure_ascii=False, indent=2)
            f.write("\n")
        print(f"Merged {len(section)} settings section keys into {path.name}")


if __name__ == "__main__":
    main()
