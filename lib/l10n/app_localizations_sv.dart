// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appTitle => 'Ingenting Dialer';

  @override
  String get settings => 'Inställningar';

  @override
  String get settingsSearchHint => 'Sökinställningar';

  @override
  String get settingsSearchNoResults => 'Inga inställningar hittades';

  @override
  String get general => 'Allmän';

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
  String get themeSystemDefault => 'System Standard';

  @override
  String get themeLight => 'Ljus';

  @override
  String get themeDark => 'Mörk';

  @override
  String get themeFollowSystem => 'Följ systeminställningarna';

  @override
  String get themeAlwaysLight => 'Använd alltid lätta tema';

  @override
  String get themeAlwaysDark => 'Använd alltid mörkt tema';

  @override
  String get language => 'Språk';

  @override
  String get languageDeviceDefault => 'Enhetens standard';

  @override
  String get languagePickerTitle => 'Språk';

  @override
  String get languageSearchHint => 'Sök efter språk';

  @override
  String get font => 'Font';

  @override
  String get fontSystem => 'Systemstandard';

  @override
  String get fontNdot => 'Ingenting (NDot)';

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
      'Nedladdning av teckensnitt misslyckades. Kontrollera din anslutning och försök igen.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Font';

  @override
  String get fontPreviewSample => 'Ingenting Dialer';

  @override
  String get fontAppWide => 'App-typsnitt';

  @override
  String get fontApplyTo => 'Ansök till';

  @override
  String get fontApplyEntireApp => 'Hela appen';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Samma typsnitt överallt, inklusive under samtal';

  @override
  String get fontApplyTitlesOnly => 'Titlar och rubriker';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Endast stora titlar och avsnittsrubriker';

  @override
  String get fontApplyCustomize => 'Anpassa';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Välj typsnitt per skärm och texttyp';

  @override
  String get fontCustomizeSection => 'Anpassa efter skärm';

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
  String get fontRolePageTitle => 'Sidans titel';

  @override
  String get fontRoleSectionHeader => 'Sektionshuvud';

  @override
  String get fontRolePrimary => 'Primär text';

  @override
  String get fontRoleSecondary => 'Sekundär text';

  @override
  String get fontRoleButton => 'Knappar';

  @override
  String get fontRoleDialKey => 'Knappar på knappsatsen';

  @override
  String get fontSurfaceRecents => 'Senaste';

  @override
  String get fontSurfaceContacts => 'Kontakter';

  @override
  String get fontSurfaceSettings => 'Inställningar';

  @override
  String get fontSurfaceDialpad => 'Knappsats';

  @override
  String get fontSurfaceShell => 'Navigering';

  @override
  String get fontSurfaceDefaultDialer => 'Standarduppringningsprompt';

  @override
  String get fontSurfaceFavourites => 'Favoriter';

  @override
  String get fontSurfaceBlocked => 'Spärrade nummer';

  @override
  String get fontSurfaceContactDetail => 'Kontaktinformation';

  @override
  String get fontSurfaceCallHistory => 'Samtalshistorik';

  @override
  String get fontSurfaceSheets => 'Lakan & plockare';

  @override
  String get fontSurfaceInCall => 'Under samtalsskärm';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — hela appen';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — endast titlar';
  }

  @override
  String get fontSubtitleCustomize => 'Anpassad per skärm';

  @override
  String get background => 'Bakgrund';

  @override
  String get accent => 'Accent';

  @override
  String get lightBackground => 'Ljus bakgrund';

  @override
  String get lightAccent => 'Lätt accent';

  @override
  String get darkBackground => 'Mörk bakgrund';

  @override
  String get darkAccent => 'Mörk accent';

  @override
  String get callBackground => 'Samtalsbakgrund';

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
  String get appIcon => 'App-ikon';

  @override
  String get answerMethod => 'Svarsmetod';

  @override
  String get answerSlide => 'Skjut för att svara';

  @override
  String get answerSlideSubtitle =>
      'Svep åt vänster/höger på fältet, som Google Phone';

  @override
  String get answerButton => 'Knapptryckning';

  @override
  String get answerButtonSubtitle => 'Tryck på svara eller avvisa knapparna';

  @override
  String get answerHuawei => 'Huawei stil';

  @override
  String get answerHuaweiSubtitle =>
      'Dra cirkeln till den gröna telefonen för att svara';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — dra till grönt/rött';

  @override
  String get calling => 'Kallelse';

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
  String get defaultSim => 'Standard SIM';

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
  String get askEveryTime => 'Fråga varje gång';

  @override
  String get askEveryTimeSubtitle => 'Visa SIM-väljaren före varje samtal';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Inga SIM-kort hittades';

  @override
  String couldNotLoadSims(String error) {
    return 'Kunde inte ladda SIM-kort: $error';
  }

  @override
  String get allFavourites => 'Alla favoriter';

  @override
  String get allFavouritesSubtitle =>
      'Ordna om, ta bort och lägg till från kontakter';

  @override
  String get blockedNumbers => 'Spärrade nummer';

  @override
  String get blockedNumbersSubtitle => 'Visa och avblockera nummer';

  @override
  String get soundsAndVibration => 'Ljud och vibrationer';

  @override
  String get soundsAndVibrationSubtitle =>
      'Ringsignal, vibrationer, knappsatstoner';

  @override
  String couldNotOpenSettings(String error) {
    return 'Kunde inte öppna inställningarna: $error';
  }

  @override
  String get frequentlyContacted => 'Ofta kontaktad';

  @override
  String get numberOfRecords => 'Antal poster';

  @override
  String get timePeriod => 'Tidsperiod';

  @override
  String get periodLast24Hours => 'Senaste 24 timmarna';

  @override
  String get periodLast24HoursSubtitle => 'Samtal från den senaste dagen';

  @override
  String get periodLast7Days => 'Senaste 7 dagarna';

  @override
  String get periodLast7DaysSubtitle => 'Samtal från den senaste veckan';

  @override
  String get periodLast30Days => 'Senaste 30 dagarna';

  @override
  String get periodLast30DaysSubtitle => 'Samtal från den senaste månaden';

  @override
  String get periodLast12Months => 'Senaste 12 månaderna';

  @override
  String get periodLast12MonthsSubtitle => 'Samtal från det senaste året';

  @override
  String get periodAllTime => 'Hela tiden';

  @override
  String get periodAllTimeSubtitle => 'Hela samtalshistoriken';

  @override
  String get frequentMaxOff => 'Av';

  @override
  String frequentMaxCount(int count) {
    return '$count kontakter';
  }

  @override
  String get torchBlink => 'Facklan blinkar';

  @override
  String get torchIncomingCall => 'Inkommande samtal ficklampa';

  @override
  String get torchOutgoingCall => 'Ficklampa för utgående samtal';

  @override
  String get torchOngoingCall => 'Pågående samtalsfackla';

  @override
  String get torchIncomingInterval => 'Inkommande blinkintervall';

  @override
  String get torchOutgoingInterval => 'Utgående blinkintervall';

  @override
  String get torchOngoingInterval => 'Pågående blinkintervall';

  @override
  String get torchOff => 'Av';

  @override
  String get torchOffIncomingSubtitle => 'Ingen ficklampa när det ringer';

  @override
  String get torchOffOutgoingSubtitle => 'Ingen ficklampa när du ringer';

  @override
  String get torchOffOngoingSubtitle => 'Ingen ficklampa under aktivt samtal';

  @override
  String get torchFixedInterval => 'Fast intervall';

  @override
  String get torchFixedIntervalSubtitle => 'Blinka med en inställd hastighet';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds blinkar';
  }

  @override
  String get flashlightUnavailable =>
      'Ficklampa är inte tillgänglig på den här enheten';

  @override
  String get glyphLights => 'Glyfljus';

  @override
  String get glyphCallingAnimation => 'Glyf-anropsanimation';

  @override
  String get glyphOngoingAnimation => 'Glyph pågående samtalsanimering';

  @override
  String get glyphNone => 'Ingen';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Inaktivera glyph-ljus för utgående samtal';

  @override
  String get glyphNoneInCallSubtitle =>
      'Inaktivera glyph-ljus under aktivt samtal';

  @override
  String get glyphBreathProgress => 'Andning & framsteg';

  @override
  String get glyphBreathProgressSubtitle =>
      'Ljus andas medan linjen fylls över 65s';

  @override
  String get glyphAccumulate => 'Ackumulera';

  @override
  String get glyphAccumulateSubtitle =>
      'Ackumulerande animation på lamporna C1-C4';

  @override
  String get glyphSingle => 'Enda';

  @override
  String get glyphSingleSubtitle => 'Enkelt ljus som rör sig över C1-C4';

  @override
  String get glyphBreath => 'Andetag';

  @override
  String get glyphBreathSubtitle => 'Välj ljus och hastighet';

  @override
  String get glyphSteady => 'Stadig';

  @override
  String get glyphSteadySubtitle => 'Utvalda lampor förblir tända';

  @override
  String get breathSettings => 'Andningsinställningar';

  @override
  String get activeLights => 'Aktiva lampor';

  @override
  String lightsCount(int count) {
    return '$count lampor';
  }

  @override
  String get speedSettings => 'Hastighetsinställningar';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms fördröjning';
  }

  @override
  String get durationAndSpeed => 'Varaktighet & hastighet';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s varaktighet, ${interval}ms intervall';
  }

  @override
  String get cancel => 'Avboka';

  @override
  String get done => 'Gjort';

  @override
  String get save => 'Spara';

  @override
  String get block => 'Blockera';

  @override
  String get delete => 'Radera';

  @override
  String get recents => 'Senaste';

  @override
  String get contacts => 'Kontakter';

  @override
  String get hideFavouritesOnRecents => 'Dölj favoriter på Senaste';

  @override
  String get showFavouritesOnRecents => 'Visa favoriter på Senaste';

  @override
  String get ongoingCall => 'Pågående samtal';

  @override
  String get setAsDefaultTitle => 'STÄLL SOM\nSTANDARD';

  @override
  String get setAsDefaultBody =>
      'För att använda Nothing Dialer måste den vara inställd som din standardapp för telefon. Detta låter dig hantera samtal, visa historik och använda Glyph-animationer.';

  @override
  String get setAsDefaultButton => 'STÄLL IN SOM STANDARD';

  @override
  String get nothingDialerBrand => 'INGENTING DIALER 1';

  @override
  String get favourites => 'Favoriter';

  @override
  String get addFavourite => 'Lägg till favorit';

  @override
  String get favouritesDrawerHint =>
      'Använd menyn för att lägga till kontakter. Knacka utanför lådan eller svep den stängd. Stjärnmärk en kontakt från deras uppgifter eller tryck länge på ett samtal i Senaste.';

  @override
  String get menu => 'Meny';

  @override
  String get noFavouritesYet =>
      'Inga favoriter än.\nÖppna menyn för att lägga till en eller stjärnmärk en kontakt.';

  @override
  String get contactsPermissionNeeded => 'Kontaktbehörighet krävs';

  @override
  String get chooseContact => 'Välj kontakt';

  @override
  String get noPhone => 'Ingen telefon';

  @override
  String get pickNumber => 'Välj nummer';

  @override
  String get contactHasNoPhone => 'Den här kontakten har inget telefonnummer';

  @override
  String get blockNumber => 'Blocknummer';

  @override
  String get enterPhoneNumber => 'Ange telefonnummer';

  @override
  String unblockedDisplay(String display) {
    return 'Avblockerad $display';
  }

  @override
  String get couldNotUnblockNumber => 'Kunde inte avblockera nummer';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked blockerad • $matched matchade';
  }

  @override
  String get contactsPermissionMissing =>
      'Kontaktbehörighet saknas. Tryck för att fixa.';

  @override
  String get noBlockedNumbers => 'Inga spärrade nummer';

  @override
  String get unknownContact => 'Okänd kontakt';

  @override
  String get unblock => 'Avblockera';

  @override
  String get permissionNeeded => 'Tillstånd behövs';

  @override
  String get grantPhonePermission =>
      'Ge telefonbehörighet att se din samtalshistorik.';

  @override
  String get grantContactsPermission =>
      'Ge kontakter behörighet att se din adressbok.';

  @override
  String get openSettings => 'Öppna Inställningar';

  @override
  String get tryAgain => 'Försök igen';

  @override
  String get couldNotLoadContacts => 'Kunde inte ladda kontakter';

  @override
  String get contactsLoadError => 'Något gick fel när du läste din adressbok.';

  @override
  String get noContactsFound => 'Inga kontakter hittades';

  @override
  String get contactsEmptySubtitle => 'Kontakter från din enhet visas här.';

  @override
  String get searchContacts => 'Sök kontakter...';

  @override
  String get searchRecentCalls => 'Sök efter senaste samtal';

  @override
  String get fromContacts => 'Från kontakter';

  @override
  String get recentsSearchSection => 'Senaste sökningen';

  @override
  String get recentsSearchShowContacts => 'Visa kontakter i sökningen';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'När du söker på Senaste, visa även matchande personer från din adressbok nedanför samtalshistorikresultat.';

  @override
  String get voiceSearch => 'Röstsökning';

  @override
  String get createNewContact => 'Skapa ny kontakt';

  @override
  String callError(String error) {
    return 'Samtalsfel: $error';
  }

  @override
  String get noRecentCalls => 'Inga senaste samtal';

  @override
  String get callHistoryEmpty => 'Din samtalshistorik kommer att visas här.';

  @override
  String get loadMore => 'Ladda mer';

  @override
  String get frequentlyContactedHeader => 'Ofta kontaktad';

  @override
  String get recentHistory => 'Senaste historien';

  @override
  String get noFavouritesRecentsHint =>
      'Inga favoriter än. Stjärnmärk en kontakt, tryck länge på ett samtal eller använd fliken Favoriter.';

  @override
  String get copyNumber => 'Kopiera nummer';

  @override
  String get editNumberBeforeCall => 'Redigera nummer före samtal';

  @override
  String get removeFromFavourites => 'Ta bort från favoriter';

  @override
  String get addToFavourites => 'Lägg till i favoriter';

  @override
  String get blockNumberQuestion => 'Blocknummer?';

  @override
  String blockNumberConfirm(String number) {
    return 'Du kommer inte längre att ta emot samtal eller sms från $number.';
  }

  @override
  String get blocked => 'Blockerad';

  @override
  String get couldNotBlock => 'Kunde inte blockera';

  @override
  String get contactNotOnDevice =>
      'Kontakten har inte sparats på den här enheten';

  @override
  String get unblocked => 'Avblockerad';

  @override
  String get numberCopied => 'Nummer kopierat';

  @override
  String get showLess => 'Visa mindre';

  @override
  String get showAllTimes => 'Visa alla tider';

  @override
  String mostRecent(String time) {
    return 'Senaste · $time';
  }

  @override
  String get videoCall => 'Videosamtal';

  @override
  String get couldNotPlaceVideoCall => 'Det gick inte att ringa videosamtal';

  @override
  String get message => 'Meddelande';

  @override
  String get couldNotOpenMessaging => 'Det gick inte att öppna meddelandeappen';

  @override
  String get history => 'Historia';

  @override
  String get viewContact => 'Visa kontakt';

  @override
  String get addToContact => 'Lägg till i kontakt';

  @override
  String get callTypeMissed => 'Saknad';

  @override
  String get callTypeRejected => 'Avvisad';

  @override
  String get callTypeIncoming => 'Inkommande';

  @override
  String get callTypeOutgoing => 'Utgående';

  @override
  String get today => 'I dag';

  @override
  String get yesterday => 'I går';

  @override
  String get justNow => 'Just nu';

  @override
  String minutesAgo(int count) {
    return '$count min sedan';
  }

  @override
  String hoursAgo(int count) {
    return '$count tim sedan';
  }

  @override
  String get filterAll => 'Alla';

  @override
  String get filterMissed => 'Saknad';

  @override
  String get filterContacts => 'Kontakter';

  @override
  String get filterNonContacts => 'Icke-kontakter';

  @override
  String get iconUpdated =>
      'Ikonen uppdaterad. Det kan ta en stund att uppdatera startskärmen.';

  @override
  String get iconSavedRelease =>
      'Valet sparat. Hemskärmsikonen uppdateras i versioner.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Kunde inte ändra ikonen: $error';
  }

  @override
  String get launcherClassicBlack => 'Klassisk (svart)';

  @override
  String get launcherLight => 'Ljus';

  @override
  String get launcherNothingRed => 'Inget rött';

  @override
  String get launcherDarkGrey => 'Mörkgrå';

  @override
  String get launcherCream => 'Grädde';

  @override
  String get launcherRetroPhone => 'Retro telefon';

  @override
  String get launcherRetroPhoneLight => 'Retro telefon (ljus)';

  @override
  String get voiceSearchUnavailable =>
      'Röstsökning är inte tillgängligt på den här enheten.';

  @override
  String voiceSearchFailed(String error) {
    return 'Röstsökning misslyckades: $error';
  }

  @override
  String get customColor => 'Beställnings';

  @override
  String get selectColor => 'Välj färg';

  @override
  String get reset => 'Återställa';

  @override
  String get simPickerTitle => 'Välj SIM';

  @override
  String get simChooseForCall => 'Välj SIM för det här samtalet';

  @override
  String get defaultSimAsk => 'Fråga varje gång';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Kontaktuppgifter';

  @override
  String get call => 'Samtal';

  @override
  String get share => 'Dela';

  @override
  String get favourite => 'Favorit';

  @override
  String get unfavourite => 'Ofavorit';

  @override
  String get blockContact => 'Blockera kontakt';

  @override
  String get unblockContact => 'Avblockera kontakt';

  @override
  String get deleteContact => 'Ta bort kontakt';

  @override
  String get phone => 'Telefon';

  @override
  String get email => 'E-post';

  @override
  String get ringtone => 'Ringsignal';

  @override
  String get defaultRingtone => 'Standard';

  @override
  String get simForContact => 'SIM för denna kontakt';

  @override
  String get callHistoryTitle => 'Samtalshistorik';

  @override
  String get noCallsWithNumber => 'Inga samtal med detta nummer';

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
  String get inCallGlyphAnimationStyle => 'In-call Glyph-animation';

  @override
  String get recordsOff => 'Av';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Standard SIM';

  @override
  String get nothingPhoneOnly => 'Ingenting Endast telefon';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Glyph-funktioner kräver en Nothing Phone';

  @override
  String get custom => 'Beställnings';

  @override
  String presetColorHex(String hex) {
    return 'Förinställd · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Anpassad · $hex';
  }

  @override
  String get oneContact => '1 kontakt';

  @override
  String upToContacts(int count) {
    return 'Upp till $count kontakter';
  }

  @override
  String get answerButtonTapSubtitle => 'Tryck på knappen för att svara';

  @override
  String get filterCalls => 'Filtrera samtal';

  @override
  String get filterTooltip => 'Filtrera';

  @override
  String get settingsTooltip => 'Inställningar';

  @override
  String get filterAllSubtitle => 'Hela samtalsloggen';

  @override
  String get filterMissedSubtitle => 'Missad och avvisad';

  @override
  String get filterContactsSubtitle => 'Samtal matchade med en sparad kontakt';

  @override
  String get filterNonContactsSubtitle => 'Numren finns inte i din adressbok';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Pågående samtal: $detail';
  }

  @override
  String get defaultSimForCalls => 'Standard SIM för samtal';

  @override
  String get blinkInterval => 'Blinkintervall';

  @override
  String get close => 'Nära';

  @override
  String get frequentlyContactedInfoBody =>
      'Visar dina mest uppringda telefonnummer högst upp på fliken Senaste, baserat på hur många inkommande, utgående, missade eller avvisade samtal du hade med varje nummer under den tidsperiod du väljer.\n\nAntal poster: ställ in på 0 för att stänga av detta. Använd 1–20 för att visa så många toppkontakter.\n\nTidsperioden gäller endast när minst en kontakt visas.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count lampor, ${ms}ms hastighet';
  }

  @override
  String get deleteContactQuestion => 'Ta bort kontakt?';

  @override
  String get deleteContactBody =>
      'Den här kontakten kommer att raderas permanent från din enhet.';

  @override
  String get blockContactQuestion => 'Blockera kontakt?';

  @override
  String get unblockContactQuestion => 'Avblockera kontakt?';

  @override
  String get blockContactBody =>
      'Du kommer inte längre att ta emot samtal eller sms från den här kontakten.';

  @override
  String get unblockContactBody =>
      'Du kommer att börja ta emot samtal och sms från den här kontakten.';

  @override
  String get contactBlocked => 'Kontakt blockerad';

  @override
  String get contactUnblocked => 'Kontakt avblockerad';

  @override
  String get noPhoneNumbersToBlock => 'Inga telefonnummer att blockera';

  @override
  String get simSameAsSystem => 'Samma som system';

  @override
  String get simSameAsSystemSubtitle => 'Följer Standard SIM i Inställningar';

  @override
  String get simAskEveryTimeForContact =>
      'Visa alltid SIM-väljaren för den här kontakten';

  @override
  String get ringtoneSetForContact =>
      'Ringsignal inställd globalt för denna kontakt';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Det gick inte att välja ringsignal: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Fel: $error';
  }

  @override
  String get noCallHistoryFound => 'Ingen samtalshistorik hittades';

  @override
  String get speedDialVoicemail => 'Snabbuppringning: Röstbrevlåda';

  @override
  String shareContactSubject(String name) {
    return 'Kontakt: $name';
  }

  @override
  String get contactInfo => 'Kontaktinformation';

  @override
  String get dontAskAgainSim => 'Fråga inte igen';

  @override
  String get simDontAskAgainSubtitle =>
      'Använd detta SIM-kort som standard (ändra i Inställningar)';

  @override
  String get addContact => 'Lägg till kontakt';

  @override
  String get createContact => 'Skapa kontakt';

  @override
  String get paste => 'Klistra';

  @override
  String get clear => 'Rensa';

  @override
  String get returnToCall => 'Återgå till samtalet';

  @override
  String get numberOfRecordsTitle => 'Antal poster';

  @override
  String get recordsPickerSubtitle =>
      'Hur många ofta kontaktade poster som ska visas (0 = av)';

  @override
  String get torchInfoTitle => 'Facklan blinkar';

  @override
  String get torchInfoBody =>
      'Blinkar kamerablixten under inkommande, utgående eller pågående samtal. Oberoende av glyph-ljus.';

  @override
  String get glyphMapTitle => 'Glyf layout';

  @override
  String get glyphMapBody =>
      'Ingenting Telefon 1 Glyph LED-zoner. Utgående och ingående animationer använder dessa kanaler.';

  @override
  String get answerMethodTitle => 'Svarsmetod';

  @override
  String get glyphOutgoingCallStyleTitle => 'Utgående samtalsstil';

  @override
  String get glyphInCallAnimationTitle => 'Glyph in-call-animation';

  @override
  String get themePickerTitle => 'Tema';

  @override
  String get torchIncomingTitle => 'Inkommande samtal ficklampa';

  @override
  String get torchOutgoingTitle => 'Ficklampa för utgående samtal';

  @override
  String get torchOngoingTitle => 'Pågående samtalsfackla';

  @override
  String get timePeriodTitle => 'Tidsperiod';

  @override
  String get ok => 'OK';

  @override
  String get confirmDeleteCall =>
      'Vill du ta bort det här samtalet från historiken?';

  @override
  String get confirmDeleteAllCalls =>
      'Vill du radera alla samtal med detta nummer?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Skicka ett meddelande';

  @override
  String get addToExistingContactAction => 'Lägg till i en kontakt';

  @override
  String get mobileLabel => 'Mobil';

  @override
  String get callingSimForContactTitle => 'Ringer SIM för den här kontakten';

  @override
  String get contactSettings => 'Kontaktinställningar';

  @override
  String get setCallingSim => 'Ställ in samtals-SIM';

  @override
  String get contactRingtone => 'Kontakta ringsignal';

  @override
  String get shareContact => 'Dela kontakt';

  @override
  String get blockNumbers => 'Blockera nummer';

  @override
  String get unblockNumbers => 'Avblockera nummer';

  @override
  String get connectedApps => 'Anslutna appar';

  @override
  String get simNotSet => 'Inte inställt';

  @override
  String get ringtoneDefault => 'Standard';

  @override
  String get customRingtone => 'Beställnings';

  @override
  String get aboutSection => 'Om';

  @override
  String get aboutFeedbackSection => 'Om & feedback';

  @override
  String get aboutDescription =>
      'Nothing Dialer är öppen källkod. Om du är en utvecklare är du välkommen att utforska koden och bidra.';

  @override
  String get aboutViewSource => 'Visa på GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Det gick inte att öppna länken';

  @override
  String get reviewSection => 'Recension';

  @override
  String get reviewDescription =>
      'Gillar du Nothing Dialer? Ditt betyg på Google Play hjälper andra att hitta appen.';

  @override
  String get reviewRateOnPlay => 'Betygsätt på Google Play';

  @override
  String get reviewRateOnPlaySubtitle => 'Opens the Play Store listing';

  @override
  String get reviewCouldNotOpen => 'Det gick inte att öppna Google Play';

  @override
  String get breathSpeed => 'Andningshastighet';

  @override
  String get breathSpeedBlinkHint => 'Lägre = Blinka, Högre = Långsam andetag';

  @override
  String get speedSliderHint => 'Lägre = snabbare, högre = långsammare';

  @override
  String get swatchDefault => 'Standard';

  @override
  String get customAccentColorPicker => 'Anpassad accentfärg';

  @override
  String get customLightBackgroundPicker => 'Anpassad ljus bakgrund';

  @override
  String get customDarkBackgroundPicker => 'Anpassad mörk bakgrund';

  @override
  String get customCallBackgroundPicker => 'Anpassad samtalsbakgrund';

  @override
  String get ongoingCallStyleTitle => 'Pågående samtalsstil';

  @override
  String get glyphMapUnavailable => 'Glyfkartan är inte tillgänglig';

  @override
  String get animationDelayRange => 'Animationsfördröjning (1s - 10s)';

  @override
  String get animationDelayRangeSingle =>
      'Animationsfördröjning (0,1 s - 10 s)';

  @override
  String get inCallMute => 'Stum';

  @override
  String get inCallKeypad => 'Knappsats';

  @override
  String get inCallSpeaker => 'Högtalare';

  @override
  String get inCallMore => 'Mer';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Telefon';

  @override
  String get inCallAddCall => 'Lägg till samtal';

  @override
  String get inCallChangeSim => 'Byt SIM';

  @override
  String get inCallDecline => 'Nedgång';

  @override
  String get inCallAnswer => 'Svar';

  @override
  String get inCallMessage => 'Meddelande';

  @override
  String get inCallCalling => 'Kallelse…';

  @override
  String get inCallIncoming => 'Inkommande samtal';

  @override
  String get inCallSelectSim => 'Välj SIM...';

  @override
  String get inCallSwitchingSim => 'Byter SIM...';

  @override
  String get inCallCallEnded => 'Samtalet avslutades';

  @override
  String inCallCallingVia(String sim) {
    return 'Ringer via $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Ringer via <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Välj SIM för det här samtalet';

  @override
  String get inCallDragAnswerDecline =>
      'Dra åt höger för att svara · Dra åt vänster för att avböja';

  @override
  String inCallMobileNumber(String number) {
    return 'Mobil $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (nuvarande)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Ring via <b>$sim</b> från';
  }

  @override
  String get inCallCallFrom => 'Ring från';

  @override
  String get inCallUnknown => 'Okänd';

  @override
  String get selectContactRingtone => 'Välj kontakt ringsignal';

  @override
  String get speakToSearchPrompt => 'Tala för att söka';

  @override
  String get phonePermissionRequired => 'Telefontillstånd krävs';

  @override
  String callFailed(String error) {
    return 'Samtalet misslyckades: $error';
  }

  @override
  String get callPermissionDenied => 'Samtalstillstånd nekad';

  @override
  String get alreadyDefaultDialer => 'Redan inställd som standarduppringare';

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
