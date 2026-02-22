import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'recents_screen.dart';
import 'contacts_screen.dart';
import 'settings_screen.dart';
import 'floating_dialpad.dart';
import '../services/blocking_manager.dart';

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
  Animation<double> get _fabScale => _fabCtrl != null
      ? Tween<double>(
          begin: 1.0,
          end: 0.88,
        ).animate(CurvedAnimation(parent: _fabCtrl!, curve: Curves.easeOut))
      : const AlwaysStoppedAnimation(1.0);

  static const _controlChannel = MethodChannel('nothing_dialer/control');

  final ValueNotifier<Map<dynamic, dynamic>?> _callStateNotifier =
      ValueNotifier(null);
  Timer? _callStateTimer;

  @override
  void initState() {
    super.initState();
    _callStateTimer = Timer.periodic(
      const Duration(seconds: 1),
      (_) => _checkCallState(),
    );
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
      final state = await _controlChannel.invokeMethod<Map<dynamic, dynamic>>(
        'getCallState',
      );

      // Only update if the relevant fields changed to avoid unnecessary rebuilds
      final current = _callStateNotifier.value;
      if (state == null) {
        if (current != null) _callStateNotifier.value = null;
      } else {
        if (current == null ||
            state['number'] != current['number'] ||
            state['contactName'] != current['contactName']) {
          _callStateNotifier.value = state;
        }
      }
    } catch (e) {
      if (_callStateNotifier.value != null) _callStateNotifier.value = null;
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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      extendBody: true,
      appBar: _buildAppBar(),
      body: Column(
        children: [
          ValueListenableBuilder<Map<dynamic, dynamic>?>(
            valueListenable: _callStateNotifier,
            builder: (context, activeCallState, _) {
              if (activeCallState == null) return const SizedBox.shrink();
              return GestureDetector(
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
                      Icon(
                        Icons.call,
                        color: Theme.of(context).colorScheme.onSurface,
                        size: 18,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Ongoing call: ${activeCallState['contactName'] ?? activeCallState['number']}',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurface,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() => _currentIndex = index);
              },
              children: const [RecentsScreen(), ContactsScreen()],
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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      title: Text(
        titles[_currentIndex],
        style: TextStyle(
          color: Theme.of(context).colorScheme.onSurface,
          fontSize: 22,
          fontWeight: FontWeight.w300,
          letterSpacing: 0.5,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.settings_outlined,
            color: Theme.of(context).colorScheme.outline,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SettingsScreen()),
            );
            await BlockingManager.refreshBlockedNumbers();
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
            color: Theme.of(context).colorScheme.onSurface,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Theme.of(
                  context,
                ).colorScheme.onSurface.withValues(alpha: 0.15),
                blurRadius: 20,
                spreadRadius: 2,
              ),
            ],
          ),
          alignment: Alignment.center,
          child: Icon(
            Icons.dialpad_rounded,
            color: Theme.of(context).colorScheme.surface,
            size: 26,
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNav() {
    return BottomAppBar(
      color: Theme.of(context).colorScheme.surface,
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      child: SizedBox(
        height: 60,
        child: Row(
          children: [
            Expanded(
              child: _NavItem(
                icon: Icons.history,
                label: 'Recents',
                selected: _currentIndex == 0,
                onTap: () => _onTabTapped(0),
              ),
            ),
            const SizedBox(width: 64), // space for FAB
            Expanded(
              child: _NavItem(
                icon: Icons.contacts_outlined,
                label: 'Contacts',
                selected: _currentIndex == 1,
                onTap: () => _onTabTapped(1),
              ),
            ),
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
            color: selected
                ? Theme.of(context).colorScheme.onSurface
                : Theme.of(
                    context,
                  ).colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              color: selected
                  ? Theme.of(context).colorScheme.onSurface
                  : Theme.of(
                      context,
                    ).colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
              fontWeight: selected ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
