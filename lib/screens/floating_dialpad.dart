import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:permission_handler/permission_handler.dart';
import 'sim_picker_sheet.dart';

/// Advanced floating dialpad shown as a draggable bottom sheet.
///
/// Features
/// ────────
/// • Sub-label letters on number keys (ABC, DEF, …)
/// • Long-press 0 → inserts '+'
/// • Long-press 1 → speed-dial (voicemail placeholder)
/// • Backspace + long-press clears all
/// • Paste from clipboard
/// • Auto phone-number formatting (groups of digits: XXX-XXX-XXXX etc.)
/// • Animated entrance / exit (slides up from bottom)
/// • Haptic feedback on every key press
/// • Call button pulses when number is ready
/// • Semi-transparent frosted dark surface
void showFloatingDialpad(
  BuildContext context, {
  String initialDigits = '',
  required Future<void> Function(String digits, int simIndex) onCall,
}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    useSafeArea: true,
    builder: (_) =>
        _FloatingDialpad(initialDigits: initialDigits, onCall: onCall),
  );
}

// ─────────────────────────────────────────────────────────────────────────────

class _ContactMatch {
  final Contact contact;
  final String matchedNumber;
  _ContactMatch(this.contact, this.matchedNumber);
}

class _FloatingDialpad extends StatefulWidget {
  final String initialDigits;
  final Future<void> Function(String digits, int simIndex) onCall;

  const _FloatingDialpad({required this.initialDigits, required this.onCall});

  @override
  State<_FloatingDialpad> createState() => _FloatingDialpadState();
}

