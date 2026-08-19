// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get appTitle => 'Intet Dialer';

  @override
  String get settings => 'Indstillinger';

  @override
  String get settingsSearchHint => 'Søgeindstillinger';

  @override
  String get settingsSearchNoResults => 'Ingen indstillinger fundet';

  @override
  String get general => 'Generel';

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
  String get themeSystemDefault => 'Systemstandard';

  @override
  String get themeLight => 'Lys';

  @override
  String get themeDark => 'Mørk';

  @override
  String get themeFollowSystem => 'Følg systemindstillingerne';

  @override
  String get themeAlwaysLight => 'Brug altid let tema';

  @override
  String get themeAlwaysDark => 'Brug altid mørkt tema';

  @override
  String get language => 'Sprog';

  @override
  String get languageDeviceDefault => 'Enhedens standard';

  @override
  String get languagePickerTitle => 'Sprog';

  @override
  String get languageSearchHint => 'Søg efter sprog';

  @override
  String get font => 'Skrifttype';

  @override
  String get fontSystem => 'System standard';

  @override
  String get fontNdot => 'Intet (NDot)';

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
      'Skrifttypeoverførsel mislykkedes. Tjek din forbindelse, og prøv igen.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Skrifttype';

  @override
  String get fontPreviewSample => 'Intet Dialer';

  @override
  String get fontAppWide => 'App skrifttype';

  @override
  String get fontApplyTo => 'Ansøg til';

  @override
  String get fontApplyEntireApp => 'Hele appen';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Samme skrifttype overalt, inklusive under opkald';

  @override
  String get fontApplyTitlesOnly => 'Titler og overskrifter';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Kun store titler og sektionsoverskrifter';

  @override
  String get fontApplyCustomize => 'Tilpas';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Vælg skrifttype pr. skærm og teksttype';

  @override
  String get fontCustomizeSection => 'Tilpas efter skærm';

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
  String get fontRolePageTitle => 'Sidetitel';

  @override
  String get fontRoleSectionHeader => 'Sektionsoverskrift';

  @override
  String get fontRolePrimary => 'Primær tekst';

  @override
  String get fontRoleSecondary => 'Sekundær tekst';

  @override
  String get fontRoleButton => 'Knapper';

  @override
  String get fontRoleDialKey => 'Taster på tastaturet';

  @override
  String get fontSurfaceRecents => 'Seneste';

  @override
  String get fontSurfaceContacts => 'Kontaktpersoner';

  @override
  String get fontSurfaceSettings => 'Indstillinger';

  @override
  String get fontSurfaceDialpad => 'Opkaldstastatur';

  @override
  String get fontSurfaceShell => 'Navigation';

  @override
  String get fontSurfaceDefaultDialer => 'Standard opkaldsprompt';

  @override
  String get fontSurfaceFavourites => 'Favoritter';

  @override
  String get fontSurfaceBlocked => 'Spærrede numre';

  @override
  String get fontSurfaceContactDetail => 'Kontaktoplysninger';

  @override
  String get fontSurfaceCallHistory => 'Opkaldshistorik';

  @override
  String get fontSurfaceSheets => 'Ark & plukkere';

  @override
  String get fontSurfaceInCall => 'Opkaldsskærm';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — hele appen';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — kun titler';
  }

  @override
  String get fontSubtitleCustomize => 'Brugerdefineret pr. skærm';

  @override
  String get background => 'Baggrund';

  @override
  String get accent => 'Accent';

  @override
  String get lightBackground => 'Lys baggrund';

  @override
  String get lightAccent => 'Let accent';

  @override
  String get darkBackground => 'Mørk baggrund';

  @override
  String get darkAccent => 'Mørk accent';

  @override
  String get callBackground => 'Opkaldsbaggrund';

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
  String get answerMethod => 'Svarmetode';

  @override
  String get answerSlide => 'Skub for at svare';

  @override
  String get answerSlideSubtitle =>
      'Stryg til venstre/højre på bjælken, som Google Phone';

  @override
  String get answerButton => 'Tryk på knappen';

  @override
  String get answerButtonSubtitle => 'Tryk på knapperne svar eller afvis';

  @override
  String get answerHuawei => 'Huawei stil';

  @override
  String get answerHuaweiSubtitle =>
      'Træk cirklen til den grønne telefon for at svare';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — træk til grøn/rød';

  @override
  String get calling => 'Ringer';

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
  String get askEveryTime => 'Spørg hver gang';

  @override
  String get askEveryTimeSubtitle => 'Vis SIM-vælger før hvert opkald';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Ingen SIM-kort fundet';

  @override
  String couldNotLoadSims(String error) {
    return 'Kunne ikke indlæse SIM\'er: $error';
  }

  @override
  String get allFavourites => 'Alle favoritter';

  @override
  String get allFavouritesSubtitle =>
      'Omarranger, fjern og tilføj fra kontakter';

  @override
  String get blockedNumbers => 'Spærrede numre';

  @override
  String get blockedNumbersSubtitle => 'Se og fjern blokering af numre';

  @override
  String get soundsAndVibration => 'Lyde og vibrationer';

  @override
  String get soundsAndVibrationSubtitle =>
      'Ringetone, vibration, tastaturtoner';

  @override
  String couldNotOpenSettings(String error) {
    return 'Kunne ikke åbne indstillinger: $error';
  }

  @override
  String get frequentlyContacted => 'Ofte kontaktet';

  @override
  String get numberOfRecords => 'Antal poster';

  @override
  String get timePeriod => 'Tidsperiode';

  @override
  String get periodLast24Hours => 'Sidste 24 timer';

  @override
  String get periodLast24HoursSubtitle => 'Opkald fra det seneste døgn';

  @override
  String get periodLast7Days => 'Sidste 7 dage';

  @override
  String get periodLast7DaysSubtitle => 'Opkald fra den seneste uge';

  @override
  String get periodLast30Days => 'Sidste 30 dage';

  @override
  String get periodLast30DaysSubtitle => 'Opkald fra den seneste måned';

  @override
  String get periodLast12Months => 'Sidste 12 måneder';

  @override
  String get periodLast12MonthsSubtitle => 'Opkald fra det seneste år';

  @override
  String get periodAllTime => 'Hele tiden';

  @override
  String get periodAllTimeSubtitle => 'Hele opkaldshistorikken';

  @override
  String get frequentMaxOff => 'Slukket';

  @override
  String frequentMaxCount(int count) {
    return '$count kontakter';
  }

  @override
  String get torchBlink => 'Fakkel Blink';

  @override
  String get torchIncomingCall => 'Indgående opkald lommelygte';

  @override
  String get torchOutgoingCall => 'Udgående opkaldslygte';

  @override
  String get torchOngoingCall => 'Løbende opkald fakkel';

  @override
  String get torchIncomingInterval => 'Indgående blinkinterval';

  @override
  String get torchOutgoingInterval => 'Udgående blinkinterval';

  @override
  String get torchOngoingInterval => 'Igangværende blinkinterval';

  @override
  String get torchOff => 'Slukket';

  @override
  String get torchOffIncomingSubtitle => 'Ingen lommelygte, mens der ringer';

  @override
  String get torchOffOutgoingSubtitle => 'Ingen lommelygte under opkald';

  @override
  String get torchOffOngoingSubtitle => 'Ingen lommelygte under aktivt opkald';

  @override
  String get torchFixedInterval => 'Fast interval';

  @override
  String get torchFixedIntervalSubtitle => 'Blink ved en indstillet hastighed';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds blink';
  }

  @override
  String get flashlightUnavailable =>
      'Lommelygte er ikke tilgængelig på denne enhed';

  @override
  String get glyphLights => 'Glyph lys';

  @override
  String get glyphCallingAnimation => 'Glyph kaldende animation';

  @override
  String get glyphOngoingAnimation => 'Glyph igangværende opkaldsanimation';

  @override
  String get glyphNone => 'Ingen';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Deaktiver Glyph-lys for udgående opkald';

  @override
  String get glyphNoneInCallSubtitle =>
      'Deaktiver Glyph-lys, mens du er på opkald';

  @override
  String get glyphBreathProgress => 'Åndedræt og fremskridt';

  @override
  String get glyphBreathProgressSubtitle =>
      'Lys ånder, mens linjen fyldes op over 65s';

  @override
  String get glyphAccumulate => 'Ophobe';

  @override
  String get glyphAccumulateSubtitle =>
      'Akkumulerende animation på lysene C1-C4';

  @override
  String get glyphSingle => 'Enkelt';

  @override
  String get glyphSingleSubtitle => 'Enkelt lys bevæger sig hen over C1-C4';

  @override
  String get glyphBreath => 'Ånde';

  @override
  String get glyphBreathSubtitle => 'Vælg lys og hastighed';

  @override
  String get glyphSteady => 'Stabil';

  @override
  String get glyphSteadySubtitle => 'Udvalgte lys forbliver tændt';

  @override
  String get breathSettings => 'Åndedrætsindstillinger';

  @override
  String get activeLights => 'Aktive lys';

  @override
  String lightsCount(int count) {
    return '$count lyser';
  }

  @override
  String get speedSettings => 'Hastighedsindstillinger';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms forsinkelse';
  }

  @override
  String get durationAndSpeed => 'Varighed & hastighed';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s varighed, ${interval}ms interval';
  }

  @override
  String get cancel => 'Ophæve';

  @override
  String get done => 'Færdig';

  @override
  String get save => 'Spare';

  @override
  String get block => 'Blok';

  @override
  String get delete => 'Slet';

  @override
  String get recents => 'Seneste';

  @override
  String get contacts => 'Kontaktpersoner';

  @override
  String get hideFavouritesOnRecents => 'Skjul favoritter på Seneste';

  @override
  String get showFavouritesOnRecents => 'Vis favoritter på Seneste';

  @override
  String get ongoingCall => 'Løbende opkald';

  @override
  String get setAsDefaultTitle => 'SÆT SOM\nSTANDARD';

  @override
  String get setAsDefaultBody =>
      'For at bruge Nothing Dialer skal den være indstillet som din standardtelefonapp. Dette giver dig mulighed for at administrere opkald, se historik og bruge Glyph-animationer.';

  @override
  String get setAsDefaultButton => 'INDSTILLES SOM STANDARD';

  @override
  String get nothingDialerBrand => 'INTET OPKADER 1';

  @override
  String get favourites => 'Favoritter';

  @override
  String get addFavourite => 'Tilføj favorit';

  @override
  String get favouritesDrawerHint =>
      'Brug menuen til at tilføje kontakter. Tryk uden for skuffen, eller skub den lukket. Stjernemarkér en kontakt fra vedkommendes detaljer, eller tryk længe på et opkald i Seneste.';

  @override
  String get menu => 'Menu';

  @override
  String get noFavouritesYet =>
      'Ingen favoritter endnu.\nÅbn menuen for at tilføje en, eller stjerne en kontakt.';

  @override
  String get contactsPermissionNeeded =>
      'Kontaktpersoners tilladelse er nødvendig';

  @override
  String get chooseContact => 'Vælg kontakt';

  @override
  String get noPhone => 'Ingen telefon';

  @override
  String get pickNumber => 'Vælg nummer';

  @override
  String get contactHasNoPhone => 'Denne kontakt har ikke noget telefonnummer';

  @override
  String get blockNumber => 'Blok nummer';

  @override
  String get enterPhoneNumber => 'Indtast telefonnummer';

  @override
  String unblockedDisplay(String display) {
    return 'Fjernet blokering $display';
  }

  @override
  String get couldNotUnblockNumber =>
      'Kunne ikke fjerne blokeringen af ​​nummeret';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked blokeret • $matched matchet';
  }

  @override
  String get contactsPermissionMissing =>
      'Kontaktpersoners tilladelse mangler. Tryk for at rette.';

  @override
  String get noBlockedNumbers => 'Ingen spærrede numre';

  @override
  String get unknownContact => 'Ukendt kontakt';

  @override
  String get unblock => 'Fjern blokering';

  @override
  String get permissionNeeded => 'Tilladelse nødvendig';

  @override
  String get grantPhonePermission =>
      'Giv telefontilladelse til at se din opkaldshistorik.';

  @override
  String get grantContactsPermission =>
      'Giv kontaktpersoner tilladelse til at se din adressebog.';

  @override
  String get openSettings => 'Åbn Indstillinger';

  @override
  String get tryAgain => 'Prøv igen';

  @override
  String get couldNotLoadContacts => 'Kunne ikke indlæse kontakter';

  @override
  String get contactsLoadError => 'Noget gik galt med at læse din adressebog.';

  @override
  String get noContactsFound => 'Ingen kontakter fundet';

  @override
  String get contactsEmptySubtitle => 'Kontakter fra din enhed vises her.';

  @override
  String get searchContacts => 'Søg kontakter...';

  @override
  String get searchRecentCalls => 'Søg efter seneste opkald';

  @override
  String get fromContacts => 'Fra kontakter';

  @override
  String get recentsSearchSection => 'Seneste søgning';

  @override
  String get recentsSearchShowContacts => 'Vis kontakter i søgning';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Mens du søger i Seneste, kan du også vise matchende personer fra din adressebog under resultaterne af opkaldshistorikken.';

  @override
  String get voiceSearch => 'Stemmesøgning';

  @override
  String get createNewContact => 'Opret ny kontakt';

  @override
  String callError(String error) {
    return 'Opkaldsfejl: $error';
  }

  @override
  String get noRecentCalls => 'Ingen seneste opkald';

  @override
  String get callHistoryEmpty => 'Din opkaldshistorik vises her.';

  @override
  String get loadMore => 'Indlæs mere';

  @override
  String get frequentlyContactedHeader => 'Ofte kontaktet';

  @override
  String get recentHistory => 'Nyere historie';

  @override
  String get noFavouritesRecentsHint =>
      'Ingen favoritter endnu. Stjernemarkér en kontakt, tryk længe på et opkald, eller brug fanen Favoritter.';

  @override
  String get copyNumber => 'Kopiér nummer';

  @override
  String get editNumberBeforeCall => 'Rediger nummer før opkald';

  @override
  String get removeFromFavourites => 'Fjern fra favoritter';

  @override
  String get addToFavourites => 'Tilføj til favoritter';

  @override
  String get blockNumberQuestion => 'Bloker nummer?';

  @override
  String blockNumberConfirm(String number) {
    return 'Du vil ikke længere modtage opkald eller sms\'er fra $number.';
  }

  @override
  String get blocked => 'Blokeret';

  @override
  String get couldNotBlock => 'Kunne ikke blokere';

  @override
  String get contactNotOnDevice => 'Kontakten er ikke gemt på denne enhed';

  @override
  String get unblocked => 'Blokeret ophævet';

  @override
  String get numberCopied => 'Nummer kopieret';

  @override
  String get showLess => 'Vis mindre';

  @override
  String get showAllTimes => 'Vis alle tider';

  @override
  String mostRecent(String time) {
    return 'Seneste · $time';
  }

  @override
  String get videoCall => 'Videoopkald';

  @override
  String get couldNotPlaceVideoCall => 'Kunne ikke foretage videoopkald';

  @override
  String get message => 'Besked';

  @override
  String get couldNotOpenMessaging => 'Kunne ikke åbne beskedapp';

  @override
  String get history => 'Historie';

  @override
  String get viewContact => 'Se kontakt';

  @override
  String get addToContact => 'Føj til kontakt';

  @override
  String get callTypeMissed => 'Savnet';

  @override
  String get callTypeRejected => 'Afvist';

  @override
  String get callTypeIncoming => 'Indgående';

  @override
  String get callTypeOutgoing => 'Udgående';

  @override
  String get today => 'I dag';

  @override
  String get yesterday => 'I går';

  @override
  String get justNow => 'Lige nu';

  @override
  String minutesAgo(int count) {
    return '$count min siden';
  }

  @override
  String hoursAgo(int count) {
    return '$count timer siden';
  }

  @override
  String get filterAll => 'Alle';

  @override
  String get filterMissed => 'Savnet';

  @override
  String get filterContacts => 'Kontaktpersoner';

  @override
  String get filterNonContacts => 'Ikke-kontakter';

  @override
  String get iconUpdated =>
      'Ikonet er opdateret. Det kan tage et øjeblik at opdatere din startskærm.';

  @override
  String get iconSavedRelease =>
      'Valget er gemt. Startskærmsikonet opdateres i udgivelsesbuilds.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Kunne ikke ændre ikon: $error';
  }

  @override
  String get launcherClassicBlack => 'Klassisk (sort)';

  @override
  String get launcherLight => 'Lys';

  @override
  String get launcherNothingRed => 'Intet rødt';

  @override
  String get launcherDarkGrey => 'Mørkegrå';

  @override
  String get launcherCream => 'Fløde';

  @override
  String get launcherRetroPhone => 'Retro telefon';

  @override
  String get launcherRetroPhoneLight => 'Retro telefon (lys)';

  @override
  String get voiceSearchUnavailable =>
      'Stemmesøgning er ikke tilgængelig på denne enhed.';

  @override
  String voiceSearchFailed(String error) {
    return 'Stemmesøgning mislykkedes: $error';
  }

  @override
  String get customColor => 'Skik';

  @override
  String get selectColor => 'Vælg farve';

  @override
  String get reset => 'Nulstil';

  @override
  String get simPickerTitle => 'Vælg SIM';

  @override
  String get simChooseForCall => 'Vælg SIM til dette opkald';

  @override
  String get defaultSimAsk => 'Spørg hver gang';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Kontaktoplysninger';

  @override
  String get call => 'Ring';

  @override
  String get share => 'Dele';

  @override
  String get favourite => 'Favorit';

  @override
  String get unfavourite => 'Ikke foretrukken';

  @override
  String get blockContact => 'Bloker kontakt';

  @override
  String get unblockContact => 'Fjern blokering af kontakt';

  @override
  String get deleteContact => 'Slet kontakt';

  @override
  String get phone => 'Telefon';

  @override
  String get email => 'E-mail';

  @override
  String get ringtone => 'Ringetone';

  @override
  String get defaultRingtone => 'Misligholdelse';

  @override
  String get simForContact => 'SIM for denne kontakt';

  @override
  String get callHistoryTitle => 'Opkaldshistorik';

  @override
  String get noCallsWithNumber => 'Ingen opkald med dette nummer';

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
  String get inCallGlyphAnimationStyle => 'Glyph-animation under opkald';

  @override
  String get recordsOff => 'Slukket';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Standard SIM';

  @override
  String get nothingPhoneOnly => 'Intet Kun telefon';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Glyph-funktioner kræver en Nothing Phone';

  @override
  String get custom => 'Skik';

  @override
  String presetColorHex(String hex) {
    return 'Forudindstillet · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Brugerdefineret · $hex';
  }

  @override
  String get oneContact => '1 kontakt';

  @override
  String upToContacts(int count) {
    return 'Op til $count kontakter';
  }

  @override
  String get answerButtonTapSubtitle => 'Tryk på knappen for at svare';

  @override
  String get filterCalls => 'Filtrer opkald';

  @override
  String get filterTooltip => 'Filter';

  @override
  String get settingsTooltip => 'Indstillinger';

  @override
  String get filterAllSubtitle => 'Hele opkaldsloggen';

  @override
  String get filterMissedSubtitle => 'Savnet og afvist';

  @override
  String get filterContactsSubtitle => 'Opkald matchet med en gemt kontakt';

  @override
  String get filterNonContactsSubtitle => 'Numre er ikke i din adressebog';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Igangværende opkald: $detail';
  }

  @override
  String get defaultSimForCalls => 'Standard SIM til opkald';

  @override
  String get blinkInterval => 'Blink interval';

  @override
  String get close => 'Tæt';

  @override
  String get frequentlyContactedInfoBody =>
      'Viser dine mest kaldte telefonnumre øverst på fanen Seneste, baseret på hvor mange indgående, udgående, ubesvarede eller afviste opkald, du havde med hvert nummer i den tidsperiode, du vælger.\n\nAntal poster: Indstil til 0 for at slå dette fra. Brug 1-20 for at vise så mange topkontakter.\n\nTidsperioden gælder kun, når der vises mindst én kontakt.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count lys, ${ms}ms hastighed';
  }

  @override
  String get deleteContactQuestion => 'Vil du slette kontakten?';

  @override
  String get deleteContactBody =>
      'Denne kontakt bliver permanent slettet fra din enhed.';

  @override
  String get blockContactQuestion => 'Bloker kontakt?';

  @override
  String get unblockContactQuestion => 'Fjern blokering af kontakt?';

  @override
  String get blockContactBody =>
      'Du vil ikke længere modtage opkald eller sms\'er fra denne kontakt.';

  @override
  String get unblockContactBody =>
      'Du vil begynde at modtage opkald og sms\'er fra denne kontakt.';

  @override
  String get contactBlocked => 'Kontakt blokeret';

  @override
  String get contactUnblocked => 'Kontakt ophævet';

  @override
  String get noPhoneNumbersToBlock => 'Ingen telefonnumre at blokere';

  @override
  String get simSameAsSystem => 'Samme som system';

  @override
  String get simSameAsSystemSubtitle => 'Følger Standard SIM i Indstillinger';

  @override
  String get simAskEveryTimeForContact =>
      'Vis altid SIM-vælgeren for denne kontakt';

  @override
  String get ringtoneSetForContact =>
      'Ringetone indstillet globalt for denne kontakt';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Kunne ikke vælge ringetone: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Fejl: $error';
  }

  @override
  String get noCallHistoryFound => 'Der blev ikke fundet nogen opkaldshistorik';

  @override
  String get speedDialVoicemail => 'Hurtigopkald: Voicemail';

  @override
  String shareContactSubject(String name) {
    return 'Kontakt: $name';
  }

  @override
  String get contactInfo => 'Kontakt info';

  @override
  String get dontAskAgainSim => 'Spørg ikke igen';

  @override
  String get simDontAskAgainSubtitle =>
      'Brug dette SIM-kort som standard (ændring i Indstillinger)';

  @override
  String get addContact => 'Tilføj kontakt';

  @override
  String get createContact => 'Opret kontakt';

  @override
  String get paste => 'Indsæt';

  @override
  String get clear => 'Klar';

  @override
  String get returnToCall => 'Vend tilbage til opkald';

  @override
  String get numberOfRecordsTitle => 'Antal poster';

  @override
  String get recordsPickerSubtitle =>
      'Hvor mange ofte kontaktede poster der skal vises (0 = fra)';

  @override
  String get torchInfoTitle => 'Fakkelblink';

  @override
  String get torchInfoBody =>
      'Blinker kamerablitzen under indgående, udgående eller igangværende opkald. Uafhængig af Glyph-lys.';

  @override
  String get glyphMapTitle => 'Glyph layout';

  @override
  String get glyphMapBody =>
      'Intet Telefon 1 Glyph LED-zoner. Udgående og indgående animationer bruger disse kanaler.';

  @override
  String get answerMethodTitle => 'Svarmetode';

  @override
  String get glyphOutgoingCallStyleTitle => 'Stil for udgående opkald';

  @override
  String get glyphInCallAnimationTitle => 'Glyph-animation i opkald';

  @override
  String get themePickerTitle => 'Tema';

  @override
  String get torchIncomingTitle => 'Indgående opkald lommelygte';

  @override
  String get torchOutgoingTitle => 'Udgående opkaldslygte';

  @override
  String get torchOngoingTitle => 'Løbende opkald fakkel';

  @override
  String get timePeriodTitle => 'Tidsperiode';

  @override
  String get ok => 'OK';

  @override
  String get confirmDeleteCall => 'Vil du slette dette opkald fra historikken?';

  @override
  String get confirmDeleteAllCalls =>
      'Vil du slette alle opkald med dette nummer?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Send en besked';

  @override
  String get addToExistingContactAction => 'Føj til en kontakt';

  @override
  String get mobileLabel => 'Mobil';

  @override
  String get callingSimForContactTitle => 'Ringer til SIM for denne kontakt';

  @override
  String get contactSettings => 'Kontaktindstillinger';

  @override
  String get setCallingSim => 'Indstil opkalds-SIM';

  @override
  String get contactRingtone => 'Kontakt ringetone';

  @override
  String get shareContact => 'Del kontakt';

  @override
  String get blockNumbers => 'Bloker numre';

  @override
  String get unblockNumbers => 'Fjern blokering af numre';

  @override
  String get connectedApps => 'Forbundne apps';

  @override
  String get simNotSet => 'Ikke indstillet';

  @override
  String get ringtoneDefault => 'Misligholdelse';

  @override
  String get customRingtone => 'Skik';

  @override
  String get aboutSection => 'Om';

  @override
  String get aboutFeedbackSection => 'Om & feedback';

  @override
  String get aboutDescription =>
      'Nothing Dialer er open source. Hvis du er udvikler, er du velkommen til at udforske koden og bidrage.';

  @override
  String get aboutViewSource => 'Se på GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Kunne ikke åbne linket';

  @override
  String get reviewSection => 'Gennemgå';

  @override
  String get reviewDescription =>
      'Nyder du Nothing Dialer? Din bedømmelse i Google Play hjælper andre med at finde appen.';

  @override
  String get reviewRateOnPlay => 'Bedøm i Google Play';

  @override
  String get reviewRateOnPlaySubtitle => 'Opens the Play Store listing';

  @override
  String get reviewCouldNotOpen => 'Kunne ikke åbne Google Play';

  @override
  String get breathSpeed => 'Åndedrætshastighed';

  @override
  String get breathSpeedBlinkHint =>
      'Lavere = Blink, Højere = Langsom åndedræt';

  @override
  String get speedSliderHint => 'Lavere = Hurtigere, Højere = Langsommere';

  @override
  String get swatchDefault => 'Misligholdelse';

  @override
  String get customAccentColorPicker => 'Brugerdefineret accentfarve';

  @override
  String get customLightBackgroundPicker => 'Brugerdefineret lys baggrund';

  @override
  String get customDarkBackgroundPicker => 'Brugerdefineret mørk baggrund';

  @override
  String get customCallBackgroundPicker => 'Brugerdefineret opkaldsbaggrund';

  @override
  String get ongoingCallStyleTitle => 'Løbende opkaldsstil';

  @override
  String get glyphMapUnavailable => 'Glyfkort er ikke tilgængeligt';

  @override
  String get animationDelayRange => 'Animationsforsinkelse (1 s - 10 s)';

  @override
  String get animationDelayRangeSingle =>
      'Animationsforsinkelse (0,1 s - 10 s)';

  @override
  String get inCallMute => 'Stum';

  @override
  String get inCallKeypad => 'Tastatur';

  @override
  String get inCallSpeaker => 'Højttaler';

  @override
  String get inCallMore => 'Mere';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Telefon';

  @override
  String get inCallAddCall => 'Tilføj opkald';

  @override
  String get inCallChangeSim => 'Skift SIM';

  @override
  String get inCallDecline => 'Nedgang';

  @override
  String get inCallAnswer => 'Svar';

  @override
  String get inCallMessage => 'Besked';

  @override
  String get inCallCalling => 'Ringer...';

  @override
  String get inCallIncoming => 'Indgående opkald';

  @override
  String get inCallSelectSim => 'Vælg SIM...';

  @override
  String get inCallSwitchingSim => 'Skifter SIM-kort...';

  @override
  String get inCallCallEnded => 'Opkaldet afsluttet';

  @override
  String inCallCallingVia(String sim) {
    return 'Ringer via $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Ringer via <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Vælg SIM til dette opkald';

  @override
  String get inCallDragAnswerDecline =>
      'Træk til højre for at svare · Træk til venstre for at afvise';

  @override
  String inCallMobileNumber(String number) {
    return 'Mobil $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (aktuelt)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Ring via <b>$sim</b> fra';
  }

  @override
  String get inCallCallFrom => 'Ring fra';

  @override
  String get inCallUnknown => 'Ukendt';

  @override
  String get selectContactRingtone => 'Vælg kontakt ringetone';

  @override
  String get speakToSearchPrompt => 'Tal for at søge';

  @override
  String get phonePermissionRequired => 'Der kræves telefontilladelse';

  @override
  String callFailed(String error) {
    return 'Opkald mislykkedes: $error';
  }

  @override
  String get callPermissionDenied => 'Opkaldstilladelse nægtet';

  @override
  String get alreadyDefaultDialer =>
      'Allerede indstillet som standardopkaldsfunktion';

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
