#!/usr/bin/env bash
# Regenerates launcher_icon_default (pubspec) plus all launcher_icon_* variants.
# flutter_launcher_icons always writes shared ic_launcher_foreground.png; this script
# renames it per variant so each adaptive icon keeps its own art.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"
RES="$ROOT/android/app/src/main/res"

postprocess_variant() {
  local v="$1"
  for d in mdpi hdpi xhdpi xxhdpi xxxhdpi; do
    local src="$RES/drawable-${d}/ic_launcher_foreground.png"
    if [[ -f "$src" ]]; then
      mv "$src" "$RES/drawable-${d}/ic_launcher_foreground_${v}.png"
    fi
  done
  mkdir -p "$RES/mipmap-anydpi-v26" "$RES/mipmap-anydpi-v33"
  cat > "$RES/mipmap-anydpi-v26/launcher_icon_${v}.xml" <<EOF
<?xml version="1.0" encoding="utf-8"?>
<adaptive-icon xmlns:android="http://schemas.android.com/apk/res/android">
  <background android:drawable="@color/ic_launcher_background_${v}"/>
  <foreground android:drawable="@drawable/ic_launcher_foreground_${v}"/>
</adaptive-icon>
EOF
  cat > "$RES/mipmap-anydpi-v33/launcher_icon_${v}.xml" <<EOF
<?xml version="1.0" encoding="utf-8"?>
<adaptive-icon xmlns:android="http://schemas.android.com/apk/res/android">
  <background android:drawable="@color/ic_launcher_background_${v}"/>
  <foreground android:drawable="@drawable/ic_launcher_foreground_${v}"/>
  <monochrome android:drawable="@drawable/ic_launcher_monochrome"/>
</adaptive-icon>
EOF
}

# Configs live under tool/ so names do not match flutter_launcher_icons-(.*).yaml
# (that pattern triggers "flavors" mode and ignores -f, breaking per-variant runs).
for v in light red grey cream old_phone old_phone_light; do
  dart run flutter_launcher_icons -f "tool/launcher_icon_${v}.yaml"
  postprocess_variant "$v"
done

# Restore shared ic_launcher_foreground + ic_launcher_background for launcher_icon_default.
dart run flutter_launcher_icons

echo "Done. Replace PNGs under assets/launcher/ with your final art, then re-run this script."
