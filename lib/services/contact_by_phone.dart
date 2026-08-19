import 'package:flutter_contacts/flutter_contacts.dart';

import 'contacts_cache.dart';

List<Contact>? _indexedContacts;
Map<String, Contact> _contactsByNumber = const {};
Map<String, Contact> _contactsBySuffix = const {};

/// Normalizes a phone number to digits only for comparison.
String normalizePhoneForLookup(String number) {
  return number.replaceAll(RegExp(r'\D'), '');
}

void _ensurePhoneIndex(List<Contact> contacts) {
  if (identical(_indexedContacts, contacts)) return;

  final byNumber = <String, Contact>{};
  final bySuffix = <String, Contact>{};
  for (final contact in contacts) {
    for (final phone in contact.phones) {
      final normalized = normalizePhoneForLookup(phone.number);
      if (normalized.isEmpty) continue;
      byNumber.putIfAbsent(normalized, () => contact);
      final suffix = normalized.length > 7
          ? normalized.substring(normalized.length - 7)
          : normalized;
      if (suffix.isNotEmpty) {
        bySuffix.putIfAbsent(suffix, () => contact);
      }
    }
  }

  _indexedContacts = contacts;
  _contactsByNumber = byNumber;
  _contactsBySuffix = bySuffix;
}

/// Finds a contact in [ContactsCache] by phone number (exact or suffix match).
Contact? findContactByPhone(String number, {List<Contact>? contacts}) {
  final list = contacts ?? ContactsCache.snapshot;
  if (list == null || list.isEmpty) return null;
  _ensurePhoneIndex(list);

  final target = normalizePhoneForLookup(number);
  if (target.isEmpty) return null;
  final exact = _contactsByNumber[target];
  if (exact != null) return exact;

  final targetSuffix = target.length > 7
      ? target.substring(target.length - 7)
      : target;
  return targetSuffix.isEmpty ? null : _contactsBySuffix[targetSuffix];
}
