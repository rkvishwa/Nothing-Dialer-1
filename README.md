# Nothing Dialer

<p align="left">
  <a href="https://play.google.com/store/apps/details?id=com.rkkvishva.nothing_dialer">
    <img src="https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png" alt="Get it on Google Play" height="60" />
  </a>
</p>

**Google Play:** [Nothing Dialer 1](https://play.google.com/store/apps/details?id=com.rkkvishva.nothing_dialer)

A full replacement dialer built for **Nothing Phone (1)**. It combines a clean, Material 3 UI with call history, contacts, dual-SIM calling, and Nothing-specific **Glyph** and torch effects. You can set it as the system default phone app for end-to-end call handling and a native in-call screen.

**Device support today:** Nothing Phone (1) is the only model we actively develop and test against. If you use another Nothing phone (Phone (2), Phone (2a), Phone (3), or later), the app may install and partially work, but Glyph layout, hardware detection, and call behavior are not guaranteed. **We welcome contributions** from owners of other Nothing devices to add and maintain support for those models. See [CONTRIBUTING.md](CONTRIBUTING.md).

**Current version:** 1.5.0+11 (see `pubspec.yaml`). **Release notes / changelog:** [RELEASE_NOTES.md](RELEASE_NOTES.md)

**Source:** [github.com/rkvishwa/Nothing-Dialer-1](https://github.com/rkvishwa/Nothing-Dialer-1)

---

## Screenshots

<p align="center">
  <img src="assets/screenshots/settings.jpg" width="30%" alt="Settings" />
  <img src="assets/screenshots/style.jpg" width="30%" alt="Theme and style" />
  <img src="assets/screenshots/speed.jpg" width="30%" alt="Glyph speed settings" />
</p>

---

## Features

### Core dialer and navigation

- **Default dialer role:** Register as the system phone app so the OS routes calls, in-call UI, and telecom integration through Nothing Dialer.
- **Main shell:** Bottom navigation between **Recents** and **Contacts**, with a center FAB that opens the advanced dialpad. **Settings** is a third tab.
- **Ongoing call banner:** While a call is active, a green banner on Recents/Contacts shows the caller and taps through to the native in-call screen.
- **Recents shortcuts:** Toggle showing the favourites strip from the Recents app bar. System back clears search first, then moves from Contacts to Recents before exiting.
- **Onboarding:** Guided screen to request the default dialer role when it is not granted yet.
- **App Actions / shortcuts:** Android metadata supports call-related intents for the package `com.rkkvishva.nothing_dialer`.

### Recents and call history

- **Grouped history:** Calls grouped by number and type, similar to Google Phone.
- **Filters:** All, missed only (includes rejected calls), contacts only, or non-contacts only (from the Recents app bar).
- **Frequently contacted:** Optional section at the top of Recents, with configurable count (0 to 20) and time period in Settings.
- **SIM badges:** Optional per-SIM icon color and outline/fill style on history rows (Settings → **SIM icon colors**); follows light/dark theme colors.
- **Per-entry actions:** Long-press menu for copy number, edit before call, add/remove favourites, block/unblock, and delete from call log.
- **Refresh after calls:** Recents updates when a call ends and when returning to the app.
- **Missed-call handling:** Native layer can surface missed-call notifications; opening Recents can clear missed-call notification state.
- **Call history detail:** Drill into a number’s full history from grouped entries.

### Contacts

- **Device address book:** Read and sync contacts via `flutter_contacts`.
- **Search:** Text search across names and numbers.
- **Voice search:** Microphone button on Recents and Contacts uses the Android speech recognizer through a native MethodChannel bridge.
- **Contact detail:** Call, message (where supported), share vCard, favourite star, block/unblock, per-contact default SIM preference, and **per-contact ringtone** (default, **silent**, or custom tone via native `RingtoneHelper` and system picker).

### Favourites

- Star numbers from contact detail or Recents context menu.
- **Favourites screen** under Settings: reorder, remove, and manage starred numbers.
- Optional **horizontal favourites strip** on Recents when search is empty (toggle in favourites settings).

### Floating dialpad

- Bottom-sheet dialpad with animated open/close and drag.
- T9-style contact matching while typing (names and numbers).
- Sub-label letters on keys (ABC, DEF, etc.).
- **Long-press 0:** insert `+`. **Long-press 1:** voicemail speed dial.
- **Long-press backspace:** clear the whole number.
- Paste from clipboard (digits and dial symbols preserved).
- Live phone-number formatting.
- Haptic feedback and pulsing call button.

### In-call experience

- **Native in-call UI** (`InCallActivity`): Google Phone-inspired layout with caller avatar, name, number, SIM label, status, and call duration.
- **Lock screen and wake:** Incoming and active calls can show over the lock screen, turn the display on, and dismiss the keyguard when allowed by the OS.
- **Proximity behavior:** Proximity-based wake lock during active calls so the screen can turn off at your ear (without an always-on screen flag fighting the sensor).

#### Incoming call answer methods (Settings → Answer method)

Three styles are available under **Settings → Answer method** on the native incoming overlay.

| Mode | Behavior |
|------|----------|
| **Slide to answer** | Horizontal bar: drag the center handle left to decline or right to answer (Google Phone-style track). |
| **Button tap** | Separate Answer and Decline buttons. |
| **Huawei style** | Drag the center circle toward the green answer target or the red decline target on a labeled track ("drag right to answer, drag left to decline"). |

#### While the phone is ringing

- **Message:** Opens preset quick responses (for example "I'll call you back") and declines the call with an optional SMS-style reject reason on supported Android versions.
- **Notifications:** High-priority incoming `CallStyle` notification with answer and decline actions (works alongside the full-screen UI).

#### During an active call

- **Controls row:** Mute, in-call DTMF keypad (sub-labels on keys), speaker/audio route, and **More** (add call, change SIM).
- **Audio routes:** Earpiece, speaker, and Bluetooth when available (picker or cycle from the notification).
- **Change SIM:** Native bottom sheet matches the Flutter SIM picker styling; can redial on the selected SIM mid-flow.
- **Add call:** Available from the More menu when the call state allows it.
- **Theme on native UI:** Background, accent, and optional **call background** colors follow your light/dark theme settings (`ThemeColors` from shared preferences).
- **Fonts on native UI:** System, **Ndot**, **Roboto Serif**, or **Noto** choices from **Font** settings apply to in-call labels via `DialerTypefaces` (bundled Ndot/Serif assets; Noto uses system fallback on native).
- **SIM badges on in-call UI:** Per-SIM outline/fill style and colors from **SIM icon colors** match Recents badges (`SimIconColors`).

#### Calls and the Flutter shell

- **Ongoing call awareness:** Call state syncs from native code into the shell banner and refreshes Recents when a call ends.
- **Return to call:** Tap the green banner or use the ongoing-call notification to reopen `InCallActivity`.
- **Foreground service:** `GlyphInCallService` runs as an `InCallService` with a phone-call foreground service type when you are the default dialer.

### Notifications and missed calls

- **Ongoing call notification:** Low-importance channel with hang up, mute, and audio-route actions while connected.
- **Missed calls:** Posted by Telecom integration and in-service fallbacks, with deduplication to avoid double notifications.
- **Missed-call actions:** Call back or open SMS to the number from the notification; tapping the notification opens the app on the **Recents** tab.
- **Clear missed state:** Opening Recents can clear missed-call notifications via the native control channel.

### Calling, SIM, and blocking

- **Outbound calls:** Placed through native Kotlin + Android Telecom APIs via MethodChannel.
- **Dual SIM:** SIM picker bottom sheet; default SIM mode (ask every time, fixed SIM, or follow system) in Settings.
- **Per-contact SIM:** Override global default for individual contacts.
- **Blocked numbers:** In-app list; block/unblock from Recents, contacts, or the dedicated screen. Blocking is coordinated in Dart and native code.

### Nothing Glyph lights

- Integration via [`nothing_glyph_interface`](https://github.com/rkvishwa/flutter-nothing-glyph-interface) (Git dependency).
- Separate animation profiles for **outgoing/dialing** and **ongoing in-call**.
- Styles include None, Breath, Accumulate, Single, and **Breath & Progress** (line fill over configurable duration).
- Per-style tuning: channel selection (Glyph map), intervals, breath speed, and duration/speed for Breath & Progress.
- Glyph connection and Phone (1) detection exposed to the UI (e.g. settings hints when Glyph is unavailable).

### Camera torch blink

- Optional flash blink during **incoming**, **outgoing**, and **ongoing** calls (independent of Glyph).
- Off or fixed-interval modes with configurable blink timing (when the device has a flash).

### Appearance and personalization

- **Settings search:** Filter the Settings list by keyword from the app bar search field.
- **Theme:** System, light, or dark.
- **Colors:** Custom background and accent colors for light and dark appearances, plus a separate **call background** for the native in-call screen; presets and color picker for each.
- **Fonts:** System default, bundled **Ndot**, bundled **Roboto Serif**, or downloadable **Noto**; apply to the entire app, titles and headers only, or customize per screen and text role (Recents, dialpad keys, in-call, and more).
- **App icon:** Multiple launcher variants (classic, light, red, grey, cream, retro phone) switched at runtime via Android **activity aliases** (`LauncherIconManager`); picker in Settings.
- **Language:** **80+ locales** with device-default option; Flutter UI from ARB templates plus bulk translation JSON (regenerate with `bash scripts/regenerate_l10n.sh`). Native in-call strings and MainActivity prompts follow the app language via `DialerLocale` and generated `values-*/strings.xml`.
- **Multilingual fonts:** Settings → Font → **Noto** with a **Download** button (`google_fonts`) for script coverage (Tamil, Hindi, Arabic, CJK, etc.). Ndot and Serif use Noto/system fallbacks where needed.
- **Reset customization:** One action restores language, theme/colors, fonts, app icon, SIM badge styling, answer method, torch, Glyph profiles, and frequently-contacted tuning without touching default SIM, blocked numbers, or favourites.
- **About & review:** Localized open-source blurb with GitHub link; **Rate on Google Play** via `in_app_review` on Android.

### Platform and reliability

- Runtime permissions for calls, call log, contacts, notifications, Bluetooth connect, and related dialer capabilities.
- **ProGuard** rules and release signing hooks in Gradle (local `key.properties` for release builds).
- Adaptive launcher icons and variant-specific icon regeneration script.

---

## Platform support

| Capability | Nothing Phone (1) | Android emulator | Other Android phones |
|------------|-------------------|------------------|----------------------|
| UI, settings, contacts | Yes | Yes (limited permissions) | Partial (no Glyph) |
| Default dialer + real calls | Yes | Possible with role + telephony setup | Varies by OEM |
| Glyph animations | Yes | No | No |
| Torch blink | Yes | Unreliable / no flash | If flash present |

**Other Nothing phones:** Core dialer features may run on other Nothing Android phones, but **Nothing Phone (1) is the supported reference device** for this project. If you have a different Nothing model and want it officially supported, please contribute: test on your hardware, document what works, and open issues or pull requests for Glyph detection, SDK differences, and device-specific fixes. Maintainers merge changes when they are tested and scoped clearly.

**Install:** [Google Play](https://play.google.com/store/apps/details?id=com.rkkvishva.nothing_dialer) · Planned: broader Nothing phone support with community help.

---

## Technical overview

### Stack

- **Flutter** (Dart SDK **^3.11.0**), Material 3 UI.
- **Android:** Kotlin 17, Gradle Kotlin DSL, core library desugaring for call log APIs.
- **Native bridge:** `MethodChannel` endpoints including `nothing_dialer/control`, `nothing_dialer/glyph`, and `nothing_dialer/torch`.
- **Nothing Ketchum SDK:** `compileOnly` JAR under `android/app/libs/` for Glyph control on supported hardware.

### Main dependencies

| Package | Role |
|---------|------|
| `nothing_glyph_interface` | Glyph light control (Git) |
| `flutter_contacts` | Contacts |
| `call_log` | Call history |
| `permission_handler` | Runtime permissions |
| `shared_preferences` | Settings, favourites, fonts, locale |
| `intl` / `flutter_localizations` | Formatting and l10n |
| `flutter_localized_locales` | Native language names in picker |
| `flutter_colorpicker` | Theme colors |
| `share_plus` / `url_launcher` | Share and links |
| `path_provider` | File paths for contact sharing |
| `google_fonts` | On-demand Noto font pack |
| `in_app_review` | In-app Google Play rating prompt |

### Project layout (high level)

- `lib/screens/`: UI (Recents, Contacts, Settings, dialpad, in-app flows).
- `lib/services/`: Theming, blocking, favourites, recents compute, locale, fonts, voice search.
- `lib/l10n/`: ARB templates and generated `app_localizations.dart`.
- `android/app/src/main/kotlin/...`: Telecom, in-call activity, torch, launcher icons, voice search.
- `tool/`: Locale ARB generation, Android in-call strings, and l10n check scripts.
- `scripts/regenerate_l10n.sh`: One-shot l10n + Android string regeneration.
- `scripts/regenerate_icons.sh`: Regenerate launcher icon variants.

### Localization

- Template: `lib/l10n/app_en.arb`.
- Overrides: `lib/l10n/translations/*.json` and bulk bundles (`incall_by_locale.json`, `settings_sections_by_locale.json`).
- Config: `l10n.yaml`.
- **Regenerate everything:** `bash scripts/regenerate_l10n.sh` (or see [CONTRIBUTING.md](CONTRIBUTING.md#localization) for step-by-step and Android in-call strings).
- After editing ARBs only: `flutter gen-l10n` (build/run also triggers generation via `flutter: generate: true`).

---

## Run locally

### Prerequisites

1. **Flutter** stable matching SDK **3.11+** (`flutter --version`).
2. **Android SDK** (Android Studio or command-line tools). Set `ANDROID_HOME` or install SDK via Android Studio.
3. **JDK 17** (matches `android/app/build.gradle.kts`).
4. A **device or emulator** with Google APIs / Play image for best telephony behavior.
5. For full Glyph and torch testing: a **Nothing Phone (1)** with USB debugging enabled.

### First-time setup

From the repository root:

```bash
flutter pub get
flutter doctor -v
```

Fix anything `flutter doctor` reports for Android toolchain and licenses:

```bash
flutter doctor --android-licenses
```

### Debug on a physical device (ADB)

1. Enable **Developer options** and **USB debugging** on the phone.
2. Connect USB and accept the debugging prompt on the device.
3. Verify connection:

```bash
adb devices
flutter devices
```

4. Run the app in debug mode:

```bash
flutter run
```

Or target a specific device ID:

```bash
flutter run -d <device_id>
```

5. Optional: set Nothing Dialer as default dialer from the in-app prompt, or via ADB (Android 10+):

```bash
adb shell cmd role add-role-holder android com.rkkvishva.nothing_dialer android.app.role.DIALER
```

To remove the role for testing:

```bash
adb shell cmd role remove-role-holder android com.rkkvishva.nothing_dialer android.app.role.DIALER
```

6. Useful while developing:

```bash
flutter logs
adb logcat | grep -E 'nothing_dialer|InCallActivity|Glyph'
```

Hot reload: press `r` in the `flutter run` terminal. Hot restart: `R`. Quit: `q`.

### Debug on an Android emulator

1. Create an AVD in Android Studio (recommended: recent API level, x86_64 or arm64 image with Google Play).
2. Start the emulator, then:

```bash
flutter emulators
flutter emulators --launch <emulator_id>
flutter run
```

3. Grant permissions when prompted (contacts, call log, phone, notifications).
4. **Limits on emulators:** Real cellular calls are often unavailable; Glyph and torch will not match device behavior. Use a physical Nothing Phone for call and Glyph QA.

### Release builds

Configure signing in `android/key.properties` (not committed). See [CONTRIBUTING.md](CONTRIBUTING.md) for details.

```bash
flutter build apk --release
flutter build appbundle --release
```

### Launcher icons

Place art in `assets/launcher/` (`app_icon_light.png`, `app_icon_red.png`, `app_icon_grey.png`, `app_icon_cream.png`, etc.), then:

```bash
bash scripts/regenerate_icons.sh
```

Per-variant configs live under `tool/launcher_icon_*.yaml`. Default icon is driven by `pubspec.yaml` and `assets/app_icon.png`.

---

## Test and quality checks

From the project root:

```bash
flutter analyze
flutter test
```

The default widget test smoke-loads `NothingDialerApp` in `test/widget_test.dart`.

Manual QA checklist (physical device recommended):

- Set and unset default dialer role.
- Place and receive a call; try all three **answer methods** (slide, button, Huawei style) from Settings.
- Incoming **Message** quick responses; answer/decline from notification and full-screen UI.
- Exercise mute, speaker/Bluetooth route, in-call keypad, add call, and change SIM from More.
- Ongoing call **green banner** and return-to-call from notification.
- Recents filters (including missed/rejected), delete entry, block/unblock.
- Contacts search and voice search (device must support speech recognition).
- Dual SIM picker if applicable.
- Glyph and torch settings on Nothing Phone (1).
- Change theme, **call background**, fonts (including Noto download), **SIM icon colors**, language, and app icon; confirm persistence after restart.
- Settings **search**; **Reset customization** leaves default SIM and favourites intact.
- Per-contact ringtone: default, silent, and custom; incoming call uses assigned tone when supported.

---

## Contributing

We welcome bug reports, translations, and pull requests. See **[CONTRIBUTING.md](CONTRIBUTING.md)** for workflow, coding notes, and detailed dev/test steps.

**Nothing Phone (1) only for now:** Development and QA focus on Phone (1). If you own another Nothing phone, your help is valuable: run the app on your device, share logs and screenshots, and submit PRs for model detection, Glyph integration, or UI tweaks needed on that hardware. That is one of the best ways to expand official support beyond Phone (1).

---

## License and attribution

Font files under `assets/fonts/` include their own license/readme where applicable. Nothing Dialer is not an official Nothing product; Glyph integration uses community SDK interfaces compatible with Nothing Phone (1).
