# Contributing to Nothing Dialer

Thank you for helping improve Nothing Dialer. This guide explains how to set up your machine, run the app in development mode, test changes, and submit contributions.

---

## Before you start

- Read the [README.md](README.md) for product scope and feature list.
- **Supported device (today):** **Nothing Phone (1)**. Maintainers develop and test calls, Glyph, and torch primarily on this model.
- **Other Nothing phones:** Phone (2), (2a), (3), and future Nothing devices are not officially supported yet. If you have one, you can still contribute: install the debug build, note what works or breaks, and send issues or pull requests (especially for Glyph SDK behavior, `isPhone1`-style detection, and manifest/SDK requirements). Community-tested patches for additional models are welcome.
- **Issues and pull requests:** Use the [GitHub repository](https://github.com/rkvishwa/Nothing-Dialer-1).
- Be respectful and keep changes focused. One logical change per pull request is easier to review.

---

## Help bring support to your Nothing phone

Nothing Dialer is intentionally focused on **Nothing Phone (1)** until more hardware is validated. If you use another Nothing model:

1. Follow the setup steps below and run `flutter run` on your device.
2. File a GitHub issue with your **exact model**, Android version, and what failed (dialer role, in-call UI, Glyph, torch, etc.).
3. Optional: open a PR with a narrow fix (device check, Glyph channel mapping, README notes for your model).

Please do not claim full support for a new model in docs until call and Glyph behavior have been tested on real hardware.

---

## Development environment

### Required tools

| Tool | Notes |
|------|--------|
| Flutter SDK | Dart **^3.11.0** (`flutter --version`) |
| Android SDK | API levels supported by your Flutter SDK |
| JDK **17** | Matches Android Gradle config |
| Git | Clone and branch workflow |
| ADB | USB debugging and logcat (platform tools) |

Optional but useful:

- Android Studio or VS Code with Flutter/Dart extensions
- A **Nothing Phone (1)** with USB debugging (reference device for maintainers)
- Another **Nothing phone** if you want to contribute device-specific support
- An Android emulator for UI-only work

### Clone and install

```bash
git clone https://github.com/rkvishwa/Nothing-Dialer-1.git
cd Nothing-Dialer-1
flutter pub get
flutter doctor -v
```

Accept Android licenses if prompted:

```bash
flutter doctor --android-licenses
```

---

## Running in development mode

### Option A: Physical device over USB (recommended)

1. On the phone: **Settings → About phone →** tap Build number until Developer options appear.
2. Enable **USB debugging** in Developer options.
3. Connect the cable. On the phone, allow debugging for your computer.
4. Confirm ADB sees the device:

```bash
adb devices
```

You should see a line like `XXXXXXXX    device`. If it says `unauthorized`, check the phone for the RSA prompt.

5. List Flutter devices and run:

```bash
flutter devices
flutter run
```

Pick the phone when multiple devices are listed:

```bash
flutter run -d <device_id>
```

6. **Default dialer (required for full call flow):** Open the app and tap through the in-app default dialer request, or run:

```bash
adb shell cmd role add-role-holder android com.rkkvishva.nothing_dialer android.app.role.DIALER
```

7. Grant runtime permissions when the app asks (phone, call log, contacts, notifications, etc.).

**Development tips:**

- Hot reload: `r` in the terminal running `flutter run`.
- Hot restart: `R`.
- Verbose logging: `flutter run -v`.
- App logs: `flutter logs` or filtered logcat:

```bash
adb logcat | grep -E 'nothing_dialer|InCallActivity|MainActivity'
```

### Option B: Android emulator

1. Install an AVD (Android Virtual Device) in Android Studio.
   - Prefer a recent API level with **Google Play** or **Google APIs** system image.
2. Launch it:

```bash
flutter emulators
flutter emulators --launch <emulator_id>
```

3. Run the app:

```bash
flutter run
```

4. Install the debug APK manually if needed:

```bash
flutter build apk --debug
adb install -r build/app/outputs/flutter-apk/app-debug.apk
```

**Emulator limitations:**

- Cellular voice calls may not work like on real hardware.
- Glyph lights and realistic torch behavior require a Nothing Phone (1).
- You can still work on UI, settings, contacts (with granted permissions), and much of Recents logic.

### Option C: Install a debug build without `flutter run`

```bash
flutter build apk --debug
adb -s <device_id> install -r build/app/outputs/flutter-apk/app-debug.apk
adb shell monkey -p com.rkkvishva.nothing_dialer -c android.intent.category.LAUNCHER 1
```

Replace `<device_id>` with the serial from `adb devices`.

---

## Testing your changes

### Automated checks

Run these before opening a pull request:

```bash
flutter analyze
flutter test
dart format lib test --set-exit-if-changed
```

Fix analyzer warnings in files you touch. Avoid drive-by refactors in unrelated modules.

### Manual testing matrix

Use a physical device when your change touches calling, notifications, or permissions.

| Area | What to verify |
|------|----------------|
| Default dialer | Role request, incoming/outgoing call routing |
| Recents | Filters, grouping, delete, block, refresh after call |
| Contacts | Search, detail screen, voice search button |
| Dialpad | Formatting, long-press keys, T9 matches, SIM picker |
| Settings | Theme, fonts, language, Glyph/torch, default SIM, app icon |
| In-call | Answer method, controls, add call / SIM change if applicable |
| Glyph / torch | Nothing Phone (1) only |

### Resetting dialer role during QA

```bash
adb shell cmd role remove-role-holder android com.rkkvishva.nothing_dialer android.app.role.DIALER
```

Then confirm another dialer is available or re-grant the role through the app.

---

## Project conventions

### Dart / Flutter

- Match existing patterns in `lib/screens/` and `lib/services/`.
- Use generated localizations: `AppLocalizations.of(context)` and keys in `lib/l10n/app_en.arb`.
- Prefer `context.dialerTextStyle(...)` for text that should respect font settings (see `lib/extensions/dialer_text_style.dart`).
- Theme colors: `lib/services/theme_colors.dart` and Settings-driven notifiers in `lib/main.dart`.

### Android / Kotlin

- Native entry points live under `android/app/src/main/kotlin/com/rkkvishva/nothing_dialer/`.
- MethodChannel names must stay in sync with Dart (`nothing_dialer/control`, `nothing_dialer/glyph`, `nothing_dialer/torch`).
- Telecom and in-call behavior: `GlyphInCallService.kt`, `InCallActivity.kt`, `MainActivity.kt`.

### Localization

1. Edit **`lib/l10n/app_en.arb`** (template).
2. Run:

```bash
flutter gen-l10n
```

3. For bulk locale file generation from template plus JSON overrides:

```bash
python3 tool/generate_locale_arbs.py
flutter gen-l10n
```

Translated overrides can live in `lib/l10n/translations/<locale>.json`.

**In-call UI (Android)** uses the same ARB keys (`inCallMute`, `inCallAnswer`, … in `app_en.arb`). Bulk translations for nine priority locales are in `lib/l10n/translations/incall_by_locale.json` (merged via `tool/merge_incall_translations.py`, applied when running `generate_locale_arbs.py`). **Settings About / Review** and similar blocks use `settings_sections_by_locale.json` (merge via `tool/merge_settings_sections_translations.py`). Native toasts and system prompts in `MainActivity` use `native_*` entries in `android/.../values/strings.xml`, mapped to the same ARB keys (`selectContactRingtone`, `phonePermissionRequired`, …).

Shortcut: **`bash scripts/regenerate_l10n.sh`** runs merge scripts, `generate_locale_arbs.py`, `flutter gen-l10n`, `generate_android_incall_strings.py`, and `check_user_visible_strings.sh`.

After changing English in-call copy, update `android/app/src/main/res/values/strings.xml` and the matching keys in `app_en.arb`, then:

```bash
python3 tool/merge_incall_translations.py   # optional if you only edited incall_by_locale.json
python3 tool/generate_locale_arbs.py
flutter gen-l10n
python3 tool/generate_android_incall_strings.py
```

Android resource folders use `values-zh-rCN` for two-letter regions; locales like **`es_419`** use BCP 47 form **`values-b+es+419`** (not `values-es-r419`, which breaks Gradle).

#### Adding new UI (checklist for future features)

When you add or change user-visible copy (Settings sections, dialogs, snackbars, etc.):

1. **Never hardcode** display strings in Dart or Kotlin. Add a key to **`lib/l10n/app_en.arb`**, use `AppLocalizations.of(context)` (or `context.l10n` where the extension exists).
2. Run **`flutter gen-l10n`** (or the full pipeline below) so `app_localizations*.dart` updates.
3. **Priority locales** (hi, de, es, fr, ja, zh_CN, ar, pt_BR, ru): add translations to the right bundle or JSON:
   - General Flutter UI → `lib/l10n/translations/<locale>.json`, or bulk blocks in **`settings_sections_by_locale.json`** (About, Review, …) / **`incall_by_locale.json`** (in-call + native toasts).
   - Run **`python3 tool/merge_settings_sections_translations.py`** and/or **`merge_incall_translations.py`** if you edited a bundle and want those keys copied into `translations/*.json` for review.
4. **Android-only strings** (in-call screen, ringtone picker title, toasts in `MainActivity`): mirror English in **`android/.../values/strings.xml`**, add the same key to **`app_en.arb`**, extend **`tool/generate_android_incall_strings.py`** mappings if the resource name is new, then run **`generate_android_incall_strings.py`**.
5. Before opening a PR, run **`bash tool/check_user_visible_strings.sh`** to catch obvious `Text('…')` literals in `lib/` (excluding generated l10n).

Full regenerate after ARB or translation JSON changes:

```bash
python3 tool/merge_settings_sections_translations.py  # optional
python3 tool/merge_incall_translations.py             # optional
python3 tool/generate_locale_arbs.py
flutter gen-l10n
python3 tool/generate_android_incall_strings.py
```

Locales without JSON overrides still **fall back to English** in generated `app_<locale>.arb` files until someone adds translations.

#### Bulk machine translations

To (re)generate `lib/l10n/translations/<locale>.json` for every supported locale via Google Translate (keeps existing keys; protects `{placeholders}`):

```bash
pip3 install deep-translator
python3 tool/translate_all_locales.py
# or parallel slices: python3 tool/translate_all_locales.py --only ko,ml,te
bash scripts/regenerate_l10n.sh
```

#### Multilingual fonts (Noto)

Ndot / Roboto Serif do not cover every script. Settings → Font includes **Noto (all languages)** with a **Download multilingual fonts** button (`google_fonts`). After download, Noto is used for UI text and as a fallback when Ndot/Serif miss glyphs. Native in-call UI uses the system typeface when Noto is selected.

### Launcher icons

After changing assets in `assets/launcher/`:

```bash
bash scripts/regenerate_icons.sh
```

---

## Release builds (optional for contributors)

Release signing uses a local **`android/key.properties`** file (never commit secrets):

```properties
storePassword=...
keyPassword=...
keyAlias=...
storeFile=/absolute/path/to/keystore.jks
```

Then:

```bash
flutter build apk --release
flutter build appbundle --release
```

Most contributors only need debug builds.

### Nothing Glyph API key

The committed manifest uses the placeholder **`test`** (Nothing’s debug value). Clones and CI builds work without a real key; Glyph on **Nothing Phone (1)** production builds may need the key Nothing issued for your app.

For local development on hardware, add to **`android/local.properties`** (already gitignored):

```properties
nothing.glyph.key=YOUR_KEY_FROM_NOTHING
```

See **`android/local.properties.example`**. You can instead set **`nothingGlyphKey=...`** in **`android/key.properties`** if you already use that file for release signing.

Rebuild after changing either file (`flutter run` / clean build if the manifest looks stale).

---

## Pull request workflow

1. Fork the repository (or create a branch if you are a maintainer).
2. Create a branch from the default branch, for example `fix/recents-filter` or `feat/locale-pl`.
3. Make focused commits with clear messages.
4. Run `flutter analyze`, `flutter test`, and **`bash tool/check_user_visible_strings.sh`** if you changed UI copy. After ARB or translation JSON edits, run **`bash scripts/regenerate_l10n.sh`** and commit generated `lib/l10n/` and Android `values-*/strings.xml` when applicable.
5. Describe **what** changed and **how you tested** (device vs emulator).
6. Open a pull request against the main repository.
7. Respond to review feedback and keep the branch updated with the base branch if requested.

### Good pull request description

- Problem or feature request summary
- Screenshots or screen recordings for UI changes
- Test device: e.g. "Nothing Phone (1), Android 14" or "Pixel 6 emulator API 34"
- Note if Glyph/torch were not tested and why

---

## Reporting bugs

Include:

- App version from Settings or `pubspec.yaml`
- Device model and Android version
- Steps to reproduce
- Expected vs actual behavior
- Logs if relevant (`flutter logs` or logcat snippet)

For call or Glyph issues, logs from a physical Nothing Phone (1) are especially helpful.

---

## Questions

- **GitHub Issues** for bugs and feature discussion
- **[Google Play listing](https://play.google.com/store/apps/details?id=com.rkkvishva.nothing_dialer)** for installs and reviews
- **support@knurdz.org** for support

Thank you for contributing.
