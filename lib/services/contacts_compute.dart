// Contact list sorting / grouping for background isolate.

class ContactsComputeArgs {
  final List<Map<String, dynamic>> rows;
  final String query;

  const ContactsComputeArgs({
    required this.rows,
    required this.query,
  });
}

/// Top-level for [compute].
List<Map<String, dynamic>> contactsComputeMain(ContactsComputeArgs args) =>
    _buildContactsFlat(args);

List<Map<String, dynamic>> _buildContactsFlat(ContactsComputeArgs args) {
  final q = args.query.toLowerCase().trim();
  var filtered = args.rows;
  if (q.isNotEmpty) {
    filtered = args.rows.where((r) {
      final name = (r['displayName'] as String? ?? '').toLowerCase();
      final phones = (r['phones'] as String? ?? '').toLowerCase();
      return name.contains(q) || phones.contains(q);
    }).toList();
  }

  filtered.sort((a, b) {
    final an = (a['displayName'] as String? ?? '').toLowerCase();
    final bn = (b['displayName'] as String? ?? '').toLowerCase();
    return an.compareTo(bn);
  });

  final map = <String, List<String>>{};
  for (final r in filtered) {
    final name = r['displayName'] as String? ?? '';
    final key = name.isNotEmpty ? name[0].toUpperCase() : '#';
    final sectionKey = RegExp(r'[A-Z]').hasMatch(key) ? key : '#';
    map.putIfAbsent(sectionKey, () => []).add(r['id'] as String);
  }

  final sortedKeys = map.keys.toList()
    ..sort((a, b) {
      if (a == '#') return 1;
      if (b == '#') return -1;
      return a.compareTo(b);
    });

  final out = <Map<String, dynamic>>[
    {'kind': 'create_new'},
  ];
  for (final section in sortedKeys) {
    out.add({'kind': 'section', 'label': section});
    for (final id in map[section]!) {
      out.add({'kind': 'contact_id', 'id': id});
    }
  }
  return out;
}
