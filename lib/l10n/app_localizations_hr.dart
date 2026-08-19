// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get appTitle => 'Ništa Dialer';

  @override
  String get settings => 'postavke';

  @override
  String get settingsSearchHint => 'Postavke pretraživanja';

  @override
  String get settingsSearchNoResults => 'Nema pronađenih postavki';

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
  String get themeSystemDefault => 'Zadane postavke sustava';

  @override
  String get themeLight => 'Svjetlo';

  @override
  String get themeDark => 'tamno';

  @override
  String get themeFollowSystem => 'Slijedite postavke sustava';

  @override
  String get themeAlwaysLight => 'Uvijek koristite svijetlu temu';

  @override
  String get themeAlwaysDark => 'Uvijek koristite tamnu temu';

  @override
  String get language => 'Jezik';

  @override
  String get languageDeviceDefault => 'Zadana vrijednost uređaja';

  @override
  String get languagePickerTitle => 'Jezik';

  @override
  String get languageSearchHint => 'Traži jezike';

  @override
  String get font => 'Font';

  @override
  String get fontSystem => 'Zadana vrijednost sustava';

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
      'Preuzimanje fonta nije uspjelo. Provjerite vezu i pokušajte ponovno.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Font';

  @override
  String get fontPreviewSample => 'Ništa Dialer';

  @override
  String get fontAppWide => 'Font aplikacije';

  @override
  String get fontApplyTo => 'Primijeni na';

  @override
  String get fontApplyEntireApp => 'Cijela aplikacija';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Isti font posvuda, uključujući i tijekom poziva';

  @override
  String get fontApplyTitlesOnly => 'Naslovi i zaglavlja';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Samo veliki naslovi i zaglavlja odjeljaka';

  @override
  String get fontApplyCustomize => 'Prilagodite';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Odaberite font po zaslonu i vrsti teksta';

  @override
  String get fontCustomizeSection => 'Prilagodite prema zaslonu';

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
  String get fontRoleButton => 'Gumbi';

  @override
  String get fontRoleDialKey => 'Tipke za biranje brojeva';

  @override
  String get fontSurfaceRecents => 'Nedavni';

  @override
  String get fontSurfaceContacts => 'Kontakti';

  @override
  String get fontSurfaceSettings => 'postavke';

  @override
  String get fontSurfaceDialpad => 'Brojčanik';

  @override
  String get fontSurfaceShell => 'Navigacija';

  @override
  String get fontSurfaceDefaultDialer => 'Zadani upit za biranje';

  @override
  String get fontSurfaceFavourites => 'Favoriti';

  @override
  String get fontSurfaceBlocked => 'Blokirani brojevi';

  @override
  String get fontSurfaceContactDetail => 'Kontakt detalji';

  @override
  String get fontSurfaceCallHistory => 'Povijest poziva';

  @override
  String get fontSurfaceSheets => 'Listovi i sakupljači';

  @override
  String get fontSurfaceInCall => 'Zaslon tijekom poziva';

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
  String get lightAccent => 'Svijetli naglasak';

  @override
  String get darkBackground => 'Tamna pozadina';

  @override
  String get darkAccent => 'Tamni naglasak';

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
  String get answerMethod => 'Način odgovora';

  @override
  String get answerSlide => 'Klizni za odgovor';

  @override
  String get answerSlideSubtitle =>
      'Prijeđite prstom lijevo/desno na traci, kao Google Phone';

  @override
  String get answerButton => 'Dodirni gumb';

  @override
  String get answerButtonSubtitle => 'Dodirnite gumbe za odgovor ili odbijanje';

  @override
  String get answerHuawei => 'Huawei stil';

  @override
  String get answerHuaweiSubtitle =>
      'Povucite krug do zelenog telefona da odgovorite';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — povucite na zeleno/crveno';

  @override
  String get calling => 'zovem';

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
  String get defaultSim => 'Zadana SIM kartica';

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
  String get askEveryTime => 'Pitajte svaki put';

  @override
  String get askEveryTimeSubtitle =>
      'Prikaži birač SIM kartice prije svakog poziva';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Nije pronađena nijedna SIM kartica';

  @override
  String couldNotLoadSims(String error) {
    return 'Nije moguće učitati SIM kartice: $error';
  }

  @override
  String get allFavourites => 'Svi favoriti';

  @override
  String get allFavouritesSubtitle =>
      'Promjena redoslijeda, uklanjanje i dodavanje iz kontakata';

  @override
  String get blockedNumbers => 'Blokirani brojevi';

  @override
  String get blockedNumbersSubtitle => 'Pregledajte i deblokirajte brojeve';

  @override
  String get soundsAndVibration => 'Zvukovi i vibracije';

  @override
  String get soundsAndVibrationSubtitle =>
      'Melodija zvona, vibracija, tonovi tipkovnice';

  @override
  String couldNotOpenSettings(String error) {
    return 'Ne mogu otvoriti postavke: $error';
  }

  @override
  String get frequentlyContacted => 'Često kontaktirani';

  @override
  String get numberOfRecords => 'Broj zapisa';

  @override
  String get timePeriod => 'Vremensko razdoblje';

  @override
  String get periodLast24Hours => 'Posljednja 24 sata';

  @override
  String get periodLast24HoursSubtitle => 'Pozivi od prošlog dana';

  @override
  String get periodLast7Days => 'Zadnjih 7 dana';

  @override
  String get periodLast7DaysSubtitle => 'Pozivi od prošlog tjedna';

  @override
  String get periodLast30Days => 'Zadnjih 30 dana';

  @override
  String get periodLast30DaysSubtitle => 'Pozivi iz prošlog mjeseca';

  @override
  String get periodLast12Months => 'Zadnjih 12 mjeseci';

  @override
  String get periodLast12MonthsSubtitle => 'Pozivi iz prošle godine';

  @override
  String get periodAllTime => 'Sve vrijeme';

  @override
  String get periodAllTimeSubtitle => 'Cijela povijest poziva';

  @override
  String get frequentMaxOff => 'Isključeno';

  @override
  String frequentMaxCount(int count) {
    return '$count kontakti';
  }

  @override
  String get torchBlink => 'Treptaj svjetiljke';

  @override
  String get torchIncomingCall => 'Baklja za dolazni poziv';

  @override
  String get torchOutgoingCall => 'Svjetiljka za odlazne pozive';

  @override
  String get torchOngoingCall => 'Baklja poziva u tijeku';

  @override
  String get torchIncomingInterval => 'Dolazni interval treptanja';

  @override
  String get torchOutgoingInterval => 'Odlazni interval treptanja';

  @override
  String get torchOngoingInterval => 'Trajni interval treptanja';

  @override
  String get torchOff => 'Isključeno';

  @override
  String get torchOffIncomingSubtitle => 'Nema baklje dok zvoni';

  @override
  String get torchOffOutgoingSubtitle => 'Nema svjetiljke tijekom biranja';

  @override
  String get torchOffOngoingSubtitle =>
      'Nema svjetiljke tijekom aktivnog poziva';

  @override
  String get torchFixedInterval => 'Fiksni interval';

  @override
  String get torchFixedIntervalSubtitle => 'Trepnite određenom brzinom';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds treptaj';
  }

  @override
  String get flashlightUnavailable =>
      'Svjetiljka nije dostupna na ovom uređaju';

  @override
  String get glyphLights => 'Svjetla glifa';

  @override
  String get glyphCallingAnimation => 'Animacija pozivanja glifa';

  @override
  String get glyphOngoingAnimation => 'Glif animacije poziva u tijeku';

  @override
  String get glyphNone => 'Nijedan';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Onemogući svjetla glifa za odlazne pozive';

  @override
  String get glyphNoneInCallSubtitle =>
      'Onemogućite svjetla glifa dok ste aktivni na pozivu';

  @override
  String get glyphBreathProgress => 'Dah i napredak';

  @override
  String get glyphBreathProgressSubtitle =>
      'Svjetla dišu dok se linija puni više od 65 s';

  @override
  String get glyphAccumulate => 'Akumulirati';

  @override
  String get glyphAccumulateSubtitle =>
      'Akumulacija animacije na svjetlima C1-C4';

  @override
  String get glyphSingle => 'Singl';

  @override
  String get glyphSingleSubtitle => 'Jedno svjetlo koje se kreće preko C1-C4';

  @override
  String get glyphBreath => 'Dah';

  @override
  String get glyphBreathSubtitle => 'Odaberite svjetla i brzinu';

  @override
  String get glyphSteady => 'Postojan';

  @override
  String get glyphSteadySubtitle => 'Odabrana svjetla ostaju uključena';

  @override
  String get breathSettings => 'Postavke disanja';

  @override
  String get activeLights => 'Aktivna svjetla';

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
  String get durationAndSpeed => 'Trajanje i brzina';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s trajanje, ${interval}ms interval';
  }

  @override
  String get cancel => 'Otkazati';

  @override
  String get done => 'Gotovo';

  @override
  String get save => 'Uštedjeti';

  @override
  String get block => 'Blokirati';

  @override
  String get delete => 'Izbrisati';

  @override
  String get recents => 'Nedavni';

  @override
  String get contacts => 'Kontakti';

  @override
  String get hideFavouritesOnRecents => 'Sakrij favorite na Nedavnim';

  @override
  String get showFavouritesOnRecents => 'Prikaži favorite na Nedavnim';

  @override
  String get ongoingCall => 'Poziv u tijeku';

  @override
  String get setAsDefaultTitle => 'POSTAVITE KAO\nZADANO';

  @override
  String get setAsDefaultBody =>
      'Da biste koristili Nothing Dialer, morate ga postaviti kao zadanu telefonsku aplikaciju. To vam omogućuje upravljanje pozivima, pregled povijesti i korištenje Glyph animacija.';

  @override
  String get setAsDefaultButton => 'POSTAVITE KAO ZADANO';

  @override
  String get nothingDialerBrand => 'BIRANJE NIŠTA 1';

  @override
  String get favourites => 'Favoriti';

  @override
  String get addFavourite => 'Dodaj favorit';

  @override
  String get favouritesDrawerHint =>
      'Koristite izbornik za dodavanje kontakata. Dodirnite izvan ladice ili je zatvorite. Označite kontakt zvjezdicom iz njegovih detalja ili dugo pritisnite poziv u Nedavnim.';

  @override
  String get menu => 'Jelovnik';

  @override
  String get noFavouritesYet =>
      'Još nema favorita.\nOtvorite izbornik da biste ga dodali ili označite kontakt zvjezdicom.';

  @override
  String get contactsPermissionNeeded => 'Potrebna je dozvola za kontakte';

  @override
  String get chooseContact => 'Odaberite kontakt';

  @override
  String get noPhone => 'Nema telefona';

  @override
  String get pickNumber => 'Odaberite broj';

  @override
  String get contactHasNoPhone => 'Ovaj kontakt nema telefonski broj';

  @override
  String get blockNumber => 'Broj bloka';

  @override
  String get enterPhoneNumber => 'Unesite broj telefona';

  @override
  String unblockedDisplay(String display) {
    return 'Deblokiran $display';
  }

  @override
  String get couldNotUnblockNumber => 'Nije moguće deblokirati broj';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked blokirano • $matched podudaranje';
  }

  @override
  String get contactsPermissionMissing =>
      'Nedostaje dopuštenje za kontakte. Dodirnite za popravak.';

  @override
  String get noBlockedNumbers => 'Nema blokiranih brojeva';

  @override
  String get unknownContact => 'Nepoznat kontakt';

  @override
  String get unblock => 'Odblokiraj';

  @override
  String get permissionNeeded => 'Potrebno dopuštenje';

  @override
  String get grantPhonePermission =>
      'Dopustite telefonu da vidi vašu povijest poziva.';

  @override
  String get grantContactsPermission =>
      'Dopustite kontaktima da vide vaš adresar.';

  @override
  String get openSettings => 'Otvorite postavke';

  @override
  String get tryAgain => 'Pokušajte ponovno';

  @override
  String get couldNotLoadContacts => 'Nije moguće učitati kontakte';

  @override
  String get contactsLoadError =>
      'Nešto je pošlo po zlu prilikom čitanja vašeg adresara.';

  @override
  String get noContactsFound => 'Nema pronađenih kontakata';

  @override
  String get contactsEmptySubtitle =>
      'Ovdje će se pojaviti kontakti s vašeg uređaja.';

  @override
  String get searchContacts => 'Traži kontakte…';

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
      'Dok tražite Nedavne, također prikažite podudarne osobe iz vašeg adresara ispod rezultata povijesti poziva.';

  @override
  String get voiceSearch => 'Glasovno pretraživanje';

  @override
  String get createNewContact => 'Stvorite novi kontakt';

  @override
  String callError(String error) {
    return 'Pogreška poziva: $error';
  }

  @override
  String get noRecentCalls => 'Nema nedavnih poziva';

  @override
  String get callHistoryEmpty => 'Ovdje će se pojaviti vaša povijest poziva.';

  @override
  String get loadMore => 'Učitaj više';

  @override
  String get frequentlyContactedHeader => 'Često kontaktirani';

  @override
  String get recentHistory => 'Nedavna povijest';

  @override
  String get noFavouritesRecentsHint =>
      'Još nema favorita. Označite kontakt zvjezdicom, dugo pritisnite poziv ili upotrijebite karticu Favoriti.';

  @override
  String get copyNumber => 'Broj kopije';

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
    return 'Više nećete primati pozive ni poruke s $number.';
  }

  @override
  String get blocked => 'Blokiran';

  @override
  String get couldNotBlock => 'Nije moguće blokirati';

  @override
  String get contactNotOnDevice => 'Kontakt nije spremljen na ovom uređaju';

  @override
  String get unblocked => 'deblokiran';

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
  String get couldNotPlaceVideoCall => 'Nije moguće uspostaviti videopoziv';

  @override
  String get message => 'Poruka';

  @override
  String get couldNotOpenMessaging =>
      'Nije moguće otvoriti aplikaciju za razmjenu poruka';

  @override
  String get history => 'Povijest';

  @override
  String get viewContact => 'Prikaži kontakt';

  @override
  String get addToContact => 'Dodaj u kontakt';

  @override
  String get callTypeMissed => 'Promašeno';

  @override
  String get callTypeRejected => 'Odbijen';

  @override
  String get callTypeIncoming => 'Dolazni';

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
    return 'Prije $count min';
  }

  @override
  String hoursAgo(int count) {
    return 'prije $count h';
  }

  @override
  String get filterAll => 'Sve';

  @override
  String get filterMissed => 'Promašeno';

  @override
  String get filterContacts => 'Kontakti';

  @override
  String get filterNonContacts => 'Nekontakti';

  @override
  String get iconUpdated =>
      'Ikona ažurirana. Vašem početnom zaslonu može trebati trenutak da se osvježi.';

  @override
  String get iconSavedRelease =>
      'Izbor spremljen. Ikona početnog zaslona ažurira se u verzijama izdanja.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Nije moguće promijeniti ikonu: $error';
  }

  @override
  String get launcherClassicBlack => 'klasična (crna)';

  @override
  String get launcherLight => 'Svjetlo';

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
      'Glasovno pretraživanje nije dostupno na ovom uređaju.';

  @override
  String voiceSearchFailed(String error) {
    return 'Glasovno pretraživanje nije uspjelo: $error';
  }

  @override
  String get customColor => 'Običaj';

  @override
  String get selectColor => 'Odaberite boju';

  @override
  String get reset => 'Resetiraj';

  @override
  String get simPickerTitle => 'Odaberite SIM';

  @override
  String get simChooseForCall => 'Odaberite SIM za ovaj poziv';

  @override
  String get defaultSimAsk => 'Pitajte svaki put';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Kontakt podaci';

  @override
  String get call => 'Poziv';

  @override
  String get share => 'Udio';

  @override
  String get favourite => 'omiljena';

  @override
  String get unfavourite => 'Neomiljeno';

  @override
  String get blockContact => 'Blokiraj kontakt';

  @override
  String get unblockContact => 'Odblokiraj kontakt';

  @override
  String get deleteContact => 'Izbriši kontakt';

  @override
  String get phone => 'Telefon';

  @override
  String get email => 'E-mail';

  @override
  String get ringtone => 'Melodija zvona';

  @override
  String get defaultRingtone => 'Zadano';

  @override
  String get simForContact => 'SIM za ovaj kontakt';

  @override
  String get callHistoryTitle => 'Povijest poziva';

  @override
  String get noCallsWithNumber => 'Nema poziva s ovog broja';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Animacija glifa';

  @override
  String get inCallGlyphAnimationStyle => 'Glyph animacija tijekom poziva';

  @override
  String get recordsOff => 'Isključeno';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Zadana SIM kartica';

  @override
  String get nothingPhoneOnly => 'Ništa Samo telefon';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Značajke glifa zahtijevaju Nothing Phone';

  @override
  String get custom => 'Običaj';

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
  String get answerButtonTapSubtitle => 'Dodirnite gumb za odgovor';

  @override
  String get filterCalls => 'Filtrirajte pozive';

  @override
  String get filterTooltip => 'Filter';

  @override
  String get settingsTooltip => 'postavke';

  @override
  String get filterAllSubtitle => 'Cijeli zapisnik poziva';

  @override
  String get filterMissedSubtitle => 'Propušteno i odbijeno';

  @override
  String get filterContactsSubtitle =>
      'Pozivi povezani sa spremljenim kontaktom';

  @override
  String get filterNonContactsSubtitle => 'Brojevi nisu u vašem adresaru';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Poziv u tijeku: $detail';
  }

  @override
  String get defaultSimForCalls => 'Zadana SIM kartica za pozive';

  @override
  String get blinkInterval => 'Interval treptaja';

  @override
  String get close => 'Zatvoriti';

  @override
  String get frequentlyContactedInfoBody =>
      'Prikazuje vaše telefonske brojeve koje ste najčešće pozivali na vrhu kartice Nedavno, na temelju broja dolaznih, odlaznih, propuštenih ili odbijenih poziva sa svakim brojem u vremenskom razdoblju koje odaberete.\n\nBroj zapisa: postavite na 0 da biste ovo isključili. Upotrijebite 1–20 da biste prikazali toliko najboljih kontakata.\n\nRazdoblje se primjenjuje samo kada je prikazan barem jedan kontakt.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count svjetla, ${ms}ms brzina';
  }

  @override
  String get deleteContactQuestion => 'Izbrisati kontakt?';

  @override
  String get deleteContactBody =>
      'Ovaj će kontakt biti trajno izbrisan s vašeg uređaja.';

  @override
  String get blockContactQuestion => 'Blokirati kontakt?';

  @override
  String get unblockContactQuestion => 'Deblokirati kontakt?';

  @override
  String get blockContactBody =>
      'Od ovog kontakta više nećete primati pozive ni poruke.';

  @override
  String get unblockContactBody =>
      'Počet ćete primati pozive i poruke od ovog kontakta.';

  @override
  String get contactBlocked => 'Kontakt blokiran';

  @override
  String get contactUnblocked => 'Kontakt deblokiran';

  @override
  String get noPhoneNumbersToBlock => 'Nema telefonskih brojeva za blokiranje';

  @override
  String get simSameAsSystem => 'Isto kao i sustav';

  @override
  String get simSameAsSystemSubtitle => 'Slijedi zadani SIM u postavkama';

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
    return 'Nije uspjelo odabrati melodiju zvona: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Pogreška: $error';
  }

  @override
  String get noCallHistoryFound => 'Nije pronađena povijest poziva';

  @override
  String get speedDialVoicemail => 'Brzo biranje: Govorna pošta';

  @override
  String shareContactSubject(String name) {
    return 'Kontakt: $name';
  }

  @override
  String get contactInfo => 'Kontakt podaci';

  @override
  String get dontAskAgainSim => 'Ne pitaj više';

  @override
  String get simDontAskAgainSubtitle =>
      'Koristite ovaj SIM kao zadani (promijenite u postavkama)';

  @override
  String get addContact => 'Dodaj kontakt';

  @override
  String get createContact => 'Stvorite kontakt';

  @override
  String get paste => 'Zalijepiti';

  @override
  String get clear => 'Jasan';

  @override
  String get returnToCall => 'Povratak na poziv';

  @override
  String get numberOfRecordsTitle => 'Broj zapisa';

  @override
  String get recordsPickerSubtitle =>
      'Koliko često kontaktiranih unosa za prikaz (0 = isključeno)';

  @override
  String get torchInfoTitle => 'Treptaj baklje';

  @override
  String get torchInfoBody =>
      'Trepće bljeskalicom kamere tijekom dolaznih, odlaznih ili tekućih poziva. Neovisno o Glyph svjetlima.';

  @override
  String get glyphMapTitle => 'Raspored glifa';

  @override
  String get glyphMapBody =>
      'Ništa Telefon 1 Glif LED zone. Ove kanale koriste odlazne animacije i animacije tijekom poziva.';

  @override
  String get answerMethodTitle => 'Način odgovora';

  @override
  String get glyphOutgoingCallStyleTitle => 'Stil odlaznog poziva';

  @override
  String get glyphInCallAnimationTitle => 'Animacija glifa tijekom poziva';

  @override
  String get themePickerTitle => 'Tema';

  @override
  String get torchIncomingTitle => 'Baklja za dolazni poziv';

  @override
  String get torchOutgoingTitle => 'Svjetiljka za odlazne pozive';

  @override
  String get torchOngoingTitle => 'Baklja poziva u tijeku';

  @override
  String get timePeriodTitle => 'Vremensko razdoblje';

  @override
  String get ok => 'OK';

  @override
  String get confirmDeleteCall => 'Izbrisati ovaj poziv iz povijesti?';

  @override
  String get confirmDeleteAllCalls => 'Izbrisati sve pozive s ovim brojem?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Pošaljite poruku';

  @override
  String get addToExistingContactAction => 'Dodaj u kontakt';

  @override
  String get mobileLabel => 'Mobilni';

  @override
  String get callingSimForContactTitle => 'Poziva se SIM za ovaj kontakt';

  @override
  String get contactSettings => 'Postavke kontakta';

  @override
  String get setCallingSim => 'Postavite SIM za pozivanje';

  @override
  String get contactRingtone => 'Zvono kontakta';

  @override
  String get shareContact => 'Podijeli kontakt';

  @override
  String get blockNumbers => 'Blokiraj brojeve';

  @override
  String get unblockNumbers => 'Deblokirajte brojeve';

  @override
  String get connectedApps => 'Povezane aplikacije';

  @override
  String get simNotSet => 'Nije postavljeno';

  @override
  String get ringtoneDefault => 'Zadano';

  @override
  String get customRingtone => 'Običaj';

  @override
  String get aboutSection => 'Oko';

  @override
  String get aboutFeedbackSection => 'O & povratne informacije';

  @override
  String get aboutDescription =>
      'Nothing Dialer je otvorenog koda. Ako ste programer, slobodno možete istražiti kod i dati svoj doprinos.';

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
  String get breathSpeedBlinkHint => 'Niže = treptaj, više = sporo disanje';

  @override
  String get speedSliderHint => 'Niže = brže, više = sporije';

  @override
  String get swatchDefault => 'Zadano';

  @override
  String get customAccentColorPicker => 'Prilagođena boja akcenta';

  @override
  String get customLightBackgroundPicker => 'Prilagođena svijetla pozadina';

  @override
  String get customDarkBackgroundPicker => 'Prilagođena tamna pozadina';

  @override
  String get customCallBackgroundPicker => 'Prilagođena pozadina poziva';

  @override
  String get ongoingCallStyleTitle => 'Stil tekućeg poziva';

  @override
  String get glyphMapUnavailable => 'Mapa glifa nije dostupna';

  @override
  String get animationDelayRange => 'Odgoda animacije (1 s - 10 s)';

  @override
  String get animationDelayRangeSingle => 'Odgoda animacije (0,1 s - 10 s)';

  @override
  String get inCallMute => 'Mute';

  @override
  String get inCallKeypad => 'Tipkovnica';

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
  String get inCallDecline => 'Pad';

  @override
  String get inCallAnswer => 'Odgovor';

  @override
  String get inCallMessage => 'Poruka';

  @override
  String get inCallCalling => 'Pozivanje…';

  @override
  String get inCallIncoming => 'Dolazni poziv';

  @override
  String get inCallSelectSim => 'Odaberite SIM…';

  @override
  String get inCallSwitchingSim => 'Promjena SIM-a…';

  @override
  String get inCallCallEnded => 'Poziv završen';

  @override
  String inCallCallingVia(String sim) {
    return 'Zvanje putem $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Zvanje putem <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Odaberite SIM za ovaj poziv';

  @override
  String get inCallDragAnswerDecline =>
      'Povucite desno za odgovor · Povucite lijevo za odbijanje';

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
    return 'Nazovi putem <b>$sim</b> od';
  }

  @override
  String get inCallCallFrom => 'Poziv od';

  @override
  String get inCallUnknown => 'Nepoznato';

  @override
  String get selectContactRingtone => 'Odaberite melodiju zvona kontakta';

  @override
  String get speakToSearchPrompt => 'Govorite za pretraživanje';

  @override
  String get phonePermissionRequired => 'Potrebno dopuštenje telefona';

  @override
  String callFailed(String error) {
    return 'Poziv nije uspio: $error';
  }

  @override
  String get callPermissionDenied => 'Dopuštenje za poziv odbijeno';

  @override
  String get alreadyDefaultDialer =>
      'Već je postavljeno kao zadani birač brojeva';

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
