import 'package:flutter_contacts/flutter_contacts.dart';

const _photoMimeType = 'vnd.android.cursor.item/photo';

/// flutter_contacts writes a photo to the first raw account of a unified
/// Android contact. Put the most likely writable, photo-capable account first.
void prioritizePhotoAccount(Contact contact) {
  if (contact.accounts.length < 2) return;

  var bestIndex = 0;
  var bestScore = _accountScore(contact.accounts.first);
  for (var i = 1; i < contact.accounts.length; i++) {
    final score = _accountScore(contact.accounts[i]);
    if (score > bestScore) {
      bestIndex = i;
      bestScore = score;
    }
  }

  if (bestIndex > 0) {
    final best = contact.accounts.removeAt(bestIndex);
    contact.accounts.insert(0, best);
  }
}

int _accountScore(Account account) {
  var score = account.mimetypes.contains(_photoMimeType) ? 1000 : 0;
  score += account.mimetypes.length;

  final type = account.type.toLowerCase();
  if (type == 'com.google') score += 100;
  if (type.contains('whatsapp') ||
      type.contains('telegram') ||
      type.contains('signal') ||
      type.contains('facebook') ||
      type.contains('skype')) {
    score -= 500;
  }
  return score;
}
