import 'dart:typed_data';

import 'package:flutter/foundation.dart' show ValueNotifier;

class ContactPhotoInvalidation {
  const ContactPhotoInvalidation(this.contactId);

  /// Null means all cached contact photos were invalidated.
  final String? contactId;
}

/// In-memory cache for contact photo bytes (thumbnail or full photo).
class ContactPhotoCache {
  ContactPhotoCache._();

  static const int _maxPhotoEntries = 128;
  static const int _maxMissingEntries = 512;
  static final Map<String, Uint8List> _byContactId = {};
  static final Set<String> _missingContactIds = {};
  static final ValueNotifier<ContactPhotoInvalidation> invalidationNotifier =
      ValueNotifier<ContactPhotoInvalidation>(
        const ContactPhotoInvalidation(''),
      );

  static Uint8List? get(String contactId) {
    final bytes = _byContactId.remove(contactId);
    if (bytes != null) {
      // Reinsert to keep recently used entries at the end of the map.
      _byContactId[contactId] = bytes;
    }
    return bytes;
  }

  static bool isMissing(String contactId) =>
      _missingContactIds.contains(contactId);

  static void put(String contactId, Uint8List bytes) {
    if (contactId.isEmpty) return;
    _byContactId.remove(contactId);
    _byContactId[contactId] = bytes;
    _missingContactIds.remove(contactId);
    while (_byContactId.length > _maxPhotoEntries) {
      _byContactId.remove(_byContactId.keys.first);
    }
  }

  static void markMissing(String contactId) {
    if (contactId.isEmpty) return;
    _byContactId.remove(contactId);
    _missingContactIds.remove(contactId);
    _missingContactIds.add(contactId);
    while (_missingContactIds.length > _maxMissingEntries) {
      _missingContactIds.remove(_missingContactIds.first);
    }
  }

  static void invalidate(String contactId) {
    _byContactId.remove(contactId);
    _missingContactIds.remove(contactId);
    invalidationNotifier.value = ContactPhotoInvalidation(contactId);
  }

  /// Replaces cached bytes and notifies avatars without clearing them first.
  static void replace(String contactId, Uint8List bytes) {
    put(contactId, bytes);
    invalidationNotifier.value = ContactPhotoInvalidation(contactId);
  }

  static void clear() {
    _byContactId.clear();
    _missingContactIds.clear();
    invalidationNotifier.value = const ContactPhotoInvalidation(null);
  }
}
