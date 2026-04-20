import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:permission_handler/permission_handler.dart';

import '../services/favourites_manager.dart';

/// Manage favourite contacts: reorder, remove, add from address book.
class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({super.key});

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      drawer: Drawer(
        backgroundColor: cs.surface,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 8),
                child: Text(
                  'Favourites',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: cs.onSurface,
                  ),
                ),
              ),
              const Divider(height: 1),
              ListTile(
                leading: Icon(Icons.person_add_outlined, color: cs.onSurface),
                title: Text(
                  'Add favourite',
                  style: TextStyle(
                    color: cs.onSurface,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  _pickContactToAdd();
                },
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Text(
                  'Use the menu to add contacts. Tap outside the drawer or swipe it closed. Star a contact from their details, or long-press a call in Recents.',
                  style: TextStyle(
                    fontSize: 13,
                    color: cs.onSurfaceVariant,
                    height: 1.35,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu_rounded, color: cs.onSurface),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
          tooltip: 'Menu',
        ),
        title: Text(
          'Favourites',
          style: TextStyle(
            color: cs.onSurface,
            fontWeight: FontWeight.w300,
            fontSize: 22,
          ),
        ),
        foregroundColor: cs.onSurface,
      ),
      body: ValueListenableBuilder<List<FavouriteEntry>>(
        valueListenable: FavouritesManager.favouritesNotifier,
        builder: (context, list, _) {
          if (list.isEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Text(
                  'No favourites yet.\nOpen the menu to add one, or star a contact.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    fontSize: 15,
                    height: 1.4,
                  ),
                ),
              ),
            );
          }
          return ReorderableListView.builder(
            padding: const EdgeInsets.only(bottom: 24),
            itemCount: list.length,
            onReorder: (oldIndex, newIndex) {
              FavouritesManager.reorder(oldIndex, newIndex);
            },
            itemBuilder: (context, index) {
              final e = list[index];
              return ListTile(
                key: ValueKey('${e.number}_$index'),
                leading: CircleAvatar(
                  backgroundColor:
                      Theme.of(context).colorScheme.surfaceContainerHighest,
                  child: Text(
                    e.name.isNotEmpty ? e.name[0].toUpperCase() : '?',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 18,
                    ),
                  ),
                ),
                title: Text(
                  e.name.isNotEmpty ? e.name : e.number,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                subtitle: Text(
                  e.number,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    fontSize: 13,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  onPressed: () =>
                      FavouritesManager.removeFavourite(e.number),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Future<void> _pickContactToAdd() async {
    final status = await Permission.contacts.request();
    if (!status.isGranted) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Contacts permission needed')),
        );
      }
      return;
    }

    final contacts = await FlutterContacts.getContacts(
      withProperties: true,
      withThumbnail: false,
    );
    if (!mounted) return;

    final picked = await showModalBottomSheet<Contact>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.4,
        maxChildSize: 0.95,
        builder: (_, scrollController) => Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
          ),
          child: Column(
            children: [
              const SizedBox(height: 12),
              Container(
                width: 32,
                height: 4,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.outlineVariant,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Choose contact',
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: contacts.length,
                  itemBuilder: (context, i) {
                    final c = contacts[i];
                    return ListTile(
                      title: Text(c.displayName),
                      subtitle: c.phones.isEmpty
                          ? const Text('No phone')
                          : Text(c.phones.first.number),
                      onTap: () => Navigator.pop(ctx, c),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );

    if (picked == null || !mounted) return;

    if (picked.phones.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('This contact has no phone number')),
      );
      return;
    }

    if (picked.phones.length == 1) {
      final p = picked.phones.first.number;
      await FavouritesManager.addFavourite(
        FavouriteEntry(
          id: picked.id,
          number: p,
          name: picked.displayName,
        ),
      );
      return;
    }

    final number = await showModalBottomSheet<String>(
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
            children: [
              const SizedBox(height: 12),
              Text(
                'Pick number',
                style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 8),
              ...picked.phones.map(
                (phone) => ListTile(
                  title: Text(phone.number),
                  subtitle: Text(phone.label.toString()),
                  onTap: () => Navigator.pop(ctx, phone.number),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    if (number != null && mounted) {
      await FavouritesManager.addFavourite(
        FavouriteEntry(
          id: picked.id,
          number: number,
          name: picked.displayName,
        ),
      );
    }
  }
}
