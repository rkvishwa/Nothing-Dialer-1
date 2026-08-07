#!/usr/bin/env bash
# Quick guardrail: user-visible English literals in Dart UI (not exhaustive).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

PATTERN='Text\(\s*'\''[A-Za-z]|Text\(\s*"[A-Za-z]|title:\s*'\''[A-Za-z]|subtitle:\s*'\''[A-Za-z]'
MATCHES="$(rg -n "$PATTERN" lib --glob '*.dart' --glob '!lib/l10n/**' || true)"

if [[ -n "$MATCHES" ]]; then
  echo "Possible hardcoded user-visible strings (use AppLocalizations instead):"
  echo "$MATCHES"
  exit 1
fi

echo "check_user_visible_strings: OK"
