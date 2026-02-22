# Nothing Dialer

## The Ultimate Dialer App for Nothing Phone 1


Nothing Dialer is a next-generation dialer app built exclusively for Nothing Phone 1. It combines a clean, modern interface with advanced call management, contact integration, and unique Glyph animations that make every call experience special. Designed for speed, reliability, and seamless integration with Nothing hardware. Brought the UI/UX features we liked from other dialer apps.

---

## Screenshots

<p align="center">
  <img src="assets/screenshots/settings.png" width="30%" />
  <img src="assets/screenshots/style.png" width="30%" />
  <img src="assets/screenshots/speed.png" width="30%" />
</p>

---

**Coming Soon:**

- Future support for other Nothing phones
- Official release on Google Play Store

---

## Features

- Default Dialer role support (can be set as the system phone app)
- Minimal and advanced dialpad screens
- Call history grouped by number and type (like Google Phone)
- Contact sync and search (device address book)
- Blocked numbers management
- SIM picker for dual SIM devices
- Floating dialpad with advanced features:
	- Sub-label letters on keys (ABC, DEF, etc.)
	- Long-press actions (0 for '+', 1 for voicemail)
	- Backspace long-press clears all
	- Paste from clipboard
	- Auto phone-number formatting
	- Animated entrance/exit
	- Haptic feedback
	- Pulsing call button
- Call placement via MethodChannel (native integration)
- Glyph animation control for Nothing devices
- Customizable settings (theme, answer method, animation style, intervals)
- In-call UI with Google Phone-style controls
- Notification and foreground service support
- Permissions handled natively and in Dart

## Technical Details

- Built with Flutter (Dart)
- Uses MethodChannel for native Android integration
- Kotlin code for call management, SIM handling, and Glyph control
- Uses packages:
	- flutter_contacts (contact sync)
	- call_log (call history)
	- permission_handler (runtime permissions)
	- shared_preferences (settings)
	- intl (date formatting)
	- path_provider (file access)
	- share_plus (sharing)
	- url_launcher (external links)
+- Advanced UI with custom screens, bottom sheets, and animations
+- Currently supported only on Nothing Phone 1 (future support for other Nothing phones)
+- Coming soon to Google Play Store

