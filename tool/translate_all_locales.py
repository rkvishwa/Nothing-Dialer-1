#!/usr/bin/env python3
"""Machine-translate app_en.arb into lib/l10n/translations/<locale>.json for all tags.

Existing JSON keys are kept (human/priority overrides win). Placeholders like
{count} and HTML tags are protected during translation.

Usage:
  python3 tool/translate_all_locales.py
  python3 tool/translate_all_locales.py --only ta,ko,ml
  python3 tool/translate_all_locales.py --force   # retranslate even if file looks complete
"""

from __future__ import annotations

import argparse
import json
import re
import sys
import time
from pathlib import Path

from deep_translator import GoogleTranslator

ROOT = Path(__file__).resolve().parents[1]
L10N = ROOT / "lib" / "l10n"
TEMPLATE = L10N / "app_en.arb"
TRANS = L10N / "translations"

# Flutter / arb tag → Google Translate target code.
GT_TARGET: dict[str, str] = {
    "af": "af",
    "am": "am",
    "ar": "ar",
    "as": "as",
    "az": "az",
    "be": "be",
    "bg": "bg",
    "bn": "bn",
    "bs": "bs",
    "ca": "ca",
    "cs": "cs",
    "cy": "cy",
    "da": "da",
    "de": "de",
    "el": "el",
    "es": "es",
    "es_419": "es",
    "es_MX": "es",
    "et": "et",
    "eu": "eu",
    "fa": "fa",
    "fi": "fi",
    "fil": "tl",
    "fr": "fr",
    "fr_CA": "fr",
    "gl": "gl",
    "gu": "gu",
    "he": "iw",
    "hi": "hi",
    "hr": "hr",
    "hu": "hu",
    "hy": "hy",
    "id": "id",
    "is": "is",
    "it": "it",
    "ja": "ja",
    "ka": "ka",
    "kk": "kk",
    "km": "km",
    "kn": "kn",
    "ko": "ko",
    "ky": "ky",
    "lo": "lo",
    "lt": "lt",
    "lv": "lv",
    "mk": "mk",
    "ml": "ml",
    "mn": "mn",
    "mr": "mr",
    "ms": "ms",
    "my": "my",
    "nb": "no",
    "ne": "ne",
    "nl": "nl",
    "or": "or",
    "pa": "pa",
    "pl": "pl",
    "pt": "pt",
    "pt_BR": "pt",
    "pt_PT": "pt",
    "ro": "ro",
    "ru": "ru",
    "si": "si",
    "sk": "sk",
    "sl": "sl",
    "sq": "sq",
    "sr": "sr",
    "sv": "sv",
    "sw": "sw",
    "ta": "ta",
    "te": "te",
    "th": "th",
    "tl": "tl",
    "tr": "tr",
    "uk": "uk",
    "ur": "ur",
    "uz": "uz",
    "vi": "vi",
    "zh": "zh-CN",
    "zh_CN": "zh-CN",
    "zh_HK": "zh-TW",
    "zh_TW": "zh-TW",
    "zu": "zu",
}

# English variants: keep English (still write a file so regen is consistent).
EN_COPY = {"en_AU", "en_CA", "en_GB", "en_IN"}

PLACEHOLDER_RE = re.compile(r"(\{[^}]+\}|<[^>]+>)")
BATCH = 40


def load_en_strings() -> dict[str, str]:
    data = json.loads(TEMPLATE.read_text(encoding="utf-8"))
    return {k: v for k, v in data.items() if isinstance(v, str) and not k.startswith("@")}


def protect(text: str) -> tuple[str, list[str]]:
    parts: list[str] = []

    def repl(m: re.Match[str]) -> str:
        parts.append(m.group(0))
        return f"⟦{len(parts) - 1}⟧"

    return PLACEHOLDER_RE.sub(repl, text), parts


def restore(text: str, parts: list[str]) -> str:
    out = text
    for i, p in enumerate(parts):
        for token in (f"⟦{i}⟧", f"[[{i}]]", f"[{i}]"):
            out = out.replace(token, p)
    return out


