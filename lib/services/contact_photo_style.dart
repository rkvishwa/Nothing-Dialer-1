/// Display mode and avatar shape for contact photos.
library;

const kContactPhotoModePrefKey = 'contact_photo_mode';
const kContactAvatarShapePrefKey = 'contact_avatar_shape';
const kRecentsShowContactPhotosPrefKey = 'recents_show_contact_photos';
const kRecentsContactAvatarShapePrefKey = 'recents_contact_avatar_shape';

const kContactAvatarStylePrefKey = 'contact_avatar_style';
const kRecentsContactAvatarStylePrefKey = 'recents_contact_avatar_style';

/// How contact photos are shown across the app and in-call UI.
enum ContactPhotoMode {
  off('off'),
  avatar('avatar'),
  fullscreen('fullscreen');

  const ContactPhotoMode(this.prefValue);

  final String prefValue;

  static ContactPhotoMode fromPref(String? value) {
    return ContactPhotoMode.values.firstWhere(
      (m) => m.prefValue == value,
      orElse: () => ContactPhotoMode.avatar,
    );
  }

  bool get showsPhotos => this != ContactPhotoMode.off;

  bool get usesFullscreenBackground => this == ContactPhotoMode.fullscreen;
}

/// Clip shape for contact avatars (lists, detail header, in-call avatar).
enum ContactAvatarShape {
  circle('circle'),
  roundedSquare('rounded_square'),
  squircle('squircle'),
  diamond('diamond'),
  hexagon('hexagon'),
  octagon('octagon'),
  star('star'),
  shield('shield'),
  pentagon('pentagon');

  const ContactAvatarShape(this.prefValue);

  final String prefValue;

  static ContactAvatarShape fromPref(String? value) {
    return switch (value) {
      'square' => ContactAvatarShape.roundedSquare,
      'pixel_circle' => ContactAvatarShape.circle,
      final v when v != null =>
        ContactAvatarShape.values.firstWhere(
          (s) => s.prefValue == v,
          orElse: () => ContactAvatarShape.circle,
        ),
      _ => ContactAvatarShape.circle,
    };
  }
}

/// Visual style applied to the shape (e.g. pixelated).
enum ContactAvatarStyle {
  normal('normal'),
  nothing('nothing');

  const ContactAvatarStyle(this.prefValue);

  final String prefValue;

  static ContactAvatarStyle fromPref(String? value) {
    return ContactAvatarStyle.values.firstWhere(
      (s) => s.prefValue == value,
      orElse: () => ContactAvatarStyle.normal,
    );
  }
}

/// Where [ContactAvatar] is rendered; recents uses its own photo/shape prefs.
enum ContactAvatarSurface {
  general,
  recents,
}

const ContactPhotoMode kDefaultContactPhotoMode = ContactPhotoMode.avatar;
const ContactAvatarShape kDefaultContactAvatarShape = ContactAvatarShape.circle;
const ContactAvatarStyle kDefaultContactAvatarStyle = ContactAvatarStyle.normal;
const bool kDefaultRecentsShowContactPhotos = false;
const ContactAvatarShape kDefaultRecentsContactAvatarShape =
    ContactAvatarShape.circle;
const ContactAvatarStyle kDefaultRecentsContactAvatarStyle =
    ContactAvatarStyle.normal;
