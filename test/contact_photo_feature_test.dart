import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image/image.dart' as img;
import 'package:nothing_dialer/services/contact_by_phone.dart';
import 'package:nothing_dialer/services/contact_photo_account.dart';
import 'package:nothing_dialer/services/contact_photo_cache.dart';
import 'package:nothing_dialer/services/contact_photo_processor.dart';
import 'package:nothing_dialer/services/contact_photo_style.dart';
import 'package:nothing_dialer/widgets/avatar_shape_clipper.dart';

void main() {
  group('contact photo preferences', () {
    test('unknown stored values fall back safely', () {
      expect(ContactPhotoMode.fromPref(null), ContactPhotoMode.avatar);
      expect(ContactPhotoMode.fromPref('invalid'), ContactPhotoMode.avatar);
      expect(ContactAvatarShape.fromPref(null), ContactAvatarShape.circle);
      expect(ContactAvatarShape.fromPref('invalid'), ContactAvatarShape.circle);
    });

    test('known values round-trip through preference strings', () {
      for (final mode in ContactPhotoMode.values) {
        expect(ContactPhotoMode.fromPref(mode.prefValue), mode);
      }
      for (final shape in ContactAvatarShape.values) {
        expect(ContactAvatarShape.fromPref(shape.prefValue), shape);
      }
    });
  });

  group('contact lookup', () {
    final contacts = [
      Contact(
        id: 'a',
        displayName: 'Alice',
        phones: [Phone('+1 (650) 555-0100')],
      ),
      Contact(id: 'b', displayName: 'Bob', phones: [Phone('020 7946 0958')]),
    ];

    test('matches formatting and country-code differences', () {
      expect(findContactByPhone('650-555-0100', contacts: contacts)?.id, 'a');
      expect(
        findContactByPhone('+44 20 7946 0958', contacts: contacts)?.id,
        'b',
      );
      expect(findContactByPhone('12345', contacts: contacts), isNull);
    });
  });

  group('avatar shape paths', () {
    const size = Size.square(100);

    test('all paths include their center', () {
      for (final shape in ContactAvatarShape.values) {
        expect(
          AvatarShapeClipper(
            shape,
          ).getClip(size).contains(const Offset(50, 50)),
          isTrue,
          reason: shape.name,
        );
      }
    });

    test('nothing style circle excludes square corners', () {
      final path = AvatarShapeClipper(
        ContactAvatarShape.circle,
        style: ContactAvatarStyle.nothing,
      ).getClip(size);
      expect(path.contains(const Offset(1, 1)), isFalse);
      expect(path.contains(const Offset(50, 1)), isTrue);
    });
  });

  test('photo cache publishes targeted and global invalidations', () {
    ContactPhotoCache.invalidate('contact-a');
    expect(ContactPhotoCache.invalidationNotifier.value.contactId, 'contact-a');

    ContactPhotoCache.clear();
    expect(ContactPhotoCache.invalidationNotifier.value.contactId, isNull);
  });

  test('photo cache replace keeps bytes available after notification', () {
    ContactPhotoCache.clear();
    final bytes = Uint8List.fromList([1, 2, 3]);
    ContactPhotoCache.replace('contact-b', bytes);
    expect(ContactPhotoCache.get('contact-b'), bytes);
  });

  test('centerSquareCropBytes produces a square image', () {
    final source = img.Image(width: 400, height: 200);
    final raw = Uint8List.fromList(img.encodeJpg(source));
    final cropped = centerSquareCropBytes(raw);
    final decoded = img.decodeImage(cropped);
    expect(decoded, isNotNull);
    expect(decoded!.width, decoded.height);
    expect(decoded.width, lessThanOrEqualTo(200));
  });

  test('photo-capable primary account is preferred for Android writes', () {
    final contact = Contact(
      accounts: [
        Account('chat', 'com.whatsapp', 'chat', ['chat/mime']),
        Account('google', 'com.google', 'user@example.com', [
          'vnd.android.cursor.item/photo',
          'vnd.android.cursor.item/phone_v2',
        ]),
      ],
    );

    prioritizePhotoAccount(contact);

    expect(contact.accounts.first.rawId, 'google');
  });
}
