// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian Bokmål (`nb`).
class AppLocalizationsNb extends AppLocalizations {
  AppLocalizationsNb([String locale = 'nb']) : super(locale);

  @override
  String get appTitle => 'Ingenting Dialer';

  @override
  String get settings => 'Innstillinger';

  @override
  String get settingsSearchHint => 'Søkeinnstillinger';

  @override
  String get settingsSearchNoResults => 'Ingen innstillinger funnet';

  @override
  String get general => 'General';

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
  String get themeFollowSystem => 'Følg systeminnstillingene';

  @override
  String get themeAlwaysLight => 'Bruk alltid lett tema';

  @override
  String get themeAlwaysDark => 'Bruk alltid mørkt tema';

  @override
  String get language => 'Språk';

  @override
  String get languageDeviceDefault => 'Enhetsstandard';

  @override
  String get languagePickerTitle => 'Språk';

  @override
  String get languageSearchHint => 'Søk etter språk';

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
      'Skriftnedlasting mislyktes. Sjekk tilkoblingen og prøv igjen.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Font';

  @override
  String get fontPreviewSample => 'Ingenting Dialer';

  @override
  String get fontAppWide => 'App-font';

  @override
  String get fontApplyTo => 'Søk på';

  @override
  String get fontApplyEntireApp => 'Hele appen';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Samme font overalt, inkludert i samtale';

  @override
  String get fontApplyTitlesOnly => 'Titler og overskrifter';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Bare store titler og seksjonsoverskrifter';

  @override
  String get fontApplyCustomize => 'Tilpass';

  @override
  String get fontApplyCustomizeSubtitle => 'Velg font per skjerm og teksttype';

  @override
  String get fontCustomizeSection => 'Tilpass etter skjerm';

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
  String get fontRolePageTitle => 'Sidetittel';

  @override
  String get fontRoleSectionHeader => 'Seksjonsoverskrift';

  @override
  String get fontRolePrimary => 'Primærtekst';

  @override
  String get fontRoleSecondary => 'Sekundær tekst';

  @override
  String get fontRoleButton => 'Knapper';

  @override
  String get fontRoleDialKey => 'Taster på tastaturet';

  @override
  String get fontSurfaceRecents => 'Nylig';

  @override
  String get fontSurfaceContacts => 'Kontakter';

  @override
  String get fontSurfaceSettings => 'Innstillinger';

  @override
  String get fontSurfaceDialpad => 'Tastatur';

  @override
  String get fontSurfaceShell => 'Navigasjon';

  @override
  String get fontSurfaceDefaultDialer => 'Standard oppringingsmelding';

  @override
  String get fontSurfaceFavourites => 'Favoritter';

  @override
  String get fontSurfaceBlocked => 'Blokkerte numre';

  @override
  String get fontSurfaceContactDetail => 'Kontaktdetaljer';

  @override
  String get fontSurfaceCallHistory => 'Anropslogg';

  @override
  String get fontSurfaceSheets => 'Ark og plukkere';

