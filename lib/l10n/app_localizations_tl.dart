// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tagalog (`tl`).
class AppLocalizationsTl extends AppLocalizations {
  AppLocalizationsTl([String locale = 'tl']) : super(locale);

  @override
  String get appTitle => 'Walang Dialer';

  @override
  String get settings => 'Mga setting';

  @override
  String get settingsSearchHint => 'Mga setting ng paghahanap';

  @override
  String get settingsSearchNoResults => 'Walang nakitang mga setting';

  @override
  String get general => 'Heneral';

  @override
  String get theme => 'Tema';

  @override
  String get themeSystemDefault => 'System Default';

  @override
  String get themeLight => 'Liwanag';

  @override
  String get themeDark => 'Madilim';

  @override
  String get themeFollowSystem => 'Sundin ang mga setting ng system';

  @override
  String get themeAlwaysLight => 'Palaging gumamit ng magaan na tema';

  @override
  String get themeAlwaysDark => 'Palaging gumamit ng madilim na tema';

  @override
  String get language => 'Wika';

  @override
  String get languageDeviceDefault => 'Default ng device';

  @override
  String get languagePickerTitle => 'Wika';

  @override
  String get languageSearchHint => 'Maghanap ng mga wika';

  @override
  String get font => 'Font';

  @override
  String get fontSystem => 'Default ng system';

  @override
  String get fontNdot => 'wala (NDot)';

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
      'Nabigo ang pag-download ng font. Suriin ang iyong koneksyon at subukang muli.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Font';

  @override
  String get fontPreviewSample => 'Walang Dialer';

  @override
  String get fontAppWide => 'Font ng app';

  @override
  String get fontApplyTo => 'Mag-apply sa';

  @override
  String get fontApplyEntireApp => 'Buong app';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Parehong font sa lahat ng dako, kasama ang in-call';

  @override
  String get fontApplyTitlesOnly => 'Mga pamagat at header';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Mga malalaking pamagat at header ng seksyon lamang';

  @override
  String get fontApplyCustomize => 'I-customize';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Pumili ng font sa bawat screen at uri ng teksto';

  @override
  String get fontCustomizeSection => 'I-customize ayon sa screen';

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
  String get fontRolePageTitle => 'Pamagat ng pahina';

  @override
  String get fontRoleSectionHeader => 'Header ng seksyon';

  @override
  String get fontRolePrimary => 'Pangunahing teksto';

  @override
  String get fontRoleSecondary => 'Pangalawang teksto';

  @override
  String get fontRoleButton => 'Mga Pindutan';

  @override
  String get fontRoleDialKey => 'Mga key ng dialpad';

  @override
  String get fontSurfaceRecents => 'Recents';

  @override
  String get fontSurfaceContacts => 'Mga contact';

  @override
  String get fontSurfaceSettings => 'Mga setting';

  @override
  String get fontSurfaceDialpad => 'Dialpad';

  @override
  String get fontSurfaceShell => 'Pag-navigate';

  @override
  String get fontSurfaceDefaultDialer => 'Default na prompt ng dialer';

  @override
  String get fontSurfaceFavourites => 'Mga paborito';

  @override
  String get fontSurfaceBlocked => 'Mga naka-block na numero';

  @override
  String get fontSurfaceContactDetail => 'Detalye ng contact';

  @override
  String get fontSurfaceCallHistory => 'History ng tawag';

  @override
  String get fontSurfaceSheets => 'Mga sheet at picker';