class _FloatingDialpadState extends State<_FloatingDialpad>
    with SingleTickerProviderStateMixin {
  late final TextEditingController _numberController;
  late final FocusNode _focusNode;
  bool _calling = false;
  bool _cursorVisible = false;
  List<Contact> _contacts = [];

  static const _channel = MethodChannel('nothing_dialer/control');

  static const _rows = [
    ['1', '2', '3'],
    ['4', '5', '6'],
    ['7', '8', '9'],
    ['*', '0', '#'],
  ];

  static const _subLabels = {
    '1': '',
    '2': 'ABC',
    '3': 'DEF',
    '4': 'GHI',
    '5': 'JKL',
    '6': 'MNO',
    '7': 'PQRS',
    '8': 'TUV',
    '9': 'WXYZ',
    '0': '+',
    '*': '',
    '#': '',
  };

  @override
  void initState() {
    super.initState();
    _numberController = TextEditingController(text: widget.initialDigits);
    _numberController.addListener(() => setState(() {}));
    _focusNode = FocusNode();

    _loadContacts();
  }

  Future<void> _loadContacts() async {
    final status = await Permission.contacts.request();
    if (status.isGranted) {
      final contacts = await FlutterContacts.getContacts(withProperties: true);
      if (mounted) setState(() => _contacts = contacts);
    }
  }

  @override
  void dispose() {
    _numberController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  // ── Helpers ───────────────────────────────────────────────────────────────

  void _insertText(String textToInsert) {
    final text = _numberController.text;
    final selection = _numberController.selection;
    if (selection.baseOffset >= 0) {
      final newText = text.replaceRange(
        selection.start,
        selection.end,
        textToInsert,
      );
      _numberController.value = TextEditingValue(
        text: newText,
        selection: TextSelection.collapsed(
          offset: selection.start + textToInsert.length,
        ),
      );
    } else {
      final newText = text + textToInsert;
      _numberController.value = TextEditingValue(
        text: newText,
        selection: TextSelection.collapsed(offset: newText.length),
      );
    }
  }

  void _onKey(String key) {
    HapticFeedback.lightImpact();
    _insertText(key);
  }

  void _onLongKey(String key) {
    if (key == '0') {
      // Long-press 0 → '+'
      HapticFeedback.mediumImpact();
      _insertText('+');
    } else if (key == '1') {
      // Long-press 1 → voicemail (placeholder)
      HapticFeedback.heavyImpact();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Speed dial: Voicemail'),
          backgroundColor: Color(0xFF1E1E1E),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  void _onDelete() {
    final text = _numberController.text;
    if (text.isEmpty) return;
    HapticFeedback.lightImpact();

    final selection = _numberController.selection;
    if (selection.baseOffset > 0) {
      if (selection.start == selection.end) {
        final newText = text.replaceRange(
          selection.start - 1,
          selection.end,
          '',
        );
        _numberController.value = TextEditingValue(
          text: newText,
          selection: TextSelection.collapsed(offset: selection.start - 1),
        );
      } else {
        final newText = text.replaceRange(selection.start, selection.end, '');
        _numberController.value = TextEditingValue(
          text: newText,
          selection: TextSelection.collapsed(offset: selection.start),
        );
      }
    } else if (selection.baseOffset == -1) {
      final newText = text.substring(0, text.length - 1);
      _numberController.value = TextEditingValue(
        text: newText,
        selection: TextSelection.collapsed(offset: newText.length),
      );
    }
  }

  void _onClearAll() {
    HapticFeedback.heavyImpact();
    _numberController.clear();
  }

  Future<void> _placeCall() async {
    if (_numberController.text.isEmpty) return;
    HapticFeedback.heavyImpact();
    await _dialNumber(_numberController.text);
  }

  Future<void> _dialNumber(String number) async {
    if (number.isEmpty || _calling) return;

    // Show SIM picker first
    final simIndex = await showSimPicker(context);
    if (simIndex == null) return; // cancelled
    if (!mounted) return;

    setState(() => _calling = true);
    try {
      await widget.onCall(number, simIndex);
    } finally {
      if (mounted) setState(() => _calling = false);
    }
    if (mounted) Navigator.pop(context);
  }

  Widget _buildTopOption(IconData icon, String label, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        child: Row(
          children: [
            Icon(icon, color: Theme.of(context).colorScheme.onSurface, size: 24),
            const SizedBox(width: 24),
            Text(
              label,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ── Helpers ───────────────────────────────────────────────────────────────

  String _nameToT9(String name) {
    const mapping = {
      'a': '2',
      'b': '2',
      'c': '2',
      'd': '3',
      'e': '3',
      'f': '3',
      'g': '4',
      'h': '4',
      'i': '4',
      'j': '5',
      'k': '5',
      'l': '5',
      'm': '6',
      'n': '6',
      'o': '6',
      'p': '7',
      'q': '7',
      'r': '7',
      's': '7',
      't': '8',
      'u': '8',
      'v': '8',
      'w': '9',
      'x': '9',
      'y': '9',
      'z': '9',
    };

    final buffer = StringBuffer();
    for (var i = 0; i < name.length; i++) {
      final char = name[i].toLowerCase();
      buffer.write(mapping[char] ?? char);
    }
    return buffer.toString();
  }

  // ── Build ─────────────────────────────────────────────────────────────────

  List<_ContactMatch> _findMatchedContacts(String number) {
    if (number.isEmpty) return [];
    final normalizedSearch = number.replaceAll(RegExp(r'\D'), '');
    final matches = <_ContactMatch>[];

    for (final contact in _contacts) {
      bool matched = false;

      // 1. Check phone numbers
      for (final phone in contact.phones) {
        final normalizedPhone = phone.number.replaceAll(RegExp(r'\D'), '');
        if (normalizedPhone.contains(normalizedSearch)) {
          matches.add(_ContactMatch(contact, phone.number));
          matched = true;
          // Continue checking other phones for the same contact if they match
        }
      }

      // 2. Check name if not already matched or to add if name matches
      // Usually, we want to show the contact if the name matches even if the phone number doesn't
      // If we already added it via phone matching, we might not need to add it again
      // unless we want to show it explicitly because of the name match.
      // For now, let's just make sure it's in the list.
      if (!matched) {
        final t9Name = _nameToT9(contact.displayName);
        if (t9Name.contains(normalizedSearch)) {
          matches.add(
            _ContactMatch(
              contact,
              contact.phones.isNotEmpty ? contact.phones.first.number : '',
            ),
          );
        }
      }
    }
    return matches;
  }

  String _getInitials(String name) {
    if (name.isEmpty) return '?';
    final parts = name.trim().split(' ');
    if (parts.length == 1) return parts[0][0].toUpperCase();
    return '${parts[0][0]}${parts.last[0]}'.toUpperCase();
  }

  Widget _buildContactOption(_ContactMatch match) {
    final contact = match.contact;
    final matchedNumber = match.matchedNumber;

    // Google Phone app inspired colors
    final colors = [
      const Color(0xFFC24A00),
      const Color(0xFF007B83),
      const Color(0xFF4C5D9F),
      const Color(0xFF8A3B8B),
      const Color(0xFF0F7D4E),
    ];
    final colorPref = colors[contact.displayName.length % colors.length];

    return InkWell(
      onTap: () => _dialNumber(matchedNumber),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Row(
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: colorPref,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Text(
                _getInitials(contact.displayName),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    contact.displayName,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      const Text(
                        'Mobile ',
                        style: TextStyle(
                          color: Color(0xFF9AA0A6),
                          fontSize: 14,
                        ),
                      ),
                      // Highlight the matched part simple implementation
                      Text(
                        matchedNumber,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurface,
                          fontSize: 14,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Icon(Icons.call_outlined, color: Color(0xFF9AA0A6), size: 24),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.of(context).viewInsets.bottom;
    final digits = _numberController.text;
    final hasDigits = digits.isNotEmpty;
    final matchedContacts = _findMatchedContacts(digits);

    return AnimatedContainer(
      duration: Duration(milliseconds: 250),
      height: hasDigits ? MediaQuery.of(context).size.height : null,
      decoration: BoxDecoration(
        color: hasDigits
            ? Theme.of(context).scaffoldBackgroundColor
            : Colors.transparent,
        borderRadius: hasDigits
            ? BorderRadius.zero
            : const BorderRadius.vertical(top: Radius.circular(28)),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: hasDigits ? MainAxisSize.max : MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (hasDigits) ...[
              const SizedBox(height: 16),
              Flexible(
                child: ListView.builder(
                  itemCount: matchedContacts.length + 3,
                  itemBuilder: (context, index) {
                    if (index < matchedContacts.length) {
                      return _buildContactOption(matchedContacts[index]);
                    }
                    final optionIndex = index - matchedContacts.length;
                    if (optionIndex == 0) {
                      return _buildTopOption(
                        Icons.person_add_alt_1_outlined,
                        'Create new contact',
                        () {
                          Navigator.pop(context);
                          FlutterContacts.openExternalInsert(
                            Contact(phones: [Phone(digits)]),
                          );
                        },
                      );
                    } else if (optionIndex == 1) {
                      return _buildTopOption(
                        Icons.person_add_outlined,
                        'Add to a contact',
                        () {
                          Navigator.pop(context);
                          _channel.invokeMethod('addToExistingContact', {
                            'number': digits,
                          });
                        },
                      );
                    } else {
                      return _buildTopOption(
                        Icons.chat_bubble_outline,
                        'Send a message',
                        () {
                          Navigator.pop(context);
                          _channel.invokeMethod('openSmsApp', {
                            'number': digits,
                          });
                        },
                      );
                    }
                  },
                ),
              ),
              const SizedBox(height: 12),
            ],
            Container(
              margin: EdgeInsets.fromLTRB(12, 0, 12, hasDigits ? 16 : 16),
              padding: EdgeInsets.only(bottom: bottomPadding),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerHigh, // M3 dark surface
                borderRadius: BorderRadius.circular(28),
                boxShadow: hasDigits
                    ? []
                    : [
                        BoxShadow(
                          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.15),
                          blurRadius: 40,
                          offset: const Offset(0, -5),
                        ),
                      ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildHandle(),
                  _buildDisplay(),
                  const SizedBox(height: 8),
                  _buildDialPad(),
                  const SizedBox(height: 12),
                  _buildBottomRow(),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHandle() {
    return Padding(
      padding: const EdgeInsets.only(top: 14, bottom: 4),
      child: Container(
        width: 38,
        height: 4,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onSurfaceVariant.withValues(alpha: 0.4),
          borderRadius: BorderRadius.circular(2),
        ),
      ),
    );
  }

  Widget _buildDisplay() {
    final hasDigits = _numberController.text.isNotEmpty;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Number display (center)
          Expanded(
            child: TextField(
              controller: _numberController,
              focusNode: _focusNode,
              readOnly: true, // Prevents system keyboard
              showCursor: _cursorVisible,
              autofocus: false,
              contextMenuBuilder: (context, editableTextState) {
                final buttonItems = editableTextState.contextMenuButtonItems
                    .toList();

                // Add paste option if not already present
                if (!buttonItems.any(
                  (item) => item.type == ContextMenuButtonType.paste,
                )) {
                  buttonItems.add(
                    ContextMenuButtonItem(
                      type: ContextMenuButtonType.paste,
                      onPressed: () async {
                        editableTextState.hideToolbar();
                        final data = await Clipboard.getData(
                          Clipboard.kTextPlain,
                        );
                        if (data?.text != null) {
                          // Keep digits, +, *, #
                          final textToPaste = data!.text!.replaceAll(
                            RegExp(r'[^\d\+\*\#]'),
                            '',
                          );
                          if (textToPaste.isNotEmpty) {
                            _insertText(textToPaste);
                          }
                        }
                      },
                    ),
                  );
                }

                return AdaptiveTextSelectionToolbar.buttonItems(
                  anchors: editableTextState.contextMenuAnchors,
                  buttonItems: buttonItems,
                );
              },
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: _numberController.text.length > 12 ? 26 : 36,
                fontWeight: FontWeight.w400,
                letterSpacing: hasDigits ? 1.5 : 0,
              ),
              cursorColor: Theme.of(context).colorScheme.primary,
              cursorWidth: 1.5,
              cursorHeight: _numberController.text.length > 12 ? 22 : 30,
              decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
                isDense: true,
              ),
              onTap: () {
                if (!_cursorVisible) {
                  setState(() => _cursorVisible = true);
                }
                _focusNode.requestFocus();
              },
            ),
          ),

          // Backspace (right)
          GestureDetector(
            onTap: hasDigits ? _onDelete : null,
            onLongPress: hasDigits ? _onClearAll : null,
            child: AnimatedOpacity(
              opacity: hasDigits ? 1.0 : 0.2,
              duration: const Duration(milliseconds: 200),
              child: Container(
                width: 44,
                height: 36,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Icon(
                  Icons.backspace_outlined,
                  color: Theme.of(context).colorScheme.onSurface,
                  size: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDialPad() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: _rows.map((row) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Row(
              children: row.map((key) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: _DialKey(
                      key: ValueKey('key_$key'),
                      label: key,
                      subLabel: _subLabels[key] ?? '',
                      onTap: () => _onKey(key),
                      onLongPress: () => _onLongKey(key),
                    ),
                  ),
                );
              }).toList(),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildBottomRow() {
    final hasDigits = _numberController.text.isNotEmpty;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Call button
          _CallButton(calling: _calling, enabled: hasDigits, onTap: _placeCall),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Sub-widgets
// ─────────────────────────────────────────────────────────────────────────────

class _DialKey extends StatefulWidget {
  final String label;
  final String subLabel;
  final VoidCallback onTap;
  final VoidCallback onLongPress;

  const _DialKey({
    super.key,
    required this.label,
    required this.subLabel,
    required this.onTap,
    required this.onLongPress,
  });

  @override
  State<_DialKey> createState() => _DialKeyState();
}

class _DialKeyState extends State<_DialKey>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;
  late final Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 80),
      reverseDuration: const Duration(milliseconds: 150),
    );
    _scale = Tween<double>(
      begin: 1.0,
      end: 0.90,
    ).animate(CurvedAnimation(parent: _ctrl, curve: Curves.easeOut));
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  void _onTapDown(_) => _ctrl.forward();
  void _onTapUp(_) => _ctrl.reverse();
  void _onTapCancel() => _ctrl.reverse();

  @override
  Widget build(BuildContext context) {
    final hasSubLabel = widget.subLabel.isNotEmpty;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: widget.onTap,
        onLongPress: widget.onLongPress,
        onTapDown: _onTapDown,
        onTapUp: _onTapUp,
        onTapCancel: _onTapCancel,
        borderRadius: BorderRadius.circular(40),
        splashColor: Theme.of(
          context,
        ).colorScheme.onSurface.withValues(alpha: 0.1),
        highlightColor: Theme.of(
          context,
        ).colorScheme.onSurface.withValues(alpha: 0.05),
        child: ScaleTransition(
          scale: _scale,
          child: SizedBox(
            height: 76,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.label,
                  style: TextStyle(
                    color: widget.label == '*' || widget.label == '#'
                        ? Theme.of(context).colorScheme.onSurfaceVariant
                        : Theme.of(context).colorScheme.onSurface,
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                    height: 1.0,
                  ),
                ),
                if (hasSubLabel) ...[
                  const SizedBox(height: 2),
                  Text(
                    widget.subLabel,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────

class _CallButton extends StatelessWidget {
  final bool calling;
  final bool enabled;
  final VoidCallback onTap;

  const _CallButton({
    required this.calling,
    required this.enabled,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: enabled ? onTap : null,
        borderRadius: BorderRadius.circular(40),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          width: 140,
          height: 72,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: enabled ? const Color(0xFF30D158) : Theme.of(context).colorScheme.surfaceContainerHighest,
          ),
          alignment: Alignment.center,
          child: calling
              ? SizedBox(
                  width: 28,
                  height: 28,
                  child: CircularProgressIndicator(
                    strokeWidth: 2.5,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                )
              : Icon(
                  Icons.call,
                  color: enabled
                      ? Theme.of(context).colorScheme.onPrimary
                      : Theme.of(context).colorScheme.onSurfaceVariant,
                  size: 32,
                ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────

class _IconCircleButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final double opacity;

  const _IconCircleButton({
    required this.icon,
    required this.onTap,
    this.opacity = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(26),
        child: Opacity(
          opacity: opacity,
          child: Container(
            width: 52,
            height: 52,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
            ),
            alignment: Alignment.center,
            child: Icon(
              icon,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
              size: 28,
            ),
          ),
        ),
      ),
    );
  }
}