  @override
  String get fontSurfaceInCall => 'Skjerm i samtale';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — hele appen';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — kun titler';
  }

  @override
  String get fontSubtitleCustomize => 'Egendefinert per skjerm';

  @override
  String get background => 'Bakgrunn';

  @override
  String get accent => 'Aksent';

  @override
  String get lightBackground => 'Lys bakgrunn';

  @override
  String get lightAccent => 'Lett aksent';

  @override
  String get darkBackground => 'Mørk bakgrunn';

  @override
  String get darkAccent => 'Mørk aksent';

  @override
  String get callBackground => 'Anropsbakgrunn';

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
  String get answerSlide => 'Skyv for å svare';

  @override
  String get answerSlideSubtitle =>
      'Sveip til venstre/høyre på linjen, som Google Phone';

  @override
  String get answerButton => 'Knappetrykk';

  @override
  String get answerButtonSubtitle => 'Trykk på svar- eller avslå-knappene';

  @override
  String get answerHuawei => 'Huawei stil';

  @override
  String get answerHuaweiSubtitle =>
      'Dra sirkelen til den grønne telefonen for å svare';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — dra til grønt/rødt';

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
  String get askEveryTime => 'Spør hver gang';

  @override
  String get askEveryTimeSubtitle => 'Vis SIM-velger før hver samtale';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Finner ingen SIM-kort';

  @override
  String couldNotLoadSims(String error) {
    return 'Kunne ikke laste inn SIM-kort: $error';
  }

  @override
  String get allFavourites => 'Alle favoritter';

  @override
  String get allFavouritesSubtitle =>
      'Omorganiser, fjern og legg til fra kontakter';

  @override
  String get blockedNumbers => 'Blokkerte numre';

  @override
  String get blockedNumbersSubtitle => 'Se og opphev blokkering av numre';

  @override
  String get soundsAndVibration => 'Lyder og vibrasjoner';

  @override
  String get soundsAndVibrationSubtitle =>
      'Ringetone, vibrasjon, tastaturtoner';

  @override
  String couldNotOpenSettings(String error) {
    return 'Kunne ikke åpne innstillingene: $error';
  }

  @override
  String get frequentlyContacted => 'Ofte kontaktet';

  @override
  String get numberOfRecords => 'Antall poster';

  @override
  String get timePeriod => 'Tidsperiode';

  @override
  String get periodLast24Hours => 'Siste 24 timer';

  @override
  String get periodLast24HoursSubtitle => 'Anrop fra siste dag';

  @override
  String get periodLast7Days => 'Siste 7 dager';

  @override
  String get periodLast7DaysSubtitle => 'Anrop fra forrige uke';

  @override
  String get periodLast30Days => 'Siste 30 dager';

  @override
  String get periodLast30DaysSubtitle => 'Anrop fra den siste måneden';

  @override
  String get periodLast12Months => 'Siste 12 måneder';

  @override
  String get periodLast12MonthsSubtitle => 'Samtaler fra det siste året';

  @override
  String get periodAllTime => 'Hele tiden';

  @override
  String get periodAllTimeSubtitle => 'Hele anropsloggen';

  @override
  String get frequentMaxOff => 'Av';

  @override
  String frequentMaxCount(int count) {
    return '$count kontakter';
  }

  @override
  String get torchBlink => 'fakkelblink';

  @override
  String get torchIncomingCall => 'Innkommende anropslykt';

  @override
  String get torchOutgoingCall => 'Utgående anropslykt';

  @override
  String get torchOngoingCall => 'Pågående ringelykt';

  @override
  String get torchIncomingInterval => 'Innkommende blinkintervall';

  @override
  String get torchOutgoingInterval => 'Utgående blinkintervall';

  @override
  String get torchOngoingInterval => 'Pågående blinkintervall';

  @override
  String get torchOff => 'Av';

  @override
  String get torchOffIncomingSubtitle => 'Ingen lommelykt mens du ringer';

  @override
  String get torchOffOutgoingSubtitle => 'Ingen lommelykt mens du ringer';

  @override
  String get torchOffOngoingSubtitle => 'Ingen lommelykt under aktiv samtale';

  @override
  String get torchFixedInterval => 'Fast intervall';

  @override
  String get torchFixedIntervalSubtitle => 'Blink med en innstilt hastighet';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds blinke';
  }

  @override
  String get flashlightUnavailable =>
      'Lommelykt er ikke tilgjengelig på denne enheten';

  @override
  String get glyphLights => 'Glyph-lys';

  @override
  String get glyphCallingAnimation => 'Glyf-anropsanimasjon';

  @override
  String get glyphOngoingAnimation => 'Glyph pågående samtaleanimasjon';

  @override
  String get glyphNone => 'Ingen';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Deaktiver Glyph-lys for utgående anrop';

  @override
  String get glyphNoneInCallSubtitle =>
      'Deaktiver Glyph-lys mens du er i samtale';

  @override
  String get glyphBreathProgress => 'Pust og fremgang';

  @override
  String get glyphBreathProgressSubtitle =>
      'Lys puster mens linjen fylles opp over 65s';

  @override
  String get glyphAccumulate => 'Akkumulere';

  @override
  String get glyphAccumulateSubtitle =>
      'Akkumulerende animasjon på lysene C1-C4';

  @override
  String get glyphSingle => 'Enkelt';

  @override
  String get glyphSingleSubtitle => 'Enkelt lys beveger seg over C1-C4';

  @override
  String get glyphBreath => 'Pust';

  @override
  String get glyphBreathSubtitle => 'Velg lys og hastighet';

  @override
  String get glyphSteady => 'Stødig';

  @override
  String get glyphSteadySubtitle => 'Utvalgte lys forblir på';

  @override
  String get breathSettings => 'Pusteinnstillinger';

  @override
  String get activeLights => 'Aktive lys';

  @override
  String lightsCount(int count) {
    return '$count lyser';
  }

  @override
  String get speedSettings => 'Hastighetsinnstillinger';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms forsinkelse';
  }

  @override
  String get durationAndSpeed => 'Varighet og hastighet';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s varighet, ${interval}ms intervall';
  }

  @override
  String get cancel => 'Kansellere';

  @override
  String get done => 'Ferdig';

  @override
  String get save => 'Spare';

  @override
  String get block => 'Blokkere';

  @override
  String get delete => 'Slett';

  @override
  String get recents => 'Nylig';

  @override
  String get contacts => 'Kontakter';

  @override
  String get hideFavouritesOnRecents => 'Skjul favoritter på Recents';

  @override
  String get showFavouritesOnRecents => 'Vis favoritter på Recents';

  @override
  String get ongoingCall => 'Pågående samtale';

  @override
  String get setAsDefaultTitle => 'SET SOM\nSTANDARD';

  @override
  String get setAsDefaultBody =>
      'For å bruke Nothing Dialer må den angis som standard telefonapp. Dette lar deg administrere anrop, se historikk og bruke Glyph-animasjoner.';

  @override
  String get setAsDefaultButton => 'STILL SOM STANDARD';

  @override
  String get nothingDialerBrand => 'INGENTING DIALER 1';

  @override
  String get favourites => 'Favoritter';

  @override
  String get addFavourite => 'Legg til favoritt';

  @override
  String get favouritesDrawerHint =>
      'Bruk menyen for å legge til kontakter. Trykk utenfor skuffen eller sveip den lukket. Stjernemerke en kontakt fra deres detaljer, eller trykk lenge på en samtale i Nylig.';

  @override
  String get menu => 'Meny';

  @override
  String get noFavouritesYet =>
      'Ingen favoritter ennå.\nÅpne menyen for å legge til en, eller stjerne en kontakt.';

  @override
  String get contactsPermissionNeeded => 'Kontakttillatelse kreves';

  @override
  String get chooseContact => 'Velg kontakt';

  @override
  String get noPhone => 'Ingen telefon';

  @override
  String get pickNumber => 'Velg nummer';

  @override
  String get contactHasNoPhone => 'Denne kontakten har ikke noe telefonnummer';

  @override
  String get blockNumber => 'Blokknummer';

  @override
  String get enterPhoneNumber => 'Skriv inn telefonnummer';

  @override
  String unblockedDisplay(String display) {
    return 'Opphevet blokkering $display';
  }

  @override
  String get couldNotUnblockNumber =>
      'Kunne ikke oppheve blokkeringen av nummeret';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked blokkert • $matched matchet';
  }

  @override
  String get contactsPermissionMissing =>
      'Kontakttillatelse mangler. Trykk for å fikse.';

  @override
  String get noBlockedNumbers => 'Ingen blokkerte nummer';

  @override
  String get unknownContact => 'Ukjent kontakt';

  @override
  String get unblock => 'Fjern blokkering';

  @override
  String get permissionNeeded => 'Trenger tillatelse';

  @override
  String get grantPhonePermission =>
      'Gi telefontillatelse til å se anropsloggen din.';

  @override
  String get grantContactsPermission =>
      'Gi kontakter tillatelse til å se adresseboken din.';

  @override
  String get openSettings => 'Åpne Innstillinger';

  @override
  String get tryAgain => 'Prøv igjen';

  @override
  String get couldNotLoadContacts => 'Kunne ikke laste inn kontakter';

  @override
  String get contactsLoadError => 'Noe gikk galt ved å lese adresseboken din.';

  @override
  String get noContactsFound => 'Ingen kontakter funnet';

  @override
  String get contactsEmptySubtitle => 'Kontakter fra enheten din vises her.';

  @override
  String get searchContacts => 'Søk etter kontakter …';

  @override
  String get searchRecentCalls => 'Søk etter siste samtaler';

  @override
  String get fromContacts => 'Fra kontakter';

  @override
  String get recentsSearchSection => 'Nylig søk';

  @override
  String get recentsSearchShowContacts => 'Vis kontakter i søk';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Mens du søker i Nylige, kan du også vise samsvarende personer fra adresseboken din under anropsloggresultatene.';

  @override
  String get voiceSearch => 'Stemmesøk';

  @override
  String get createNewContact => 'Opprett ny kontakt';

  @override
  String callError(String error) {
    return 'Anropsfeil: $error';
  }

  @override
  String get noRecentCalls => 'Ingen nylige anrop';

  @override
  String get callHistoryEmpty => 'Anropsloggen din vises her.';

  @override
  String get loadMore => 'Last inn mer';

  @override
  String get frequentlyContactedHeader => 'Ofte kontaktet';

  @override
  String get recentHistory => 'Nyere historie';

  @override
  String get noFavouritesRecentsHint =>
      'Ingen favoritter ennå. Stjernemerker en kontakt, trykk lenge på en samtale eller bruk kategorien Favoritter.';

  @override
  String get copyNumber => 'Kopier nummer';

  @override
  String get editNumberBeforeCall => 'Rediger nummer før samtale';

  @override
  String get removeFromFavourites => 'Fjern fra favoritter';

  @override
  String get addToFavourites => 'Legg til i favoritter';

  @override
  String get blockNumberQuestion => 'Blokkere nummer?';

  @override
  String blockNumberConfirm(String number) {
    return 'Du vil ikke lenger motta anrop eller tekstmeldinger fra $number.';
  }

  @override
  String get blocked => 'Blokkert';

  @override
  String get couldNotBlock => 'Kunne ikke blokkere';

  @override
  String get contactNotOnDevice => 'Kontakten er ikke lagret på denne enheten';

  @override
  String get unblocked => 'Opphevet blokkering';

  @override
  String get numberCopied => 'Nummer kopiert';

  @override
  String get showLess => 'Vis mindre';

  @override
  String get showAllTimes => 'Vis alle tider';

  @override
  String mostRecent(String time) {
    return 'Siste · $time';
  }

  @override
  String get videoCall => 'Videosamtale';

  @override
  String get couldNotPlaceVideoCall => 'Kunne ikke foreta videoanrop';

  @override
  String get message => 'Beskjed';

  @override
  String get couldNotOpenMessaging => 'Kunne ikke åpne meldingsappen';

  @override
  String get history => 'Historie';

  @override
  String get viewContact => 'Se kontakt';

  @override
  String get addToContact => 'Legg til i kontakt';

  @override
  String get callTypeMissed => 'Savnet';

  @override
  String get callTypeRejected => 'Avvist';

  @override
  String get callTypeIncoming => 'Innkommende';

  @override
  String get callTypeOutgoing => 'Utgående';

  @override
  String get today => 'I dag';

  @override
  String get yesterday => 'I går';

  @override
  String get justNow => 'Akkurat nå';

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
  String get filterContacts => 'Kontakter';

  @override
  String get filterNonContacts => 'Ikke-kontakter';

  @override
  String get iconUpdated =>
      'Ikonet er oppdatert. Det kan ta et øyeblikk å oppdatere startskjermen.';

  @override
  String get iconSavedRelease =>
      'Valget er lagret. Startskjermikonet oppdateres i utgivelsesbygg.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Kunne ikke endre ikonet: $error';
  }

  @override
  String get launcherClassicBlack => 'Klassisk (svart)';

  @override
  String get launcherLight => 'Lys';

  @override
  String get launcherNothingRed => 'Ikke noe rødt';

  @override
  String get launcherDarkGrey => 'Mørkegrå';

  @override
  String get launcherCream => 'Krem';

  @override
  String get launcherRetroPhone => 'Retro telefon';

  @override
  String get launcherRetroPhoneLight => 'Retro telefon (lys)';

  @override
  String get voiceSearchUnavailable =>
      'Talesøk er ikke tilgjengelig på denne enheten.';

  @override
  String voiceSearchFailed(String error) {
    return 'Talesøk mislyktes: $error';
  }

  @override
  String get customColor => 'Skikk';

  @override
  String get selectColor => 'Velg farge';

  @override
  String get reset => 'Tilbakestill';

  @override
  String get simPickerTitle => 'Velg SIM';

  @override
  String get simChooseForCall => 'Velg SIM for denne samtalen';

  @override
  String get defaultSimAsk => 'Spør hver gang';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Kontaktinformasjon';

  @override
  String get call => 'Ringe';

  @override
  String get share => 'Dele';

  @override
  String get favourite => 'Favoritt';

  @override
  String get unfavourite => 'Ikke favoritt';

  @override
  String get blockContact => 'Blokker kontakt';

  @override
  String get unblockContact => 'Opphev blokkering av kontakt';

  @override
  String get deleteContact => 'Slett kontakt';

  @override
  String get phone => 'Telefon';

  @override
  String get email => 'E-post';

  @override
  String get ringtone => 'Ringetone';

  @override
  String get defaultRingtone => 'Misligholde';

  @override
  String get simForContact => 'SIM for denne kontakten';

  @override
  String get callHistoryTitle => 'Anropslogg';

  @override
  String get noCallsWithNumber => 'Ingen anrop med dette nummeret';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Glyph-animasjon';

  @override
  String get inCallGlyphAnimationStyle => 'Glyph-animasjon under samtale';

  @override
  String get recordsOff => 'Av';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Standard SIM';

  @override
  String get nothingPhoneOnly => 'Ingenting Bare telefon';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Glyph-funksjoner krever en Nothing Phone';

  @override
  String get custom => 'Skikk';

  @override
  String presetColorHex(String hex) {
    return 'Forhåndsinnstilt · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Egendefinert · $hex';
  }

  @override
  String get oneContact => '1 kontakt';

  @override
  String upToContacts(int count) {
    return 'Opptil $count kontakter';
  }

  @override
  String get answerButtonTapSubtitle => 'Trykk på knappen for å svare';

  @override
  String get filterCalls => 'Filtrer anrop';

  @override
  String get filterTooltip => 'Filter';

  @override
  String get settingsTooltip => 'Innstillinger';

  @override
  String get filterAllSubtitle => 'Hele anropsloggen';

  @override
  String get filterMissedSubtitle => 'Savnet og avvist';

  @override
  String get filterContactsSubtitle => 'Samtaler matchet med en lagret kontakt';

  @override
  String get filterNonContactsSubtitle => 'Tallene er ikke i adresseboken din';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Pågående samtale: $detail';
  }

  @override
  String get defaultSimForCalls => 'Standard SIM for samtaler';

  @override
  String get blinkInterval => 'Blinkintervall';

  @override
  String get close => 'Lukke';

  @override
  String get frequentlyContactedInfoBody =>
      'Viser de mest oppringte telefonnumrene dine øverst på fanen Nylige, basert på hvor mange innkommende, utgående, tapte eller avviste anrop du hadde med hvert nummer i tidsperioden du velger.\n\nAntall poster: satt til 0 for å slå av dette. Bruk 1–20 for å vise så mange toppkontakter.\n\nTidsperioden gjelder kun når minst én kontakt vises.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count lys, ${ms}ms hastighet';
  }

  @override
  String get deleteContactQuestion => 'Vil du slette kontakten?';

  @override
  String get deleteContactBody =>
      'Denne kontakten vil bli permanent slettet fra enheten din.';

  @override
  String get blockContactQuestion => 'Blokkere kontakt?';

  @override
  String get unblockContactQuestion =>
      'Vil du oppheve blokkeringen av kontakt?';

  @override
  String get blockContactBody =>
      'Du vil ikke lenger motta anrop eller tekstmeldinger fra denne kontakten.';

  @override
  String get unblockContactBody =>
      'Du vil begynne å motta anrop og tekstmeldinger fra denne kontakten.';

  @override
  String get contactBlocked => 'Kontakt blokkert';

  @override
  String get contactUnblocked => 'Kontakten er opphevet';

  @override
  String get noPhoneNumbersToBlock => 'Ingen telefonnumre å blokkere';

  @override
  String get simSameAsSystem => 'Samme som systemet';

  @override
  String get simSameAsSystemSubtitle => 'Følger Standard SIM i Innstillinger';

  @override
  String get simAskEveryTimeForContact =>
      'Vis alltid SIM-velgeren for denne kontakten';

  @override
  String get ringtoneSetForContact =>
      'Ringetone satt globalt for denne kontakten';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Kunne ikke velge ringetone: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Feil: $error';
  }

  @override
  String get noCallHistoryFound => 'Fant ingen anropslogg';

  @override
  String get speedDialVoicemail => 'Hurtigvalg: talepost';

  @override
  String shareContactSubject(String name) {
    return 'Kontakt: $name';
  }

  @override
  String get contactInfo => 'Kontaktinformasjon';

  @override
  String get dontAskAgainSim => 'Ikke spør igjen';

  @override
  String get simDontAskAgainSubtitle =>
      'Bruk dette SIM-kortet som standard (endre i Innstillinger)';

  @override
  String get addContact => 'Legg til kontakt';

  @override
  String get createContact => 'Opprett kontakt';

  @override
  String get paste => 'Lim inn';

  @override
  String get clear => 'Klar';

  @override
  String get returnToCall => 'Gå tilbake til samtalen';

  @override
  String get numberOfRecordsTitle => 'Antall poster';

  @override
  String get recordsPickerSubtitle =>
      'Hvor mange ofte kontaktede oppføringer som skal vises (0 = av)';

  @override
  String get torchInfoTitle => 'Fakkelblink';

  @override
  String get torchInfoBody =>
      'Blinker kamerablitsen under innkommende, utgående eller pågående samtaler. Uavhengig av glyph-lys.';

  @override
  String get glyphMapTitle => 'Glyph layout';

  @override
  String get glyphMapBody =>
      'Ingenting Telefon 1 Glyph LED-soner. Utgående og inngående animasjoner bruker disse kanalene.';

  @override
  String get answerMethodTitle => 'Svarmetode';

  @override
  String get glyphOutgoingCallStyleTitle => 'Stil for utgående anrop';

  @override
  String get glyphInCallAnimationTitle => 'Glyph-animasjon i samtale';

  @override
  String get themePickerTitle => 'Tema';

  @override
  String get torchIncomingTitle => 'Innkommende anropslykt';

  @override
  String get torchOutgoingTitle => 'Utgående anropslykt';

  @override
  String get torchOngoingTitle => 'Pågående ringelykt';

  @override
  String get timePeriodTitle => 'Tidsperiode';

  @override
  String get ok => 'OK';

  @override
  String get confirmDeleteCall => 'Vil du slette dette anropet fra loggen?';

  @override
  String get confirmDeleteAllCalls =>
      'Vil du slette alle anrop med dette nummeret?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Send en melding';

  @override
  String get addToExistingContactAction => 'Legg til en kontakt';

  @override
  String get mobileLabel => 'Mobil';

  @override
  String get callingSimForContactTitle => 'Ringer SIM for denne kontakten';

  @override
  String get contactSettings => 'Kontaktinnstillinger';

  @override
  String get setCallingSim => 'Angi ringe-SIM';

  @override
  String get contactRingtone => 'Kontakt ringetone';

  @override
  String get shareContact => 'Del kontakt';

  @override
  String get blockNumbers => 'Blokker tall';

  @override
  String get unblockNumbers => 'Fjern blokkering av numre';

  @override
  String get connectedApps => 'Tilkoblede apper';

  @override
  String get simNotSet => 'Ikke satt';

  @override
  String get ringtoneDefault => 'Misligholde';

  @override
  String get customRingtone => 'Skikk';

  @override
  String get aboutSection => 'Om';

  @override
  String get aboutFeedbackSection => 'Om & tilbakemelding';

  @override
  String get aboutDescription =>
      'Nothing Dialer er åpen kildekode. Hvis du er en utvikler, er du velkommen til å utforske koden og bidra.';

  @override
  String get aboutViewSource => 'Se på GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Kunne ikke åpne linken';

  @override
  String get reviewSection => 'Gjennomgå';

  @override
  String get reviewDescription =>
      'Nyter du Nothing Dialer? Vurderingen din på Google Play hjelper andre med å finne appen.';

  @override
  String get reviewRateOnPlay => 'Vurder på Google Play';

  @override
  String get reviewRateOnPlaySubtitle => 'Opens the Play Store listing';

  @override
  String get reviewCouldNotOpen => 'Kunne ikke åpne Google Play';

  @override
  String get breathSpeed => 'Pustehastighet';

  @override
  String get breathSpeedBlinkHint => 'Lavere = Blink, Høyere = Sakte pust';

  @override
  String get speedSliderHint => 'Lavere = Raskere, Høyere = Langsommere';

  @override
  String get swatchDefault => 'Misligholde';

  @override
  String get customAccentColorPicker => 'Egendefinert aksentfarge';

  @override
  String get customLightBackgroundPicker => 'Egendefinert lys bakgrunn';

  @override
  String get customDarkBackgroundPicker => 'Egendefinert mørk bakgrunn';

  @override
  String get customCallBackgroundPicker => 'Egendefinert samtalebakgrunn';

  @override
  String get ongoingCallStyleTitle => 'Pågående samtalestil';

  @override
  String get glyphMapUnavailable => 'Glyfkart utilgjengelig';

  @override
  String get animationDelayRange => 'Animasjonsforsinkelse (1 s - 10 s)';

  @override
  String get animationDelayRangeSingle =>
      'Animasjonsforsinkelse (0,1 s - 10 s)';

  @override
  String get inCallMute => 'Stum';

  @override
  String get inCallKeypad => 'Tastatur';

  @override
  String get inCallSpeaker => 'Høyttaler';

  @override
  String get inCallMore => 'Flere';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Telefon';

  @override
  String get inCallAddCall => 'Legg til anrop';

  @override
  String get inCallChangeSim => 'Bytt SIM';

  @override
  String get inCallDecline => 'Avslå';

  @override
  String get inCallAnswer => 'Svare';

  @override
  String get inCallMessage => 'Beskjed';

  @override
  String get inCallCalling => 'Ringer …';

  @override
  String get inCallIncoming => 'Innkommende samtale';

  @override
  String get inCallSelectSim => 'Velg SIM...';

  @override
  String get inCallSwitchingSim => 'Bytter SIM-kort …';

  @override
  String get inCallCallEnded => 'Samtalen ble avsluttet';

  @override
  String inCallCallingVia(String sim) {
    return 'Ringer via $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Ringer via <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Velg SIM for denne samtalen';

  @override
  String get inCallDragAnswerDecline =>
      'Dra til høyre for å svare · Dra til venstre for å avslå';

  @override
  String inCallMobileNumber(String number) {
    return 'Mobil $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (Gjeldende)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Ring via <b>$sim</b> fra';
  }

  @override
  String get inCallCallFrom => 'Ring fra';

  @override
  String get inCallUnknown => 'Ukjent';

  @override
  String get selectContactRingtone => 'Velg ringetone for kontakt';

  @override
  String get speakToSearchPrompt => 'Snakk for å søke';

  @override
  String get phonePermissionRequired => 'Telefontillatelse kreves';

  @override
  String callFailed(String error) {
    return 'Anrop mislyktes: $error';
  }

  @override
  String get callPermissionDenied => 'Samtaletillatelse nektet';

  @override
  String get alreadyDefaultDialer => 'Allerede satt som standard oppringer';

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
