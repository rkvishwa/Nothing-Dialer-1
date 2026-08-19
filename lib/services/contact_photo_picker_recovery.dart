import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'contact_photo_account.dart';
import 'contact_photo_cache.dart';
import 'contact_photo_processor.dart';
import 'contact_photo_visibility.dart';
import 'contact_photo_writer.dart';

const _pendingContactPhotoIdKey = 'pending_contact_photo_picker_id';

class ContactPhotoPickerRecovery {
  ContactPhotoPickerRecovery._();

  static Future<void> markPending(String contactId) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_pendingContactPhotoIdKey, contactId);
  }

  static Future<void> clearPending() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_pendingContactPhotoIdKey);
    } catch (_) {
      // Best effort: stale recovery markers are harmless and cleared next run.
    }
  }

  /// Restores an image selection if Android killed the app while the picker
  /// was open. Returns true only when a contact photo was successfully saved.
  static Future<bool> recoverLostSelection() async {
    final prefs = await SharedPreferences.getInstance();
    final contactId = prefs.getString(_pendingContactPhotoIdKey);
    if (contactId == null || contactId.isEmpty) return false;

    try {
      final response = await ImagePicker().retrieveLostData();
      final files = response.files;
      final file = files != null && files.isNotEmpty ? files.first : null;
      if (response.exception != null || file == null) {
        await clearPending();
        return false;
      }

      final contact = await FlutterContacts.getContact(
        contactId,
        withProperties: true,
        withThumbnail: true,
        withPhoto: true,
        withAccounts: true,
      );
      if (contact == null) {
        await clearPending();
        return false;
      }

      final bytes = await centerSquareCropBytesAsync(await file.readAsBytes());
      final savedDirectly = await ContactPhotoWriter.save(contactId, bytes);
      if (!savedDirectly) {
        prioritizePhotoAccount(contact);
        contact.photo = bytes;
        final updated = await contact.update();
        if (updated.photo == null && updated.thumbnail == null) {
          await clearPending();
          return false;
        }
      }
      ContactPhotoCache.replace(contactId, bytes);
      await ensureContactPhotosVisible();
      await clearPending();
      return true;
    } catch (_) {
      await clearPending();
      return false;
    }
  }
}
