// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Afrikaans (`af`).
class AppLocalizationsAf extends AppLocalizations {
  AppLocalizationsAf([String locale = 'af']) : super(locale);

  @override
  String get appTitle => 'Niks Dialer';

  @override
  String get settings => 'Instellings';

  @override
  String get settingsSearchHint => 'Soek instellings';

  @override
  String get settingsSearchNoResults => 'Geen instellings gevind nie';

  @override
  String get general => 'Algemeen';

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
  String get theme => 'Tema';

  @override
  String get themeSystemDefault => 'Stelsel verstek';

  @override
  String get themeLight => 'Lig';

  @override
  String get themeDark => 'Donker';

  @override
  String get themeFollowSystem => 'Volg stelselinstellings';

  @override
  String get themeAlwaysLight => 'Gebruik altyd ligte tema';

  @override
  String get themeAlwaysDark => 'Gebruik altyd donker tema';

  @override
  String get language => 'Taal';

  @override
  String get languageDeviceDefault => 'Toestel verstek';

  @override
  String get languagePickerTitle => 'Taal';

  @override
  String get languageSearchHint => 'Soek tale';

  @override
  String get font => 'Lettertipe';

  @override
  String get fontSystem => 'Stelsel verstek';

  @override
  String get fontNdot => 'Niks (NDot)';

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
      'Kon nie lettertipe aflaai nie. Gaan jou verbinding na en probeer weer.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Lettertipe';

  @override
  String get fontPreviewSample => 'Niks Dialer';

  @override
  String get fontAppWide => 'App font';

  @override
  String get fontApplyTo => 'Doen aansoek by';

  @override
  String get fontApplyEntireApp => 'Hele toepassing';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Dieselfde lettertipe oral, insluitend in-oproep';

  @override
  String get fontApplyTitlesOnly => 'Titels en opskrifte';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Slegs groot titels en afdelingopskrifte';

  @override
  String get fontApplyCustomize => 'Pasmaak';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Kies lettertipe per skerm en tekstipe';

  @override
  String get fontCustomizeSection => 'Pasmaak volgens skerm';

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
  String get fontRolePageTitle => 'Bladsy titel';

  @override
  String get fontRoleSectionHeader => 'Afdelingopskrif';

  @override
  String get fontRolePrimary => 'Primêre teks';

  @override
  String get fontRoleSecondary => 'Sekondêre teks';

  @override
  String get fontRoleButton => 'Knoppies';

  @override
  String get fontRoleDialKey => 'Dialpad-sleutels';

  @override
  String get fontSurfaceRecents => 'Onlangse';

  @override
  String get fontSurfaceContacts => 'Kontakte';

  @override
  String get fontSurfaceSettings => 'Instellings';

  @override
  String get fontSurfaceDialpad => 'Dialpad';

  @override
  String get fontSurfaceShell => 'Navigasie';

  @override
  String get fontSurfaceDefaultDialer => 'Verstek oproeper-opdrag';

  @override
  String get fontSurfaceFavourites => 'Gunstelinge';

  @override
  String get fontSurfaceBlocked => 'Geblokkeerde nommers';

  @override
  String get fontSurfaceContactDetail => 'Kontakbesonderhede';

  @override
  String get fontSurfaceCallHistory => 'Oproepgeskiedenis';

  @override
  String get fontSurfaceSheets => 'Blaaie en plukkers';

