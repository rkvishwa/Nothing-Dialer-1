#!/usr/bin/env bash
# Regenerate Flutter ARBs, gen-l10n, and Android in-call string resources.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

echo "Merging translation bundles into translations/*.json (optional sync)…"
python3 tool/merge_settings_sections_translations.py || true
python3 tool/merge_incall_translations.py || true
# Optional: fill missing locale JSON via Google Translate (slow; run separately):
#   python3 tool/translate_worker_pool.py --jobs 6

echo "Generating app_<locale>.arb from template + overrides…"
python3 tool/generate_locale_arbs.py

echo "Running flutter gen-l10n…"
flutter gen-l10n

echo "Generating Android values-*/strings.xml for in-call + native…"
python3 tool/generate_android_incall_strings.py

echo "Checking for hardcoded user-visible strings in lib/…"
bash tool/check_user_visible_strings.sh

echo "Done. Commit updated lib/l10n/*.arb and android res if applicable."
