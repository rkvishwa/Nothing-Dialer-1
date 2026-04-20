# Nothing Dialer — Release Notes

## v1.0.0 (build 5) — Initial Release

The first public release of **Nothing Dialer**, a purpose-built dialer for the
Nothing Phone (1) that blends a clean, Nothing-style UI with advanced call
controls and signature Glyph animations for every call.

> Currently supported on **Nothing Phone (1)**. Support for other Nothing
> phones is planned.

---

### Highlights

- Full-featured replacement dialer that can be set as the **system default
  phone app**.
- Unique **Glyph light animations** during outgoing and ongoing calls, with
  five styles and deep customization.
- Modern, Material 3 UI with **light / dark / system** themes and the
  **RobotoMono** typeface for a distinct Nothing feel.
- **Frequently contacted** shortcuts, smart **Recents** filters, rich
  **Contacts** browsing, **Favourites** with reordering, and in-app
  **Blocked numbers** management.
- Advanced **floating dialpad** with T9 contact search, sub-label letters,
  long-press shortcuts, clipboard paste, haptics, and animated entrance.
- **Dual‑SIM** aware — every outgoing call can use a specific SIM via a
  bottom‑sheet picker.
- Google Phone–style **in-call UI** with slide-to-answer or tap-to-answer,
  and a persistent ongoing-call banner throughout the app.

---

### Calling

- Set **Nothing Dialer as the default phone app** with a guided in-app
  prompt when the role isn’t granted.
- **Floating advanced dialpad** opened from the center FAB with:
  - Sub-label letters on each key (ABC, DEF, GHI, …).
  - **Long-press 0** inserts `+` for international numbers.
  - **Long-press 1** triggers voicemail speed‑dial.
  - **Backspace long-press** clears the entire number.
  - **Paste from clipboard** directly into the number field (digits, `+`,
    `*`, `#` preserved; other characters stripped automatically).
  - **Auto phone-number formatting** as you type.
  - Animated draggable bottom-sheet entrance/exit.
  - **Haptic feedback** on every key press (light, medium, and heavy tiers).
  - Pulsing primary call button.
  - **T9 contact search** — matches numbers and names typed on the dialpad,
    including combined letter/digit matches.
  - **Redial last number** when the field is empty.
  - Quick "Send a message" shortcut from the dialpad.
- **Dual-SIM support**: after tapping call, choose SIM 1 or SIM 2 from a
  bottom-sheet when two active SIMs are detected.
- Native call placement via **MethodChannel** (`placeCallWithSim`) with
  clean error surfaces if the call can't be dialed.
- **Ongoing call banner** appears at the top of every tab with a tap-to-
  return shortcut back to the active call.

### In-call experience

- Google Phone–style **incoming call screen** with caller name, number, and
  contact avatar.
- Choose your preferred **Answer method**:
  - **Slide to answer** (default) — swipe up like Google Phone.
  - **Button tap** — traditional answer / decline buttons.
- Foreground service + notification keeps the call visible and reliable in
  the background.
- Native-level permission handling (runtime + Dart side) for phone, contacts,
  call logs, and microphone.

### Glyph lights

Every outgoing and ongoing call can trigger a Glyph animation on the
Nothing Phone (1) Glyph Interface. Outgoing and ongoing calls are configured
**independently**.

- **Animation styles** (for both outgoing and ongoing):
  - **None** — disable Glyph for that state.
  - **Breath & Progress** *(default)* — lights breathe while the progress
    line fills over ~65 s.
  - **Accumulate** — progressively accumulating pattern across C1–C4.
  - **Single** — a single light chases across C1–C4.
  - **Breath** — pick which Glyph zones pulse and how fast.
- Fine-grained controls per style:
  - **Breath Settings** — Breath speed slider (100 ms – 3000 ms) with
    "Blink ↔ Slow Breath" guidance, plus active‑lights chip picker
    (A1, B1, C-All, D-All, E1).
  - **Speed Settings** (Accumulate / Single) — animation delay slider
    (0.1 s – 10 s, finer resolution for Single).
  - **Duration & Speed** (Breath & Progress) — adjustable total duration
    and breath interval.
- **Glyph Map reference** dialog in Settings showing the Nothing Phone (1)
  Glyph layout.
- Graceful fallback to hardware breathing when connected to a non‑Phone (1)
  device.

### Recents

- **Call history grouped** by number and call type, Google Phone style.
- **Filter calls** via a bottom sheet:
  - **All** — entire call log.
  - **Missed** — missed and rejected calls.
  - **Contacts** — calls that match a saved contact.
  - **Non-contacts** — numbers not in your address book.
  - Visual dot indicator shows when a non-default filter is active.