  @override
  String get fontSurfaceInCall => 'In-call screen';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — buong app';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — mga pamagat lamang';
  }

  @override
  String get fontSubtitleCustomize => 'Custom bawat screen';

  @override
  String get background => 'Background';

  @override
  String get accent => 'Accent';

  @override
  String get lightBackground => 'Banayad na background';

  @override
  String get lightAccent => 'Banayad na accent';

  @override
  String get darkBackground => 'Madilim na background';

  @override
  String get darkAccent => 'Madilim na accent';

  @override
  String get callBackground => 'Background ng tawag';

  @override
  String get appIcon => 'Icon ng app';

  @override
  String get answerMethod => 'Paraan ng pagsagot';

  @override
  String get answerSlide => 'I-slide para sagutin';

  @override
  String get answerSlideSubtitle =>
      'Mag-swipe pakaliwa/pakanan sa bar, tulad ng Google Phone';

  @override
  String get answerButton => 'Tapikin ang pindutan';

  @override
  String get answerButtonSubtitle =>
      'I-tap ang mga button na sagot o tanggihan';

  @override
  String get answerHuawei => 'Estilo ng Huawei';

  @override
  String get answerHuaweiSubtitle =>
      'I-drag ang bilog sa berdeng telepono upang sagutin';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — i-drag sa berde / pula';

  @override
  String get calling => 'Tumatawag';

  @override
  String get defaultSim => 'Default na SIM';

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
  String get askEveryTime => 'Magtanong sa bawat oras';

  @override
  String get askEveryTimeSubtitle =>
      'Ipakita ang tagapili ng SIM bago ang bawat tawag';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Walang nakitang SIM card';

  @override
  String couldNotLoadSims(String error) {
    return 'Hindi ma-load ang mga SIM: $error';
  }

  @override
  String get allFavourites => 'Lahat ng paborito';

  @override
  String get allFavouritesSubtitle =>
      'Muling ayusin, alisin, at idagdag mula sa mga contact';

  @override
  String get blockedNumbers => 'Mga naka-block na numero';

  @override
  String get blockedNumbersSubtitle => 'Tingnan at i-unblock ang mga numero';

  @override
  String get soundsAndVibration => 'Mga tunog at vibration';

  @override
  String get soundsAndVibrationSubtitle => 'Ringtone, vibration, dial pad tone';

  @override
  String couldNotOpenSettings(String error) {
    return 'Hindi mabuksan ang mga setting: $error';
  }

  @override
  String get frequentlyContacted => 'Madalas Makipag-ugnayan';

  @override
  String get numberOfRecords => 'Bilang ng mga tala';

  @override
  String get timePeriod => 'tagal ng panahon';

  @override
  String get periodLast24Hours => 'Huling 24 na oras';

  @override
  String get periodLast24HoursSubtitle => 'Mga tawag mula sa nakaraang araw';

  @override
  String get periodLast7Days => 'Huling 7 araw';

  @override
  String get periodLast7DaysSubtitle => 'Mga tawag noong nakaraang linggo';

  @override
  String get periodLast30Days => 'Huling 30 araw';

  @override
  String get periodLast30DaysSubtitle => 'Mga tawag mula sa nakaraang buwan';

  @override
  String get periodLast12Months => 'Huling 12 buwan';

  @override
  String get periodLast12MonthsSubtitle => 'Mga tawag mula sa nakaraang taon';

  @override
  String get periodAllTime => 'Sa lahat ng oras';

  @override
  String get periodAllTimeSubtitle => 'Buong history ng tawag';

  @override
  String get frequentMaxOff => 'Naka-off';

  @override
  String frequentMaxCount(int count) {
    return '$count contact';
  }

  @override
  String get torchBlink => 'Kumikislap na Sulo';

  @override
  String get torchIncomingCall => 'Sulo ng papasok na tawag';

  @override
  String get torchOutgoingCall => 'Outgoing call torch';

  @override
  String get torchOngoingCall => 'Patuloy na tawag na sulo';

  @override
  String get torchIncomingInterval => 'Papasok na blink interval';

  @override
  String get torchOutgoingInterval => 'Papalabas na pagitan ng blink';

  @override
  String get torchOngoingInterval => 'Patuloy na pagitan ng blink';

  @override
  String get torchOff => 'Naka-off';

  @override
  String get torchOffIncomingSubtitle => 'Walang tanglaw habang tumutunog';

  @override
  String get torchOffOutgoingSubtitle => 'Walang tanglaw habang nagda-dial';

  @override
  String get torchOffOngoingSubtitle => 'Walang tanglaw habang aktibong tawag';

  @override
  String get torchFixedInterval => 'Nakapirming agwat';

  @override
  String get torchFixedIntervalSubtitle => 'Kumurap sa isang itinakdang bilis';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds kumurap';
  }

  @override
  String get flashlightUnavailable =>
      'Hindi available ang flashlight sa device na ito';

  @override
  String get glyphLights => 'Mga Ilaw ng Glyph';

  @override
  String get glyphCallingAnimation => 'Glyph calling animation';

  @override
  String get glyphOngoingAnimation => 'Glyph patuloy na animation ng tawag';

  @override
  String get glyphNone => 'wala';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Huwag paganahin ang mga ilaw ng Glyph para sa mga papalabas na tawag';

  @override
  String get glyphNoneInCallSubtitle =>
      'Huwag paganahin ang mga ilaw ng Glyph habang aktibong nasa tawag';

  @override
  String get glyphBreathProgress => 'Hininga at Pag-unlad';

  @override
  String get glyphBreathProgressSubtitle =>
      'Humihinga ang mga ilaw habang napuno ang linya ng higit sa 65s';

  @override
  String get glyphAccumulate => 'Mag-ipon';

  @override
  String get glyphAccumulateSubtitle =>
      'Nag-iipon ng animation sa mga ilaw C1-C4';

  @override
  String get glyphSingle => 'Walang asawa';

  @override
  String get glyphSingleSubtitle => 'Isang ilaw na gumagalaw sa buong C1-C4';

  @override
  String get glyphBreath => 'hininga';

  @override
  String get glyphBreathSubtitle => 'Pumili ng mga ilaw at bilis';

  @override
  String get glyphSteady => 'Panay';

  @override
  String get glyphSteadySubtitle => 'Mananatiling bukas ang mga piling ilaw';

  @override
  String get breathSettings => 'Mga Setting ng hininga';

  @override
  String get activeLights => 'Mga Aktibong Ilaw';

  @override
  String lightsCount(int count) {
    return '$count mga ilaw';
  }

  @override
  String get speedSettings => 'Mga Setting ng Bilis';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms pagkaantala';
  }

  @override
  String get durationAndSpeed => 'Tagal at Bilis';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s na tagal, ${interval}ms interval';
  }

  @override
  String get cancel => 'Kanselahin';

  @override
  String get done => 'Tapos na';

  @override
  String get save => 'I-save';

  @override
  String get block => 'I-block';

  @override
  String get delete => 'Tanggalin';

  @override
  String get recents => 'Recents';

  @override
  String get contacts => 'Mga contact';

  @override
  String get hideFavouritesOnRecents => 'Itago ang mga paborito sa Recents';

  @override
  String get showFavouritesOnRecents => 'Ipakita ang mga paborito sa Recents';

  @override
  String get ongoingCall => 'Patuloy na tawag';

  @override
  String get setAsDefaultTitle => 'Itakda BILANG\nDEFAULT';

  @override
  String get setAsDefaultBody =>
      'Upang magamit ang Nothing Dialer, dapat itong itakda bilang iyong default na app ng telepono. Binibigyang-daan ka nitong pamahalaan ang mga tawag, tingnan ang kasaysayan, at gamitin ang mga animation ng Glyph.';

  @override
  String get setAsDefaultButton => 'I-SET BILANG DEFAULT';

  @override
  String get nothingDialerBrand => 'WALANG DIALER 1';

  @override
  String get favourites => 'Mga paborito';

  @override
  String get addFavourite => 'Magdagdag ng paborito';

  @override
  String get favouritesDrawerHint =>
      'Gamitin ang menu upang magdagdag ng mga contact. I-tap sa labas ng drawer o i-swipe ito sarado. Lagyan ng star ang isang contact mula sa kanilang mga detalye, o pindutin nang matagal ang isang tawag sa Recents.';

  @override
  String get menu => 'Menu';

  @override
  String get noFavouritesYet =>
      'Wala pang paborito.\nBuksan ang menu upang magdagdag ng isa, o lagyan ng star ang isang contact.';

  @override
  String get contactsPermissionNeeded =>
      'Kailangan ng pahintulot sa mga contact';

  @override
  String get chooseContact => 'Pumili ng contact';

  @override
  String get noPhone => 'Walang phone';

  @override
  String get pickNumber => 'Pumili ng numero';

  @override
  String get contactHasNoPhone =>
      'Walang numero ng telepono ang contact na ito';

  @override
  String get blockNumber => 'Block number';

  @override
  String get enterPhoneNumber => 'Ipasok ang numero ng telepono';

  @override
  String unblockedDisplay(String display) {
    return 'Na-unblock $display';
  }

  @override
  String get couldNotUnblockNumber => 'Hindi ma-unblock ang numero';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked na-block • $matched tumugma';
  }

  @override
  String get contactsPermissionMissing =>
      'Nawawala ang pahintulot sa mga contact. I-tap para ayusin.';

  @override
  String get noBlockedNumbers => 'Walang mga naka-block na numero';

  @override
  String get unknownContact => 'Hindi kilalang contact';

  @override
  String get unblock => 'I-unblock';

  @override
  String get permissionNeeded => 'Kailangan ng pahintulot';

  @override
  String get grantPhonePermission =>
      'Magbigay ng pahintulot sa telepono upang makita ang iyong history ng tawag.';

  @override
  String get grantContactsPermission =>
      'Bigyan ng pahintulot ang mga contact na makita ang iyong address book.';

  @override
  String get openSettings => 'Buksan ang Mga Setting';

  @override
  String get tryAgain => 'Subukan muli';

  @override
  String get couldNotLoadContacts => 'Hindi ma-load ang mga contact';

  @override
  String get contactsLoadError =>
      'Nagkaproblema sa pagbabasa ng iyong address book.';

  @override
  String get noContactsFound => 'Walang nakitang mga contact';

  @override
  String get contactsEmptySubtitle =>
      'Lalabas dito ang mga contact mula sa iyong device.';

  @override
  String get searchContacts => 'Maghanap ng mga contact…';

  @override
  String get searchRecentCalls => 'Maghanap ng mga kamakailang tawag';

  @override
  String get fromContacts => 'Mula sa mga contact';

  @override
  String get recentsSearchSection => 'Kamakailang paghahanap';

  @override
  String get recentsSearchShowContacts =>
      'Ipakita ang mga contact sa paghahanap';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Habang naghahanap ng Recents, ipakita din ang mga tumutugmang tao mula sa iyong address book sa ibaba ng mga resulta ng history ng tawag.';

  @override
  String get voiceSearch => 'Paghahanap gamit ang boses';

  @override
  String get createNewContact => 'Gumawa ng bagong contact';

  @override
  String callError(String error) {
    return 'Error sa tawag: $error';
  }

  @override
  String get noRecentCalls => 'Walang kamakailang mga tawag';

  @override
  String get callHistoryEmpty => 'Lalabas dito ang iyong history ng tawag.';

  @override
  String get loadMore => 'Mag-load pa';

  @override
  String get frequentlyContactedHeader => 'Madalas makipag-ugnayan';

  @override
  String get recentHistory => 'Kamakailang kasaysayan';

  @override
  String get noFavouritesRecentsHint =>
      'Wala pang paborito. Lagyan ng star ang isang contact, pindutin nang matagal ang isang tawag, o gamitin ang tab na Mga Paborito.';

  @override
  String get copyNumber => 'Kopyahin ang numero';

  @override
  String get editNumberBeforeCall => 'I-edit ang numero bago tumawag';

  @override
  String get removeFromFavourites => 'Alisin sa mga paborito';

  @override
  String get addToFavourites => 'Idagdag sa mga paborito';

  @override
  String get blockNumberQuestion => 'Block number?';

  @override
  String blockNumberConfirm(String number) {
    return 'Hindi ka na makakatanggap ng mga tawag o text mula sa $number.';
  }

  @override
  String get blocked => 'Na-block';

  @override
  String get couldNotBlock => 'Hindi ma-block';

  @override
  String get contactNotOnDevice =>
      'Hindi naka-save ang contact sa device na ito';

  @override
  String get unblocked => 'Na-unblock';

  @override
  String get numberCopied => 'Nakopya ang numero';

  @override
  String get showLess => 'Magpakita ng mas kaunti';

  @override
  String get showAllTimes => 'Ipakita sa lahat ng oras';

  @override
  String mostRecent(String time) {
    return 'Pinakabago · $time';
  }

  @override
  String get videoCall => 'Video call';

  @override
  String get couldNotPlaceVideoCall => 'Hindi makapag-video call';

  @override
  String get message => 'Mensahe';

  @override
  String get couldNotOpenMessaging => 'Hindi mabuksan ang messaging app';

  @override
  String get history => 'Kasaysayan';

  @override
  String get viewContact => 'Tingnan ang contact';

  @override
  String get addToContact => 'Idagdag sa contact';

  @override
  String get callTypeMissed => 'Nakaligtaan';

  @override
  String get callTypeRejected => 'Tinanggihan';

  @override
  String get callTypeIncoming => 'Papasok';

  @override
  String get callTypeOutgoing => 'Papalabas';

  @override
  String get today => 'Ngayong araw';

  @override
  String get yesterday => 'Kahapon';

  @override
  String get justNow => 'Ngayon lang';

  @override
  String minutesAgo(int count) {
    return '$count min ang nakalipas';
  }

  @override
  String hoursAgo(int count) {
    return '$count oras ang nakalipas';
  }

  @override
  String get filterAll => 'Lahat';

  @override
  String get filterMissed => 'Nakaligtaan';

  @override
  String get filterContacts => 'Mga contact';

  @override
  String get filterNonContacts => 'Mga hindi contact';

  @override
  String get iconUpdated =>
      'Na-update ang icon. Maaaring magtagal bago mag-refresh ang iyong home screen.';

  @override
  String get iconSavedRelease =>
      'Na-save ang pagpipilian. Nag-a-update ang icon ng home screen sa mga build ng release.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Hindi mabago ang icon: $error';
  }

  @override
  String get launcherClassicBlack => 'Classic (itim)';

  @override
  String get launcherLight => 'Liwanag';

  @override
  String get launcherNothingRed => 'Walang pula';

  @override
  String get launcherDarkGrey => 'Madilim na kulay abo';

  @override
  String get launcherCream => 'Cream';

  @override
  String get launcherRetroPhone => 'Retro na telepono';

  @override
  String get launcherRetroPhoneLight => 'Retro na telepono (liwanag)';

  @override
  String get voiceSearchUnavailable =>
      'Hindi available ang paghahanap gamit ang boses sa device na ito.';

  @override
  String voiceSearchFailed(String error) {
    return 'Nabigo ang paghahanap gamit ang boses: $error';
  }

  @override
  String get customColor => 'Custom';

  @override
  String get selectColor => 'Pumili ng kulay';

  @override
  String get reset => 'I-reset';

  @override
  String get simPickerTitle => 'Piliin ang SIM';

  @override
  String get simChooseForCall => 'Pumili ng SIM para sa tawag na ito';

  @override
  String get defaultSimAsk => 'Magtanong sa bawat oras';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Mga detalye ng contact';

  @override
  String get call => 'Tumawag';

  @override
  String get share => 'Ibahagi';

  @override
  String get favourite => 'Paborito';

  @override
  String get unfavourite => 'Hindi paborito';

  @override
  String get blockContact => 'I-block ang contact';

  @override
  String get unblockContact => 'I-unblock ang contact';

  @override
  String get deleteContact => 'Tanggalin ang contact';

  @override
  String get phone => 'Telepono';

  @override
  String get email => 'Email';

  @override
  String get ringtone => 'Ringtone';

  @override
  String get defaultRingtone => 'Default';

  @override
  String get simForContact => 'SIM para sa contact na ito';

  @override
  String get callHistoryTitle => 'History ng tawag';

  @override
  String get noCallsWithNumber => 'Walang mga tawag sa numerong ito';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Glyph animation';

  @override
  String get inCallGlyphAnimationStyle => 'In-call na Glyph animation';

  @override
  String get recordsOff => 'Naka-off';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Default na SIM';

  @override
  String get nothingPhoneOnly => 'Walang Phone lang';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Ang mga feature ng glyph ay nangangailangan ng Nothing Phone';

  @override
  String get custom => 'Custom';

  @override
  String presetColorHex(String hex) {
    return 'Preset · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Custom · $hex';
  }

  @override
  String get oneContact => '1 contact';

  @override
  String upToContacts(int count) {
    return 'Hanggang $count contact';
  }

  @override
  String get answerButtonTapSubtitle => 'I-tap ang button para sumagot';

  @override
  String get filterCalls => 'I-filter ang mga tawag';

  @override
  String get filterTooltip => 'Salain';

  @override
  String get settingsTooltip => 'Mga setting';

  @override
  String get filterAllSubtitle => 'Buong log ng tawag';

  @override
  String get filterMissedSubtitle => 'Na-miss at tinanggihan';

  @override
  String get filterContactsSubtitle =>
      'Mga tawag na tumugma sa isang naka-save na contact';

  @override
  String get filterNonContactsSubtitle =>
      'Mga numerong wala sa iyong address book';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Kasalukuyang tawag: $detail';
  }

  @override
  String get defaultSimForCalls => 'Default na SIM para sa mga tawag';

  @override
  String get blinkInterval => 'Mag-blink interval';

  @override
  String get close => 'Isara';

  @override
  String get frequentlyContactedInfoBody =>
      'Ipinapakita ang iyong mga pinaka-tinatawag na numero ng telepono sa tuktok ng tab na Mga Kamakailan, batay sa kung gaano karaming mga papasok, papalabas, hindi nasagot, o tinanggihang mga tawag ang mayroon ka sa bawat numero sa yugto ng panahon na iyong pinili.\n\nBilang ng mga tala: itakda sa 0 upang i-off ito. Gamitin ang 1–20 para ipakita na maraming nangungunang contact.\n\nNalalapat lamang ang yugto ng panahon kapag ipinakita ang kahit isang contact.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count ilaw, ${ms}ms bilis';
  }

  @override
  String get deleteContactQuestion => 'Tanggalin ang contact?';

  @override
  String get deleteContactBody =>
      'Permanenteng ide-delete ang contact na ito sa iyong device.';

  @override
  String get blockContactQuestion => 'I-block ang contact?';

  @override
  String get unblockContactQuestion => 'I-unblock ang contact?';

  @override
  String get blockContactBody =>
      'Hindi ka na makakatanggap ng mga tawag o text mula sa contact na ito.';

  @override
  String get unblockContactBody =>
      'Magsisimula kang makatanggap ng mga tawag at text mula sa contact na ito.';

  @override
  String get contactBlocked => 'Na-block ang contact';

  @override
  String get contactUnblocked => 'Na-unblock ang contact';

  @override
  String get noPhoneNumbersToBlock =>
      'Walang mga numero ng telepono na harangan';

  @override
  String get simSameAsSystem => 'Pareho sa sistema';

  @override
  String get simSameAsSystemSubtitle =>
      'Sinusundan ang Default na SIM sa Mga Setting';

  @override
  String get simAskEveryTimeForContact =>
      'Palaging ipakita ang tagapili ng SIM para sa contact na ito';

  @override
  String get ringtoneSetForContact =>
      'Itinakda sa buong mundo ang ringtone para sa contact na ito';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Nabigong pumili ng ringtone: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Error: $error';
  }

  @override
  String get noCallHistoryFound => 'Walang nakitang history ng tawag';

  @override
  String get speedDialVoicemail => 'Speed ​​dial: Voicemail';

  @override
  String shareContactSubject(String name) {
    return 'Makipag-ugnayan sa: $name';
  }

  @override
  String get contactInfo => 'Impormasyon sa pakikipag-ugnayan';

  @override
  String get dontAskAgainSim => 'Wag ka nang magtanong ulit';

  @override
  String get simDontAskAgainSubtitle =>
      'Gamitin ang SIM na ito bilang default (baguhin sa Mga Setting)';

  @override
  String get addContact => 'Magdagdag ng contact';

  @override
  String get createContact => 'Lumikha ng contact';

  @override
  String get paste => 'Idikit';

  @override
  String get clear => 'Maaliwalas';

  @override
  String get returnToCall => 'Bumalik sa tawag';

  @override
  String get numberOfRecordsTitle => 'Bilang ng mga tala';

  @override
  String get recordsPickerSubtitle =>
      'Gaano karaming mga entry na madalas makontak ang ipapakita (0 = off)';

  @override
  String get torchInfoTitle => 'Kumikislap ang tanglaw';

  @override
  String get torchInfoBody =>
      'Nagbi-blink ang flash ng camera sa panahon ng mga papasok, papalabas, o patuloy na mga tawag. Independiyente sa mga ilaw ng Glyph.';

  @override
  String get glyphMapTitle => 'Layout ng glyph';

  @override
  String get glyphMapBody =>
      'Walang Phone 1 Glyph LED zone. Ginagamit ng mga palabas na animation at in-call ang mga channel na ito.';

  @override
  String get answerMethodTitle => 'Paraan ng pagsagot';

  @override
  String get glyphOutgoingCallStyleTitle => 'Istilo ng papalabas na tawag';

  @override
  String get glyphInCallAnimationTitle => 'Glyph in-call na animation';

  @override
  String get themePickerTitle => 'Tema';

  @override
  String get torchIncomingTitle => 'Sulo ng papasok na tawag';

  @override
  String get torchOutgoingTitle => 'Outgoing call torch';

  @override
  String get torchOngoingTitle => 'Patuloy na tawag na sulo';

  @override
  String get timePeriodTitle => 'tagal ng panahon';

  @override
  String get ok => 'OK';

  @override
  String get confirmDeleteCall => 'I-delete ang tawag na ito sa history?';

  @override
  String get confirmDeleteAllCalls =>
      'I-delete ang lahat ng tawag na may ganitong numero?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Magpadala ng mensahe';

  @override
  String get addToExistingContactAction => 'Idagdag sa isang contact';

  @override
  String get mobileLabel => 'Mobile';

  @override
  String get callingSimForContactTitle =>
      'Tumatawag sa SIM para sa contact na ito';

  @override
  String get contactSettings => 'Mga setting ng contact';

  @override
  String get setCallingSim => 'Itakda ang pagtawag sa SIM';

  @override
  String get contactRingtone => 'Ringtone ng contact';

  @override
  String get shareContact => 'Ibahagi ang contact';

  @override
  String get blockNumbers => 'I-block ang mga numero';

  @override
  String get unblockNumbers => 'I-unblock ang mga numero';

  @override
  String get connectedApps => 'Mga konektadong app';

  @override
  String get simNotSet => 'Hindi nakatakda';

  @override
  String get ringtoneDefault => 'Default';

  @override
  String get customRingtone => 'Custom';

  @override
  String get aboutSection => 'Tungkol sa';

  @override
  String get aboutFeedbackSection => 'Tungkol sa & feedback';

  @override
  String get aboutDescription =>
      'Walang Dialer ang open source. Kung ikaw ay isang developer, maaari kang tuklasin ang code at mag-ambag.';

  @override
  String get aboutViewSource => 'Tingnan sa GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Hindi mabuksan ang link';

  @override
  String get reviewSection => 'Balik-aral';

  @override
  String get reviewDescription =>
      'Nag-e-enjoy sa Nothing Dialer? Ang iyong rating sa Google Play ay nakakatulong sa iba na mahanap ang app.';

  @override
  String get reviewRateOnPlay => 'I-rate sa Google Play';

  @override
  String get reviewRateOnPlaySubtitle =>
      'Mag-iwan ng rating nang hindi umaalis sa app';

  @override
  String get reviewCouldNotOpen => 'Hindi mabuksan ang Google Play';

  @override
  String get breathSpeed => 'Bilis ng hininga';

  @override
  String get breathSpeedBlinkHint =>
      'Lower = Blink, Higher = Mabagal na Hininga';

  @override
  String get speedSliderHint =>
      'Mas mababa = Mas mabilis, Mas Mataas = Mas Mabagal';

  @override
  String get swatchDefault => 'Default';

  @override
  String get customAccentColorPicker => 'Custom na kulay ng accent';

  @override
  String get customLightBackgroundPicker => 'Custom na liwanag na background';

  @override
  String get customDarkBackgroundPicker => 'Custom na madilim na background';

  @override
  String get customCallBackgroundPicker => 'Custom na background ng tawag';

  @override
  String get ongoingCallStyleTitle => 'Kasalukuyang istilo ng pagtawag';

  @override
  String get glyphMapUnavailable => 'Hindi available ang glyph map';

  @override
  String get animationDelayRange => 'Pagkaantala ng Animation (1s - 10s)';

  @override
  String get animationDelayRangeSingle =>
      'Pagkaantala ng Animation (0.1s - 10s)';

  @override
  String get inCallMute => 'I-mute';

  @override
  String get inCallKeypad => 'Keypad';

  @override
  String get inCallSpeaker => 'Tagapagsalita';

  @override
  String get inCallMore => 'Higit pa';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Telepono';

  @override
  String get inCallAddCall => 'Magdagdag ng tawag';

  @override
  String get inCallChangeSim => 'Palitan ang SIM';

  @override
  String get inCallDecline => 'Tanggihan';

  @override
  String get inCallAnswer => 'Sagot';

  @override
  String get inCallMessage => 'Mensahe';

  @override
  String get inCallCalling => 'Tumatawag…';

  @override
  String get inCallIncoming => 'Papasok na tawag';

  @override
  String get inCallSelectSim => 'Piliin ang SIM…';

  @override
  String get inCallSwitchingSim => 'Nagpapalit ng SIM…';

  @override
  String get inCallCallEnded => 'Natapos ang tawag';

  @override
  String inCallCallingVia(String sim) {
    return 'Tumatawag sa pamamagitan ng $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Tumatawag sa pamamagitan ng <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Pumili ng SIM para sa tawag na ito';

  @override
  String get inCallDragAnswerDecline =>
      'I-drag pakanan para sumagot · I-drag pakaliwa para tanggihan';

  @override
  String inCallMobileNumber(String number) {
    return 'Mobile $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (Kasalukuyan)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Tumawag sa pamamagitan ng <b>$sim</b> mula sa';
  }

  @override
  String get inCallCallFrom => 'Tawag mula sa';

  @override
  String get inCallUnknown => 'Hindi alam';

  @override
  String get selectContactRingtone => 'Piliin ang ringtone ng contact';

  @override
  String get speakToSearchPrompt => 'Magsalita para maghanap';

  @override
  String get phonePermissionRequired =>
      'Kinakailangan ang pahintulot sa telepono';

  @override
  String callFailed(String error) {
    return 'Nabigo ang tawag: $error';
  }

  @override
  String get callPermissionDenied => 'Tinanggihan ang pahintulot sa pagtawag';

  @override
  String get alreadyDefaultDialer => 'Nakatakda na bilang default na dialer';

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
