#!/usr/bin/env python3
"""Copy template ARB to each locale tag for gen-l10n (English until translated)."""
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
L10N = ROOT / "lib" / "l10n"
TEMPLATE = L10N / "app_en.arb"

# Tags aligned with flutter_localized_locales (subset + common variants).
LOCALE_TAGS = [
    "af", "am", "ar", "as", "az", "be", "bg", "bn", "bs", "ca", "cs", "cy", "da",
    "de", "el", "en", "en_AU", "en_CA", "en_GB", "en_IN", "es", "es_419", "es_MX",
    "et", "eu", "fa", "fi", "fil", "fr", "fr_CA", "gl", "gu", "he", "hi", "hr",
    "hu", "hy", "id", "is", "it", "ja", "ka", "kk", "km", "kn", "ko", "ky", "lo",
    "lt", "lv", "mk", "ml", "mn", "mr", "ms", "my", "nb", "ne", "nl", "or", "pa",
    "pl", "pt", "pt_BR", "pt_PT", "ro", "ru", "si", "sk", "sl", "sq", "sr", "sv",
    "sw", "ta", "te", "th", "tl", "tr", "uk", "ur", "uz", "vi", "zh", "zh_CN",
    "zh_HK", "zh_TW", "zu",
]

# Optional JSON files with locale -> {key: translated string} overrides.
TRANSLATIONS_DIR = L10N / "translations"


def tag_to_filename(tag: str) -> str:
    return f"app_{tag.replace('-', '_')}.arb"


def main() -> None:
    with TEMPLATE.open(encoding="utf-8") as f:
        template = json.load(f)

    for tag in LOCALE_TAGS:
        if tag == "en":
            continue
        out_path = L10N / tag_to_filename(tag)
        data = {k: v for k, v in template.items() if not k.startswith("@") or k == "@@locale"}
        # Keep @metadata entries for placeholders
        for k, v in template.items():
            if k.startswith("@") and k != "@locale":
                data[k] = v
        data["@@locale"] = tag

        override_path = TRANSLATIONS_DIR / f"{tag}.json"
        incall_path = TRANSLATIONS_DIR / "incall_by_locale.json"
        if incall_path.exists():
            with incall_path.open(encoding="utf-8") as f:
                incall_bundle = json.load(f)
            for key, val in incall_bundle.get(tag, {}).items():
                if not key.startswith("@"):
                    data[key] = val
        settings_sections_path = TRANSLATIONS_DIR / "settings_sections_by_locale.json"
        if settings_sections_path.exists():
            with settings_sections_path.open(encoding="utf-8") as f:
                settings_bundle = json.load(f)
            for key, val in settings_bundle.get(tag, {}).items():
                if not key.startswith("@"):
                    data[key] = val
        if override_path.exists():
            with override_path.open(encoding="utf-8") as f:
                overrides = json.load(f)
            for key, val in overrides.items():
                if key.startswith("@"):
                    continue
                data[key] = val

        with out_path.open("w", encoding="utf-8") as f:
            json.dump(data, f, ensure_ascii=False, indent=2)
            f.write("\n")
        print(f"Wrote {out_path.name}")


if __name__ == "__main__":
    main()
