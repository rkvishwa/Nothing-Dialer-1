import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:path_provider/path_provider.dart';
import '../services/blocking_manager.dart';
import 'sim_picker_sheet.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:share_plus/share_plus.dart';

class ContactDetailScreen extends StatefulWidget {
  final Contact contact;
  const ContactDetailScreen({super.key, required this.contact});

  @override
  State<ContactDetailScreen> createState() => _ContactDetailScreenState();
}

class _ContactDetailScreenState extends State<ContactDetailScreen> {
  late Contact _contact;
  bool _loading = false;
  int? _preferredSim;
  String? _customRingtoneName;

  @override
  void initState() {
    super.initState();
    _contact = widget.contact;
    _refreshContact();
    _loadPreferences();
    BlockingManager.blockedNumbersNotifier.addListener(_onBlockedNumbersChanged);
    BlockingManager.refreshBlockedNumbers();
  }

  void _onBlockedNumbersChanged() {
    debugPrint('ContactDetailScreen: Blocked numbers updated, checking status for ${_contact.displayName}');
    for (var phone in _contact.phones) {
      final blocked = BlockingManager.isBlocked(phone.number);
      debugPrint('  - ${phone.number}: blocked=$blocked');
    }
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    BlockingManager.blockedNumbersNotifier.removeListener(_onBlockedNumbersChanged);
    super.dispose();
  }

  Future<void> _loadPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final simIdx = prefs.getInt('pref_sim_${_contact.id}');
    final rUri = prefs.getString('pref_ringtone_${_contact.id}');
    
    String? rTitle;
    if (rUri != null) {
      try {
        rTitle = await _channel.invokeMethod('getRingtoneTitle', rUri);
      } catch (_) {}
    }

