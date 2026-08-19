import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/services.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

class ContactPhotoReader {
  ContactPhotoReader._();

  static const _channel = MethodChannel('nothing_dialer/control');

  static bool _nativeUnavailable = false;

  /// Android's aggregate-contact photo API respects the selected primary photo
  /// when a person has linked Google, device, or messaging raw contacts.
  static Future<Uint8List?> load(
    String contactId, {
    required bool preferFullPhoto,
  }) async {
    final native = await _loadNative(contactId, preferFullPhoto);
    if (native != null && native.isNotEmpty) return native;
    return _loadViaPlugin(contactId, preferFullPhoto);
  }

  static Future<Uint8List?> _loadNative(
    String contactId,
    bool preferFullPhoto,
  ) async {
    if (kIsWeb || !Platform.isAndroid || _nativeUnavailable) return null;
    try {
      return await _channel.invokeMethod<Uint8List>('getContactPhoto', {
        'contactId': contactId,
        'preferFullPhoto': preferFullPhoto,
      });
    } on MissingPluginException {
      _nativeUnavailable = true;
      return null;
    } on PlatformException {
      return null;
    }
  }

  static Future<Uint8List?> _loadViaPlugin(
    String contactId,
    bool preferFullPhoto,
  ) async {
    try {
      final contact = await FlutterContacts.getContact(
        contactId,
        withProperties: false,
        withThumbnail: true,
        withPhoto: true,
      );
      if (contact == null) return null;
      return preferFullPhoto
          ? (contact.photo ?? contact.thumbnail)
          : (contact.thumbnail ?? contact.photo);
    } catch (_) {
      return null;
    }
  }
}
