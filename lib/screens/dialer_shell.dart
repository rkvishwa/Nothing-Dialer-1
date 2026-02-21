import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'recents_screen.dart';
import 'contacts_screen.dart';
import 'home_screen.dart';
import 'floating_dialpad.dart';

/// Root shell with bottom navigation: Recents | Contacts.
/// The dial-pad is exposed via a floating action button that opens the
/// advanced floating bottom-sheet dialpad.
class DialerShell extends StatefulWidget {
  final ValueNotifier<bool> glyphConnectedNotifier;
  final ValueNotifier<bool> isPhone1Notifier;
  final ValueNotifier<bool> glyphEnabledNotifier;

  const DialerShell({
    super.key,
    required this.glyphConnectedNotifier,
    required this.isPhone1Notifier,
    required this.glyphEnabledNotifier,
  });

  @override
  State<DialerShell> createState() => _DialerShellState();
}

class _DialerShellState extends State<DialerShell>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  final _pageController = PageController();

  // FAB animation — nullable to avoid LateInitializationError on hot-reload
  AnimationController? _fabCtrl;
  Animation<double> get _fabScale =>
      _fabCtrl != null
          ? Tween<double>(begin: 1.0, end: 0.88).animate(
              CurvedAnimation(parent: _fabCtrl!, curve: Curves.easeOut))
          : const AlwaysStoppedAnimation(1.0);

  static const _controlChannel = MethodChannel('nothing_dialer/control');

  Timer? _callStateTimer;
  Map<dynamic, dynamic>? _activeCallState;

  @override
  void initState() {
    super.initState();
    _callStateTimer = Timer.periodic(const Duration(seconds: 1), (_) => _checkCallState());
    _fabCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 120),
      reverseDuration: const Duration(milliseconds: 200),
    );
  }

  @override
  void dispose() {
    _callStateTimer?.cancel();
    _pageController.dispose();
    _fabCtrl?.dispose();
    super.dispose();
  }

  Future<void> _checkCallState() async {
    try {
      final state = await _controlChannel
          .invokeMethod<Map<dynamic, dynamic>>('getCallState');
      if (mounted) {
        setState(() {
          _activeCallState = state;
        });
      }
    } catch (e) {
      if (mounted) setState(() => _activeCallState = null);
    }
  }

  void _onTabTapped(int index) {
    if (index == _currentIndex) return;
    setState(() => _currentIndex = index);
    _pageController.jumpToPage(index);
  }

  void _openDialpad([String initial = '']) {
    showFloatingDialpad(
      context,
      initialDigits: initial,
      onCall: (digits, simIndex) async {
        try {
          await _controlChannel.invokeMethod('placeCallWithSim', {
            'number': digits,
            'simIndex': simIndex,
          });
        } on PlatformException catch (e) {
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Call error: ${e.message}'),
                backgroundColor: const Color(0xFF1E1E1E),
              ),
            );
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0D0D),
      extendBody: true,
      appBar: _buildAppBar(),
      body: Column(
        children: [
          if (_activeCallState != null)
            GestureDetector(
              onTap: () {
                _controlChannel.invokeMethod('returnToCall');
              },
              child: Container(
                width: double.infinity,
                color: const Color(0xFF1E8E3E), // Google style green banner
                padding: const EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.call, color: Colors.white, size: 18),
                    const SizedBox(width: 8),
                    Text(
                      'Ongoing call: ${_activeCallState!['contactName'] ?? _activeCallState!['number']}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() => _currentIndex = index);
              },
              children: const [
                RecentsScreen(),
                ContactsScreen(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomNav(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _buildFAB(),
    );
  }

  AppBar _buildAppBar() {
    final titles = ['Recents', 'Contacts'];
    return AppBar(
      backgroundColor: const Color(0xFF0D0D0D),
      elevation: 0,
      title: Text(
        titles[_currentIndex],
        style: const TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.w300,
          letterSpacing: 0.5,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.settings_outlined, color: Color(0xFF888888)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => HomeScreen(
                  glyphConnectedNotifier: widget.glyphConnectedNotifier,
                  isPhone1Notifier: widget.isPhone1Notifier,
                  glyphEnabledNotifier: widget.glyphEnabledNotifier,
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildFAB() {
    return GestureDetector(
      onTapDown: (_) => _fabCtrl?.forward(),
      onTapUp: (_) {
        _fabCtrl?.reverse();
        _openDialpad();
      },
      onTapCancel: () => _fabCtrl?.reverse(),
      child: ScaleTransition(
        scale: _fabScale,
        child: Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.white.withValues(alpha: 0.15),
                blurRadius: 20,
                spreadRadius: 2,
              ),
            ],
          ),
          alignment: Alignment.center,
          child: const Icon(Icons.dialpad_rounded, color: Colors.black, size: 26),
        ),
      ),
    );
  }

  Widget _buildBottomNav() {
    return BottomAppBar(
      color: const Color(0xFF111111),
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      child: SizedBox(
        height: 60,
        child: Row(
          children: [
            Expanded(child: _NavItem(
              icon: Icons.history,
              label: 'Recents',
              selected: _currentIndex == 0,
              onTap: () => _onTabTapped(0),
            )),
            const SizedBox(width: 64), // space for FAB
            Expanded(child: _NavItem(
              icon: Icons.contacts_outlined,
              label: 'Contacts',
              selected: _currentIndex == 1,
              onTap: () => _onTabTapped(1),
            )),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _NavItem({
    required this.icon,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 22,
            color: selected ? Colors.white : const Color(0xFF555555),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              color: selected ? Colors.white : const Color(0xFF555555),
              fontWeight: selected ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