- **Frequently Contacted** section at the top of Recents:
  - Configurable **number of records** (0 to turn off, 1–20 visible).
  - Configurable **time period** — last 24 h, 7 days, 30 days, 12 months,
    or all time.
  - Ranked by combined incoming, outgoing, missed, and rejected call
    counts per number.
  - In‑settings info dialog explaining the feature.
- **Favourites strip** pinnable/hidable at the top of Recents with a
  one-tap toggle in the app bar.
- **Pull/auto-refresh** when calls end so the list stays current.
- **Search** within Recents with persistent state until explicitly cleared.
- **Per-entry call history screen** showing every interaction with a
  specific number.
- Long-press / more-options menu for actions such as block, unblock, and
  navigation to the contact.

### Contacts

- **System-synced** contact list via `flutter_contacts`.
- **Fast alphabetical** browse with contact initials / avatars.
- **Search** by name or number with persistent search state.
- Tap a contact to open **Contact details** with all numbers, call, and
  message options.
- Swipe or use the page navigation between **Recents ↔ Contacts** tabs.

### Favourites

- Dedicated **Favourites** screen (from Settings) to:
  - **Add** favourites from your contacts.
  - **Reorder** favourites via drag-and-drop.
  - **Remove** favourites.
- Optional **Favourites strip** at the top of the Recents tab for
  one-tap calling.

### Blocked numbers

- In-app **Blocked numbers** management screen accessible from Settings.
- Block numbers directly from Recents / call history entries.
- **View and unblock** blocked numbers from the list.
- Blocking state is refreshed automatically when returning from Settings.

### Settings

All preferences are persisted with `shared_preferences` and take effect live
without restarting the app.

- **General**
  - Theme: System default / Light / Dark.
  - Answer method: Slide to answer / Button tap.
  - All favourites (manage list).
  - Blocked numbers (manage list).
  - Sounds & vibration — opens the system ringtone / vibration / dial pad
    tones settings natively.
- **Frequently Contacted**
  - Number of records (0–20, "Off" at 0).
  - Time period (24 h, 7 d, 30 d, 12 mo, all time).
  - Legacy `frequent_contacts_enabled` preference is automatically
    migrated to the new `frequent_contacts_max` on upgrade.
- **Glyph lights**
  - Glyph **calling** animation (outgoing) with per-style options.
  - Glyph **ongoing call** animation with the same set of per-style
    options, configured independently.
  - Glyph Map reference dialog.

### Design & UX

- Material 3 theme with carefully tuned **light** and **dark** palettes.
- Consistent **bottom-sheet pickers** with drag handles for settings.
- Animated FAB with tap scaling and circular-notched bottom navigation.
- **Portrait-locked** orientation with transparent status bar for an
  immersive Nothing look.
- Custom **Roboto Mono** typography throughout.
- **Back‑button aware navigation**: Back clears an active search, returns
  to the Recents tab from Contacts, and only then exits the app.

### Platform & integration

- Built with **Flutter** (Dart).
- **Kotlin** Android layer for call placement, SIM selection, default-dialer
  detection, sound-settings deep link, and Glyph control.
- MethodChannels:
  - `nothing_dialer/control` — default dialer status, open dialpad, place
    calls, open sound settings, return to call, query call state.
  - `nothing_dialer/glyph` — lights on (incoming / outgoing / active call)
    and lights off.
- Runtime permission handling via `permission_handler`.
- Uses `call_log`, `flutter_contacts`, `intl`, `url_launcher`, `share_plus`,
  and `path_provider`.
- Custom Glyph integration using the
  [`flutter-nothing-glyph-interface`](https://github.com/rkvishwa/flutter-nothing-glyph-interface)
  package with the `fix-display-progress-and-toggle` branch.

### Fixes & polish in this build

- ProGuard rules added so Glyph SDK classes survive R8 minification in
  release builds.
- Package name finalized.
- Missing resource files bundled.
- Nothing **Glyph `nothingKey` meta-tag** registered in the Android manifest
  so Glyph permissions are recognized.
- README updated with feature list and screenshots.
- Miscellaneous bug fixes across animation timing and call-state tracking.

---

## Coming soon

- Support for additional Nothing phones.
- Official Google Play Store release.

---

### Short "What's New" (≤ 500 chars)

> Nothing Dialer v1.0 — a next-gen dialer built for Nothing Phone (1). Set it
> as your default phone app and enjoy Glyph light animations for outgoing
> and ongoing calls with 5 styles and deep controls. Includes an advanced
> floating dialpad with T9 search, dual-SIM picker, Google Phone–style
> in-call UI, smart Recents filters, Frequently Contacted shortcuts,
> Favourites with reordering, Blocked numbers manager, and light/dark
> themes.
