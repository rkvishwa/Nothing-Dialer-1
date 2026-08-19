// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bosnian (`bs`).
class AppLocalizationsBs extends AppLocalizations {
  AppLocalizationsBs([String locale = 'bs']) : super(locale);

  @override
  String get appTitle => 'Nothing Dialer';

  @override
  String get settings => 'Postavke';

  @override
  String get settingsSearchHint => 'Postavke pretrage';

  @override
  String get settingsSearchNoResults => 'Nisu pronađene postavke';

  @override
  String get general => 'Generale';

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
  String get themeSystemDefault => 'System Default';

  @override
  String get themeLight => 'Light';

  @override
  String get themeDark => 'Dark';

  @override
  String get themeFollowSystem => 'Pratite postavke sistema';

  @override
  String get themeAlwaysLight => 'Uvek koristite svetlu temu';

  @override
  String get themeAlwaysDark => 'Uvijek koristite tamnu temu';

  @override
  String get language => 'Jezik';

  @override
  String get languageDeviceDefault => 'Zadani uređaj';

  @override
  String get languagePickerTitle => 'Jezik';

  @override
  String get languageSearchHint => 'Traži jezike';

  @override
  String get font => 'Font';

  @override
  String get fontSystem => 'Sistemski zadani';

  @override
  String get fontNdot => 'Ništa (NDot)';

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
      'Preuzimanje fonta nije uspjelo. Provjerite vezu i pokušajte ponovo.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Font';

  @override
  String get fontPreviewSample => 'Nothing Dialer';

  @override
  String get fontAppWide => 'Font aplikacije';

  @override
  String get fontApplyTo => 'Prijavite se na';

  @override
  String get fontApplyEntireApp => 'Cijela aplikacija';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Isti font svuda, uključujući i poziv';

  @override
  String get fontApplyTitlesOnly => 'Naslovi i zaglavlja';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Samo veliki naslovi i zaglavlja odjeljaka';

  @override
  String get fontApplyCustomize => 'Prilagodi';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Odaberite font po ekranu i tipu teksta';

  @override
  String get fontCustomizeSection => 'Prilagodite po ekranu';

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
  String get fontRolePageTitle => 'Naslov stranice';

  @override
  String get fontRoleSectionHeader => 'Zaglavlje odjeljka';

  @override
  String get fontRolePrimary => 'Primarni tekst';

  @override
  String get fontRoleSecondary => 'Sekundarni tekst';

  @override
  String get fontRoleButton => 'Dugmad';

  @override
  String get fontRoleDialKey => 'Tasteri za biranje brojeva';

  @override
  String get fontSurfaceRecents => 'Nedavno';

  @override
  String get fontSurfaceContacts => 'Kontakti';

  @override
  String get fontSurfaceSettings => 'Postavke';

  @override
  String get fontSurfaceDialpad => 'Tastatura za biranje brojeva';

  @override
  String get fontSurfaceShell => 'Navigacija';

  @override
  String get fontSurfaceDefaultDialer =>
      'Podrazumevana prompt za biranje brojeva';

  @override
  String get fontSurfaceFavourites => 'Favoriti';

  @override
  String get fontSurfaceBlocked => 'Blokirani brojevi';

  @override
  String get fontSurfaceContactDetail => 'Kontakt detalj';

  @override
  String get fontSurfaceCallHistory => 'Istorija poziva';

  @override
  String get fontSurfaceSheets => 'Listovi i berači';

