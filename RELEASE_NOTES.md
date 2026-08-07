# Nothing Dialer: Release Notes

> **Device support:** Nothing Phone (1) today. Additional Nothing phones and a public Play Store release are planned.

---

## v1.0.2 (build 10)

### Highlights

- **Three incoming answer styles** in Settings: horizontal **slide to answer**, **button tap**, and **Huawei style** (drag the handle to green/red targets).
- **Richer in-call UI:** lock-screen visibility, proximity-friendly screen behavior, in-call DTMF keypad, audio route picker (earpiece, speaker, Bluetooth), **Add call**, **Change SIM**, and **Message** quick responses while ringing.
- **Call notifications:** Android `CallStyle` for incoming and ongoing calls; missed-call notifications with **call back** and **SMS** actions and deduplicated posting.
- **Voice search** on Recents and Contacts via the Android speech recognizer (native bridge).
- **Localization:** **80+ app languages** via ARB templates and translation JSON; Settings **About** and **Review**, recents date labels, Flutter UI, and native in-call strings (`DialerLocale`, `values-*/strings.xml`) follow the selected locale.
- **Typography:** Bundled **Ndot** and **Roboto Serif**, downloadable **Noto** (`google_fonts`), or system default; apply app-wide, titles only, or per screen/text role. Native in-call labels follow the same config (`DialerTypefaces`).
- **Camera torch blink** for incoming, outgoing, and ongoing calls (separate from Glyph), with optional fixed-interval timing.
- **Personalization:** custom light/dark background and accent colors, separate **call background** for the in-call screen, **SIM icon colors** (outline/fill badges on Recents and in-call), multiple **home screen icon** variants with runtime switching, per-contact **ringtone** (default, **silent**, or custom), and **Settings search**.
- **Reset customization:** Restore appearance, language, answer method, torch, Glyph, and frequently-contacted defaults in one step (keeps default SIM, blocked numbers, and favourites).
- **Docs:** expanded [README.md](README.md) and new [CONTRIBUTING.md](CONTRIBUTING.md) for local run, ADB, emulator, and contribution workflow.

---

### In-call and calling

- Native **InCallActivity** with caller avatar, name, number, SIM label, status, and duration.
- **Answer method** (Settings → Answer method):
  - **Slide to answer:** drag the center handle left to decline or right to answer on a horizontal track.
  - **Button tap:** dedicated Answer and Decline buttons.
  - **Huawei style:** drag the circle toward the green answer zone or red decline zone.
- **While ringing:** preset **Message** replies that decline the call (with SMS-style reject where the OS supports it).
- **During a call:** mute, expandable DTMF keypad, speaker/audio route, **More** menu (add call, change SIM with styled native SIM sheet).
- **Lock screen:** show when locked, turn screen on, dismiss keyguard when permitted.
- **Proximity:** wake lock during active calls so the display can turn off at your ear.
- **Ongoing call banner** in the Flutter shell (tap to return); call state sync and Recents refresh when a call ends.
- **Foreground InCallService** with phone-call foreground service type when Nothing Dialer is the default dialer.

### Notifications

- **Incoming:** high-priority channel with answer/decline actions alongside the full-screen UI.
- **Ongoing:** hang up, mute, and cycle audio route from the notification.
- **Missed calls:** Telecom and in-service paths; **MissedCallDedupe** avoids duplicate alerts.
- Missed notification opens **Recents**; actions to call back or open SMS; clearing when viewing Recents via the control channel.

### Recents, contacts, favourites

- Grouped call history with filters: **All**, **Missed** (missed + rejected), **Contacts**, **Non-contacts**.
- **Frequently contacted** block (count 0 to 20, configurable time window).
- **Favourites strip** toggle in the Recents app bar; star/unstar from context menus and contact detail.
- **Voice search** button in Recents and Contacts search fields.
- Contact detail: share vCard, block/unblock, per-contact default SIM, **ringtone** (default, silent, custom via `RingtoneHelper`).
- **SIM badges** on call history rows when SIM icon colors are configured.

### Settings and appearance

- **Search:** filter settings from the app bar.
- **Language:** follow device or pick from **80+** locales (native language names via `flutter_localized_locales`).
- **About** and **Review:** localized copy, GitHub repository link, and in-app Google Play rating (`in_app_review` on Android).
- **Font** sheet: system / Ndot / Roboto Serif / Noto (download) and apply modes (entire app, titles only, customize per screen and text role).
- **Theme:** system, light, or dark; per-appearance **background** and **accent**; separate **call background** color for native in-call UI.
- **SIM icon colors:** per-SIM badge style (outline/fill) and light/dark colors; synced to native in-call SIM rows.
- **App icon:** classic, light, red, grey, cream, retro phone variants (`LauncherIconManager` + Android activity aliases).
- **Reset customization:** bulk restore for appearance and related toggles (see in-app info dialog).
- **Default SIM:** ask every time, fixed slot, or system default.
- **Sounds & vibration:** deep link to system dialer sound settings.
- Glyph outgoing and ongoing animations (unchanged feature set from 1.0.0, still independently configurable).
- **Torch blink** sections for incoming, outgoing, and ongoing calls.

