import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String _answerMethod = 'slide'; // 'slide' or 'button'

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _answerMethod = prefs.getString('answer_method') ?? 'slide';
    });
  }

  Future<void> _saveAnswerMethod(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('answer_method', value);
    setState(() => _answerMethod = value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0D0D),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D0D0D),
        foregroundColor: Colors.white,
        title: const Text('Settings'),
        elevation: 0,
      ),
      body: ListView(
        children: [
          const _SectionHeader(title: 'Calling'),
          _SettingsTile(
            icon: Icons.phone_callback_rounded,
            title: 'Answer method',
            subtitle: _answerMethod == 'slide'
                ? 'Slide to answer'
                : 'Button tap to answer',
            onTap: () => _showAnswerMethodPicker(),
          ),
        ],
      ),
    );
  }

  void _showAnswerMethodPicker() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.black.withValues(alpha: 0.55),
      builder: (_) => Container(
        decoration: const BoxDecoration(
          color: Color(0xFF1C1B1F),
          borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Handle
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 8),
                  child: Container(
                    width: 32,
                    height: 4,
                    decoration: BoxDecoration(
                      color: const Color(0xFF49454F),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(24, 16, 24, 8),
                child: Text(
                  'Answer method',
                  style: TextStyle(
                    color: Color(0xFFE6E1E5),
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              _MethodOption(
                icon: Icons.swipe_right_rounded,
                label: 'Slide to answer',
                subtitle: 'Swipe up to answer, like Google Phone',
                selected: _answerMethod == 'slide',
                onTap: () {
                  _saveAnswerMethod('slide');
                  Navigator.pop(context);
                },
              ),
              _MethodOption(
                icon: Icons.touch_app_rounded,
                label: 'Button tap',
                subtitle: 'Tap answer or decline buttons',
                selected: _answerMethod == 'button',
                onTap: () {
                  _saveAnswerMethod('button');
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 8),
      child: Text(
        title,
        style: const TextStyle(
          color: Color(0xFFD0BCFF),
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const _SettingsTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  color: Color(0xFF2B2930),
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Icon(icon, color: const Color(0xFFE6E1E5), size: 20),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Color(0xFFE6E1E5),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: Color(0xFFCAC4D0),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right, color: Color(0xFF49454F)),
            ],
          ),
        ),
      ),
    );
  }
}

class _MethodOption extends StatelessWidget {
  final IconData icon;
  final String label;
  final String subtitle;
  final bool selected;
  final VoidCallback onTap;

  const _MethodOption({
    required this.icon,
    required this.label,
    required this.subtitle,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: selected
                      ? const Color(0xFFD0BCFF)
                      : const Color(0xFF2B2930),
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Icon(
                  icon,
                  color: selected
                      ? const Color(0xFF141218)
                      : const Color(0xFFE6E1E5),
                  size: 20,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label,
                      style: TextStyle(
                        color: const Color(0xFFE6E1E5),
                        fontSize: 16,
                        fontWeight:
                            selected ? FontWeight.w600 : FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: Color(0xFFCAC4D0),
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              if (selected)
                const Icon(Icons.check_circle, color: Color(0xFFD0BCFF), size: 22),
            ],
          ),
        ),
      ),
    );
  }
}