  @override
  String get fontSurfaceInCall => 'Ekran tokom poziva';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — cijela aplikacija';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — samo naslovi';
  }

  @override
  String get fontSubtitleCustomize => 'Prilagođeno po ekranu';

  @override
  String get background => 'Pozadina';

  @override
  String get accent => 'Akcent';

  @override
  String get lightBackground => 'Svijetla pozadina';

  @override
  String get lightAccent => 'Lagani naglasak';

  @override
  String get darkBackground => 'Tamna pozadina';

  @override
  String get darkAccent => 'Tamni akcenat';

  @override
  String get callBackground => 'Pozadina poziva';

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
  String get appIcon => 'Ikona aplikacije';

  @override
  String get answerMethod => 'Metoda odgovora';

  @override
  String get answerSlide => 'Prevucite da odgovorite';

  @override
  String get answerSlideSubtitle =>
      'Prevucite lijevo/desno na traci, poput Google telefona';

  @override
  String get answerButton => 'Tap na dugme';

  @override
  String get answerButtonSubtitle => 'Dodirnite dugme za odgovor ili odbijanje';

  @override
  String get answerHuawei => 'Huawei stil';

  @override
  String get answerHuaweiSubtitle =>
      'Prevucite krug na zeleni telefon da odgovorite';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — prevucite na zeleno/crveno';

  @override
  String get calling => 'Zovem';

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
  String get defaultSim => 'Default SIM';

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
  String get askEveryTime => 'Pitaj svaki put';

  @override
  String get askEveryTimeSubtitle =>
      'Prikaži birač SIM kartice prije svakog poziva';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'SIM kartice nisu pronađene';

  @override
  String couldNotLoadSims(String error) {
    return 'Nije moguće učitati SIM kartice: $error';
  }

  @override
  String get allFavourites => 'Svi favoriti';

  @override
  String get allFavouritesSubtitle =>
      'Promijenite redoslijed, uklonite i dodajte iz kontakata';

  @override
  String get blockedNumbers => 'Blokirani brojevi';

  @override
  String get blockedNumbersSubtitle => 'Pregledajte i deblokirajte brojeve';

  @override
  String get soundsAndVibration => 'Zvukovi i vibracije';

  @override
  String get soundsAndVibrationSubtitle =>
      'Melodija zvona, vibracija, tonovi tastera za biranje brojeva';

  @override
  String couldNotOpenSettings(String error) {
    return 'Nije moguće otvoriti postavke: $error';
  }

  @override
  String get frequentlyContacted => 'Često kontaktirani';

  @override
  String get numberOfRecords => 'Broj zapisa';

  @override
  String get timePeriod => 'Vremenski period';

  @override
  String get periodLast24Hours => 'Zadnja 24 sata';

  @override
  String get periodLast24HoursSubtitle => 'Pozivi od prošlog dana';

  @override
  String get periodLast7Days => 'Poslednjih 7 dana';

  @override
  String get periodLast7DaysSubtitle => 'Pozivi od prošle sedmice';

  @override
  String get periodLast30Days => 'Poslednjih 30 dana';

  @override
  String get periodLast30DaysSubtitle => 'Pozivi od prošlog mjeseca';

  @override
  String get periodLast12Months => 'Poslednjih 12 meseci';

  @override
  String get periodLast12MonthsSubtitle => 'Pozivi iz prošle godine';

  @override
  String get periodAllTime => 'Sve vreme';

  @override
  String get periodAllTimeSubtitle => 'Cijela historija poziva';

  @override
  String get frequentMaxOff => 'Isključeno';

  @override
  String frequentMaxCount(int count) {
    return '$count kontakti';
  }

  @override
  String get torchBlink => 'Torch Blink';

  @override
  String get torchIncomingCall => 'Svetiljka za dolazni poziv';

  @override
  String get torchOutgoingCall => 'Svetiljka za odlazni poziv';

  @override
  String get torchOngoingCall => 'U toku poziv baklja';

  @override
  String get torchIncomingInterval => 'Interval dolaznog treptanja';

  @override
  String get torchOutgoingInterval => 'Interval odlaznog treptanja';

  @override
  String get torchOngoingInterval => 'Trenutni interval treptanja';

  @override
  String get torchOff => 'Isključeno';

  @override
  String get torchOffIncomingSubtitle => 'Nema lampe dok zvoni';

  @override
  String get torchOffOutgoingSubtitle => 'Nema lampe tokom biranja';

  @override
  String get torchOffOngoingSubtitle => 'Nema lampe tokom aktivnog poziva';

  @override
  String get torchFixedInterval => 'Fiksni interval';

  @override
  String get torchFixedIntervalSubtitle => 'Trepnite podešenom brzinom';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds treptati';
  }

  @override
  String get flashlightUnavailable => 'Lampa nije dostupna na ovom uređaju';

  @override
  String get glyphLights => 'Glyph Lights';

  @override
  String get glyphCallingAnimation => 'Animacija pozivanja glifova';

  @override
  String get glyphOngoingAnimation => 'Animacija poziva u toku';

  @override
  String get glyphNone => 'Nema';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Onemogućite Glyph lampice za odlazne pozive';

  @override
  String get glyphNoneInCallSubtitle =>
      'Onemogućite Glyph svjetla dok ste aktivni na pozivu';

  @override
  String get glyphBreathProgress => 'Breath & Progress';

  @override
  String get glyphBreathProgressSubtitle =>
      'Svjetla dišu dok se linija puni preko 65s';

  @override
  String get glyphAccumulate => 'Akumulirati';

  @override
  String get glyphAccumulateSubtitle =>
      'Akumulirajuća animacija na svjetlima C1-C4';

  @override
  String get glyphSingle => 'Single';

  @override
  String get glyphSingleSubtitle => 'Jedno svjetlo koje se kreće preko C1-C4';

  @override
  String get glyphBreath => 'Breath';

  @override
  String get glyphBreathSubtitle => 'Odaberite svjetla i brzinu';

  @override
  String get glyphSteady => 'Mirno';

  @override
  String get glyphSteadySubtitle => 'Odabrana svjetla ostaju upaljena';

  @override
  String get breathSettings => 'Postavke disanja';

  @override
  String get activeLights => 'Active Lights';

  @override
  String lightsCount(int count) {
    return '$count svjetla';
  }

  @override
  String get speedSettings => 'Postavke brzine';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms kašnjenje';
  }

  @override
  String get durationAndSpeed => 'Trajanje & Brzina';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s trajanje, ${interval}ms interval';
  }

  @override
  String get cancel => 'Otkaži';

  @override
  String get done => 'Gotovo';

  @override
  String get save => 'Sačuvaj';

  @override
  String get block => 'Blokiraj';

  @override
  String get delete => 'Izbriši';

  @override
  String get recents => 'Nedavno';

  @override
  String get contacts => 'Kontakti';

  @override
  String get hideFavouritesOnRecents => 'Sakrij favorite na Nedavnim';

  @override
  String get showFavouritesOnRecents => 'Prikaži favorite na Nedavnim';

  @override
  String get ongoingCall => 'Poziv u toku';

  @override
  String get setAsDefaultTitle => 'POSTAVI KAO\nDEFAULT';

  @override
  String get setAsDefaultBody =>
      'Da biste koristili Nothing Dialer, on mora biti postavljen kao vaša zadana aplikacija za telefon. Ovo vam omogućava da upravljate pozivima, pregledate historiju i koristite Glyph animacije.';

  @override
  String get setAsDefaultButton => 'POSTAVI KAO ZADANO';

  @override
  String get nothingDialerBrand => 'NIŠTA BIRAČ 1';

  @override
  String get favourites => 'Favoriti';

  @override
  String get addFavourite => 'Dodaj favorit';

  @override
  String get favouritesDrawerHint =>
      'Koristite meni za dodavanje kontakata. Dodirnite izvan fioke ili je prevucite prstom do zatvaranja. Označite kontakt zvjezdicom iz njegovih detalja ili dugo pritisnite poziv u Nedavnim.';

  @override
  String get menu => 'Meni';

  @override
  String get noFavouritesYet =>
      'Još nema favorita.\nOtvorite meni da dodate kontakt ili zvjezdicu.';

  @override
  String get contactsPermissionNeeded => 'Potrebna je dozvola za kontakte';

  @override
  String get chooseContact => 'Odaberite kontakt';

  @override
  String get noPhone => 'Nema telefona';

  @override
  String get pickNumber => 'Izaberite broj';

  @override
  String get contactHasNoPhone => 'Ovaj kontakt nema broj telefona';

  @override
  String get blockNumber => 'Broj bloka';

  @override
  String get enterPhoneNumber => 'Unesite broj telefona';

  @override
  String unblockedDisplay(String display) {
    return 'Deblokirano $display';
  }

  @override
  String get couldNotUnblockNumber => 'Nije moguće deblokirati broj';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked blokirano • $matched podudaranje';
  }

  @override
  String get contactsPermissionMissing =>
      'Nedostaje dozvola za kontakte. Dodirnite da popravite.';

  @override
  String get noBlockedNumbers => 'Nema blokiranih brojeva';

  @override
  String get unknownContact => 'Nepoznati kontakt';

  @override
  String get unblock => 'Deblokiraj';

  @override
  String get permissionNeeded => 'Potrebna dozvola';

  @override
  String get grantPhonePermission =>
      'Dajte dozvolu telefonu da vidite svoju historiju poziva.';

  @override
  String get grantContactsPermission =>
      'Dajte kontaktima dozvolu da vide vaš adresar.';

  @override
  String get openSettings => 'Otvorite Postavke';

  @override
  String get tryAgain => 'Pokušajte ponovo';

  @override
  String get couldNotLoadContacts => 'Nije moguće učitati kontakte';

  @override
  String get contactsLoadError => 'Nešto nije u redu čitajući vaš adresar.';

  @override
  String get noContactsFound => 'Nema pronađenih kontakata';

  @override
  String get contactsEmptySubtitle =>
      'Ovdje će se pojaviti kontakti s vašeg uređaja.';

  @override
  String get searchContacts => 'Pretražite kontakte…';

  @override
  String get searchRecentCalls => 'Pretražite nedavne pozive';

  @override
  String get fromContacts => 'Iz kontakata';

  @override
  String get recentsSearchSection => 'Nedavna pretraga';

  @override
  String get recentsSearchShowContacts => 'Prikaži kontakte u pretrazi';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Dok pretražujete Nedavno, također prikažite odgovarajuće osobe iz vašeg adresara ispod rezultata historije poziva.';

  @override
  String get voiceSearch => 'Glasovna pretraga';

  @override
  String get createNewContact => 'Kreirajte novi kontakt';

  @override
  String callError(String error) {
    return 'Greška u pozivu: $error';
  }

  @override
  String get noRecentCalls => 'Nema nedavnih poziva';

  @override
  String get callHistoryEmpty => 'Vaša historija poziva će se pojaviti ovdje.';

  @override
  String get loadMore => 'Učitaj više';

  @override
  String get frequentlyContactedHeader => 'Često kontaktirani';

  @override
  String get recentHistory => 'Nedavna istorija';

  @override
  String get noFavouritesRecentsHint =>
      'Još nema favorita. Označite kontakt zvjezdicom, dugo pritisnite poziv ili koristite karticu Favoriti.';

  @override
  String get copyNumber => 'Kopija broj';

  @override
  String get editNumberBeforeCall => 'Uredite broj prije poziva';

  @override
  String get removeFromFavourites => 'Ukloni iz favorita';

  @override
  String get addToFavourites => 'Dodaj u favorite';

  @override
  String get blockNumberQuestion => 'Blokirati broj?';

  @override
  String blockNumberConfirm(String number) {
    return 'Više nećete primati pozive ili poruke od $number.';
  }

  @override
  String get blocked => 'Blokirano';

  @override
  String get couldNotBlock => 'Nije moguće blokirati';

  @override
  String get contactNotOnDevice => 'Kontakt nije sačuvan na ovom uređaju';

  @override
  String get unblocked => 'Deblokirano';

  @override
  String get numberCopied => 'Broj kopiran';

  @override
  String get showLess => 'Prikaži manje';

  @override
  String get showAllTimes => 'Prikaži sva vremena';

  @override
  String mostRecent(String time) {
    return 'Najnovije · $time';
  }

  @override
  String get videoCall => 'Video poziv';

  @override
  String get couldNotPlaceVideoCall => 'Nije moguće uputiti video poziv';

  @override
  String get message => 'Poruka';

  @override
  String get couldNotOpenMessaging =>
      'Nije moguće otvoriti aplikaciju za razmjenu poruka';

  @override
  String get history => 'Istorija';

  @override
  String get viewContact => 'Prikaži kontakt';

  @override
  String get addToContact => 'Dodaj u kontakt';

  @override
  String get callTypeMissed => 'Promašen';

  @override
  String get callTypeRejected => 'Odbijeno';

  @override
  String get callTypeIncoming => 'Incoming';

  @override
  String get callTypeOutgoing => 'Odlazni';

  @override
  String get today => 'Danas';

  @override
  String get yesterday => 'Jučer';

  @override
  String get justNow => 'Upravo sada';

  @override
  String minutesAgo(int count) {
    return 'prije $count min';
  }

  @override
  String hoursAgo(int count) {
    return 'Prije $count sati';
  }

  @override
  String get filterAll => 'Sve';

  @override
  String get filterMissed => 'Promašen';

  @override
  String get filterContacts => 'Kontakti';

  @override
  String get filterNonContacts => 'Nekontakti';

  @override
  String get iconUpdated =>
      'Ikona je ažurirana. Vašem početnom ekranu može biti potrebno malo vremena da se osvježi.';

  @override
  String get iconSavedRelease =>
      'Izbor je sačuvan. Ikona početnog ekrana se ažurira u verzijama izdanja.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Nije moguće promijeniti ikonu: $error';
  }

  @override
  String get launcherClassicBlack => 'klasična (crna)';

  @override
  String get launcherLight => 'Light';

  @override
  String get launcherNothingRed => 'Ništa crveno';

  @override
  String get launcherDarkGrey => 'Tamno siva';

  @override
  String get launcherCream => 'Krema';

  @override
  String get launcherRetroPhone => 'Retro telefon';

  @override
  String get launcherRetroPhoneLight => 'Retro telefon (svijetli)';

  @override
  String get voiceSearchUnavailable =>
      'Glasovna pretraga nije dostupna na ovom uređaju.';

  @override
  String voiceSearchFailed(String error) {
    return 'Glasovna pretraga nije uspjela: $error';
  }

  @override
  String get customColor => 'Custom';

  @override
  String get selectColor => 'Odaberite boju';

  @override
  String get reset => 'Reset';

  @override
  String get simPickerTitle => 'Odaberite SIM';

  @override
  String get simChooseForCall => 'Odaberite SIM za ovaj poziv';

  @override
  String get defaultSimAsk => 'Pitaj svaki put';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Kontakt detalji';

  @override
  String get call => 'Zovi';

  @override
  String get share => 'Dijeli';

  @override
  String get favourite => 'Favorite';

  @override
  String get unfavourite => 'Neomiljeno';

  @override
  String get blockContact => 'Blokiraj kontakt';

  @override
  String get unblockContact => 'Deblokirajte kontakt';

  @override
  String get deleteContact => 'Izbriši kontakt';

  @override
  String get phone => 'Telefon';

  @override
  String get email => 'Email';

  @override
  String get ringtone => 'Melodija zvona';

  @override
  String get defaultRingtone => 'Default';

  @override
  String get simForContact => 'SIM za ovaj kontakt';

  @override
  String get callHistoryTitle => 'Istorija poziva';

  @override
  String get noCallsWithNumber => 'Nema poziva sa ovog broja';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Glyph animacija';

  @override
  String get inCallGlyphAnimationStyle => 'Glif animacija u pozivu';

  @override
  String get recordsOff => 'Isključeno';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Default SIM';

  @override
  String get nothingPhoneOnly => 'Ništa Samo telefon';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Funkcije glifa zahtijevaju telefon sa ničim';

  @override
  String get custom => 'Custom';

  @override
  String presetColorHex(String hex) {
    return 'Unaprijed postavljeno · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Prilagođeno · $hex';
  }

  @override
  String get oneContact => '1 kontakt';

  @override
  String upToContacts(int count) {
    return 'Do $count kontakata';
  }

  @override
  String get answerButtonTapSubtitle => 'Dodirnite dugme da odgovorite';

  @override
  String get filterCalls => 'Filtrirajte pozive';

  @override
  String get filterTooltip => 'Filter';

  @override
  String get settingsTooltip => 'Postavke';

  @override
  String get filterAllSubtitle => 'Cijeli dnevnik poziva';

  @override
  String get filterMissedSubtitle => 'Propušteno i odbijeno';

  @override
  String get filterContactsSubtitle => 'Pozivi povezani sa sačuvanim kontaktom';

  @override
  String get filterNonContactsSubtitle => 'Brojevi koji nisu u vašem adresaru';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Poziv u toku: $detail';
  }

  @override
  String get defaultSimForCalls => 'Zadani SIM za pozive';

  @override
  String get blinkInterval => 'Interval treptanja';

  @override
  String get close => 'Zatvori';

  @override
  String get frequentlyContactedInfoBody =>
      'Prikazuje vaše najčešće pozivane brojeve telefona na vrhu kartice Nedavno, na osnovu broja dolaznih, odlaznih, propuštenih ili odbijenih poziva sa svakim brojem u vremenskom periodu koji odaberete.\n\nBroj zapisa: postavite na 0 da biste ovo isključili. Koristite 1–20 da prikažete toliko najboljih kontakata.\n\nVremenski period se primjenjuje samo kada je prikazan barem jedan kontakt.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count svjetla, ${ms}ms brzina';
  }

  @override
  String get deleteContactQuestion => 'Izbrisati kontakt?';

  @override
  String get deleteContactBody =>
      'Ovaj kontakt će biti trajno izbrisan s vašeg uređaja.';

  @override
  String get blockContactQuestion => 'Blokirati kontakt?';

  @override
  String get unblockContactQuestion => 'Deblokirati kontakt?';

  @override
  String get blockContactBody =>
      'Više nećete primati pozive ili poruke od ovog kontakta.';

  @override
  String get unblockContactBody =>
      'Počećete da primate pozive i poruke od ovog kontakta.';

  @override
  String get contactBlocked => 'Kontakt blokiran';

  @override
  String get contactUnblocked => 'Kontakt je deblokiran';

  @override
  String get noPhoneNumbersToBlock => 'Nema brojeva telefona za blokiranje';

  @override
  String get simSameAsSystem => 'Isto kao sistem';

  @override
  String get simSameAsSystemSubtitle => 'Prati Default SIM u Postavkama';

  @override
  String get simAskEveryTimeForContact =>
      'Uvijek prikaži birač SIM kartice za ovaj kontakt';

  @override
  String get ringtoneSetForContact =>
      'Melodija zvona postavljena globalno za ovaj kontakt';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Odabir zvona nije uspio: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Greška: $error';
  }

  @override
  String get noCallHistoryFound => 'Nije pronađena historija poziva';

  @override
  String get speedDialVoicemail => 'Brzo biranje: Govorna pošta';

  @override
  String shareContactSubject(String name) {
    return 'Kontakt: $name';
  }

  @override
  String get contactInfo => 'Kontakt informacije';

  @override
  String get dontAskAgainSim => 'Ne pitaj ponovo';

  @override
  String get simDontAskAgainSubtitle =>
      'Koristite ovaj SIM kao zadanu (promijenite u Postavkama)';

  @override
  String get addContact => 'Dodaj kontakt';

  @override
  String get createContact => 'Kreirajte kontakt';

  @override
  String get paste => 'Zalijepi';

  @override
  String get clear => 'Jasno';

  @override
  String get returnToCall => 'Vratite se na poziv';

  @override
  String get numberOfRecordsTitle => 'Broj zapisa';

  @override
  String get recordsPickerSubtitle =>
      'Koliko često kontaktiranih unosa za prikaz (0 = isključeno)';

  @override
  String get torchInfoTitle => 'Treptanje baklje';

  @override
  String get torchInfoBody =>
      'Treperi blic kamere tokom dolaznih, odlaznih ili tekućih poziva. Neovisno o Glyph svjetlima.';

  @override
  String get glyphMapTitle => 'Izgled glifa';

  @override
  String get glyphMapBody =>
      'Ništa Telefon 1 Glyph LED zone. Odlazne animacije i animacije tokom poziva koriste ove kanale.';

  @override
  String get answerMethodTitle => 'Metoda odgovora';

  @override
  String get glyphOutgoingCallStyleTitle => 'Stil odlaznog poziva';

  @override
  String get glyphInCallAnimationTitle => 'Glif animacija u pozivu';

  @override
  String get themePickerTitle => 'Tema';

  @override
  String get torchIncomingTitle => 'Svetiljka za dolazni poziv';

  @override
  String get torchOutgoingTitle => 'Svetiljka za odlazni poziv';

  @override
  String get torchOngoingTitle => 'U toku poziv baklja';

  @override
  String get timePeriodTitle => 'Vremenski period';

  @override
  String get ok => 'OK';

  @override
  String get confirmDeleteCall => 'Izbrisati ovaj poziv iz historije?';

  @override
  String get confirmDeleteAllCalls => 'Izbrisati sve pozive s ovim brojem?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Pošaljite poruku';

  @override
  String get addToExistingContactAction => 'Dodaj kontaktu';

  @override
  String get mobileLabel => 'Mobilni';

  @override
  String get callingSimForContactTitle =>
      'Pozivanje SIM kartice za ovaj kontakt';

  @override
  String get contactSettings => 'Postavke kontakta';

  @override
  String get setCallingSim => 'Podesite SIM za pozivanje';

  @override
  String get contactRingtone => 'Kontakt zvona';

  @override
  String get shareContact => 'Podijelite kontakt';

  @override
  String get blockNumbers => 'Blokirajte brojeve';

  @override
  String get unblockNumbers => 'Deblokirajte brojeve';

  @override
  String get connectedApps => 'Povezane aplikacije';

  @override
  String get simNotSet => 'Nije postavljeno';

  @override
  String get ringtoneDefault => 'Default';

  @override
  String get customRingtone => 'Custom';

  @override
  String get aboutSection => 'O';

  @override
  String get aboutFeedbackSection => 'O i povratne informacije';

  @override
  String get aboutDescription =>
      'Nothing Dialer je otvorenog koda. Ako ste programer, dobrodošli ste da istražite kod i doprinesete.';

  @override
  String get aboutViewSource => 'Pogledajte na GitHubu';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Nije moguće otvoriti vezu';

  @override
  String get reviewSection => 'Pregled';

  @override
  String get reviewDescription =>
      'Uživate u Nothing Dialeru? Vaša ocjena na Google Playu pomaže drugima da pronađu aplikaciju.';

  @override
  String get reviewRateOnPlay => 'Ocijenite na Google Playu';

  @override
  String get reviewRateOnPlaySubtitle => 'Opens the Play Store listing';

  @override
  String get reviewCouldNotOpen => 'Nije moguće otvoriti Google Play';

  @override
  String get breathSpeed => 'Brzina disanja';

  @override
  String get breathSpeedBlinkHint => 'Niže = treptaj, više = sporo dah';

  @override
  String get speedSliderHint => 'Niže = brže, više = sporije';

  @override
  String get swatchDefault => 'Default';

  @override
  String get customAccentColorPicker => 'Prilagođena boja akcenta';

  @override
  String get customLightBackgroundPicker => 'Prilagođena svijetla pozadina';

  @override
  String get customDarkBackgroundPicker => 'Prilagođena tamna pozadina';

  @override
  String get customCallBackgroundPicker => 'Prilagođena pozadina poziva';

  @override
  String get ongoingCallStyleTitle => 'Stil poziva u toku';

  @override
  String get glyphMapUnavailable => 'Karta glifa nije dostupna';

  @override
  String get animationDelayRange => 'Kašnjenje animacije (1s - 10s)';

  @override
  String get animationDelayRangeSingle => 'Kašnjenje animacije (0,1 s - 10 s)';

  @override
  String get inCallMute => 'Mute';

  @override
  String get inCallKeypad => 'Tastatura';

  @override
  String get inCallSpeaker => 'Zvučnik';

  @override
  String get inCallMore => 'Više';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Telefon';

  @override
  String get inCallAddCall => 'Dodaj poziv';

  @override
  String get inCallChangeSim => 'Promijeni SIM';

  @override
  String get inCallDecline => 'Odbij';

  @override
  String get inCallAnswer => 'Odgovori';

  @override
  String get inCallMessage => 'Poruka';

  @override
  String get inCallCalling => 'Pozivanje…';

  @override
  String get inCallIncoming => 'Dolazni poziv';

  @override
  String get inCallSelectSim => 'Odaberite SIM…';

  @override
  String get inCallSwitchingSim => 'Zamjena SIM…';

  @override
  String get inCallCallEnded => 'Poziv je završen';

  @override
  String inCallCallingVia(String sim) {
    return 'Pozivanje putem $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Pozivanje putem <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Odaberite SIM za ovaj poziv';

  @override
  String get inCallDragAnswerDecline =>
      'Prevucite udesno da odgovorite · Prevucite ulevo da odbijete';

  @override
  String inCallMobileNumber(String number) {
    return 'Mobitel $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (Trenutno)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Pozovite putem <b>$sim</b> od';
  }

  @override
  String get inCallCallFrom => 'Call from';

  @override
  String get inCallUnknown => 'Nepoznato';

  @override
  String get selectContactRingtone => 'Odaberite melodiju zvona kontakta';

  @override
  String get speakToSearchPrompt => 'Govorite za pretragu';

  @override
  String get phonePermissionRequired => 'Potrebna je dozvola za telefon';

  @override
  String callFailed(String error) {
    return 'Poziv nije uspio: $error';
  }

  @override
  String get callPermissionDenied => 'Dozvola za poziv je odbijena';

  @override
  String get alreadyDefaultDialer => 'Već postavljeno kao zadani brojčanik';

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
