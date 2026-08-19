// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lao (`lo`).
class AppLocalizationsLo extends AppLocalizations {
  AppLocalizationsLo([String locale = 'lo']) : super(locale);

  @override
  String get appTitle => 'ບໍ່ມີຫຍັງ Dialer';

  @override
  String get settings => 'ການຕັ້ງຄ່າ';

  @override
  String get settingsSearchHint => 'ການຕັ້ງຄ່າການຊອກຫາ';

  @override
  String get settingsSearchNoResults => 'ບໍ່ພົບການຕັ້ງຄ່າ';

  @override
  String get general => 'ທົ່ວໄປ';

  @override
  String get appearanceSection => 'Appearance';

  @override
  String get inCallScreenSection => 'In-call screen';

  @override
  String get simAndCallsSection => 'SIM & calls';

  @override
  String get callListsSection => 'Call lists';

  @override
  String get contactsAndRecentsSection => 'Contacts & recents';

  @override
  String get glyphCallingSection => 'Glyph — calling';

  @override
  String get glyphOngoingSection => 'Glyph — during call';

  @override
  String get torchIncomingGroup => 'Incoming';

  @override
  String get torchOutgoingGroup => 'Outgoing';

  @override
  String get torchDuringCallGroup => 'During call';

  @override
  String get theme => 'ຫົວຂໍ້';

  @override
  String get themeSystemDefault => 'ຄ່າເລີ່ມຕົ້ນຂອງລະບົບ';

  @override
  String get themeLight => 'ແສງສະຫວ່າງ';

  @override
  String get themeDark => 'ມືດ';

  @override
  String get themeFollowSystem => 'ປະຕິບັດຕາມການຕັ້ງຄ່າລະບົບ';

  @override
  String get themeAlwaysLight => 'ໃຊ້ຮູບແບບສີສັນແຈ້ງສະເໝີ';

  @override
  String get themeAlwaysDark => 'ໃຊ້ຮູບແບບສີສັນມືດສະເໝີ';

  @override
  String get language => 'ພາສາ';

  @override
  String get languageDeviceDefault => 'ອຸປະກອນເລີ່ມຕົ້ນ';

  @override
  String get languagePickerTitle => 'ພາສາ';

  @override
  String get languageSearchHint => 'ຊອກຫາພາສາ';

  @override
  String get font => 'ຟອນ';

  @override
  String get fontSystem => 'ຄ່າເລີ່ມຕົ້ນຂອງລະບົບ';

  @override
  String get fontNdot => 'ບໍ່ມີຫຍັງ (NDot)';

  @override
  String get fontSerif => 'Roboto Serif';

  @override
  String get fontNoto => 'Noto';

  @override
  String get fontNotoInfo =>
      'Some fonts don’t include every writing system. Download this pack so all languages display correctly.';

  @override
  String get fontNotoAlreadyDownloaded =>
      'These fonts are already downloaded on this device.';

  @override
  String get fontNotoDownload => 'Multilingual fonts';

  @override
  String get fontNotoDownloading => 'Downloading…';

  @override
  String get fontNotoReady => 'Downloaded';

  @override
  String get fontNotoDownloadFailed =>
      'ດາວໂຫຼດຟອນບໍ່ສຳເລັດ. ກວດເບິ່ງການເຊື່ອມຕໍ່ຂອງທ່ານແລ້ວລອງໃໝ່ອີກຄັ້ງ.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'ຟອນ';

  @override
  String get fontPreviewSample => 'ບໍ່ມີຫຍັງ Dialer';

  @override
  String get fontAppWide => 'ຟອນແອັບ';

  @override
  String get fontApplyTo => 'ນຳໃຊ້ກັບ';

  @override
  String get fontApplyEntireApp => 'ແອັບທັງໝົດ';

  @override
  String get fontApplyEntireAppSubtitle =>
      'ຕົວອັກສອນດຽວກັນຢູ່ທົ່ວທຸກແຫ່ງ, ລວມທັງຢູ່ໃນການໂທ';

  @override
  String get fontApplyTitlesOnly => 'ຫົວຂໍ້ & ສ່ວນຫົວ';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'ຫົວຂໍ້ໃຫຍ່ ແລະສ່ວນຫົວຂອງພາກສ່ວນເທົ່ານັ້ນ';

  @override
  String get fontApplyCustomize => 'ປັບແຕ່ງ';

  @override
  String get fontApplyCustomizeSubtitle =>
      'ເລືອກຕົວອັກສອນຕໍ່ໜ້າຈໍ ແລະປະເພດຂໍ້ຄວາມ';

  @override
  String get fontCustomizeSection => 'ປັບແຕ່ງໂດຍໜ້າຈໍ';

  @override
  String get fontCustomizeScreenHint =>
      'Choose a font for each text style. Unchanged styles use the app font above.';

  @override
  String get fontResetScreen => 'Reset';

  @override
  String get fontUsesAppDefault => 'Same as app font';

  @override
  String fontCustomizeRolesCount(int count) {
    return '$count custom styles';
  }

  @override
  String get fontCustomizeGroupCalls => 'Calls & people';

  @override
  String get fontCustomizeGroupDialer => 'Dialer';

  @override
  String get fontCustomizeGroupApp => 'App & system';

  @override
  String get fontCustomizeEditScreens => 'Edit per-screen fonts';

  @override
  String get fontCustomizeEditScreensSubtitle =>
      'Tap a screen, then adjust text styles';

  @override
  String fontCustomizeScreensCount(int count) {
    return '$count screens customized';
  }

  @override
  String fontRolePickerTitle(String role) {
    return 'Font for $role';
  }

  @override
  String get fontChipSystem => 'System';

  @override
  String get fontChipNdot => 'NDot';

  @override
  String get fontChipSerif => 'Serif';

  @override
  String get fontChipNoto => 'Noto';

  @override
  String get fontRolePageTitle => 'ຊື່ໜ້າ';

  @override
  String get fontRoleSectionHeader => 'ສ່ວນຫົວ';

  @override
  String get fontRolePrimary => 'ຂໍ້ຄວາມຫຼັກ';

  @override
  String get fontRoleSecondary => 'ຂໍ້ຄວາມທີສອງ';

  @override
  String get fontRoleButton => 'ປຸ່ມ';

  @override
  String get fontRoleDialKey => 'ປຸ່ມກົດ';

  @override
  String get fontSurfaceRecents => 'ຫຼ້າສຸດ';

  @override
  String get fontSurfaceContacts => 'ຕິດຕໍ່ພົວພັນ';

  @override
  String get fontSurfaceSettings => 'ການຕັ້ງຄ່າ';

  @override
  String get fontSurfaceDialpad => 'ປຸ່ມກົດ';

  @override
  String get fontSurfaceShell => 'ການນໍາທາງ';