### Platform

- Version **1.0.2+10** in `pubspec.yaml`; Dart **^3.11.0**.
- MethodChannels: `nothing_dialer/control`, `nothing_dialer/glyph`, `nothing_dialer/torch`, voice search on control channel.
- Bundled fonts under `assets/fonts/` (Ndot, Roboto Serif); `flutter: generate: true` for l10n.
- [`nothing_glyph_interface`](https://github.com/rkvishwa/flutter-nothing-glyph-interface) (Git, `fix-display-progress-and-toggle` branch).
- New dependencies: `google_fonts`, `in_app_review`, `flutter_localized_locales`.
- Release signing, ProGuard rules for Glyph SDK, adaptive launcher icons, App Actions shortcut metadata.

### Fixes and polish

- Answer method picker uses localized strings for all three modes.
- Slide-to-answer copy aligned with horizontal swipe behavior (not vertical).
- Native in-call theme colors read from Flutter theme preferences.
- Font changes propagate to the active in-call screen when possible.
- Contact ringtone assignment avoids overwriting the phone-wide default ringtone (`RingtoneHelper`).
- Contributor l10n tooling: `scripts/regenerate_l10n.sh`, `tool/check_user_visible_strings.sh`, and [CONTRIBUTING.md](CONTRIBUTING.md#localization).

---

### Short "What's New" for v1.0.2 (store listing, ≤ 500 chars)

> v1.0.2 adds Huawei-style and slide/button answer options, richer in-call controls (keypad, Bluetooth audio, add call, change SIM), call and missed-call notifications, voice search, 80+ languages, Ndot/Serif/Noto fonts on Flutter and in-call UI, torch blink during calls, custom theme and call-background colors, SIM badge styling, searchable Settings, reset customization, app icon themes, and per-contact ringtones (including silent). Built for Nothing Phone (1) with Glyph animations and dual-SIM calling.

---

## v1.0.0 (build 5): Initial release

The first public release of **Nothing Dialer**, a purpose-built dialer for the Nothing Phone (1) that blends a clean UI with advanced call controls and Glyph animations.

### Highlights (1.0.0)

- Full replacement dialer as the **system default phone app**.
- **Glyph** animations for outgoing and ongoing calls (five styles, deep customization).
- Material 3 **light / dark / system** themes.
- **Frequently contacted**, **Recents** filters, **Contacts**, **Favourites**, **Blocked numbers**.
- Advanced **floating dialpad** (T9 search, long-press shortcuts, clipboard paste, haptics).
- **Dual-SIM** bottom-sheet picker.
- Google Phone-inspired **in-call UI** with slide or button answer and an **ongoing-call banner**.

### Calling (1.0.0)

- Default dialer onboarding when the role is not held.
- Floating dialpad from the center FAB: sub-label keys, long-press `0` (`+`) and `1` (voicemail), long-press backspace to clear, paste, formatting, haptics, pulsing call button, T9 contact search, redial when empty, message shortcut.
- Dual-SIM call placement via MethodChannel.
- Ongoing call banner with tap to return.

### In-call (1.0.0)

- Incoming screen with name, number, avatar.
- Answer method: **slide** or **button tap** (Huawei style added in 1.0.2).
- Foreground service and call notification for background reliability.

### Glyph, Recents, contacts, settings (1.0.0)

- Glyph styles: None, Breath & Progress, Accumulate, Single, Breath; independent outgoing vs ongoing configs; Glyph map dialog.
- Recents: grouped history, filters, frequently contacted, favourites strip, search, per-number history, block actions.
- Contacts: synced list, search, detail with call/message.
- Settings: theme, answer method (two options at launch), favourites and blocked lists, sound settings link, frequent-contact tuning, Glyph sections.

### Platform (1.0.0)

- Flutter + Kotlin; `nothing_dialer/control` and `nothing_dialer/glyph` channels.
- `call_log`, `flutter_contacts`, `permission_handler`, `intl`, `url_launcher`, `share_plus`, `path_provider`.
- ProGuard for Glyph SDK, manifest Glyph meta-tag, release packaging fixes.

---

## Coming soon

- Support for additional Nothing phones.
- Official Google Play Store release.