def _translate_one(translator: GoogleTranslator, text: str, retries: int = 4) -> str:
    """Translate a single string with backoff; keep English on hard failure."""
    if not text.strip():
        return text
    # Very short tokens often fail — pad for the API then strip.
    padded = text if len(text) > 2 else f"{text} ·"
    last_err: Exception | None = None
    for attempt in range(retries):
        try:
            out = translator.translate(padded)
            if isinstance(out, str) and out.strip():
                if padded != text and out.endswith(" ·"):
                    out = out[:-2].rstrip()
                elif padded != text and out.endswith("·"):
                    out = out[:-1].rstrip()
                return out
        except Exception as e:  # noqa: BLE001
            last_err = e
            time.sleep(0.6 * (attempt + 1))
            try:
                translator = GoogleTranslator(
                    source="en", target=translator.target
                )
            except Exception:  # noqa: BLE001
                pass
    if last_err:
        print(f"  keep EN ({last_err}): {text[:48]!r}", flush=True)
    return text


def translate_values(values: list[str], target: str) -> list[str]:
    translator = GoogleTranslator(source="en", target=target)
    protected: list[tuple[str, list[str]]] = [protect(v) for v in values]
    sources = [p[0] for p in protected]
    results: list[str] = []
    # Prefer one-by-one: batch API is flaky for short UI labels.
    for idx, s in enumerate(sources):
        results.append(_translate_one(translator, s))
        if idx % 25 == 24:
            print(f"  …{idx + 1}/{len(sources)}", flush=True)
            time.sleep(0.15)
        else:
            time.sleep(0.03)
    restored = []
    for (src_prot, parts), tr in zip(protected, results):
        if not isinstance(tr, str) or not tr.strip():
            restored.append(restore(src_prot, parts))
        else:
            restored.append(restore(tr, parts))
    return restored


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--only", default="", help="Comma-separated locale tags")
    parser.add_argument("--force", action="store_true")
    args = parser.parse_args()

    en = load_en_strings()
    keys = list(en.keys())
    only = {t.strip() for t in args.only.split(",") if t.strip()} if args.only else None

    tags = sorted(set(GT_TARGET) | EN_COPY)
    if only:
        tags = [t for t in tags if t in only]

    TRANS.mkdir(parents=True, exist_ok=True)

    for tag in tags:
        out_path = TRANS / f"{tag}.json"
        existing: dict[str, str] = {}
        if out_path.exists():
            existing = {
                k: v
                for k, v in json.loads(out_path.read_text(encoding="utf-8")).items()
                if isinstance(v, str) and not k.startswith("@")
            }

        if tag in EN_COPY:
            merged = dict(en)
            merged.update(existing)
            out_path.write_text(
                json.dumps(merged, ensure_ascii=False, indent=2) + "\n",
                encoding="utf-8",
            )
            print(f"{tag}: wrote English copy ({len(merged)} keys)")
            continue

        target = GT_TARGET[tag]
        missing_keys = [k for k in keys if args.force or k not in existing]
        # Skip if already complete and looks translated (not identical to en for settings).
        if not missing_keys and not args.force:
            sample = existing.get("settings", "")
            if sample and sample != en.get("settings"):
                print(f"{tag}: skip complete ({len(existing)} keys)")
                continue
            if len(existing) >= len(keys) * 0.95:
                # File full but still English — retranslate
                missing_keys = list(keys)

        print(f"{tag}: translating {len(missing_keys)} keys → {target}…", flush=True)
        values = [en[k] for k in missing_keys]
        try:
            translated = translate_values(values, target)
        except Exception as e:  # noqa: BLE001
            print(f"{tag}: FAILED {e}", file=sys.stderr)
            continue

        merged = dict(existing)
        for k, t in zip(missing_keys, translated):
            merged[k] = t
        # Keep any extra keys already present.
        out_path.write_text(
            json.dumps({k: merged[k] for k in keys if k in merged}, ensure_ascii=False, indent=2)
            + "\n",
            encoding="utf-8",
        )
        print(f"{tag}: wrote {out_path.name} ({len(merged)} keys)")

    print("Done.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
