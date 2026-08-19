import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart' as main_app;
import 'contact_photo_style.dart';

/// Picking a photo inside the app implies the user wants to see it, so turn
/// display back on instead of silently saving to an invisible avatar.
Future<void> ensureContactPhotosVisible() async {
  if (main_app.contactPhotoModeNotifier.value.showsPhotos) return;
  main_app.contactPhotoModeNotifier.value = kDefaultContactPhotoMode;
  try {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
      kContactPhotoModePrefKey,
      kDefaultContactPhotoMode.prefValue,
    );
  } catch (_) {
    // Best effort: the in-memory notifier already reveals the new photo.
  }
}
