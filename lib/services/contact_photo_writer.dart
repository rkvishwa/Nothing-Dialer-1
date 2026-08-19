import 'package:flutter/services.dart';

class ContactPhotoWriter {
  ContactPhotoWriter._();

  static const _channel = MethodChannel('nothing_dialer/control');

  /// Writes directly to a writable Android raw contact, avoiding linked
  /// messaging accounts that cannot persist display photos.
  static Future<bool> save(String contactId, Uint8List bytes) async {
    try {
      return await _channel.invokeMethod<bool>('setContactPhoto', {
            'contactId': contactId,
            'bytes': bytes,
          }) ??
          false;
    } on PlatformException {
      return false;
    } on MissingPluginException {
      return false;
    }
  }
}