  @override
  String get fontSurfaceDefaultDialer => 'ການເຕືອນຕົວໂທເລີ່ມຕົ້ນ';

  @override
  String get fontSurfaceFavourites => 'ລາຍການທີ່ມັກ';

  @override
  String get fontSurfaceBlocked => 'ຕົວເລກທີ່ຖືກບລັອກ';

  @override
  String get fontSurfaceContactDetail => 'ລາຍລະອຽດຕິດຕໍ່';

  @override
  String get fontSurfaceCallHistory => 'ປະຫວັດການໂທ';

  @override
  String get fontSurfaceSheets => 'Sheets & pickers';

  @override
  String get fontSurfaceInCall => 'ໜ້າຈໍການໂທ';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font - ແອັບທັງໝົດ';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font - ຊື່ເທົ່ານັ້ນ';
  }

  @override
  String get fontSubtitleCustomize => 'ກຳນົດເອງຕໍ່ໜ້າຈໍ';

  @override
  String get background => 'ຄວາມເປັນມາ';

  @override
  String get accent => 'ສຳນຽງ';

  @override
  String get lightBackground => 'ພື້ນຫຼັງອ່ອນ';

  @override
  String get lightAccent => 'ສຳນຽງອ່ອນ';

  @override
  String get darkBackground => 'ພື້ນຫຼັງມືດ';

  @override
  String get darkAccent => 'ສໍານຽງຊ້ໍາ';

  @override
  String get callBackground => 'ປະຫວັດການໂທ';

  @override
  String get contactPhotos => 'Contact photos';

  @override
  String get contactPhotoDisplayMode => 'Display mode';

  @override
  String get contactPhotoModeOff => 'Off';

  @override
  String get contactPhotoModeOffSubtitle =>
      'Show initials only, no contact photos';

  @override
  String get contactPhotoModeAvatar => 'Avatar';

  @override
  String get contactPhotoModeAvatarSubtitle =>
      'Show photos clipped to a shape in lists and calls';

  @override
  String get contactPhotoModeFullscreen => 'Full screen';

  @override
  String get contactPhotoModeFullscreenSubtitle =>
      'Use contact photo as background on detail and in-call screens';

  @override
  String get contactAvatarShape => 'Avatar shape';

  @override
  String get contactAvatarShapeSubtitle =>
      'Shape used for avatars in contacts, favourites, and on the call screen';

  @override
  String get contactAvatarShapeCircle => 'Circle';

  @override
  String get contactAvatarShapeRoundedSquare => 'Rounded square';

  @override
  String get contactAvatarShapeSquircle => 'Squircle';

  @override
  String get contactAvatarShapeDiamond => 'Diamond';

  @override
  String get contactAvatarShapeHexagon => 'Hexagon';

  @override
  String get contactAvatarShapeOctagon => 'Octagon';

  @override
  String get contactAvatarShapeStar => 'Star';

  @override
  String get contactAvatarShapeShield => 'Shield';

  @override
  String get contactAvatarShapePentagon => 'Pentagon';

  @override
  String get recentsContactPhotosSection => 'Recents';

  @override
  String get recentsShowContactPhotos => 'Show photos in Recents';

  @override
  String get recentsShowContactPhotosSubtitle =>
      'Display contact photos on the Recents screen. Off by default.';

  @override
  String get recentsAvatarShape => 'Recents avatar shape';

  @override
  String get recentsAvatarShapeSubtitle =>
      'Shape used for avatars on the Recents screen only';

  @override
  String get contactPhotoPreviewContacts => 'Contacts';

  @override
  String get contactPhotoPreviewRecents => 'Recents';

  @override
  String get contactPhotoPreviewBothOn =>
      'Photos shown in contacts and Recents';

  @override
  String get contactPhotoPreviewRecentsOff =>
      'Photos in contacts only — Recents shows initials';

  @override
  String get contactPhotoPickFromGallery => 'Choose from gallery';

  @override
  String get contactPhotoRemove => 'Remove photo';

  @override
  String get contactPhotoUpdated => 'Contact photo updated';

  @override
  String get contactPhotoRemoved => 'Contact photo removed';

  @override
  String get contactPhotoPickError => 'Could not update contact photo';

  @override
  String get contactPhotoCropTitle => 'Crop photo';

  @override
  String get contactPhotoCropDone => 'Done';

  @override
  String get contactPhotoCropCancel => 'Cancel';

  @override
  String get appIcon => 'ໄອຄອນແອັບ';

  @override
  String get answerMethod => 'ວິທີການຕອບ';

  @override
  String get answerSlide => 'ເລື່ອນເພື່ອຕອບ';

  @override
  String get answerSlideSubtitle => 'ປັດຊ້າຍ/ຂວາເທິງແຖບ, ເຊັ່ນ Google Phone';

  @override
  String get answerButton => 'ແຕະປຸ່ມ';

  @override
  String get answerButtonSubtitle => 'ແຕະໃສ່ຄຳຕອບ ຫຼືປຸ່ມປະຕິເສດ';

  @override
  String get answerHuawei => 'ແບບ Huawei';

  @override
  String get answerHuaweiSubtitle => 'ລາກວົງມົນໄປຫາໂທລະສັບສີຂຽວເພື່ອຕອບ';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — ລາກເປັນສີຂຽວ/ສີແດງ';

  @override
  String get calling => 'ໂທ';

  @override
  String get callDisplay => 'Call display';

  @override
  String get callDisplaySubtitleDefault => 'Show name and number';

  @override
  String get callDisplaySubtitleNameOnlyIncoming => 'Name only on incoming';

  @override
  String get callDisplaySubtitleNameOnlyOutgoing => 'Name only on outgoing';

  @override
  String get callDisplaySubtitleNameOnlyInCall => 'Name only during call';

  @override
  String get callDisplaySubtitleSimHiddenIncoming => 'SIM hidden on incoming';

  @override
  String get callDisplaySubtitleSimHiddenOutgoing => 'SIM hidden on outgoing';

  @override
  String get callDisplaySubtitleSimHiddenInCall => 'SIM hidden during call';

  @override
  String get callDisplaySheetTitle => 'Call display';

  @override
  String get callDisplayHideNumberSection => 'Hide number';

  @override
  String get callDisplayHideNumberSectionSubtitle =>
      'For saved contacts only. Unknown numbers still show the number.';

  @override
  String get callDisplayHideSimSection => 'Hide calling SIM';

  @override
  String get callDisplayHideNumberIncoming => 'Incoming calls';

  @override
  String get callDisplayHideNumberOutgoing => 'Outgoing calls';

  @override
  String get callDisplayHideNumberInCall => 'During call';

  @override
  String get callDisplayHideSimIncoming => 'Incoming calls';

  @override
  String get callDisplayHideSimOutgoing => 'Outgoing calls';

  @override
  String get callDisplayHideSimInCall => 'During call';

  @override
  String get defaultSim => 'SIM ເລີ່ມຕົ້ນ';

  @override
  String get simIconColor => 'SIM icon colors';

  @override
  String simIconColorFor(String label) {
    return '$label icon color';
  }

  @override
  String get simIconColorSubtitle => 'Badge on call history';

  @override
  String get simIconColorDefault => 'Theme default';

  @override
  String get simIconStyleOutline => 'Outline';

  @override
  String get simIconStyleFill => 'Fill';

  @override
  String get simIconStyleSection => 'Style';

  @override
  String get simIconBadgeColor => 'Color';

  @override
  String get customSimIconColorPicker => 'Custom SIM icon color';

  @override
  String get askEveryTime => 'ຖາມທຸກຄັ້ງ';

  @override
  String get askEveryTimeSubtitle => 'ສະແດງຕົວເລືອກ SIM ກ່ອນການໂທແຕ່ລະຄັ້ງ';

  @override
  String simSlot(int slot) {
    return 'ຊິມ $slot';
  }

  @override
  String get noSimCardsFound => 'ບໍ່ພົບຊິມກາດ';

  @override
  String couldNotLoadSims(String error) {
    return 'ບໍ່ສາມາດໂຫລດຊິມໄດ້: $error';
  }

  @override
  String get allFavourites => 'ລາຍການທີ່ມັກທັງໝົດ';

  @override
  String get allFavouritesSubtitle =>
      'ຈັດລໍາດັບໃຫມ່, ເອົາອອກ, ແລະເພີ່ມຈາກລາຍຊື່';

  @override
  String get blockedNumbers => 'ຕົວເລກທີ່ຖືກບລັອກ';

  @override
  String get blockedNumbersSubtitle => 'ເບິ່ງແລະປົດບລັອກຕົວເລກ';

  @override
  String get soundsAndVibration => 'ສຽງແລະການສັ່ນສະເທືອນ';

  @override
  String get soundsAndVibrationSubtitle =>
      'ສຽງຣິງໂທນ, ການສັ່ນສະເທືອນ, ປຸ່ມໂທນສຽງ';

  @override
  String couldNotOpenSettings(String error) {
    return 'ບໍ່ສາມາດເປີດການຕັ້ງຄ່າໄດ້: $error';
  }

  @override
  String get frequentlyContacted => 'ຕິດຕໍ່ເລື້ອຍໆ';

  @override
  String get numberOfRecords => 'ຈໍານວນບັນທຶກ';

  @override
  String get timePeriod => 'ໄລຍະເວລາ';

  @override
  String get periodLast24Hours => '24 ຊົ່ວໂມງທີ່ຜ່ານມາ';

  @override
  String get periodLast24HoursSubtitle => 'ໂທຈາກມື້ທີ່ຜ່ານມາ';

  @override
  String get periodLast7Days => '7 ມື້ທີ່ຜ່ານມາ';

  @override
  String get periodLast7DaysSubtitle => 'ໂທຈາກອາທິດທີ່ຜ່ານມາ';

  @override
  String get periodLast30Days => '30 ມື້ທີ່ຜ່ານມາ';

  @override
  String get periodLast30DaysSubtitle => 'ໂທຈາກເດືອນທີ່ຜ່ານມາ';

  @override
  String get periodLast12Months => '12 ເດືອນຜ່ານມາ';

  @override
  String get periodLast12MonthsSubtitle => 'ໂທຈາກປີທີ່ຜ່ານມາ';

  @override
  String get periodAllTime => 'ຕະຫຼອດເວລາ';

  @override
  String get periodAllTimeSubtitle => 'ປະຫວັດການໂທທັງໝົດ';

  @override
  String get frequentMaxOff => 'ປິດ';

  @override
  String frequentMaxCount(int count) {
    return '$count ຕິດຕໍ່ພົວພັນ';
  }

  @override
  String get torchBlink => 'ກະພິບໄຟ';

  @override
  String get torchIncomingCall => 'ໄຟສາຍໂທເຂົ້າ';

  @override
  String get torchOutgoingCall => 'ໄຟສາຍໂທອອກ';

  @override
  String get torchOngoingCall => 'ໄຟສາຍໂທຢ່າງຕໍ່ເນື່ອງ';

  @override
  String get torchIncomingInterval => 'ໄລຍະກະພິບເຂົ້າມາ';

  @override
  String get torchOutgoingInterval => 'ໄລຍະກະພິບຂາອອກ';

  @override
  String get torchOngoingInterval => 'ໄລຍະກະພິບທີ່ກຳລັງດຳເນີນຢູ່';

  @override
  String get torchOff => 'ປິດ';

  @override
  String get torchOffIncomingSubtitle => 'ບໍ່ມີໄຟສາຍໃນຂະນະທີ່ດັງ';

  @override
  String get torchOffOutgoingSubtitle => 'ບໍ່ມີໄຟສາຍໃນຂະນະທີ່ໂທອອກ';

  @override
  String get torchOffOngoingSubtitle => 'ບໍ່ມີໄຟສາຍໃນລະຫວ່າງການໂທ';

  @override
  String get torchFixedInterval => 'ໄລຍະຫ່າງຄົງທີ່';

  @override
  String get torchFixedIntervalSubtitle => 'ກະພິບດ້ວຍຄວາມໄວທີ່ກໍານົດໄວ້';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds ກະພິບ';
  }

  @override
  String get flashlightUnavailable => 'ໄຟສາຍບໍ່ສາມາດໃຊ້ໄດ້ໃນອຸປະກອນນີ້';

  @override
  String get glyphLights => 'Glyph Lights';

  @override
  String get glyphCallingAnimation => 'ອະນິເມຊັນການໂທຫາ Glyph';

  @override
  String get glyphOngoingAnimation => 'Glyph ເຄື່ອນໄຫວການໂທຢ່າງຕໍ່ເນື່ອງ';

  @override
  String get glyphNone => 'ບໍ່ມີ';

  @override
  String get glyphNoneOutgoingSubtitle => 'ປິດການນຳໃຊ້ໄຟ Glyph ສຳລັບການໂທອອກ';

  @override
  String get glyphNoneInCallSubtitle =>
      'ປິດການນຳໃຊ້ໄຟ Glyph ໃນຂະນະທີ່ກຳລັງໂທຢູ່';

  @override
  String get glyphBreathProgress => 'ລົມຫາຍໃຈ & ຄວາມກ້າວຫນ້າ';

  @override
  String get glyphBreathProgressSubtitle =>
      'ແສງສະຫວ່າງຫາຍໃຈໃນຂະນະທີ່ສາຍເຕັມໄປກວ່າ 65s';

  @override
  String get glyphAccumulate => 'ສະສົມ';

  @override
  String get glyphAccumulateSubtitle => 'ການສະສົມພາບເຄື່ອນໄຫວຢູ່ໄຟ C1-C4';

  @override
  String get glyphSingle => 'ໂສດ';

  @override
  String get glyphSingleSubtitle => 'ແສງດ່ຽວເຄື່ອນທີ່ຜ່ານ C1-C4';

  @override
  String get glyphBreath => 'ລົມຫາຍໃຈ';

  @override
  String get glyphBreathSubtitle => 'ເລືອກໄຟແລະຄວາມໄວ';

  @override
  String get glyphSteady => 'ໝັ້ນຄົງ';

  @override
  String get glyphSteadySubtitle => 'ໄຟທີ່ເລືອກຈະເປີດຢູ່';

  @override
  String get breathSettings => 'ການຕັ້ງຄ່າລົມຫາຍໃຈ';

  @override
  String get activeLights => 'ແສງທີ່ໃຊ້ໄດ້';

  @override
  String lightsCount(int count) {
    return '$countໄຟ';
  }

  @override
  String get speedSettings => 'ການຕັ້ງຄ່າຄວາມໄວ';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms ຊັກຊ້າ';
  }

  @override
  String get durationAndSpeed => 'ໄລຍະເວລາ ແລະຄວາມໄວ';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return 'ໄລຍະເວລາ ${duration}s, ໄລຍະຫ່າງ ${interval}ms';
  }

  @override
  String get cancel => 'ຍົກເລີກ';

  @override
  String get done => 'ສຳເລັດແລ້ວ';

  @override
  String get save => 'ບັນທຶກ';

  @override
  String get block => 'ຕັນ';

  @override
  String get delete => 'ລຶບ';

  @override
  String get recents => 'ຫຼ້າສຸດ';

  @override
  String get contacts => 'ຕິດຕໍ່ພົວພັນ';

  @override
  String get hideFavouritesOnRecents => 'ເຊື່ອງລາຍການທີ່ມັກໃນລາຍການຫຼ້າສຸດ';

  @override
  String get showFavouritesOnRecents => 'ສະແດງລາຍການທີ່ມັກໃນຫຼ້າສຸດ';

  @override
  String get ongoingCall => 'ການໂທຢ່າງຕໍ່ເນື່ອງ';

  @override
  String get setAsDefaultTitle => 'ຕັ້ງ AS\nຄ່າເລີ່ມຕົ້ນ';

  @override
  String get setAsDefaultBody =>
      'ເພື່ອໃຊ້ Nothing Dialer, ມັນຕ້ອງຖືກຕັ້ງເປັນແອັບຯໂທລະສັບເລີ່ມຕົ້ນຂອງທ່ານ. ນີ້ອະນຸຍາດໃຫ້ທ່ານສາມາດຈັດການການໂທ, ເບິ່ງປະຫວັດ, ແລະນໍາໃຊ້ພາບເຄື່ອນໄຫວ Glyph.';

  @override
  String get setAsDefaultButton => 'ຕັ້ງເປັນຄ່າເລີ່ມຕົ້ນ';

  @override
  String get nothingDialerBrand => 'NOTHING DIALER 1';

  @override
  String get favourites => 'ລາຍການທີ່ມັກ';

  @override
  String get addFavourite => 'ເພີ່ມ favorite';

  @override
  String get favouritesDrawerHint =>
      'ໃຊ້ເມນູເພື່ອເພີ່ມລາຍຊື່. ແຕະຢູ່ນອກລິ້ນຊັກ ຫຼືປັດມັນປິດ. ຕິດດາວຜູ້ຕິດຕໍ່ຈາກລາຍລະອຽດຂອງເຂົາເຈົ້າ, ຫຼືກົດປຸ່ມຄ້າງໄວ້ໃນການໂທຫຼ້າສຸດ.';

  @override
  String get menu => 'ເມນູ';

  @override
  String get noFavouritesYet =>
      'ບໍ່ມີລາຍການທີ່ມັກເທື່ອ.\nເປີດເມນູເພື່ອເພີ່ມອັນໜຶ່ງ ຫຼືຕິດດາວໃຫ້ລາຍຊື່ຜູ້ຕິດຕໍ່.';

  @override
  String get contactsPermissionNeeded => 'ຕ້ອງການສິດອະນຸຍາດຕິດຕໍ່';

  @override
  String get chooseContact => 'ເລືອກການຕິດຕໍ່';

  @override
  String get noPhone => 'ບໍ່ມີໂທລະສັບ';

  @override
  String get pickNumber => 'ເລືອກເລກ';

  @override
  String get contactHasNoPhone => 'ລາຍຊື່ຜູ້ຕິດຕໍ່ນີ້ບໍ່ມີເບີໂທລະສັບ';

  @override
  String get blockNumber => 'ບລັອກຕົວເລກ';

  @override
  String get enterPhoneNumber => 'ໃສ່ເບີໂທລະສັບ';

  @override
  String unblockedDisplay(String display) {
    return 'ປົດບລັອກແລ້ວ $display';
  }

  @override
  String get couldNotUnblockNumber => 'ບໍ່ສາມາດປົດບລັອກເບີໂທໄດ້';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blockedຖືກບລັອກ • $matched ກົງກັນ';
  }

  @override
  String get contactsPermissionMissing => 'ຂາດການອະນຸຍາດລາຍຊື່. ແຕະເພື່ອແກ້ໄຂ.';

  @override
  String get noBlockedNumbers => 'ບໍ່ມີຕົວເລກທີ່ຖືກບລັອກ';

  @override
  String get unknownContact => 'ການຕິດຕໍ່ທີ່ບໍ່ຮູ້ຈັກ';

  @override
  String get unblock => 'ປົດບລັອກ';

  @override
  String get permissionNeeded => 'ຕ້ອງການການອະນຸຍາດ';

  @override
  String get grantPhonePermission =>
      'ໃຫ້ການອະນຸຍາດໂທລະສັບເພື່ອເບິ່ງປະຫວັດການໂທຂອງທ່ານ.';

  @override
  String get grantContactsPermission =>
      'ໃຫ້ສິດອະນຸຍາດຜູ້ຕິດຕໍ່ເພື່ອເບິ່ງປຶ້ມທີ່ຢູ່ຂອງເຈົ້າ.';

  @override
  String get openSettings => 'ເປີດການຕັ້ງຄ່າ';

  @override
  String get tryAgain => 'ລອງອີກຄັ້ງ';

  @override
  String get couldNotLoadContacts => 'ບໍ່ສາມາດໂຫຼດລາຍຊື່ຜູ້ຕິດຕໍ່ໄດ້';

  @override
  String get contactsLoadError => 'ມີບາງຢ່າງຜິດພາດໃນການອ່ານປຶ້ມທີ່ຢູ່ຂອງເຈົ້າ.';

  @override
  String get noContactsFound => 'ບໍ່ພົບລາຍຊື່ຜູ້ຕິດຕໍ່';

  @override
  String get contactsEmptySubtitle =>
      'ລາຍຊື່ຜູ້ຕິດຕໍ່ຈາກອຸປະກອນຂອງທ່ານຈະປາກົດຢູ່ບ່ອນນີ້.';

  @override
  String get searchContacts => 'ຊອກຫາລາຍຊື່ຜູ້ຕິດຕໍ່...';

  @override
  String get searchRecentCalls => 'ຊອກຫາການໂທທີ່ຜ່ານມາ';

  @override
  String get fromContacts => 'ຈາກການຕິດຕໍ່';

  @override
  String get recentsSearchSection => 'ການຄົ້ນຫາທີ່ຜ່ານມາ';

  @override
  String get recentsSearchShowContacts => 'ສະແດງລາຍຊື່ຜູ່ຕິດຕໍ່ໃນການຊອກຫາ';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'ໃນຂະນະທີ່ຊອກຫາຫຼ້າສຸດ, ໃຫ້ສະແດງຄົນທີ່ກົງກັນຈາກປຶ້ມທີ່ຢູ່ຂອງທ່ານຢູ່ລຸ່ມຜົນການຊອກຫາປະຫວັດການໂທ.';

  @override
  String get voiceSearch => 'ຄົ້ນຫາດ້ວຍສຽງ';

  @override
  String get createNewContact => 'ສ້າງການຕິດຕໍ່ໃຫມ່';

  @override
  String callError(String error) {
    return 'ການໂທຜິດພາດ: $error';
  }

  @override
  String get noRecentCalls => 'ບໍ່ມີການໂທຫຼ້າສຸດ';

  @override
  String get callHistoryEmpty => 'ປະຫວັດການໂທຂອງທ່ານຈະປາກົດຢູ່ບ່ອນນີ້.';

  @override
  String get loadMore => 'ໂຫຼດເພີ່ມເຕີມ';

  @override
  String get frequentlyContactedHeader => 'ຕິດຕໍ່ກັນເລື້ອຍໆ';

  @override
  String get recentHistory => 'ປະຫວັດສາດທີ່ຜ່ານມາ';

  @override
  String get noFavouritesRecentsHint =>
      'ບໍ່ມີລາຍການທີ່ມັກເທື່ອ. ຕິດດາວຜູ້ຕິດຕໍ່, ກົດຄ້າງໄວ້ໂທຫາ, ຫຼືໃຊ້ແຖບລາຍການທີ່ມັກ.';

  @override
  String get copyNumber => 'ສຳເນົາຕົວເລກ';

  @override
  String get editNumberBeforeCall => 'ແກ້ໄຂເບີໂທກ່ອນໂທ';

  @override
  String get removeFromFavourites => 'ເອົາອອກຈາກລາຍການທີ່ມັກ';

  @override
  String get addToFavourites => 'ເພີ່ມໃສ່ລາຍການທີ່ມັກ';

  @override
  String get blockNumberQuestion => 'ບລັອກໝາຍເລກບໍ?';

  @override
  String blockNumberConfirm(String number) {
    return 'ທ່ານຈະບໍ່ໄດ້ຮັບສາຍ ຫຼື ຂໍ້ຄວາມຈາກ $number ອີກຕໍ່ໄປ.';
  }

  @override
  String get blocked => 'ບລັອກ';

  @override
  String get couldNotBlock => 'ບໍ່ສາມາດບລັອກໄດ້';

  @override
  String get contactNotOnDevice => 'ບໍ່ໄດ້ບັນທຶກລາຍຊື່ຜູ້ຕິດຕໍ່ໃນອຸປະກອນນີ້';

  @override
  String get unblocked => 'ປົດບລັອກ';

  @override
  String get numberCopied => 'ສຳເນົາຕົວເລກແລ້ວ';

  @override
  String get showLess => 'ສະແດງໜ້ອຍລົງ';

  @override
  String get showAllTimes => 'ສະແດງທຸກເວລາ';

  @override
  String mostRecent(String time) {
    return 'ຫຼ້າສຸດ · $time';
  }

  @override
  String get videoCall => 'ໂທວິດີໂອ';

  @override
  String get couldNotPlaceVideoCall => 'ບໍ່ສາມາດໂທວິດີໂອໄດ້';

  @override
  String get message => 'ຂໍ້ຄວາມ';

  @override
  String get couldNotOpenMessaging => 'ບໍ່ສາມາດເປີດແອັບຯສົ່ງຂໍ້ຄວາມໄດ້';

  @override
  String get history => 'ປະຫວັດສາດ';

  @override
  String get viewContact => 'ເບິ່ງການຕິດຕໍ່';

  @override
  String get addToContact => 'ເພີ່ມໃສ່ການຕິດຕໍ່';

  @override
  String get callTypeMissed => 'ພາດ';

  @override
  String get callTypeRejected => 'ປະຕິເສດ';

  @override
  String get callTypeIncoming => 'ຂາເຂົ້າ';

  @override
  String get callTypeOutgoing => 'ຂາອອກ';

  @override
  String get today => 'ມື້ນີ້';

  @override
  String get yesterday => 'ມື້ວານນີ້';

  @override
  String get justNow => 'ດຽວນີ້';

  @override
  String minutesAgo(int count) {
    return '$count ນາທີກ່ອນ';
  }

  @override
  String hoursAgo(int count) {
    return '$count ຊົ່ວໂມງກ່ອນ';
  }

  @override
  String get filterAll => 'ທັງໝົດ';

  @override
  String get filterMissed => 'ພາດ';

  @override
  String get filterContacts => 'ຕິດຕໍ່ພົວພັນ';

  @override
  String get filterNonContacts => 'ບໍ່ຕິດຕໍ່';

  @override
  String get iconUpdated =>
      'ອັບເດດໄອຄອນແລ້ວ. ໜ້າຈໍຫຼັກຂອງທ່ານອາດໃຊ້ເວລາຄາວໜຶ່ງເພື່ອໂຫຼດຂໍ້ມູນຄືນໃໝ່.';

  @override
  String get iconSavedRelease =>
      'ບັນທຶກທາງເລືອກແລ້ວ. ໄອຄອນໜ້າຈໍຫຼັກອັບເດດໃນລຸ້ນສ້າງ.';

  @override
  String couldNotChangeIcon(String error) {
    return 'ບໍ່ສາມາດປ່ຽນໄອຄອນໄດ້: $error';
  }

  @override
  String get launcherClassicBlack => 'ຄລາສິກ (ສີດໍາ)';

  @override
  String get launcherLight => 'ແສງສະຫວ່າງ';

  @override
  String get launcherNothingRed => 'ບໍ່ມີຫຍັງສີແດງ';

  @override
  String get launcherDarkGrey => 'ສີຂີ້ເຖົ່າເຂັ້ມ';

  @override
  String get launcherCream => 'ຄີມ';

  @override
  String get launcherRetroPhone => 'ໂທລະສັບ Retro';

  @override
  String get launcherRetroPhoneLight => 'ໂທລະສັບ Retro (ແສງສະຫວ່າງ)';

  @override
  String get voiceSearchUnavailable =>
      'ການຊອກຫາດ້ວຍສຽງບໍ່ສາມາດໃຊ້ໄດ້ໃນອຸປະກອນນີ້.';

  @override
  String voiceSearchFailed(String error) {
    return 'ການຄົ້ນຫາດ້ວຍສຽງລົ້ມເຫລວ: $error';
  }

  @override
  String get customColor => 'ກຳນົດເອງ';

  @override
  String get selectColor => 'ເລືອກສີ';

  @override
  String get reset => 'ຣີເຊັດ';

  @override
  String get simPickerTitle => 'ເລືອກ SIM';

  @override
  String get simChooseForCall => 'ເລືອກ SIM ສໍາລັບການໂທນີ້';

  @override
  String get defaultSimAsk => 'ຖາມທຸກຄັ້ງ';

  @override
  String defaultSimFixed(int slot) {
    return 'ຊິມ $slot';
  }

  @override
  String get contactDetails => 'ລາຍລະອຽດຕິດຕໍ່';

  @override
  String get call => 'ໂທ';

  @override
  String get share => 'ແບ່ງປັນ';

  @override
  String get favourite => 'ມັກ';

  @override
  String get unfavourite => 'ບໍ່ມັກ';

  @override
  String get blockContact => 'ຂັດຂວາງການຕິດຕໍ່';

  @override
  String get unblockContact => 'ປົດບລັອກການຕິດຕໍ່';

  @override
  String get deleteContact => 'ລຶບລາຍຊື່ຜູ່ຕິດຕໍ່';

  @override
  String get phone => 'ໂທລະສັບ';

  @override
  String get email => 'ອີເມວ';

  @override
  String get ringtone => 'ຣິງໂທນ';

  @override
  String get defaultRingtone => 'ຄ່າເລີ່ມຕົ້ນ';

  @override
  String get simForContact => 'SIM ສໍາລັບການຕິດຕໍ່ນີ້';

  @override
  String get callHistoryTitle => 'ປະຫວັດການໂທ';

  @override
  String get noCallsWithNumber => 'ບໍ່ມີການໂທດ້ວຍເບີນີ້';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '$minutesມ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'ພາບເຄື່ອນໄຫວ Glyph';

  @override
  String get inCallGlyphAnimationStyle => 'ອະນິເມຊັນ Glyph ໃນການໂທ';

  @override
  String get recordsOff => 'ປິດ';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'SIM ເລີ່ມຕົ້ນ';

  @override
  String get nothingPhoneOnly => 'ບໍ່ມີຫຍັງໂທລະສັບເທົ່ານັ້ນ';

  @override
  String get nothingPhoneOnlySubtitle =>
      'ຄຸນສົມບັດ Glyph ຕ້ອງການໂທລະສັບທີ່ບໍ່ມີຫຍັງ';

  @override
  String get custom => 'ກຳນົດເອງ';

  @override
  String presetColorHex(String hex) {
    return 'ຕັ້ງຄ່າໄວ້ລ່ວງໜ້າ · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'ກຳນົດເອງ · $hex';
  }

  @override
  String get oneContact => '1 ຕິດຕໍ່';

  @override
  String upToContacts(int count) {
    return 'ສູງສຸດ $count ຕິດຕໍ່ພົວພັນ';
  }

  @override
  String get answerButtonTapSubtitle => 'ແຕະປຸ່ມເພື່ອຕອບ';

  @override
  String get filterCalls => 'ກັ່ນຕອງການໂທ';

  @override
  String get filterTooltip => 'ການກັ່ນຕອງ';

  @override
  String get settingsTooltip => 'ການຕັ້ງຄ່າ';

  @override
  String get filterAllSubtitle => 'ບັນທຶກການໂທທັງໝົດ';

  @override
  String get filterMissedSubtitle => 'ພາດ ແລະຖືກປະຕິເສດ';

  @override
  String get filterContactsSubtitle => 'ການໂທກົງກັບລາຍຊື່ຜູ້ຕິດຕໍ່ທີ່ບັນທຶກໄວ້';

  @override
  String get filterNonContactsSubtitle => 'ຕົວເລກບໍ່ໄດ້ຢູ່ໃນປື້ມທີ່ຢູ່ຂອງເຈົ້າ';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'ສາຍໂທທີ່ກຳລັງໂທ: $detail';
  }

  @override
  String get defaultSimForCalls => 'SIM ເລີ່ມຕົ້ນສໍາລັບການໂທ';

  @override
  String get blinkInterval => 'ໄລຍະກະພິບ';

  @override
  String get close => 'ປິດ';

  @override
  String get frequentlyContactedInfoBody =>
      'ສະ​ແດງ​ໃຫ້​ເຫັນ​ເບີ​ໂທ​ລະ​ສັບ​ທີ່​ມີ​ຊື່​ສຽງ​ຫຼາຍ​ທີ່​ສຸດ​ຂອງ​ທ່ານ​ຢູ່​ດ້ານ​ເທິງ​ຂອງ​ແຖບ​ບໍ່​ດົນ​ມາ​ນີ້, ອີງ​ຕາມ​ຈໍາ​ນວນ​ການ​ໂທ​ເຂົ້າ, ໂທ​ອອກ, ສາຍ​ທີ່​ພາດ​ຫຼື​ຖືກ​ປະ​ຕິ​ເສດ​ທີ່​ທ່ານ​ມີ​ກັບ​ແຕ່​ລະ​ເບີ​ໃນ​ໄລ​ຍະ​ເວ​ລາ​ທີ່​ທ່ານ​ເລືອກ.\n\nຈຳນວນບັນທຶກ: ຕັ້ງເປັນ 0 ເພື່ອປິດອັນນີ້. ໃຊ້ 1-20 ເພື່ອສະແດງໃຫ້ເຫັນວ່າມີຜູ້ຕິດຕໍ່ສູງສຸດຫຼາຍ.\n\nໄລຍະເວລານຳໃຊ້ພຽງແຕ່ເມື່ອມີຜູ້ຕິດຕໍ່ຢ່າງໜ້ອຍໜຶ່ງຄົນຖືກສະແດງ.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$countໄຟ, ${ms}ms ຄວາມໄວ';
  }

  @override
  String get deleteContactQuestion => 'ລຶບລາຍຊື່ຜູ້ຕິດຕໍ່ບໍ?';

  @override
  String get deleteContactBody =>
      'ລາຍຊື່ຜູ້ຕິດຕໍ່ນີ້ຈະຖືກລຶບອອກຈາກອຸປະກອນຂອງທ່ານຢ່າງຖາວອນ.';

  @override
  String get blockContactQuestion => 'ບລັອກການຕິດຕໍ່ບໍ?';

  @override
  String get unblockContactQuestion => 'ປົດບລັອກການຕິດຕໍ່ບໍ?';

  @override
  String get blockContactBody =>
      'ທ່ານຈະບໍ່ໄດ້ຮັບສາຍ ຫຼືຂໍ້ຄວາມຈາກຜູ້ຕິດຕໍ່ນີ້ອີກຕໍ່ໄປ.';

  @override
  String get unblockContactBody =>
      'ທ່ານຈະເລີ່ມຮັບສາຍ ແລະຂໍ້ຄວາມຈາກຜູ້ຕິດຕໍ່ນີ້.';

  @override
  String get contactBlocked => 'ບລັອກລາຍຊື່ຜູ້ຕິດຕໍ່ແລ້ວ';

  @override
  String get contactUnblocked => 'ປົດບລັອກລາຍຊື່ຜູ້ຕິດຕໍ່ແລ້ວ';

  @override
  String get noPhoneNumbersToBlock => 'ບໍ່ມີເບີໂທລະສັບທີ່ຈະບລັອກ';

  @override
  String get simSameAsSystem => 'ຄືກັນກັບລະບົບ';

  @override
  String get simSameAsSystemSubtitle => 'ປະຕິບັດຕາມ SIM ເລີ່ມຕົ້ນໃນການຕັ້ງຄ່າ';

  @override
  String get simAskEveryTimeForContact =>
      'ສະແດງຕົວເລືອກຊິມສຳລັບຜູ້ຕິດຕໍ່ນີ້ສະເໝີ';

  @override
  String get ringtoneSetForContact => 'Ringtone ຕັ້ງທົ່ວໂລກສໍາລັບການຕິດຕໍ່ນີ້';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'ເລືອກສຽງຣິງໂທນບໍ່ສຳເລັດ: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'ຜິດພາດ: $error';
  }

  @override
  String get noCallHistoryFound => 'ບໍ່ພົບປະຫວັດການໂທ';

  @override
  String get speedDialVoicemail => 'ໂທດ່ວນ: ຂໍ້ຄວາມສຽງ';

  @override
  String shareContactSubject(String name) {
    return 'ຕິດຕໍ່: $name';
  }

  @override
  String get contactInfo => 'ຂໍ້ມູນຕິດຕໍ່';

  @override
  String get dontAskAgainSim => 'ຢ່າຖາມອີກ';

  @override
  String get simDontAskAgainSubtitle =>
      'ໃຊ້ຊິມນີ້ເປັນຄ່າເລີ່ມຕົ້ນ (ປ່ຽນໃນການຕັ້ງຄ່າ)';

  @override
  String get addContact => 'ເພີ່ມການຕິດຕໍ່';

  @override
  String get createContact => 'ສ້າງການຕິດຕໍ່';

  @override
  String get paste => 'ວາງ';

  @override
  String get clear => 'ຈະແຈ້ງ';

  @override
  String get returnToCall => 'ກັບໄປທີ່ການໂທ';

  @override
  String get numberOfRecordsTitle => 'ຈໍານວນບັນທຶກ';

  @override
  String get recordsPickerSubtitle =>
      'ຈຳນວນລາຍການທີ່ຕິດຕໍ່ເລື້ອຍໆເພື່ອສະແດງ (0 = off)';

  @override
  String get torchInfoTitle => 'ກະພິບໄຟ';

  @override
  String get torchInfoBody =>
      'ກະພິບກ້ອງກະພິບໃນລະຫວ່າງການໂທເຂົ້າ, ໂທອອກ, ຫຼືໂທຢ່າງຕໍ່ເນື່ອງ. ເອກະລາດຂອງໄຟ Glyph.';

  @override
  String get glyphMapTitle => 'ແຜນຜັງ Glyph';

  @override
  String get glyphMapBody =>
      'Nothing Phone 1 Glyph LED ເຂດ. ອະນິເມຊັນໂທອອກ ແລະໂທເຂົ້າໃຊ້ຊ່ອງເຫຼົ່ານີ້.';

  @override
  String get answerMethodTitle => 'ວິທີການຕອບ';

  @override
  String get glyphOutgoingCallStyleTitle => 'ຮູບແບບການໂທອອກ';

  @override
  String get glyphInCallAnimationTitle => 'Glyph ອະນິເມຊັນໃນການໂທ';

  @override
  String get themePickerTitle => 'ຫົວຂໍ້';

  @override
  String get torchIncomingTitle => 'ໄຟສາຍໂທເຂົ້າ';

  @override
  String get torchOutgoingTitle => 'ໄຟສາຍໂທອອກ';

  @override
  String get torchOngoingTitle => 'ໄຟສາຍໂທຢ່າງຕໍ່ເນື່ອງ';

  @override
  String get timePeriodTitle => 'ໄລຍະເວລາ';

  @override
  String get ok => 'ຕົກລົງ';

  @override
  String get confirmDeleteCall => 'ລຶບການໂທນີ້ອອກຈາກປະຫວັດບໍ?';

  @override
  String get confirmDeleteAllCalls => 'ລຶບການໂທທັງໝົດດ້ວຍເບີນີ້ບໍ?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'ສົ່ງຂໍ້ຄວາມ';

  @override
  String get addToExistingContactAction => 'ເພີ່ມໃສ່ລາຍຊື່ຜູ້ຕິດຕໍ່';

  @override
  String get mobileLabel => 'ມືຖື';

  @override
  String get callingSimForContactTitle => 'ກຳລັງໂທຫາຊິມສຳລັບຜູ້ຕິດຕໍ່ນີ້';

  @override
  String get contactSettings => 'ການຕັ້ງຄ່າການຕິດຕໍ່';

  @override
  String get setCallingSim => 'ຕັ້ງຄ່າ SIM ໂທ';

  @override
  String get contactRingtone => 'ringtone ຕິດຕໍ່';

  @override
  String get shareContact => 'ແບ່ງປັນການຕິດຕໍ່';

  @override
  String get blockNumbers => 'ບລັອກຕົວເລກ';

  @override
  String get unblockNumbers => 'ປົດບລັອກຕົວເລກ';

  @override
  String get connectedApps => 'ແອັບທີ່ເຊື່ອມຕໍ່';

  @override
  String get simNotSet => 'ບໍ່ໄດ້ຕັ້ງ';

  @override
  String get ringtoneDefault => 'ຄ່າເລີ່ມຕົ້ນ';

  @override
  String get customRingtone => 'ກຳນົດເອງ';

  @override
  String get aboutSection => 'ກ່ຽວກັບ';

  @override
  String get aboutFeedbackSection => 'ກ່ຽວກັບ & ຄວາມຄິດເຫັນ';

  @override
  String get aboutDescription =>
      'ບໍ່ມີຫຍັງ Dialer ເປັນແຫຼ່ງເປີດ. ຖ້າທ່ານເປັນນັກພັດທະນາ, ທ່ານຍິນດີທີ່ຈະຄົ້ນຫາລະຫັດແລະປະກອບສ່ວນ.';

  @override
  String get aboutViewSource => 'ເບິ່ງໃນ GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'ບໍ່ສາມາດເປີດລິ້ງໄດ້';

  @override
  String get reviewSection => 'ທົບທວນຄືນ';

  @override
  String get reviewDescription =>
      'ມີຄວາມສຸກບໍ່ມີຫຍັງ Dialer? ການໃຫ້ຄະແນນຂອງທ່ານໃນ Google Play ຊ່ວຍໃຫ້ຄົນອື່ນຊອກຫາແອັບໄດ້.';

  @override
  String get reviewRateOnPlay => 'ໃຫ້ຄະແນນໃນ Google Play';

  @override
  String get reviewRateOnPlaySubtitle => 'Opens the Play Store listing';

  @override
  String get reviewCouldNotOpen => 'ບໍ່ສາມາດເປີດ Google Play ໄດ້';

  @override
  String get breathSpeed => 'ຄວາມໄວລົມຫາຍໃຈ';

  @override
  String get breathSpeedBlinkHint => 'ຕ່ໍາ = ກະພິບ, ສູງ = ຫາຍໃຈຊ້າ';

  @override
  String get speedSliderHint => 'ຕ່ໍາ = ໄວ, ສູງ = ຊ້າກວ່າ';

  @override
  String get swatchDefault => 'ຄ່າເລີ່ມຕົ້ນ';

  @override
  String get customAccentColorPicker => 'ສີສຳນຽງແບບກຳນົດເອງ';

  @override
  String get customLightBackgroundPicker => 'ພື້ນຫຼັງແສງສະຫວ່າງແບບກຳນົດເອງ';

  @override
  String get customDarkBackgroundPicker => 'ພື້ນຫຼັງມືດແບບກຳນົດເອງ';

  @override
  String get customCallBackgroundPicker => 'ພື້ນຫຼັງການໂທແບບກຳນົດເອງ';

  @override
  String get ongoingCallStyleTitle => 'ຮູບແບບການໂທຢ່າງຕໍ່ເນື່ອງ';

  @override
  String get glyphMapUnavailable => 'ບໍ່ມີແຜນທີ່ Glyph';

  @override
  String get animationDelayRange => 'ຄວາມລ່າຊ້າຂອງອະນິເມຊັນ (1ວິ - 10ວິ)';

  @override
  String get animationDelayRangeSingle =>
      'ຄວາມລ່າຊ້າຂອງອະນິເມຊັນ (0.1 ວິ - 10 ວິ)';

  @override
  String get inCallMute => 'ປິດສຽງ';

  @override
  String get inCallKeypad => 'ປຸ່ມກົດ';

  @override
  String get inCallSpeaker => 'ລໍາໂພງ';

  @override
  String get inCallMore => 'ເພີ່ມເຕີມ';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'ໂທລະສັບ';

  @override
  String get inCallAddCall => 'ເພີ່ມການໂທ';

  @override
  String get inCallChangeSim => 'ປ່ຽນຊິມ';

  @override
  String get inCallDecline => 'ຫຼຸດລົງ';

  @override
  String get inCallAnswer => 'ຄໍາຕອບ';

  @override
  String get inCallMessage => 'ຂໍ້ຄວາມ';

  @override
  String get inCallCalling => 'ກຳລັງໂທ…';

  @override
  String get inCallIncoming => 'ສາຍໂທເຂົ້າ';

  @override
  String get inCallSelectSim => 'ເລືອກ SIM…';

  @override
  String get inCallSwitchingSim => 'ກຳລັງສະຫຼັບຊິມ…';

  @override
  String get inCallCallEnded => 'ສິ້ນສຸດການໂທ';

  @override
  String inCallCallingVia(String sim) {
    return 'ໂທຜ່ານ $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'ໂທຜ່ານ<b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'ເລືອກ SIM ສໍາລັບການໂທນີ້';

  @override
  String get inCallDragAnswerDecline => 'ລາກຂວາເພື່ອຕອບ · ລາກຊ້າຍເພື່ອປະຕິເສດ';

  @override
  String inCallMobileNumber(String number) {
    return 'ມືຖື $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (ປະຈຸບັນ)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'ໂທຜ່ານ <b>$sim</b> ຈາກ';
  }

  @override
  String get inCallCallFrom => 'ໂທຈາກ';

  @override
  String get inCallUnknown => 'ບໍ່ຮູ້ຈັກ';

  @override
  String get selectContactRingtone => 'ເລືອກສຽງເອີ້ນເຂົ້າຕິດຕໍ່';

  @override
  String get speakToSearchPrompt => 'ເວົ້າເພື່ອຄົ້ນຫາ';

  @override
  String get phonePermissionRequired => 'ຕ້ອງມີການອະນຸຍາດໂທລະສັບ';

  @override
  String callFailed(String error) {
    return 'ການໂທລົ້ມເຫລວ: $error';
  }

  @override
  String get callPermissionDenied => 'ປະຕິເສດການອະນຸຍາດການໂທ';

  @override
  String get alreadyDefaultDialer => 'ຕັ້ງເປັນຕົວໂທເລີ່ມຕົ້ນແລ້ວ';

  @override
  String get resetCustomization => 'Reset customization';

  @override
  String get resetCustomizationSubtitle =>
      'Restore selected settings to defaults';

  @override
  String get resetCustomizationInfoTitle => 'What gets reset';

  @override
  String get resetCustomizationInfoBody =>
      'These return to their defaults:\n\n• Language (device default)\n• Theme, background, accent, and call background colors\n• Fonts and app icon\n• SIM badge colors and styles\n• Answer method\n• Torch blink during calls\n• Glyph calling and in-call animations\n• Frequently contacted (count and time period)\n\nNot changed: default SIM, blocked numbers, recents search, and favourites.';

  @override
  String get resetCustomizationConfirmTitle => 'Reset customization?';

  @override
  String get resetCustomizationConfirmBody =>
      'Selected settings will return to their defaults. Default SIM, blocked numbers, recents, and favourites stay as they are.';

  @override
  String get resetCustomizationDone => 'Settings reset to defaults';
}
