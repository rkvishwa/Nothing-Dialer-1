// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Welsh (`cy`).
class AppLocalizationsCy extends AppLocalizations {
  AppLocalizationsCy([String locale = 'cy']) : super(locale);

  @override
  String get appTitle => 'Dim Deialydd';

  @override
  String get settings => 'Gosodiadau';

  @override
  String get settingsSearchHint => 'Gosodiadau chwilio';

  @override
  String get settingsSearchNoResults => 'Heb ganfod gosodiadau';

  @override
  String get general => 'Cyffredinol';

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
  String get theme => 'Thema';

  @override
  String get themeSystemDefault => 'System ddiofyn';

  @override
  String get themeLight => 'Ysgafn';

  @override
  String get themeDark => 'Tywyll';

  @override
  String get themeFollowSystem => 'Dilynwch osodiadau system';

  @override
  String get themeAlwaysLight => 'Defnyddiwch thema ysgafn bob amser';

  @override
  String get themeAlwaysDark => 'Defnyddiwch thema dywyll bob amser';

  @override
  String get language => 'Iaith';

  @override
  String get languageDeviceDefault => 'Rhagosodiad dyfais';

  @override
  String get languagePickerTitle => 'Iaith';

  @override
  String get languageSearchHint => 'Chwilio ieithoedd';

  @override
  String get font => 'Ffont';

  @override
  String get fontSystem => 'System diofyn';

  @override
  String get fontNdot => 'Dim byd (NDot)';

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
      'Methodd lawrlwytho\'r ffont. Gwiriwch eich cysylltiad a rhowch gynnig arall arni.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Ffont';

  @override
  String get fontPreviewSample => 'Dim Deialydd';

  @override
  String get fontAppWide => 'Ffont ap';

  @override
  String get fontApplyTo => 'Gwnewch gais i';

  @override
  String get fontApplyEntireApp => 'Ap cyfan';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Yr un ffont ym mhobman, gan gynnwys mewn galwad';

  @override
  String get fontApplyTitlesOnly => 'Teitlau a phenawdau';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Teitlau mawr a phenawdau adrannau yn unig';

  @override
  String get fontApplyCustomize => 'Addasu';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Dewiswch ffont fesul sgrin a math o destun';

  @override
  String get fontCustomizeSection => 'Addasu gan sgrin';

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
  String get fontRolePageTitle => 'Teitl y dudalen';

  @override
  String get fontRoleSectionHeader => 'Pennawd adran';

  @override
  String get fontRolePrimary => 'Testun cynradd';

  @override
  String get fontRoleSecondary => 'Testun eilaidd';

  @override
  String get fontRoleButton => 'Botymau';

  @override
  String get fontRoleDialKey => 'Allweddi Dialpad';

  @override
  String get fontSurfaceRecents => 'Diweddar';

  @override
  String get fontSurfaceContacts => 'Cysylltiadau';

  @override
  String get fontSurfaceSettings => 'Gosodiadau';

  @override
  String get fontSurfaceDialpad => 'Dialpad';

  @override
  String get fontSurfaceShell => 'Mordwyo';

  @override
  String get fontSurfaceDefaultDialer => 'Anogwr deialydd diofyn';

  @override
  String get fontSurfaceFavourites => 'Ffefrynnau';

  @override
  String get fontSurfaceBlocked => 'Rhifau wedi\'u rhwystro';

  @override
  String get fontSurfaceContactDetail => 'Manylion cyswllt';

  @override
  String get fontSurfaceCallHistory => 'Hanes galwadau';

  @override
  String get fontSurfaceSheets => 'Taflenni a chasglwyr';