    if (mounted) {
      setState(() {
        _preferredSim = simIdx;
        _customRingtoneName = rTitle;
      });
    }
  }

  Future<void> _refreshContact() async {
    final fullContact = await FlutterContacts.getContact(_contact.id);
    if (fullContact != null && mounted) {
      setState(() {
        _contact = fullContact;
      });
      BlockingManager.refreshBlockedNumbers();
    }
  }

  static const _channel = MethodChannel('nothing_dialer/control');

  Future<void> _call(String number) async {
    HapticFeedback.mediumImpact();
    
    int? simIndex = _preferredSim;
    if (simIndex == null || simIndex == -1) {
      simIndex = await showSimPicker(context);
    }
    
    if (simIndex == null || !mounted) return;

    try {
      await _channel.invokeMethod('placeCallWithSim', {
        'number': number,
        'simIndex': simIndex,
      });
    } on PlatformException catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Call error: ${e.message}'), backgroundColor: const Color(0xFF333333)),
        );
      }
    }
  }

  Future<void> _message(String number) async {
    try {
      await _channel.invokeMethod('openSmsApp', {'number': number});
    } on PlatformException catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: ${e.message}')),
        );
      }
    }
  }

  Future<void> _editContact() async {
    await FlutterContacts.openExternalEdit(_contact.id);
    _refreshContact();
  }

  Future<void> _setCallingSim() async {
    final simIndex = await showSimPicker(context);
    if (simIndex != null) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt('pref_sim_${_contact.id}', simIndex);
      setState(() {
        _preferredSim = simIndex;
      });
    }
  }

  Future<void> _pickRingtone() async {
    try {
      final String? ringtoneUri = await _channel.invokeMethod('pickRingtone');
      if (ringtoneUri != null) {
        // 1. Update native system contact database (Global)
        await _channel.invokeMethod('setContactRingtone', {
          'contactId': _contact.id,
          'ringtoneUri': ringtoneUri,
        });

        // 2. Persist locally for UI consistency (Local)
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('pref_ringtone_${_contact.id}', ringtoneUri);
        
        final String? title = await _channel.invokeMethod('getRingtoneTitle', ringtoneUri);
        
        if (mounted) {
          setState(() {
            _customRingtoneName = title ?? "Custom";
          });
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Ringtone set globally for this contact')),
          );
        }
      }
    } on PlatformException catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to pick ringtone: ${e.message}')),
        );
      }
    }
  }

  Future<void> _shareContact() async {
    final vcard = _contact.toVCard();
    final directory = await getTemporaryDirectory();
    final path = '${directory.path}/${_contact.displayName.replaceAll(' ', '_')}.vcf';
    final file = File(path);
    await file.writeAsString(vcard);

    await Share.shareXFiles(
      [XFile(path)],
      subject: 'Contact: ${_contact.displayName}',
    );
  }

  Future<void> _deleteContact() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0xFF1A1A1A),
        title: const Text('Delete contact?', style: TextStyle(color: Colors.white)),
        content: const Text('This contact will be permanently deleted from your device.', style: TextStyle(color: Color(0xFF888888))),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel', style: TextStyle(color: Color(0xFF888888))),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Delete', style: TextStyle(color: Colors.redAccent)),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      await FlutterContacts.deleteContact(_contact);
      if (mounted) Navigator.pop(context, true);
    }
  }

  Future<void> _toggleBlockContact() async {
    final phoneNumbers = _contact.phones.map((p) => p.number).toList();
    if (phoneNumbers.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No phone numbers to block')),
      );
      return;
    }

    // A contact is considered blocked if ANY of their numbers are blocked
    final bool isBlocked = phoneNumbers.any((n) => BlockingManager.isBlocked(n));

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0xFF1A1A1A),
        title: Text(isBlocked ? 'Unblock contact?' : 'Block contact?', style: const TextStyle(color: Colors.white)),
        content: Text(
          isBlocked 
            ? 'You will start receiving calls and texts from this contact.' 
            : 'You will no longer receive calls or texts from this contact.',
          style: const TextStyle(color: Color(0xFF888888))
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel', style: TextStyle(color: Color(0xFF888888))),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(isBlocked ? 'Unblock' : 'Block', style: TextStyle(color: isBlocked ? Colors.white : Colors.redAccent)),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      try {
        for (final number in phoneNumbers) {
          if (isBlocked) {
            await BlockingManager.unblockNumber(number);
          } else {
            await BlockingManager.blockNumber(number);
          }
        }
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(isBlocked ? 'Contact unblocked' : 'Contact blocked')),
          );
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error: ${e.toString()}')),
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_outlined, color: Colors.white),
            onPressed: _editContact,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            _buildHeader(),
            const SizedBox(height: 32),
            _buildPhoneSection(),
            const SizedBox(height: 24),
            _buildConnectedAppsSection(),
            const SizedBox(height: 24),
            _buildSettingsSection(),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        _Avatar(contact: _contact, size: 100),
        const SizedBox(height: 16),
        Text(
          _contact.displayName,
          style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  Widget _buildPhoneSection() {
    if (_contact.phones.isEmpty) return const SizedBox.shrink();

    return Column(
      children: _contact.phones.map((phone) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFF1A1A1A),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            const Icon(Icons.phone_outlined, color: Color(0xFF888888), size: 24),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(phone.number, style: const TextStyle(color: Colors.white, fontSize: 16)),
                  Text(phone.label.name.toLowerCase(), style: const TextStyle(color: Color(0xFF666666), fontSize: 12)),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.call_outlined, color: Colors.white, size: 24),
              onPressed: () => _call(phone.number),
            ),
            IconButton(
              icon: const Icon(Icons.message_outlined, color: Colors.white, size: 22),
              onPressed: () => _message(phone.number),
            ),
          ],
        ),
      )).toList(),
    );
  }

  Widget _buildConnectedAppsSection() {
    if (_contact.socialMedias.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Text('Connected apps', style: TextStyle(color: Color(0xFF666666), fontSize: 13, fontWeight: FontWeight.w500)),
        ),
        ..._contact.socialMedias.map((social) {
          IconData icon = Icons.link_outlined;
          Color color = Colors.white;
          if (social.label == SocialMediaLabel.whatsapp) {
            icon = Icons.chat_outlined;
            color = const Color(0xFF25D366);
          } else if (social.label == SocialMediaLabel.telegram) {
            icon = Icons.send_outlined;
            color = const Color(0xFF24A1DE);
          } else if (social.label == SocialMediaLabel.facebook) {
            icon = Icons.public_outlined;
            color = const Color(0xFF1877F2);
          }
          
          return _buildAppTile(social.label.name.capitalize(), icon, color, subtitle: social.userName);
        }),
      ],
    );
  }

  Widget _buildAppTile(String title, IconData icon, Color iconColor, {String? subtitle}) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 24),
      leading: Icon(icon, color: iconColor, size: 28),
      title: Text(title, style: const TextStyle(color: Colors.white, fontSize: 15)),
      subtitle: subtitle != null ? Text(subtitle, style: const TextStyle(color: Color(0xFF666666), fontSize: 12)) : null,
      trailing: const Icon(Icons.keyboard_arrow_right, color: Color(0xFF444444)),
      onTap: () {},
    );
  }

  Widget _buildSettingsSection() {
    String simText = 'Not set';
    if (_preferredSim != null && _preferredSim != -1) {
      simText = 'SIM ${_preferredSim! + 1}';
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Text('Contact settings', style: TextStyle(color: Color(0xFF666666), fontSize: 13, fontWeight: FontWeight.w500)),
        ),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 24),
          leading: const Icon(Icons.sim_card_outlined, color: Color(0xFF888888), size: 22),
          title: const Text('Set calling SIM', style: TextStyle(color: Colors.white, fontSize: 15)),
          subtitle: Text(simText, style: const TextStyle(color: Color(0xFF666666), fontSize: 12)),
          onTap: _setCallingSim,
        ),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 24),
          leading: const Icon(Icons.music_note_outlined, color: Color(0xFF888888), size: 22),
          title: const Text('Contact ringtone', style: TextStyle(color: Colors.white, fontSize: 15)),
          subtitle: Text(_customRingtoneName ?? 'Default', style: const TextStyle(color: Color(0xFF666666), fontSize: 12)),
          onTap: _pickRingtone,
        ),
        _buildSettingTile('Share contact', Icons.share_outlined, onTap: _shareContact),
        _buildSettingTile(
          _contact.phones.any((n) => BlockingManager.isBlocked(n.number)) ? 'Unblock numbers' : 'Block numbers', 
          Icons.block, 
          textColor: _contact.phones.any((n) => BlockingManager.isBlocked(n.number)) ? Colors.white : Colors.redAccent,
          iconColor: _contact.phones.any((n) => BlockingManager.isBlocked(n.number)) ? Colors.white : Colors.redAccent,
          onTap: _toggleBlockContact
        ),
        _buildSettingTile('Delete', Icons.delete_outline, textColor: Colors.redAccent, iconColor: Colors.redAccent, onTap: _deleteContact),
      ],
    );
  }

  Widget _buildSettingTile(String title, IconData icon, {Color? textColor, Color? iconColor, VoidCallback? onTap}) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 24),
      leading: Icon(icon, color: iconColor ?? const Color(0xFF888888), size: 22),
      title: Text(title, style: TextStyle(color: textColor ?? Colors.white, fontSize: 15)),
      onTap: onTap ?? () {},
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    if (isEmpty) return this;
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}

class _Avatar extends StatelessWidget {
  final Contact contact;
  final double size;
  const _Avatar({required this.contact, required this.size});

  @override
  Widget build(BuildContext context) {
    if (contact.photo != null) {
      return CircleAvatar(
        radius: size / 2,
        backgroundImage: MemoryImage(contact.photo!),
        backgroundColor: const Color(0xFF1A1A1A),
      );
    }
    final initials = _initials(contact.displayName);
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: const Color(0xFF111111),
        shape: BoxShape.circle,
        border: Border.all(color: const Color(0xFF2A2A2A)),
      ),
      alignment: Alignment.center,
      child: Text(initials,
          style: TextStyle(color: Colors.white, fontSize: size * 0.35, fontWeight: FontWeight.w300)),
    );
  }

  String _initials(String name) {
    final parts = name.trim().split(' ');
    if (parts.isEmpty || parts.first.isEmpty) return '?';
    if (parts.length == 1) return parts[0][0].toUpperCase();
    return '${parts[0][0]}${parts.last[0]}'.toUpperCase();
  }
}
