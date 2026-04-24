import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'recents_screen.dart';
import 'contacts_screen.dart';
import 'settings_screen.dart';
import 'floating_dialpad.dart';
import '../services/blocking_manager.dart';
import '../services/favourites_manager.dart';
import '../main.dart' as main_app;
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
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
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

  Map<dynamic, dynamic>? _prevDialerCallState;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    main_app.dialerCallStateNotifier.addListener(_onDialerCallStateForRecents);
    _fabCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 120),
      reverseDuration: const Duration(milliseconds: 200),
    );
    main_app.openDialpadRequestNotifier.addListener(_onOpenDialpadRequest);
    _onOpenDialpadRequest();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(_syncCallStateFromNative());
      _consumePendingLaunchTab();
      _consumePendingDialpadRequest();
      _maybeClearMissedNotifications(_currentIndex);
    });
  }

  void _onDialerCallStateForRecents() {
    final v = main_app.dialerCallStateNotifier.value;
    if (_prevDialerCallState != null && v == null) {
      main_app.recentsRefreshTickNotifier.value++;
    }
    _prevDialerCallState = v;
  }

  Future<void> _syncCallStateFromNative() async {
    try {
      final state = await _controlChannel
          .invokeMethod<Map<dynamic, dynamic>>('getCallState');
      if (!mounted) return;
      main_app.dialerCallStateNotifier.value = state;
      _prevDialerCallState = state;
    } catch (_) {
      if (mounted) {
        main_app.dialerCallStateNotifier.value = null;
        _prevDialerCallState = null;
      }
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      unawaited(_syncCallStateFromNative());
    }
  }

  void _maybeClearMissedNotifications(int index) {
    if (index != 0) return;
    _controlChannel.invokeMethod<void>('clearMissedCalls').catchError((_) {});
  }

  Future<void> _consumePendingLaunchTab() async {
    try {
      final tab = await _controlChannel.invokeMethod<String?>(
        'consumePendingOpenTab',
      );
      if (!mounted) return;
      if (tab == 'recents' && _currentIndex != 0) {
        setState(() => _currentIndex = 0);
        _pageController.jumpToPage(0);
        _maybeClearMissedNotifications(0);
      }
    } catch (_) {}
  }

  Future<void> _consumePendingDialpadRequest() async {
    try {
      final number = await _controlChannel.invokeMethod<String?>(
        'consumePendingDialpadRequest',
      );
      if (!mounted) return;
      if (number != null) {
        main_app.openDialpadRequestNotifier.value = number;
      }
    } catch (_) {}
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    main_app.dialerCallStateNotifier.removeListener(_onDialerCallStateForRecents);
    main_app.openDialpadRequestNotifier.removeListener(_onOpenDialpadRequest);
    _pageController.dispose();
    _fabCtrl?.dispose();
    super.dispose();
  }

  void _onOpenDialpadRequest() {
    final payload = main_app.openDialpadRequestNotifier.value;
    if (payload == null || !mounted) return;
    _openDialpad(payload);
    main_app.openDialpadRequestNotifier.value = null;
  }

  void _onTabTapped(int index) {
    if (index == _currentIndex) return;
    FocusManager.instance.primaryFocus?.unfocus();
    setState(() => _currentIndex = index);
    _pageController.jumpToPage(index);
    _maybeClearMissedNotifications(index);
  }

  Future<void> _toggleFavouritesStrip() async {
    final next = !FavouritesManager.showFavouritesStripOnRecents.value;
    await FavouritesManager.setShowFavouritesStripOnRecents(next);
  }

  /// Outline star when strip is on; same outline with a diagonal slash when off.
  Widget _favouritesStripToggleIcon(BuildContext context, bool stripVisible) {
    const size = 24.0;
    final cs = Theme.of(context).colorScheme;
    final color = stripVisible ? cs.primary : cs.outline;
    final star = Icon(Icons.star_outline_rounded, color: color, size: size);
    if (!stripVisible) return star;
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          star,
          Transform.rotate(
            angle: -math.pi / 4,
            child: Container(
              width: size * 1.15,
              height: 2,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(1),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _openSettings() async {
    await Navigator.push<void>(
      context,
      MaterialPageRoute<void>(builder: (_) => const SettingsScreen()),
    );
    await BlockingManager.refreshBlockedNumbers();
  }

  void _openRecentsFilter() {
    void show() {
      if (!mounted) return;
      _showRecentsFilterSheet();
    }

    if (_currentIndex != 0) {
      _onTabTapped(0);
      WidgetsBinding.instance.addPostFrameCallback((_) => show());
    } else {
      show();
    }
  }

  Future<void> _setRecentsFilter(String value) async {
    main_app.recentsFilterNotifier.value = value;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('recents_filter', value);
    if (mounted) Navigator.pop(context);
  }

  Future<void> _showRecentsFilterSheet() async {
    await showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (ctx) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 8),
                  child: Container(
                    width: 32,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.outlineVariant,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
                child: Text(
                  'Filter calls',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              ValueListenableBuilder<String>(
                valueListenable: main_app.recentsFilterNotifier,
                builder: (context, current, _) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _FilterOption(
                        icon: Icons.filter_alt_outlined,
                        label: 'All',
                        subtitle: 'Entire call log',
                        selected: current == 'all',
                        onTap: () => _setRecentsFilter('all'),
                      ),
                      _FilterOption(
                        icon: Icons.call_missed_outgoing,
                        label: 'Missed',
                        subtitle: 'Missed and rejected',
                        selected: current == 'missed',
                        onTap: () => _setRecentsFilter('missed'),
                      ),
                      _FilterOption(
                        icon: Icons.contacts_outlined,
                        label: 'Contacts',
                        subtitle: 'Calls matched to a saved contact',
                        selected: current == 'contacts',
                        onTap: () => _setRecentsFilter('contacts'),
                      ),
                      _FilterOption(
                        icon: Icons.person_off_outlined,
                        label: 'Non-contacts',
                        subtitle: 'Numbers not in your address book',
                        selected: current == 'non_contacts',
                        onTap: () => _setRecentsFilter('non_contacts'),
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
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
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (didPop) return;
        if (_currentIndex == 1 && main_app.contactsSearchActiveNotifier.value) {
          main_app.clearContactsSearchTickNotifier.value++;
          return;
        }
        if (_currentIndex == 0 && main_app.recentsSearchActiveNotifier.value) {
          main_app.clearRecentsSearchTickNotifier.value++;
          return;
        }
        if (_currentIndex == 1) {
          _onTabTapped(0);
          return;
        }
        SystemNavigator.pop();
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        extendBody: true,
        appBar: _buildAppBar(),
        body: Column(
          children: [
            ValueListenableBuilder<Map<dynamic, dynamic>?>(
              valueListenable: main_app.dialerCallStateNotifier,
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
                          color: Colors.white,
                          size: 18,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Ongoing call: ${activeCallState['contactName'] ?? activeCallState['number']}',
                          style: TextStyle(
                            color: Colors.white,
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
                  FocusManager.instance.primaryFocus?.unfocus();
                  setState(() => _currentIndex = index);
                  _maybeClearMissedNotifications(index);
                },
                children: const [RecentsScreen(), ContactsScreen()],
              ),
            ),
          ],
        ),
        bottomNavigationBar: _buildBottomNav(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton:
            MediaQuery.viewInsetsOf(context).bottom > 0
                ? const SizedBox.shrink()
                : _buildFAB(),
      ),
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
        ValueListenableBuilder<bool>(
          valueListenable: FavouritesManager.showFavouritesStripOnRecents,
          builder: (context, stripVisible, _) {
            return IconButton(
              tooltip: stripVisible
                  ? 'Hide favourites on Recents'
                  : 'Show favourites on Recents',
              icon: _favouritesStripToggleIcon(context, stripVisible),
              onPressed: _toggleFavouritesStrip,
            );
          },
        ),
        const SizedBox(width: 2),
        ValueListenableBuilder<String>(
          valueListenable: main_app.recentsFilterNotifier,
          builder: (context, filter, _) {
            return Stack(
              clipBehavior: Clip.none,
              children: [
                IconButton(
                  tooltip: 'Filter',
                  icon: Icon(
                    Icons.filter_alt_outlined,
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  onPressed: _openRecentsFilter,
                ),
                if (filter != 'all')
                  Positioned(
                    right: 10,
                    top: 10,
                    child: Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
        const SizedBox(width: 2),
        IconButton(
          tooltip: 'Settings',
          icon: Icon(
            Icons.settings_outlined,
            color: Theme.of(context).colorScheme.outline,
          ),
          onPressed: _openSettings,
        ),
      ],
    );
  }

  Widget _buildFAB() {
    final scheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTapDown: (_) => _fabCtrl?.forward(),
      onTapUp: (_) {
        _fabCtrl?.reverse();
        _openDialpad();
      },
      onTapCancel: () => _fabCtrl?.reverse(),
      child: ScaleTransition(
        scale: _fabScale,
        child: Material(
          color: scheme.primary,
          shape: CircleBorder(
            side: BorderSide(
              color: scheme.onPrimary.withValues(alpha: 0.2),
              width: 1.5,
            ),
          ),
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          surfaceTintColor: Colors.transparent,
          shadowColor: Colors.transparent,
          child: SizedBox(
            width: 64,
            height: 64,
            child: Icon(
              Icons.dialpad_rounded,
              color: scheme.onPrimary,
              size: 26,
            ),
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

class _FilterOption extends StatelessWidget {
  final IconData icon;
  final String label;
  final String subtitle;
  final bool selected;
  final VoidCallback onTap;

  const _FilterOption({
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
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                SizedBox(
                  width: 40,
                  height: 40,
                  child: Icon(
                    icon,
                    color: selected
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.onSurface,
                    size: 22,
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
                          color: Theme.of(context).colorScheme.onSurface,
                          fontSize: 16,
                          fontWeight:
                              selected ? FontWeight.w600 : FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        subtitle,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
                if (selected)
                  Icon(
                    Icons.check_circle,
                    color: Theme.of(context).colorScheme.primary,
                    size: 22,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
                ? Theme.of(context).colorScheme.primary
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
                  ? Theme.of(context).colorScheme.primary
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