  @override
  String get fontSurfaceInCall => 'Sgrin mewn galwad';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — ap cyfan';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — teitlau yn unig';
  }

  @override
  String get fontSubtitleCustomize => 'Custom fesul sgrin';

  @override
  String get background => 'Cefndir';

  @override
  String get accent => 'Acen';

  @override
  String get lightBackground => 'Cefndir ysgafn';

  @override
  String get lightAccent => 'Acen ysgafn';

  @override
  String get darkBackground => 'Cefndir tywyll';

  @override
  String get darkAccent => 'Acen dywyll';

  @override
  String get callBackground => 'Cefndir galwad';

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
  String get appIcon => 'Eicon ap';

  @override
  String get answerMethod => 'Dull ateb';

  @override
  String get answerSlide => 'Llithro i ateb';

  @override
  String get answerSlideSubtitle =>
      'Sychwch i\'r chwith / dde ar y bar, fel Google Phone';

  @override
  String get answerButton => 'Tap botwm';

  @override
  String get answerButtonSubtitle => 'Tapiwch fotymau ateb neu wrthod';

  @override
  String get answerHuawei => 'Arddull Huawei';

  @override
  String get answerHuaweiSubtitle => 'Llusgwch y cylch i\'r ffôn gwyrdd i ateb';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei - llusgwch i wyrdd / coch';

  @override
  String get calling => 'Yn galw';

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
  String get defaultSim => 'SIM diofyn';

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
  String get askEveryTime => 'Gofynnwch bob tro';

  @override
  String get askEveryTimeSubtitle => 'Dangos y codwr SIM cyn pob galwad';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Heb ganfod cardiau SIM';

  @override
  String couldNotLoadSims(String error) {
    return 'Methu llwytho SIMs: $error';
  }

  @override
  String get allFavourites => 'Pob ffefryn';

  @override
  String get allFavouritesSubtitle =>
      'Ail-archebu, dileu, ac ychwanegu o gysylltiadau';

  @override
  String get blockedNumbers => 'Rhifau wedi\'u rhwystro';

  @override
  String get blockedNumbersSubtitle => 'Gweld a dadflocio rhifau';

  @override
  String get soundsAndVibration => 'Seiniau a dirgryniad';

  @override
  String get soundsAndVibrationSubtitle =>
      'Ringtone, dirgryniad, tonau pad deialu';

  @override
  String couldNotOpenSettings(String error) {
    return 'Methu agor gosodiadau: $error';
  }

  @override
  String get frequentlyContacted => 'Cysylltir yn Aml';

  @override
  String get numberOfRecords => 'Nifer y cofnodion';

  @override
  String get timePeriod => 'Cyfnod amser';

  @override
  String get periodLast24Hours => '24 awr diwethaf';

  @override
  String get periodLast24HoursSubtitle => 'Galwadau o\'r diwrnod diwethaf';

  @override
  String get periodLast7Days => '7 diwrnod diwethaf';

  @override
  String get periodLast7DaysSubtitle => 'Galwadau o\'r wythnos ddiwethaf';

  @override
  String get periodLast30Days => '30 diwrnod diwethaf';

  @override
  String get periodLast30DaysSubtitle => 'Galwadau o\'r mis diwethaf';

  @override
  String get periodLast12Months => '12 mis diwethaf';

  @override
  String get periodLast12MonthsSubtitle => 'Galwadau o\'r flwyddyn ddiwethaf';

  @override
  String get periodAllTime => 'Trwy\'r amser';

  @override
  String get periodAllTimeSubtitle => 'Hanes galwadau cyfan';

  @override
  String get frequentMaxOff => 'I ffwrdd';

  @override
  String frequentMaxCount(int count) {
    return '$count cysylltiadau';
  }

  @override
  String get torchBlink => 'Blink Fflam';

  @override
  String get torchIncomingCall => 'Tortsh alwad sy\'n dod i mewn';

  @override
  String get torchOutgoingCall => 'Tortsh alwad sy\'n mynd allan';

  @override
  String get torchOngoingCall => 'Tortsh alwad barhaus';

  @override
  String get torchIncomingInterval => 'Cyfnod blincio sy\'n dod i mewn';

  @override
  String get torchOutgoingInterval => 'Cyfnod blincio sy\'n mynd allan';

  @override
  String get torchOngoingInterval => 'Cyfnod blincio parhaus';

  @override
  String get torchOff => 'I ffwrdd';

  @override
  String get torchOffIncomingSubtitle => 'Dim tortsh wrth ganu';

  @override
  String get torchOffOutgoingSubtitle => 'Dim tortsh wrth ddeialu';

  @override
  String get torchOffOngoingSubtitle =>
      'Dim tortsh yn ystod galwad gweithredol';

  @override
  String get torchFixedInterval => 'Cyfnod sefydlog';

  @override
  String get torchFixedIntervalSubtitle => 'Blink ar gyflymder penodol';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds chwinciad';
  }

  @override
  String get flashlightUnavailable =>
      'Nid yw Flashlight ar gael ar y ddyfais hon';

  @override
  String get glyphLights => 'Goleuadau Glyph';

  @override
  String get glyphCallingAnimation => 'Animeiddiad galw glyff';

  @override
  String get glyphOngoingAnimation => 'Animeiddiad galwadau parhaus Glyph';

  @override
  String get glyphNone => 'Dim';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Analluogi goleuadau Glyph ar gyfer galwadau sy\'n mynd allan';

  @override
  String get glyphNoneInCallSubtitle =>
      'Analluogi goleuadau Glyph tra ar alwad';

  @override
  String get glyphBreathProgress => 'Anadl a Chynnydd';

  @override
  String get glyphBreathProgressSubtitle =>
      'Mae golau\'n anadlu tra bod y llinell yn llenwi pobl dros 65 oed';

  @override
  String get glyphAccumulate => 'Cronni';

  @override
  String get glyphAccumulateSubtitle => 'Animeiddiad cronni ar oleuadau C1-C4';

  @override
  String get glyphSingle => 'Sengl';

  @override
  String get glyphSingleSubtitle => 'Golau sengl yn symud ar draws C1-C4';

  @override
  String get glyphBreath => 'Anadl';

  @override
  String get glyphBreathSubtitle => 'Dewiswch oleuadau a chyflymder';

  @override
  String get glyphSteady => 'Yn sefydlog';

  @override
  String get glyphSteadySubtitle => 'Mae goleuadau dethol yn aros ymlaen';

  @override
  String get breathSettings => 'Gosodiadau Anadl';

  @override
  String get activeLights => 'Goleuadau Actif';

  @override
  String lightsCount(int count) {
    return '$count goleuadau';
  }

  @override
  String get speedSettings => 'Gosodiadau Cyflymder';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms oedi';
  }

  @override
  String get durationAndSpeed => 'Hyd a Chyflymder';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s hyd, cyfwng ${interval}ms';
  }

  @override
  String get cancel => 'Canslo';

  @override
  String get done => 'Wedi\'i wneud';

  @override
  String get save => 'Arbed';

  @override
  String get block => 'Bloc';

  @override
  String get delete => 'Dileu';

  @override
  String get recents => 'Diweddar';

  @override
  String get contacts => 'Cysylltiadau';

  @override
  String get hideFavouritesOnRecents => 'Cuddio ffefrynnau ar Diweddar';

  @override
  String get showFavouritesOnRecents => 'Dangos ffefrynnau ar Diweddar';

  @override
  String get ongoingCall => 'Galwad barhaus';

  @override
  String get setAsDefaultTitle => 'GOSOD AS\nDIFFYG';

  @override
  String get setAsDefaultBody =>
      'I ddefnyddio Nothing Dialer, rhaid ei osod fel eich app ffôn diofyn. Mae hyn yn caniatáu ichi reoli galwadau, gweld hanes, a defnyddio animeiddiadau Glyph.';

  @override
  String get setAsDefaultButton => 'GOSOD FEL DIFFYG';

  @override
  String get nothingDialerBrand => 'DIM DIALER 1';

  @override
  String get favourites => 'Ffefrynnau';

  @override
  String get addFavourite => 'Ychwanegu ffefryn';

  @override
  String get favouritesDrawerHint =>
      'Defnyddiwch y ddewislen i ychwanegu cysylltiadau. Tapiwch y tu allan i\'r drôr neu swipe ar gau. Rhowch seren ar gyswllt o\'u manylion, neu gwasgwch alwad hir yn Recents.';

  @override
  String get menu => 'Bwydlen';

  @override
  String get noFavouritesYet =>
      'Dim ffefrynnau eto.\nAgorwch y ddewislen i ychwanegu un, neu serennu cyswllt.';

  @override
  String get contactsPermissionNeeded => 'Mae angen caniatâd cysylltiadau';

  @override
  String get chooseContact => 'Dewiswch cyswllt';

  @override
  String get noPhone => 'Dim ffôn';

  @override
  String get pickNumber => 'Dewiswch rif';

  @override
  String get contactHasNoPhone => 'Nid oes gan y cyswllt hwn rif ffôn';

  @override
  String get blockNumber => 'Rhif bloc';

  @override
  String get enterPhoneNumber => 'Rhowch rif ffôn';

  @override
  String unblockedDisplay(String display) {
    return 'Wedi\'i ddadrwystro $display';
  }

  @override
  String get couldNotUnblockNumber => 'Methu â dadrwystro\'r rhif';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked blocio • $matched cyfateb';
  }

  @override
  String get contactsPermissionMissing =>
      'Mae caniatâd cysylltiadau ar goll. Tap i drwsio.';

  @override
  String get noBlockedNumbers => 'Dim rhifau wedi\'u rhwystro';

  @override
  String get unknownContact => 'Cyswllt anhysbys';

  @override
  String get unblock => 'Dadrwystro';

  @override
  String get permissionNeeded => 'Angen caniatâd';

  @override
  String get grantPhonePermission =>
      'Rhowch ganiatâd ffôn i weld eich hanes galwadau.';

  @override
  String get grantContactsPermission =>
      'Rhowch ganiatâd i gysylltiadau weld eich llyfr cyfeiriadau.';

  @override
  String get openSettings => 'Agor Gosodiadau';

  @override
  String get tryAgain => 'Ceisiwch eto';

  @override
  String get couldNotLoadContacts => 'Methu llwytho cysylltiadau';

  @override
  String get contactsLoadError =>
      'Aeth rhywbeth o\'i le wrth ddarllen eich llyfr cyfeiriadau.';

  @override
  String get noContactsFound => 'Ni chanfuwyd unrhyw gysylltiadau';

  @override
  String get contactsEmptySubtitle =>
      'Bydd cysylltiadau o\'ch dyfais yn ymddangos yma.';

  @override
  String get searchContacts => 'Chwilio cysylltiadau…';

  @override
  String get searchRecentCalls => 'Chwilio galwadau diweddar';

  @override
  String get fromContacts => 'O gysylltiadau';

  @override
  String get recentsSearchSection => 'Chwiliad diweddar';

  @override
  String get recentsSearchShowContacts => 'Dangos cysylltiadau wrth chwilio';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Wrth chwilio Diweddar, hefyd dangoswch baru pobl o\'ch llyfr cyfeiriadau isod canlyniadau hanes galwadau.';

  @override
  String get voiceSearch => 'Chwiliad llais';

  @override
  String get createNewContact => 'Creu cyswllt newydd';

  @override
  String callError(String error) {
    return 'Gwall galwad: $error';
  }

  @override
  String get noRecentCalls => 'Dim galwadau diweddar';

  @override
  String get callHistoryEmpty => 'Bydd eich hanes galwadau yn ymddangos yma.';

  @override
  String get loadMore => 'Llwytho mwy';

  @override
  String get frequentlyContactedHeader => 'Cysylltir yn aml';

  @override
  String get recentHistory => 'Hanes diweddar';

  @override
  String get noFavouritesRecentsHint =>
      'Dim ffefrynnau eto. Rhowch seren ar gyswllt, gwasgwch alwad yn hir, neu defnyddiwch y tab Ffefrynnau.';

  @override
  String get copyNumber => 'Copi rhif';

  @override
  String get editNumberBeforeCall => 'Golygu rhif cyn galwad';

  @override
  String get removeFromFavourites => 'Tynnwch o\'r ffefrynnau';

  @override
  String get addToFavourites => 'Ychwanegu at ffefrynnau';

  @override
  String get blockNumberQuestion => 'Rhwystro rhif?';

  @override
  String blockNumberConfirm(String number) {
    return 'Ni fyddwch bellach yn derbyn galwadau na negeseuon testun gan $number.';
  }

  @override
  String get blocked => 'Wedi\'i rwystro';

  @override
  String get couldNotBlock => 'Methu rhwystro';

  @override
  String get contactNotOnDevice =>
      'Nid yw\'r cyswllt wedi\'i gadw ar y ddyfais hon';

  @override
  String get unblocked => 'Wedi\'i ddadrwystro';

  @override
  String get numberCopied => 'Rhif wedi\'i gopïo';

  @override
  String get showLess => 'Dangos llai';

  @override
  String get showAllTimes => 'Dangoswch bob amser';

  @override
  String mostRecent(String time) {
    return 'Mwyaf diweddar · $time';
  }

  @override
  String get videoCall => 'Galwad fideo';

  @override
  String get couldNotPlaceVideoCall => 'Methu â gosod galwad fideo';

  @override
  String get message => 'Neges';

  @override
  String get couldNotOpenMessaging => 'Methu agor ap negeseuon';

  @override
  String get history => 'Hanes';

  @override
  String get viewContact => 'Gweld cyswllt';

  @override
  String get addToContact => 'Ychwanegu at y cyswllt';

  @override
  String get callTypeMissed => 'Wedi methu';

  @override
  String get callTypeRejected => 'Gwrthodwyd';

  @override
  String get callTypeIncoming => 'Yn dod i mewn';

  @override
  String get callTypeOutgoing => 'Yn mynd allan';

  @override
  String get today => 'Heddiw';

  @override
  String get yesterday => 'Ddoe';

  @override
  String get justNow => 'Dim ond nawr';

  @override
  String minutesAgo(int count) {
    return '$count min yn ôl';
  }

  @override
  String hoursAgo(int count) {
    return '$count awr yn ôl';
  }

  @override
  String get filterAll => 'Pawb';

  @override
  String get filterMissed => 'Wedi methu';

  @override
  String get filterContacts => 'Cysylltiadau';

  @override
  String get filterNonContacts => 'Di-gysylltiadau';

  @override
  String get iconUpdated =>
      'Eicon wedi\'i ddiweddaru. Efallai y bydd eich sgrin gartref yn cymryd eiliad i adnewyddu.';

  @override
  String get iconSavedRelease =>
      'Dewis wedi\'i arbed. Mae eicon y sgrin gartref yn diweddaru mewn adeiladau rhyddhau.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Methu newid yr eicon: $error';
  }

  @override
  String get launcherClassicBlack => 'clasurol (du)';

  @override
  String get launcherLight => 'Ysgafn';

  @override
  String get launcherNothingRed => 'Dim byd coch';

  @override
  String get launcherDarkGrey => 'Llwyd tywyll';

  @override
  String get launcherCream => 'Hufen';

  @override
  String get launcherRetroPhone => 'Ffôn retro';

  @override
  String get launcherRetroPhoneLight => 'Ffôn retro (golau)';

  @override
  String get voiceSearchUnavailable =>
      'Nid yw chwiliad llais ar gael ar y ddyfais hon.';

  @override
  String voiceSearchFailed(String error) {
    return 'Methodd chwiliad llais: $error';
  }

  @override
  String get customColor => 'Custom';

  @override
  String get selectColor => 'Dewiswch liw';

  @override
  String get reset => 'Ailosod';

  @override
  String get simPickerTitle => 'Dewiswch SIM';

  @override
  String get simChooseForCall => 'Dewiswch SIM ar gyfer yr alwad hon';

  @override
  String get defaultSimAsk => 'Gofynnwch bob tro';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Manylion cyswllt';

  @override
  String get call => 'Galwch';

  @override
  String get share => 'Rhannu';

  @override
  String get favourite => 'Hoff';

  @override
  String get unfavourite => 'Anffafriol';

  @override
  String get blockContact => 'Rhwystro cyswllt';

  @override
  String get unblockContact => 'Dadrwystro cyswllt';

  @override
  String get deleteContact => 'Dileu cyswllt';

  @override
  String get phone => 'Ffonio';

  @override
  String get email => 'Ebost';

  @override
  String get ringtone => 'Tôn ffôn';

  @override
  String get defaultRingtone => 'Diofyn';

  @override
  String get simForContact => 'SIM ar gyfer y cyswllt hwn';

  @override
  String get callHistoryTitle => 'Hanes galwadau';

  @override
  String get noCallsWithNumber => 'Dim galwadau gyda\'r rhif hwn';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Animeiddiad Glyph';

  @override
  String get inCallGlyphAnimationStyle => 'Animeiddiad Glyph mewn galwad';

  @override
  String get recordsOff => 'I ffwrdd';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'SIM diofyn';

  @override
  String get nothingPhoneOnly => 'Dim Ffôn yn unig';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Mae angen Ffôn Dim byd ar nodweddion Glyph';

  @override
  String get custom => 'Custom';

  @override
  String presetColorHex(String hex) {
    return 'Rhagosodedig · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Custom · $hex';
  }

  @override
  String get oneContact => '1 cyswllt';

  @override
  String upToContacts(int count) {
    return 'Hyd at $count o gysylltiadau';
  }

  @override
  String get answerButtonTapSubtitle => 'Tap botwm i ateb';

  @override
  String get filterCalls => 'Hidlo galwadau';

  @override
  String get filterTooltip => 'Hidlo';

  @override
  String get settingsTooltip => 'Gosodiadau';

  @override
  String get filterAllSubtitle => 'Log galwadau cyfan';

  @override
  String get filterMissedSubtitle => 'Wedi\'i golli a\'i wrthod';

  @override
  String get filterContactsSubtitle =>
      'Mae galwadau\'n cyfateb i gyswllt sydd wedi\'i gadw';

  @override
  String get filterNonContactsSubtitle =>
      'Rhifau nad ydynt yn eich llyfr cyfeiriadau';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Galwad parhaus: $detail';
  }

  @override
  String get defaultSimForCalls => 'SIM diofyn ar gyfer galwadau';

  @override
  String get blinkInterval => 'Cyfwng blincio';

  @override
  String get close => 'Cau';

  @override
  String get frequentlyContactedInfoBody =>
      'Yn dangos eich rhifau ffôn a elwir fwyaf ar frig y tab Recents, yn seiliedig ar faint o alwadau sy\'n dod i mewn, yn mynd allan, wedi\'u colli neu wedi\'u gwrthod a gawsoch gyda phob rhif yn y cyfnod amser o\'ch dewis.\n\nNifer y cofnodion: gosodwch i 0 i ddiffodd hwn. Defnyddiwch 1–20 i ddangos bod llawer o brif gysylltiadau.\n\nDim ond pan ddangosir o leiaf un cyswllt y mae\'r cyfnod amser yn berthnasol.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count goleuadau, cyflymder ${ms}ms';
  }

  @override
  String get deleteContactQuestion => 'Dileu cyswllt?';

  @override
  String get deleteContactBody =>
      'Bydd y cyswllt hwn yn cael ei ddileu o\'ch dyfais yn barhaol.';

  @override
  String get blockContactQuestion => 'Rhwystro cyswllt?';

  @override
  String get unblockContactQuestion => 'Dadrwystro cyswllt?';

  @override
  String get blockContactBody =>
      'Ni fyddwch yn derbyn galwadau na negeseuon testun gan y cyswllt hwn mwyach.';

  @override
  String get unblockContactBody =>
      'Byddwch yn dechrau derbyn galwadau a negeseuon testun gan y cyswllt hwn.';

  @override
  String get contactBlocked => 'Cyswllt wedi\'i rwystro';

  @override
  String get contactUnblocked => 'Cyswllt wedi\'i ddadrwystro';

  @override
  String get noPhoneNumbersToBlock => 'Dim rhifau ffôn i\'w rhwystro';

  @override
  String get simSameAsSystem => 'Yr un fath â system';

  @override
  String get simSameAsSystemSubtitle => 'Yn dilyn y SIM Diofyn yn y Gosodiadau';

  @override
  String get simAskEveryTimeForContact =>
      'Dangoswch y codwr SIM ar gyfer y cyswllt hwn bob amser';

  @override
  String get ringtoneSetForContact =>
      'Ringtone wedi\'i osod yn fyd-eang ar gyfer y cyswllt hwn';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Wedi methu dewis tôn ffôn: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Gwall: $error';
  }

  @override
  String get noCallHistoryFound => 'Ni chanfuwyd hanes galwadau';

  @override
  String get speedDialVoicemail => 'Deialu cyflym: Neges llais';

  @override
  String shareContactSubject(String name) {
    return 'Cyswllt: $name';
  }

  @override
  String get contactInfo => 'Gwybodaeth cyswllt';

  @override
  String get dontAskAgainSim => 'Peidiwch â gofyn eto';

  @override
  String get simDontAskAgainSubtitle =>
      'Defnyddiwch y SIM hwn fel rhagosodiad (newid yn y Gosodiadau)';

  @override
  String get addContact => 'Ychwanegu cyswllt';

  @override
  String get createContact => 'Creu cyswllt';

  @override
  String get paste => 'Gludo';

  @override
  String get clear => 'Clir';

  @override
  String get returnToCall => 'Dychwelyd i\'r alwad';

  @override
  String get numberOfRecordsTitle => 'Nifer y cofnodion';

  @override
  String get recordsPickerSubtitle =>
      'Faint o gofnodion y cysylltir â nhw\'n aml i\'w dangos (0 = i ffwrdd)';

  @override
  String get torchInfoTitle => 'Blink tortsh';

  @override
  String get torchInfoBody =>
      'Yn blinio fflach y camera yn ystod galwadau sy\'n dod i mewn, yn mynd allan neu\'n barhaus. Yn annibynnol ar oleuadau Glyph.';

  @override
  String get glyphMapTitle => 'Cynllun Glyph';

  @override
  String get glyphMapBody =>
      'Dim Ffôn 1 Glyph parthau LED. Mae animeiddiadau sy\'n mynd allan ac mewn galwad yn defnyddio\'r sianeli hyn.';

  @override
  String get answerMethodTitle => 'Dull ateb';

  @override
  String get glyphOutgoingCallStyleTitle => 'Arddull galwad sy\'n mynd allan';

  @override
  String get glyphInCallAnimationTitle => 'Animeiddiad mewn galwad Glyph';

  @override
  String get themePickerTitle => 'Thema';

  @override
  String get torchIncomingTitle => 'Tortsh alwad sy\'n dod i mewn';

  @override
  String get torchOutgoingTitle => 'Tortsh alwad sy\'n mynd allan';

  @override
  String get torchOngoingTitle => 'Tortsh alwad barhaus';

  @override
  String get timePeriodTitle => 'Cyfnod amser';

  @override
  String get ok => 'iawn';

  @override
  String get confirmDeleteCall => 'Dileu\'r alwad hon o hanes?';

  @override
  String get confirmDeleteAllCalls => 'Dileu pob galwad gyda\'r rhif hwn?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Anfon neges';

  @override
  String get addToExistingContactAction => 'Ychwanegu at gyswllt';

  @override
  String get mobileLabel => 'Symudol';

  @override
  String get callingSimForContactTitle => 'Yn ffonio SIM am y cyswllt hwn';

  @override
  String get contactSettings => 'Gosodiadau cyswllt';

  @override
  String get setCallingSim => 'Gosodwch ffonio SIM';

  @override
  String get contactRingtone => 'Tôn ffôn cyswllt';

  @override
  String get shareContact => 'Rhannu cyswllt';

  @override
  String get blockNumbers => 'Rhwystro rhifau';

  @override
  String get unblockNumbers => 'Dadrwystro rhifau';

  @override
  String get connectedApps => 'Apiau cysylltiedig';

  @override
  String get simNotSet => 'Heb ei osod';

  @override
  String get ringtoneDefault => 'Diofyn';

  @override
  String get customRingtone => 'Custom';

  @override
  String get aboutSection => 'Ynghylch';

  @override
  String get aboutFeedbackSection => 'Ynghylch ac adborth';

  @override
  String get aboutDescription =>
      'Nid oes dim Dialer yn ffynhonnell agored. Os ydych chi\'n ddatblygwr, mae croeso i chi archwilio\'r cod a chyfrannu.';

  @override
  String get aboutViewSource => 'Gweld ar GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Methu agor y ddolen';

  @override
  String get reviewSection => 'Adolygu';

  @override
  String get reviewDescription =>
      'Mwynhau Dim Deialwr? Mae eich sgôr ar Google Play yn helpu eraill i ddod o hyd i\'r ap.';

  @override
  String get reviewRateOnPlay => 'Cyfradd ar Google Play';

  @override
  String get reviewRateOnPlaySubtitle => 'Opens the Play Store listing';

  @override
  String get reviewCouldNotOpen => 'Methu agor Google Play';

  @override
  String get breathSpeed => 'Cyflymder Anadl';

  @override
  String get breathSpeedBlinkHint => 'Is = Blink, Uwch = Anadl Araf';

  @override
  String get speedSliderHint => 'Is = Cyflymach, Uwch = Arafach';

  @override
  String get swatchDefault => 'Diofyn';

  @override
  String get customAccentColorPicker => 'Lliw acen personol';

  @override
  String get customLightBackgroundPicker => 'Cefndir golau personol';

  @override
  String get customDarkBackgroundPicker => 'Cefndir tywyll personol';

  @override
  String get customCallBackgroundPicker => 'Cefndir galwad personol';

  @override
  String get ongoingCallStyleTitle => 'Arddull galwad parhaus';

  @override
  String get glyphMapUnavailable => 'Nid yw map Glyph ar gael';

  @override
  String get animationDelayRange => 'Oedi Animeiddio (1s - 10s)';

  @override
  String get animationDelayRangeSingle => 'Oedi Animeiddio (0.1s - 10s)';

  @override
  String get inCallMute => 'Tewi';

  @override
  String get inCallKeypad => 'Bysellbad';

  @override
  String get inCallSpeaker => 'Llefarydd';

  @override
  String get inCallMore => 'Mwy';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Ffonio';

  @override
  String get inCallAddCall => 'Ychwanegu galwad';

  @override
  String get inCallChangeSim => 'Newid SIM';

  @override
  String get inCallDecline => 'Dirywiad';

  @override
  String get inCallAnswer => 'Ateb';

  @override
  String get inCallMessage => 'Neges';

  @override
  String get inCallCalling => 'Yn galw…';

  @override
  String get inCallIncoming => 'Galwad i mewn';

  @override
  String get inCallSelectSim => 'Dewiswch SIM…';

  @override
  String get inCallSwitchingSim => 'Wrthi\'n newid SIM…';

  @override
  String get inCallCallEnded => 'Galwad i ben';

  @override
  String inCallCallingVia(String sim) {
    return 'Yn galw trwy $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Yn galw drwy <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Dewiswch SIM ar gyfer yr alwad hon';

  @override
  String get inCallDragAnswerDecline =>
      'Llusgwch i\'r dde i ateb · Llusgwch i\'r chwith i wrthod';

  @override
  String inCallMobileNumber(String number) {
    return 'Symudol $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (Cyfredol)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Ffoniwch drwy <b>$sim</b> o';
  }

  @override
  String get inCallCallFrom => 'Galwch o';

  @override
  String get inCallUnknown => 'Anhysbys';

  @override
  String get selectContactRingtone => 'Dewiswch tôn ffôn cyswllt';

  @override
  String get speakToSearchPrompt => 'Siaradwch i chwilio';

  @override
  String get phonePermissionRequired => 'Angen caniatâd ffôn';

  @override
  String callFailed(String error) {
    return 'Galwad wedi methu: $error';
  }

  @override
  String get callPermissionDenied => 'Caniatâd galwad wedi\'i wrthod';

  @override
  String get alreadyDefaultDialer => 'Eisoes wedi\'i osod fel deialydd diofyn';

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