  @override
  String get fontSurfaceInCall => 'In-oproep skerm';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — hele toepassing';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — slegs titels';
  }

  @override
  String get fontSubtitleCustomize => 'Pasgemaak per skerm';

  @override
  String get background => 'Agtergrond';

  @override
  String get accent => 'Aksent';

  @override
  String get lightBackground => 'Ligte agtergrond';

  @override
  String get lightAccent => 'Ligte aksent';

  @override
  String get darkBackground => 'Donker agtergrond';

  @override
  String get darkAccent => 'Donker aksent';

  @override
  String get callBackground => 'Oproep agtergrond';

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
  String get appIcon => 'App-ikoon';

  @override
  String get answerMethod => 'Antwoord metode';

  @override
  String get answerSlide => 'Skuif om te antwoord';

  @override
  String get answerSlideSubtitle =>
      'Swiep links/regs op die balk, soos Google Phone';

  @override
  String get answerButton => 'Knoppie tik';

  @override
  String get answerButtonSubtitle => 'Tik op antwoord of weier-knoppies';

  @override
  String get answerHuawei => 'Huawei-styl';

  @override
  String get answerHuaweiSubtitle =>
      'Sleep die sirkel na die groen foon om te antwoord';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — sleep na groen / rooi';

  @override
  String get calling => 'Roep';

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
  String get defaultSim => 'Verstek SIM';

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
  String get askEveryTime => 'Vra elke keer';

  @override
  String get askEveryTimeSubtitle => 'Wys SIM-kieser voor elke oproep';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Geen SIM-kaarte gevind nie';

  @override
  String couldNotLoadSims(String error) {
    return 'Kon nie SIM\'s laai nie: $error';
  }

  @override
  String get allFavourites => 'Alle gunstelinge';

  @override
  String get allFavouritesSubtitle =>
      'Herrangskik, verwyder en voeg by kontakte uit';

  @override
  String get blockedNumbers => 'Geblokkeerde nommers';

  @override
  String get blockedNumbersSubtitle => 'Bekyk en deblokkeer nommers';

  @override
  String get soundsAndVibration => 'Klanke en vibrasie';

  @override
  String get soundsAndVibrationSubtitle => 'Luitoon, vibrasie, skakelbordtone';

  @override
  String couldNotOpenSettings(String error) {
    return 'Kon nie instellings oopmaak nie: $error';
  }

  @override
  String get frequentlyContacted => 'Gereeld gekontak';

  @override
  String get numberOfRecords => 'Aantal rekords';

  @override
  String get timePeriod => 'Tydsperiode';

  @override
  String get periodLast24Hours => 'Laaste 24 uur';

  @override
  String get periodLast24HoursSubtitle => 'Oproepe van die afgelope dag';

  @override
  String get periodLast7Days => 'Laaste 7 dae';

  @override
  String get periodLast7DaysSubtitle => 'Oproepe van die afgelope week';

  @override
  String get periodLast30Days => 'Laaste 30 dae';

  @override
  String get periodLast30DaysSubtitle => 'Oproepe van die afgelope maand';

  @override
  String get periodLast12Months => 'Laaste 12 maande';

  @override
  String get periodLast12MonthsSubtitle => 'Oproepe van die afgelope jaar';

  @override
  String get periodAllTime => 'Alle tye';

  @override
  String get periodAllTimeSubtitle => 'Volledige oproepgeskiedenis';

  @override
  String get frequentMaxOff => 'Af';

  @override
  String frequentMaxCount(int count) {
    return '$count kontakte';
  }

  @override
  String get torchBlink => 'Toorts knipper';

  @override
  String get torchIncomingCall => 'Inkomende oproep fakkel';

  @override
  String get torchOutgoingCall => 'Uitgaande oproep fakkel';

  @override
  String get torchOngoingCall => 'Deurlopende oproep fakkel';

  @override
  String get torchIncomingInterval => 'Inkomende flikkerinterval';

  @override
  String get torchOutgoingInterval => 'Uitgaande flikkerinterval';

  @override
  String get torchOngoingInterval => 'Deurlopende flikkerinterval';

  @override
  String get torchOff => 'Af';

  @override
  String get torchOffIncomingSubtitle => 'Geen fakkel terwyl dit lui nie';

  @override
  String get torchOffOutgoingSubtitle => 'Geen fakkel terwyl jy skakel nie';

  @override
  String get torchOffOngoingSubtitle => 'Geen fakkel tydens aktiewe oproep nie';

  @override
  String get torchFixedInterval => 'Vaste interval';

  @override
  String get torchFixedIntervalSubtitle => 'Knipper teen \'n vasgestelde spoed';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds flikker';
  }

  @override
  String get flashlightUnavailable =>
      'Flitslig nie beskikbaar op hierdie toestel nie';

  @override
  String get glyphLights => 'Glyph-ligte';

  @override
  String get glyphCallingAnimation => 'Glyph-oproep-animasie';

  @override
  String get glyphOngoingAnimation => 'Glyph deurlopende oproep animasie';

  @override
  String get glyphNone => 'Geen';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Deaktiveer Glyph-ligte vir uitgaande oproepe';

  @override
  String get glyphNoneInCallSubtitle =>
      'Deaktiveer Glyph-ligte terwyl u aktief op oproep is';

  @override
  String get glyphBreathProgress => 'Asem en vordering';

  @override
  String get glyphBreathProgressSubtitle =>
      'Ligte asemhaal terwyl lyn oor 65s vol word';

  @override
  String get glyphAccumulate => 'Akkumuleer';

  @override
  String get glyphAccumulateSubtitle => 'Akkumulerende animasie op ligte C1-C4';

  @override
  String get glyphSingle => 'Enkellopend';

  @override
  String get glyphSingleSubtitle => 'Enkele lig wat oor C1-C4 beweeg';

  @override
  String get glyphBreath => 'Asem';

  @override
  String get glyphBreathSubtitle => 'Kies ligte en spoed';

  @override
  String get glyphSteady => 'Bestendig';

  @override
  String get glyphSteadySubtitle => 'Geselekteerde ligte bly aan';

  @override
  String get breathSettings => 'Asem instellings';

  @override
  String get activeLights => 'Aktiewe ligte';

  @override
  String lightsCount(int count) {
    return '$count ligte';
  }

  @override
  String get speedSettings => 'Spoedinstellings';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms vertraging';
  }

  @override
  String get durationAndSpeed => 'Duur en spoed';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s duur, ${interval}ms interval';
  }

  @override
  String get cancel => 'Kanselleer';

  @override
  String get done => 'Klaar';

  @override
  String get save => 'Stoor';

  @override
  String get block => 'Blok';

  @override
  String get delete => 'Vee uit';

  @override
  String get recents => 'Onlangse';

  @override
  String get contacts => 'Kontakte';

  @override
  String get hideFavouritesOnRecents => 'Versteek gunstelinge op Recents';

  @override
  String get showFavouritesOnRecents => 'Wys gunstelinge op Recents';

  @override
  String get ongoingCall => 'Deurlopende oproep';

  @override
  String get setAsDefaultTitle => 'STEL AS\nVERSTAND';

  @override
  String get setAsDefaultBody =>
      'Om Nothing Dialer te gebruik, moet dit as jou verstekfoontoepassing gestel word. Dit laat jou toe om oproepe te bestuur, geskiedenis te sien en Glyph-animasies te gebruik.';

  @override
  String get setAsDefaultButton => 'STEL AS VERSTAND';

  @override
  String get nothingDialerBrand => 'NIKS DIALER 1';

  @override
  String get favourites => 'Gunstelinge';

  @override
  String get addFavourite => 'Voeg gunsteling by';

  @override
  String get favouritesDrawerHint =>
      'Gebruik die kieslys om kontakte by te voeg. Tik buite die laai of swiep dit toe. Ster \'n kontak uit hul besonderhede, of druk lank \'n oproep in Onlangse.';

  @override
  String get menu => 'Spyskaart';

  @override
  String get noFavouritesYet =>
      'Nog geen gunstelinge nie.\nMaak die kieslys oop om een ​​by te voeg, of ster \'n kontak.';

  @override
  String get contactsPermissionNeeded => 'Kontaktoestemming benodig';

  @override
  String get chooseContact => 'Kies kontak';

  @override
  String get noPhone => 'Geen foon nie';

  @override
  String get pickNumber => 'Kies nommer';

  @override
  String get contactHasNoPhone => 'Hierdie kontak het geen telefoonnommer nie';

  @override
  String get blockNumber => 'Bloknommer';

  @override
  String get enterPhoneNumber => 'Voer telefoonnommer in';

  @override
  String unblockedDisplay(String display) {
    return 'Gedeblokkeer $display';
  }

  @override
  String get couldNotUnblockNumber => 'Kon nie nommer deblokkeer nie';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked geblokkeer • $matched ooreenstem';
  }

  @override
  String get contactsPermissionMissing =>
      'Kontaktoestemming ontbreek. Tik om reg te maak.';

  @override
  String get noBlockedNumbers => 'Geen geblokkeerde nommers nie';

  @override
  String get unknownContact => 'Onbekende kontak';

  @override
  String get unblock => 'Deblokkeer';

  @override
  String get permissionNeeded => 'Toestemming benodig';

  @override
  String get grantPhonePermission =>
      'Gee foontoestemming om jou oproepgeskiedenis te sien.';

  @override
  String get grantContactsPermission =>
      'Gee kontakte toestemming om jou adresboek te sien.';

  @override
  String get openSettings => 'Maak Instellings oop';

  @override
  String get tryAgain => 'Probeer weer';

  @override
  String get couldNotLoadContacts => 'Kon nie kontakte laai nie';

  @override
  String get contactsLoadError =>
      'Iets het verkeerd geloop met die lees van jou adresboek.';

  @override
  String get noContactsFound => 'Geen kontakte gevind nie';

  @override
  String get contactsEmptySubtitle =>
      'Kontakte vanaf jou toestel sal hier verskyn.';

  @override
  String get searchContacts => 'Soek kontakte …';

  @override
  String get searchRecentCalls => 'Soek onlangse oproepe';

  @override
  String get fromContacts => 'Van kontakte';

  @override
  String get recentsSearchSection => 'Onlangse soektog';

  @override
  String get recentsSearchShowContacts => 'Wys kontakte in soektog';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Terwyl jy Recents soek, wys ook passende mense uit jou adresboek onder oproepgeskiedenisresultate.';

  @override
  String get voiceSearch => 'Stemsoektog';

  @override
  String get createNewContact => 'Skep nuwe kontak';

  @override
  String callError(String error) {
    return 'Oproepfout: $error';
  }

  @override
  String get noRecentCalls => 'Geen onlangse oproepe nie';

  @override
  String get callHistoryEmpty => 'Jou oproepgeskiedenis sal hier verskyn.';

  @override
  String get loadMore => 'Laai meer';

  @override
  String get frequentlyContactedHeader => 'Gereeld gekontak';

  @override
  String get recentHistory => 'Onlangse geskiedenis';

  @override
  String get noFavouritesRecentsHint =>
      'Nog geen gunstelinge nie. Ster \'n kontak, druk \'n oproep lank, of gebruik die Gunstelinge-oortjie.';

  @override
  String get copyNumber => 'Kopieer nommer';

  @override
  String get editNumberBeforeCall => 'Wysig nommer voor oproep';

  @override
  String get removeFromFavourites => 'Verwyder uit gunstelinge';

  @override
  String get addToFavourites => 'Voeg by gunstelinge';

  @override
  String get blockNumberQuestion => 'Bloknommer?';

  @override
  String blockNumberConfirm(String number) {
    return 'Jy sal nie meer oproepe of SMS\'e van $number ontvang nie.';
  }

  @override
  String get blocked => 'Geblokkeer';

  @override
  String get couldNotBlock => 'Kon nie blokkeer nie';

  @override
  String get contactNotOnDevice => 'Kontak nie op hierdie toestel gestoor nie';

  @override
  String get unblocked => 'Gedeblokkeer';

  @override
  String get numberCopied => 'Nommer gekopieer';

  @override
  String get showLess => 'Wys minder';

  @override
  String get showAllTimes => 'Wys alle tye';

  @override
  String mostRecent(String time) {
    return 'Mees onlangse · $time';
  }

  @override
  String get videoCall => 'Video-oproep';

  @override
  String get couldNotPlaceVideoCall => 'Kon nie video-oproep plaas nie';

  @override
  String get message => 'Boodskap';

  @override
  String get couldNotOpenMessaging => 'Kon nie boodskapprogram oopmaak nie';

  @override
  String get history => 'Geskiedenis';

  @override
  String get viewContact => 'Bekyk kontak';

  @override
  String get addToContact => 'Voeg by kontak';

  @override
  String get callTypeMissed => 'Gemis';

  @override
  String get callTypeRejected => 'Verwerp';

  @override
  String get callTypeIncoming => 'Inkomende';

  @override
  String get callTypeOutgoing => 'Uitgaande';

  @override
  String get today => 'Vandag';

  @override
  String get yesterday => 'Gister';

  @override
  String get justNow => 'Netnou';

  @override
  String minutesAgo(int count) {
    return '$count min gelede';
  }

  @override
  String hoursAgo(int count) {
    return '$count uur gelede';
  }

  @override
  String get filterAll => 'Almal';

  @override
  String get filterMissed => 'Gemis';

  @override
  String get filterContacts => 'Kontakte';

  @override
  String get filterNonContacts => 'Nie-kontakte';

  @override
  String get iconUpdated =>
      'Ikoon opgedateer. Jou tuisskerm kan dalk \'n oomblik neem om te verfris.';

  @override
  String get iconSavedRelease =>
      'Keuse gestoor. Die tuisskermikoon word opgedateer in vrystellings.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Kon nie ikoon verander nie: $error';
  }

  @override
  String get launcherClassicBlack => 'Klassiek (swart)';

  @override
  String get launcherLight => 'Lig';

  @override
  String get launcherNothingRed => 'Niks rooi nie';

  @override
  String get launcherDarkGrey => 'Donkergrys';

  @override
  String get launcherCream => 'Room';

  @override
  String get launcherRetroPhone => 'Retro foon';

  @override
  String get launcherRetroPhoneLight => 'Retro-foon (lig)';

  @override
  String get voiceSearchUnavailable =>
      'Stemsoektog is nie op hierdie toestel beskikbaar nie.';

  @override
  String voiceSearchFailed(String error) {
    return 'Stemsoektog het misluk: $error';
  }

  @override
  String get customColor => 'Pasgemaak';

  @override
  String get selectColor => 'Kies kleur';

  @override
  String get reset => 'Stel terug';

  @override
  String get simPickerTitle => 'Kies SIM';

  @override
  String get simChooseForCall => 'Kies SIM vir hierdie oproep';

  @override
  String get defaultSimAsk => 'Vra elke keer';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Kontakbesonderhede';

  @override
  String get call => 'Bel';

  @override
  String get share => 'Deel';

  @override
  String get favourite => 'Gunsteling';

  @override
  String get unfavourite => 'Ongunsteling';

  @override
  String get blockContact => 'Blokkeer kontak';

  @override
  String get unblockContact => 'Deblokkeer kontak';

  @override
  String get deleteContact => 'Vee kontak uit';

  @override
  String get phone => 'Telefoon';

  @override
  String get email => 'E-pos';

  @override
  String get ringtone => 'Luitoon';

  @override
  String get defaultRingtone => 'Verstek';

  @override
  String get simForContact => 'SIM vir hierdie kontak';

  @override
  String get callHistoryTitle => 'Oproepgeskiedenis';

  @override
  String get noCallsWithNumber => 'Geen oproepe met hierdie nommer nie';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Glyph animasie';

  @override
  String get inCallGlyphAnimationStyle => 'In-oproep Glyph-animasie';

  @override
  String get recordsOff => 'Af';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Verstek SIM';

  @override
  String get nothingPhoneOnly => 'Niks Slegs foon';

  @override
  String get nothingPhoneOnlySubtitle => 'Glyph-kenmerke vereis \'n Niks-foon';

  @override
  String get custom => 'Pasgemaak';

  @override
  String presetColorHex(String hex) {
    return 'Vooraf ingesteld · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Pasgemaak · $hex';
  }

  @override
  String get oneContact => '1 kontak';

  @override
  String upToContacts(int count) {
    return 'Tot $count kontakte';
  }

  @override
  String get answerButtonTapSubtitle => 'Tik op die knoppie om te antwoord';

  @override
  String get filterCalls => 'Filter oproepe';

  @override
  String get filterTooltip => 'Filter';

  @override
  String get settingsTooltip => 'Instellings';

  @override
  String get filterAllSubtitle => 'Hele oproeplogboek';

  @override
  String get filterMissedSubtitle => 'Gemis en verwerp';

  @override
  String get filterContactsSubtitle => 'Oproepe pas by \'n gestoorde kontak';

  @override
  String get filterNonContactsSubtitle => 'Nommers nie in jou adresboek nie';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Deurlopende oproep: $detail';
  }

  @override
  String get defaultSimForCalls => 'Verstek SIM vir oproepe';

  @override
  String get blinkInterval => 'Knipper interval';

  @override
  String get close => 'Maak toe';

  @override
  String get frequentlyContactedInfoBody =>
      'Wys jou mees gebelde telefoonnommers boaan die Onlangse-oortjie, gebaseer op hoeveel inkomende, uitgaande, gemiste of afgekeurde oproepe jy met elke nommer gehad het in die tydperk wat jy kies.\n\nAantal rekords: stel op 0 om dit af te skakel. Gebruik 1–20 om soveel topkontakte te wys.\n\nTydperiode is slegs van toepassing wanneer ten minste een kontak gewys word.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count ligte, ${ms}ms spoed';
  }

  @override
  String get deleteContactQuestion => 'Vee kontak uit?';

  @override
  String get deleteContactBody =>
      'Hierdie kontak sal permanent van jou toestel af uitgevee word.';

  @override
  String get blockContactQuestion => 'Blokkeer kontak?';

  @override
  String get unblockContactQuestion => 'Deblokkeer kontak?';

  @override
  String get blockContactBody =>
      'Jy sal nie meer oproepe of SMS\'e van hierdie kontak af ontvang nie.';

  @override
  String get unblockContactBody =>
      'Jy sal oproepe en SMS\'e van hierdie kontak af begin ontvang.';

  @override
  String get contactBlocked => 'Kontak geblokkeer';

  @override
  String get contactUnblocked => 'Kontak gedeblokkeer';

  @override
  String get noPhoneNumbersToBlock => 'Geen telefoonnommers om te blokkeer nie';

  @override
  String get simSameAsSystem => 'Dieselfde as stelsel';

  @override
  String get simSameAsSystemSubtitle => 'Volg verstek SIM in instellings';

  @override
  String get simAskEveryTimeForContact =>
      'Wys altyd SIM-kieser vir hierdie kontak';

  @override
  String get ringtoneSetForContact =>
      'Luitoon wêreldwyd gestel vir hierdie kontak';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Kon nie luitoon kies nie: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Fout: $error';
  }

  @override
  String get noCallHistoryFound => 'Geen oproepgeskiedenis gevind nie';

  @override
  String get speedDialVoicemail => 'Snelskakel: Stempos';

  @override
  String shareContactSubject(String name) {
    return 'Kontak: $name';
  }

  @override
  String get contactInfo => 'Kontak inligting';

  @override
  String get dontAskAgainSim => 'Moenie weer vra nie';

  @override
  String get simDontAskAgainSubtitle =>
      'Gebruik hierdie SIM as verstek (verandering in Instellings)';

  @override
  String get addContact => 'Voeg kontak by';

  @override
  String get createContact => 'Skep kontak';

  @override
  String get paste => 'Plak';

  @override
  String get clear => 'Duidelik';

  @override
  String get returnToCall => 'Keer terug na oproep';

  @override
  String get numberOfRecordsTitle => 'Aantal rekords';

  @override
  String get recordsPickerSubtitle =>
      'Hoeveel gereeld gekontak inskrywings om te wys (0 = af)';

  @override
  String get torchInfoTitle => 'Toorts knip';

  @override
  String get torchInfoBody =>
      'Knipper die kameraflits tydens inkomende, uitgaande of deurlopende oproepe. Onafhanklik van Glyph-ligte.';

  @override
  String get glyphMapTitle => 'Glyph-uitleg';

  @override
  String get glyphMapBody =>
      'Niks Phone 1 Glyph LED-sones. Uitgaande en in-oproep-animasies gebruik hierdie kanale.';

  @override
  String get answerMethodTitle => 'Antwoord metode';

  @override
  String get glyphOutgoingCallStyleTitle => 'Uitgaande oproepstyl';

  @override
  String get glyphInCallAnimationTitle => 'Glyph in-oproep-animasie';

  @override
  String get themePickerTitle => 'Tema';

  @override
  String get torchIncomingTitle => 'Inkomende oproep fakkel';

  @override
  String get torchOutgoingTitle => 'Uitgaande oproep fakkel';

  @override
  String get torchOngoingTitle => 'Deurlopende oproep fakkel';

  @override
  String get timePeriodTitle => 'Tydsperiode';

  @override
  String get ok => 'OK';

  @override
  String get confirmDeleteCall => 'Vee hierdie oproep uit die geskiedenis uit?';

  @override
  String get confirmDeleteAllCalls =>
      'Vee alle oproepe met hierdie nommer uit?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Stuur \'n boodskap';

  @override
  String get addToExistingContactAction => 'Voeg by \'n kontak';

  @override
  String get mobileLabel => 'Selfoon';

  @override
  String get callingSimForContactTitle => 'Bel tans SIM vir hierdie kontak';

  @override
  String get contactSettings => 'Kontakinstellings';

  @override
  String get setCallingSim => 'Stel oproep-SIM';

  @override
  String get contactRingtone => 'Kontak luitoon';

  @override
  String get shareContact => 'Deel kontak';

  @override
  String get blockNumbers => 'Blok nommers';

  @override
  String get unblockNumbers => 'Deblokkeer nommers';

  @override
  String get connectedApps => 'Gekoppelde toepassings';

  @override
  String get simNotSet => 'Nie gestel nie';

  @override
  String get ringtoneDefault => 'Verstek';

  @override
  String get customRingtone => 'Pasgemaak';

  @override
  String get aboutSection => 'Oor';

  @override
  String get aboutFeedbackSection => 'Oor & terugvoer';

  @override
  String get aboutDescription =>
      'Nothing Dialer is oopbron. As jy \'n ontwikkelaar is, is jy welkom om die kode te verken en by te dra.';

  @override
  String get aboutViewSource => 'Kyk op GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Kon nie skakel oopmaak nie';

  @override
  String get reviewSection => 'Hersien';

  @override
  String get reviewDescription =>
      'Geniet jy van Niks Dialer? Jou gradering op Google Play help ander om die program te vind.';

  @override
  String get reviewRateOnPlay => 'Beoordeel op Google Play';

  @override
  String get reviewRateOnPlaySubtitle => 'Opens the Play Store listing';

  @override
  String get reviewCouldNotOpen => 'Kon nie Google Play oopmaak nie';

  @override
  String get breathSpeed => 'Asemspoed';

  @override
  String get breathSpeedBlinkHint => 'Laer = Knipper, Hoër = Stadige asem';

  @override
  String get speedSliderHint => 'Laer = Vinniger, Hoër = Stadiger';

  @override
  String get swatchDefault => 'Verstek';

  @override
  String get customAccentColorPicker => 'Pasgemaakte aksentkleur';

  @override
  String get customLightBackgroundPicker => 'Pasgemaakte ligte agtergrond';

  @override
  String get customDarkBackgroundPicker => 'Pasgemaakte donker agtergrond';

  @override
  String get customCallBackgroundPicker => 'Pasgemaakte oproepagtergrond';

  @override
  String get ongoingCallStyleTitle => 'Deurlopende oproepstyl';

  @override
  String get glyphMapUnavailable => 'Glyph-kaart nie beskikbaar nie';

  @override
  String get animationDelayRange => 'Animasievertraging (1s - 10s)';

  @override
  String get animationDelayRangeSingle => 'Animasievertraging (0.1s - 10s)';

  @override
  String get inCallMute => 'Demp';

  @override
  String get inCallKeypad => 'Sleutelbord';

  @override
  String get inCallSpeaker => 'Spreker';

  @override
  String get inCallMore => 'Meer';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Telefoon';

  @override
  String get inCallAddCall => 'Voeg oproep by';

  @override
  String get inCallChangeSim => 'Verander SIM';

  @override
  String get inCallDecline => 'Weier';

  @override
  String get inCallAnswer => 'Antwoord';

  @override
  String get inCallMessage => 'Boodskap';

  @override
  String get inCallCalling => 'Bel tans …';

  @override
  String get inCallIncoming => 'Inkomende oproep';

  @override
  String get inCallSelectSim => 'Kies SIM...';

  @override
  String get inCallSwitchingSim => 'Wissel tans SIM …';

  @override
  String get inCallCallEnded => 'Oproep beëindig';

  @override
  String inCallCallingVia(String sim) {
    return 'Bel via $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Bel via <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Kies SIM vir hierdie oproep';

  @override
  String get inCallDragAnswerDecline =>
      'Sleep regs om te antwoord · Sleep links om te weier';

  @override
  String inCallMobileNumber(String number) {
    return 'Selfoon $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (Huidig)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Bel via <b>$sim</b> vanaf';
  }

  @override
  String get inCallCallFrom => 'Bel van';

  @override
  String get inCallUnknown => 'Onbekend';

  @override
  String get selectContactRingtone => 'Kies kontakluitoon';

  @override
  String get speakToSearchPrompt => 'Praat om te soek';

  @override
  String get phonePermissionRequired => 'Foontoestemming word vereis';

  @override
  String callFailed(String error) {
    return 'Oproep het misluk: $error';
  }

  @override
  String get callPermissionDenied => 'Oproeptoestemming geweier';

  @override
  String get alreadyDefaultDialer => 'Reeds gestel as verstekbeller';

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
