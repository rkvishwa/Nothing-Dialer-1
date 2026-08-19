// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class AppLocalizationsSl extends AppLocalizations {
  AppLocalizationsSl([String locale = 'sl']) : super(locale);

  @override
  String get appTitle => 'Nič Klicalnik';

  @override
  String get settings => 'nastavitve';

  @override
  String get settingsSearchHint => 'Nastavitve iskanja';

  @override
  String get settingsSearchNoResults => 'Ni nastavitev';

  @override
  String get general => 'Splošno';

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
  String get themeSystemDefault => 'Sistemsko privzeto';

  @override
  String get themeLight => 'Svetloba';

  @override
  String get themeDark => 'Temno';

  @override
  String get themeFollowSystem => 'Sledite sistemskim nastavitvam';

  @override
  String get themeAlwaysLight => 'Vedno uporabljajte svetlo temo';

  @override
  String get themeAlwaysDark => 'Always use dark theme';

  @override
  String get language => 'Jezik';

  @override
  String get languageDeviceDefault => 'Privzeta naprava';

  @override
  String get languagePickerTitle => 'Jezik';

  @override
  String get languageSearchHint => 'Iskanje jezikov';

  @override
  String get font => 'Pisava';

  @override
  String get fontSystem => 'Sistemsko privzeto';

  @override
  String get fontNdot => 'Nič (NDot)';

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
      'Prenos pisave ni uspel. Preverite povezavo in poskusite znova.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Pisava';

  @override
  String get fontPreviewSample => 'Nič Klicalnik';

  @override
  String get fontAppWide => 'Pisava aplikacije';

  @override
  String get fontApplyTo => 'Prijavite se na';

  @override
  String get fontApplyEntireApp => 'Celotna aplikacija';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Ista pisava povsod, tudi med klicem';

  @override
  String get fontApplyTitlesOnly => 'Naslovi in ​​glave';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Samo veliki naslovi in ​​glave razdelkov';

  @override
  String get fontApplyCustomize => 'Prilagodite';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Izberite pisavo za zaslon in vrsto besedila';

  @override
  String get fontCustomizeSection => 'Prilagodi glede na zaslon';

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
  String get fontRolePageTitle => 'Naslov strani';

  @override
  String get fontRoleSectionHeader => 'Glava odseka';

  @override
  String get fontRolePrimary => 'Primarno besedilo';

  @override
  String get fontRoleSecondary => 'Sekundarno besedilo';

  @override
  String get fontRoleButton => 'Gumbi';

  @override
  String get fontRoleDialKey => 'Tipke številčnice';

  @override
  String get fontSurfaceRecents => 'Nedavne';

  @override
  String get fontSurfaceContacts => 'Kontakti';

  @override
  String get fontSurfaceSettings => 'nastavitve';

  @override
  String get fontSurfaceDialpad => 'Številčnica';

  @override
  String get fontSurfaceShell => 'Navigacija';

  @override
  String get fontSurfaceDefaultDialer => 'Privzeti poziv za klicanje';

  @override
  String get fontSurfaceFavourites => 'Priljubljene';

  @override
  String get fontSurfaceBlocked => 'Blokirane številke';

  @override
  String get fontSurfaceContactDetail => 'Kontaktni podatki';

  @override
  String get fontSurfaceCallHistory => 'Zgodovina klicev';

  @override
  String get fontSurfaceSheets => 'Rjuhe in pobiralci';

  @override
  String get fontSurfaceInCall => 'Zaslon med klicem';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — celotna aplikacija';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — samo naslovi';
  }

  @override
  String get fontSubtitleCustomize => 'Po meri na zaslon';

  @override
  String get background => 'Ozadje';

  @override
  String get accent => 'Naglas';

  @override
  String get lightBackground => 'Svetlo ozadje';

  @override
  String get lightAccent => 'Svetel naglas';

  @override
  String get darkBackground => 'Temno ozadje';

  @override
  String get darkAccent => 'Temni naglas';

  @override
  String get callBackground => 'Ozadje klica';

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
  String get answerSlide => 'Podrsajte za odgovor';

  @override
  String get answerSlideSubtitle =>
      'Povlecite levo/desno po vrstici, kot Google Phone';

  @override
  String get answerButton => 'Tapnite gumb';

  @override
  String get answerButtonSubtitle =>
      'Dotaknite se gumbov za odgovor ali zavrnitev';

  @override
  String get answerHuawei => 'Huawei stil';

  @override
  String get answerHuaweiSubtitle =>
      'Za sprejem povlecite krogec na zeleni telefon';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — povlecite na zeleno/rdečo';

  @override
  String get calling => 'Klicanje';

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
  String get defaultSim => 'Privzeta SIM';

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
  String get askEveryTime => 'Vsakič vprašaj';

  @override
  String get askEveryTimeSubtitle =>
      'Pokaži izbirnik kartice SIM pred vsakim klicem';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Kartic SIM ni bilo mogoče najti';

  @override
  String couldNotLoadSims(String error) {
    return 'Kartic SIM ni bilo mogoče naložiti: $error';
  }

  @override
  String get allFavourites => 'Vse priljubljene';

  @override
  String get allFavouritesSubtitle =>
      'Preuredite, odstranite in dodajte iz stikov';

  @override
  String get blockedNumbers => 'Blokirane številke';

  @override
  String get blockedNumbersSubtitle => 'Oglejte si in odblokirajte številke';

  @override
  String get soundsAndVibration => 'Zvoki in vibracije';

  @override
  String get soundsAndVibrationSubtitle =>
      'Melodija zvonjenja, vibriranje, toni številčnice';

  @override
  String couldNotOpenSettings(String error) {
    return 'Ni bilo mogoče odpreti nastavitev: $error';
  }

  @override
  String get frequentlyContacted => 'Pogosto kontaktirani';

  @override
  String get numberOfRecords => 'Število zapisov';

  @override
  String get timePeriod => 'Časovno obdobje';

  @override
  String get periodLast24Hours => 'Zadnjih 24 ur';

  @override
  String get periodLast24HoursSubtitle => 'Klici preteklega dne';

  @override
  String get periodLast7Days => 'Zadnjih 7 dni';

  @override
  String get periodLast7DaysSubtitle => 'Klici iz prejšnjega tedna';

  @override
  String get periodLast30Days => 'Zadnjih 30 dni';

  @override
  String get periodLast30DaysSubtitle => 'Klici iz preteklega meseca';

  @override
  String get periodLast12Months => 'Zadnjih 12 mesecev';

  @override
  String get periodLast12MonthsSubtitle => 'Klici iz preteklega leta';

  @override
  String get periodAllTime => 'Ves čas';

  @override
  String get periodAllTimeSubtitle => 'Celotna zgodovina klicev';

  @override
  String get frequentMaxOff => 'Izključeno';

  @override
  String frequentMaxCount(int count) {
    return '$count kontakti';
  }

  @override
  String get torchBlink => 'Utripanje bakle';

  @override
  String get torchIncomingCall => 'Svetilka za dohodni klic';

  @override
  String get torchOutgoingCall => 'Svetilka za odhodni klic';

  @override
  String get torchOngoingCall => 'Svetilka v teku';

  @override
  String get torchIncomingInterval => 'Interval dohodnega utripanja';

  @override
  String get torchOutgoingInterval => 'Interval odhodnega utripanja';

  @override
  String get torchOngoingInterval => 'Stalni interval utripanja';

  @override
  String get torchOff => 'Izključeno';

  @override
  String get torchOffIncomingSubtitle => 'Med zvonjenjem ni svetilke';

  @override
  String get torchOffOutgoingSubtitle => 'Med izbiranjem ni svetilke';

  @override
  String get torchOffOngoingSubtitle => 'Med aktivnim klicem ni svetilke';

  @override
  String get torchFixedInterval => 'Fiksni interval';

  @override
  String get torchFixedIntervalSubtitle => 'Utripajte z nastavljeno hitrostjo';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds utripa';
  }

  @override
  String get flashlightUnavailable => 'Svetilka ni na voljo v tej napravi';

  @override
  String get glyphLights => 'Glifne luči';

  @override
  String get glyphCallingAnimation => 'Animacija klica glifa';

  @override
  String get glyphOngoingAnimation => 'Glif animacija tekočega klica';

  @override
  String get glyphNone => 'Noben';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Onemogoči lučke glifa za odhodne klice';

  @override
  String get glyphNoneInCallSubtitle =>
      'Onemogočite luči glifa med aktivnim klicem';

  @override
  String get glyphBreathProgress => 'Dih in napredek';

  @override
  String get glyphBreathProgressSubtitle =>
      'Luči dihajo, medtem ko se linija polni več kot 65 s';

  @override
  String get glyphAccumulate => 'Kopičiti';

  @override
  String get glyphAccumulateSubtitle => 'Kopičenje animacije na luči C1-C4';

  @override
  String get glyphSingle => 'Samski';

  @override
  String get glyphSingleSubtitle =>
      'Posamezna svetloba, ki se premika čez C1-C4';

  @override
  String get glyphBreath => 'dih';

  @override
  String get glyphBreathSubtitle => 'Izberite luči in hitrost';

  @override
  String get glyphSteady => 'Enakomerno';

  @override
  String get glyphSteadySubtitle => 'Izbrane luči ostanejo prižgane';

  @override
  String get breathSettings => 'Nastavitve dihanja';

  @override
  String get activeLights => 'Aktivne luči';

  @override
  String lightsCount(int count) {
    return '$count luči';
  }

  @override
  String get speedSettings => 'Nastavitve hitrosti';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms zamude';
  }

  @override
  String get durationAndSpeed => 'Trajanje in hitrost';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return 'Trajanje ${duration}s, interval ${interval}ms';
  }

  @override
  String get cancel => 'Prekliči';

  @override
  String get done => 'Končano';

  @override
  String get save => 'Shrani';

  @override
  String get block => 'Blokiraj';

  @override
  String get delete => 'Izbriši';

  @override
  String get recents => 'Nedavne';

  @override
  String get contacts => 'Kontakti';

  @override
  String get hideFavouritesOnRecents => 'Skrij priljubljene na Recents';

  @override
  String get showFavouritesOnRecents => 'Pokaži priljubljene na Recents';

  @override
  String get ongoingCall => 'Teče klic';

  @override
  String get setAsDefaultTitle => 'NASTAVI KOT\nPRIVZETO';

  @override
  String get setAsDefaultBody =>
      'Če želite uporabljati Nothing Dialer, ga morate nastaviti kot privzeto telefonsko aplikacijo. To vam omogoča upravljanje klicev, ogled zgodovine in uporabo animacij Glyph.';

  @override
  String get setAsDefaultButton => 'NASTAVI KOT PRIVZETO';

  @override
  String get nothingDialerBrand => 'NIČ Klicalnik 1';

  @override
  String get favourites => 'Priljubljene';

  @override
  String get addFavourite => 'Dodaj priljubljeno';

  @override
  String get favouritesDrawerHint =>
      'Za dodajanje stikov uporabite meni. Tapnite zunaj predala ali ga zaprite s prstom. Označite stik z zvezdico med njegovimi podatki ali dolgo pritisnite klic v Nedavnih.';

  @override
  String get menu => 'meni';

  @override
  String get noFavouritesYet =>
      'Ni še priljubljenih.\nOdprite meni, da ga dodate, ali označite stik z zvezdico.';

  @override
  String get contactsPermissionNeeded => 'Potrebno je dovoljenje za stike';

  @override
  String get chooseContact => 'Izberite kontakt';

  @override
  String get noPhone => 'Brez telefona';

  @override
  String get pickNumber => 'Izberite številko';

  @override
  String get contactHasNoPhone => 'Ta stik nima telefonske številke';

  @override
  String get blockNumber => 'Številka bloka';

  @override
  String get enterPhoneNumber => 'Vnesite telefonsko številko';

  @override
  String unblockedDisplay(String display) {
    return 'Odblokiran $display';
  }

  @override
  String get couldNotUnblockNumber => 'Številke ni bilo mogoče odblokirati';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked blokiran • $matched ujemanje';
  }

  @override
  String get contactsPermissionMissing =>
      'Manjka dovoljenje za stike. Tapnite, da popravite.';

  @override
  String get noBlockedNumbers => 'Ni blokiranih številk';

  @override
  String get unknownContact => 'Neznan kontakt';

  @override
  String get unblock => 'Odblokiraj';

  @override
  String get permissionNeeded => 'Potrebno dovoljenje';

  @override
  String get grantPhonePermission =>
      'Telefonu dovolite ogled zgodovine klicev.';

  @override
  String get grantContactsPermission =>
      'Dovolite stikom, da vidijo vaš imenik.';

  @override
  String get openSettings => 'Odprite nastavitve';

  @override
  String get tryAgain => 'poskusi ponovno';

  @override
  String get couldNotLoadContacts => 'Stikov ni bilo mogoče naložiti';

  @override
  String get contactsLoadError => 'Pri branju imenika je šlo nekaj narobe.';

  @override
  String get noContactsFound => 'Ni stikov';

  @override
  String get contactsEmptySubtitle =>
      'Tukaj bodo prikazani stiki iz vaše naprave.';

  @override
  String get searchContacts => 'Iskanje stikov ...';

  @override
  String get searchRecentCalls => 'Iskanje zadnjih klicev';

  @override
  String get fromContacts => 'Iz stikov';

  @override
  String get recentsSearchSection => 'Nedavno iskanje';

  @override
  String get recentsSearchShowContacts => 'Prikaži stike pri iskanju';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Med iskanjem nedavnih prikaži tudi ujemajoče se osebe iz imenika pod rezultati zgodovine klicev.';

  @override
  String get voiceSearch => 'Glasovno iskanje';

  @override
  String get createNewContact => 'Ustvari nov stik';

  @override
  String callError(String error) {
    return 'Napaka klica: $error';
  }

  @override
  String get noRecentCalls => 'Ni nedavnih klicev';

  @override
  String get callHistoryEmpty => 'Tukaj bo prikazana vaša zgodovina klicev.';

  @override
  String get loadMore => 'Naloži več';

  @override
  String get frequentlyContactedHeader => 'Pogosto v stiku';

  @override
  String get recentHistory => 'Nedavna zgodovina';

  @override
  String get noFavouritesRecentsHint =>
      'Ni še priljubljenih. Označite stik z zvezdico, dolgo pritisnite klic ali uporabite zavihek Priljubljene.';

  @override
  String get copyNumber => 'Kopiraj številko';

  @override
  String get editNumberBeforeCall => 'Uredite številko pred klicem';

  @override
  String get removeFromFavourites => 'Odstrani iz priljubljenih';

  @override
  String get addToFavourites => 'Dodaj med priljubljene';

  @override
  String get blockNumberQuestion => 'Blokiraj številko?';

  @override
  String blockNumberConfirm(String number) {
    return 'Ne boste več prejemali klicev ali sporočil iz $number.';
  }

  @override
  String get blocked => 'blokiran';

  @override
  String get couldNotBlock => 'Ni bilo mogoče blokirati';

  @override
  String get contactNotOnDevice => 'Stik ni shranjen v tej napravi';

  @override
  String get unblocked => 'Odblokiran';

  @override
  String get numberCopied => 'Številka je kopirana';

  @override
  String get showLess => 'Prikaži manj';

  @override
  String get showAllTimes => 'Pokaži vse čase';

  @override
  String mostRecent(String time) {
    return 'Najnovejše · $time';
  }

  @override
  String get videoCall => 'Video klic';

  @override
  String get couldNotPlaceVideoCall => 'Video klica ni bilo mogoče vzpostaviti';

  @override
  String get message => 'Sporočilo';

  @override
  String get couldNotOpenMessaging =>
      'Aplikacije za sporočanje ni bilo mogoče odpreti';

  @override
  String get history => 'Zgodovina';

  @override
  String get viewContact => 'Ogled stika';

  @override
  String get addToContact => 'Dodaj v stik';

  @override
  String get callTypeMissed => 'zgrešeno';

  @override
  String get callTypeRejected => 'Zavrnjeno';

  @override
  String get callTypeIncoming => 'Dohodni';

  @override
  String get callTypeOutgoing => 'Odhodni';

  @override
  String get today => 'Danes';

  @override
  String get yesterday => 'včeraj';

  @override
  String get justNow => 'Pravkar';

  @override
  String minutesAgo(int count) {
    return 'Pred $count min';
  }

  @override
  String hoursAgo(int count) {
    return '$count pred h';
  }

  @override
  String get filterAll => 'Vse';

  @override
  String get filterMissed => 'zgrešeno';

  @override
  String get filterContacts => 'Kontakti';

  @override
  String get filterNonContacts => 'Nestiki';

  @override
  String get iconUpdated =>
      'Ikona posodobljena. Osvežitev vašega domačega zaslona lahko traja nekaj časa.';

  @override
  String get iconSavedRelease =>
      'Izbira shranjena. Ikona začetnega zaslona se posodobi v različicah izdaje.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Ni bilo mogoče spremeniti ikone: $error';
  }

  @override
  String get launcherClassicBlack => 'Klasična (črna)';

  @override
  String get launcherLight => 'Svetloba';

  @override
  String get launcherNothingRed => 'Nič rdečega';

  @override
  String get launcherDarkGrey => 'Temno siva';

  @override
  String get launcherCream => 'smetana';

  @override
  String get launcherRetroPhone => 'Retro telefon';

  @override
  String get launcherRetroPhoneLight => 'Retro telefon (lahek)';

  @override
  String get voiceSearchUnavailable =>
      'Glasovno iskanje ni na voljo v tej napravi.';

  @override
  String voiceSearchFailed(String error) {
    return 'Glasovno iskanje ni uspelo: $error';
  }

  @override
  String get customColor => 'Po meri';

  @override
  String get selectColor => 'Izberite barvo';

  @override
  String get reset => 'Ponastavi';

  @override
  String get simPickerTitle => 'Izberite SIM';

  @override
  String get simChooseForCall => 'Izberite SIM za ta klic';

  @override
  String get defaultSimAsk => 'Vsakič vprašaj';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Kontaktni podatki';

  @override
  String get call => 'Pokliči';

  @override
  String get share => 'Delite';

  @override
  String get favourite => 'Najljubša';

  @override
  String get unfavourite => 'Nepriljubljeno';

  @override
  String get blockContact => 'Blokiraj stik';

  @override
  String get unblockContact => 'Odblokiraj stik';

  @override
  String get deleteContact => 'Izbriši stik';

  @override
  String get phone => 'Telefon';

  @override
  String get email => 'E-pošta';

  @override
  String get ringtone => 'Melodija zvonjenja';

  @override
  String get defaultRingtone => 'Privzeto';

  @override
  String get simForContact => 'SIM za ta stik';

  @override
  String get callHistoryTitle => 'Zgodovina klicev';

  @override
  String get noCallsWithNumber => 'Ni klicev s to številko';

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
  String get inCallGlyphAnimationStyle => 'Glyph animacija med klicem';

  @override
  String get recordsOff => 'Izključeno';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Privzeta SIM';

  @override
  String get nothingPhoneOnly => 'Nič Samo telefon';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Funkcije glifa zahtevajo Nothing Phone';

  @override
  String get custom => 'Po meri';

  @override
  String presetColorHex(String hex) {
    return 'Prednastavitev · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Po meri · $hex';
  }

  @override
  String get oneContact => '1 stik';

  @override
  String upToContacts(int count) {
    return 'Do $count stikov';
  }

  @override
  String get answerButtonTapSubtitle => 'Tapnite gumb za odgovor';

  @override
  String get filterCalls => 'Filtrirajte klice';

  @override
  String get filterTooltip => 'Filter';

  @override
  String get settingsTooltip => 'nastavitve';

  @override
  String get filterAllSubtitle => 'Celoten dnevnik klicev';

  @override
  String get filterMissedSubtitle => 'Zgrešeno in zavrnjeno';

  @override
  String get filterContactsSubtitle =>
      'Klici, ki se ujemajo s shranjenim stikom';

  @override
  String get filterNonContactsSubtitle => 'Številke niso v vašem imeniku';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Trenutni klic: $detail';
  }

  @override
  String get defaultSimForCalls => 'Privzeta SIM za klice';

  @override
  String get blinkInterval => 'Interval utripanja';

  @override
  String get close => 'Zapri';

  @override
  String get frequentlyContactedInfoBody =>
      'Prikaže vaše največkrat klicane telefonske številke na vrhu zavihka Nedavno, glede na število dohodnih, odhodnih, neodgovorjenih ali zavrnjenih klicev, ki ste jih imeli s posamezno številko v časovnem obdobju, ki ga izberete.\n\nŠtevilo zapisov: nastavite na 0, da to izklopite. Uporabite 1–20, da prikažete toliko najboljših stikov.\n\nČasovno obdobje velja le, če je prikazan vsaj en stik.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count luči, ${ms}ms hitrost';
  }

  @override
  String get deleteContactQuestion => 'Želite izbrisati stik?';

  @override
  String get deleteContactBody => 'Ta stik bo trajno izbrisan iz vaše naprave.';

  @override
  String get blockContactQuestion => 'Blokirati stik?';

  @override
  String get unblockContactQuestion => 'Odblokirati stik?';

  @override
  String get blockContactBody =>
      'Od tega stika ne boste več prejemali klicev ali sporočil SMS.';

  @override
  String get unblockContactBody =>
      'Od tega stika boste začeli prejemati klice in besedilna sporočila.';

  @override
  String get contactBlocked => 'Kontakt blokiran';

  @override
  String get contactUnblocked => 'Kontakt odblokiran';

  @override
  String get noPhoneNumbersToBlock => 'Ni telefonskih številk za blokiranje';

  @override
  String get simSameAsSystem => 'Enako kot sistem';

  @override
  String get simSameAsSystemSubtitle => 'Sledi privzeti SIM v nastavitvah';

  @override
  String get simAskEveryTimeForContact =>
      'Vedno pokaži izbirnik SIM za ta stik';

  @override
  String get ringtoneSetForContact =>
      'Melodija zvonjenja je globalno nastavljena za ta stik';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Ni bilo mogoče izbrati melodije zvonjenja: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Napaka: $error';
  }

  @override
  String get noCallHistoryFound => 'Zgodovina klicev ni bila najdena';

  @override
  String get speedDialVoicemail => 'Hitro izbiranje: glasovna pošta';

  @override
  String shareContactSubject(String name) {
    return 'Kontakt: $name';
  }

  @override
  String get contactInfo => 'Kontaktni podatki';

  @override
  String get dontAskAgainSim => 'Ne sprašuj več';

  @override
  String get simDontAskAgainSubtitle =>
      'Uporabite to kartico SIM kot privzeto (spremenite v nastavitvah)';

  @override
  String get addContact => 'Dodaj kontakt';

  @override
  String get createContact => 'Ustvari stik';

  @override
  String get paste => 'Prilepi';

  @override
  String get clear => 'jasno';

  @override
  String get returnToCall => 'Nazaj na klic';

  @override
  String get numberOfRecordsTitle => 'Število zapisov';

  @override
  String get recordsPickerSubtitle =>
      'Koliko pogosto uporabljenih vnosov za prikaz (0 = izklopljeno)';

  @override
  String get torchInfoTitle => 'Utripanje bakle';

  @override
  String get torchInfoBody =>
      'Utripa bliskavica kamere med dohodnimi, odhodnimi ali tekočimi klici. Neodvisno od luči Glyph.';

  @override
  String get glyphMapTitle => 'Postavitev glifa';

  @override
  String get glyphMapBody =>
      'Nič Telefon 1 Glyph LED območja. Te kanale uporabljajo odhodne animacije in animacije med klicem.';

  @override
  String get answerMethodTitle => 'Način odgovora';

  @override
  String get glyphOutgoingCallStyleTitle => 'Slog odhodnega klica';

  @override
  String get glyphInCallAnimationTitle => 'Glyph animacija med klicem';

  @override
  String get themePickerTitle => 'Tema';

  @override
  String get torchIncomingTitle => 'Svetilka za dohodni klic';

  @override
  String get torchOutgoingTitle => 'Svetilka za odhodni klic';

  @override
  String get torchOngoingTitle => 'Svetilka v teku';

  @override
  String get timePeriodTitle => 'Časovno obdobje';

  @override
  String get ok => 'OK';

  @override
  String get confirmDeleteCall => 'Želite ta klic izbrisati iz zgodovine?';

  @override
  String get confirmDeleteAllCalls =>
      'Želite izbrisati vse klice s to številko?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Pošljite sporočilo';

  @override
  String get addToExistingContactAction => 'Dodaj v stik';

  @override
  String get mobileLabel => 'Mobilni';

  @override
  String get callingSimForContactTitle => 'Klicanje SIM za ta stik';

  @override
  String get contactSettings => 'Nastavitve stikov';

  @override
  String get setCallingSim => 'Nastavite klicno kartico SIM';

  @override
  String get contactRingtone => 'Melodija stika';

  @override
  String get shareContact => 'Delite stik';

  @override
  String get blockNumbers => 'Blokiraj številke';

  @override
  String get unblockNumbers => 'Odblokiraj številke';

  @override
  String get connectedApps => 'Povezane aplikacije';

  @override
  String get simNotSet => 'Ni nastavljeno';

  @override
  String get ringtoneDefault => 'Privzeto';

  @override
  String get customRingtone => 'Po meri';

  @override
  String get aboutSection => 'O tem';

  @override
  String get aboutFeedbackSection => 'O in povratne informacije';

  @override
  String get aboutDescription =>
      'Nothing Dialer je odprtokoden. Če ste razvijalec, ste dobrodošli, da raziščete kodo in prispevate.';

  @override
  String get aboutViewSource => 'Ogled na GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Povezave ni bilo mogoče odpreti';

  @override
  String get reviewSection => 'Pregled';

  @override
  String get reviewDescription =>
      'Uživate v aplikaciji Nothing Dialer? Vaša ocena v Googlu Play pomaga drugim najti aplikacijo.';

  @override
  String get reviewRateOnPlay => 'Ocenite v Googlu Play';

  @override
  String get reviewRateOnPlaySubtitle => 'Opens the Play Store listing';

  @override
  String get reviewCouldNotOpen => 'Google Play ni bilo mogoče odpreti';

  @override
  String get breathSpeed => 'Hitrost dihanja';

  @override
  String get breathSpeedBlinkHint =>
      'Nižje = mežikanje, višje = počasno dihanje';

  @override
  String get speedSliderHint => 'Nižje = hitreje, višje = počasneje';

  @override
  String get swatchDefault => 'Privzeto';

  @override
  String get customAccentColorPicker => 'Poudarjena barva po meri';

  @override
  String get customLightBackgroundPicker => 'Svetlo ozadje po meri';

  @override
  String get customDarkBackgroundPicker => 'Temno ozadje po meri';

  @override
  String get customCallBackgroundPicker => 'Ozadje klica po meri';

  @override
  String get ongoingCallStyleTitle => 'Slog tekočega klica';

  @override
  String get glyphMapUnavailable => 'Zemljevid glifa ni na voljo';

  @override
  String get animationDelayRange => 'Zakasnitev animacije (1 s - 10 s)';

  @override
  String get animationDelayRangeSingle => 'Zakasnitev animacije (0,1 s - 10 s)';

  @override
  String get inCallMute => 'Mute';

  @override
  String get inCallKeypad => 'Tipkovnica';

  @override
  String get inCallSpeaker => 'Zvočnik';

  @override
  String get inCallMore => 'več';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Telefon';

  @override
  String get inCallAddCall => 'Dodaj klic';

  @override
  String get inCallChangeSim => 'Zamenjajte SIM';

  @override
  String get inCallDecline => 'Zavrni';

  @override
  String get inCallAnswer => 'Odgovori';

  @override
  String get inCallMessage => 'Sporočilo';

  @override
  String get inCallCalling => 'Klicanje ...';

  @override
  String get inCallIncoming => 'Dohodni klic';

  @override
  String get inCallSelectSim => 'Izberite SIM ...';

  @override
  String get inCallSwitchingSim => 'Preklop kartice SIM ...';

  @override
  String get inCallCallEnded => 'Klic končan';

  @override
  String inCallCallingVia(String sim) {
    return 'Klicanje prek $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Klicanje prek <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Izberite SIM za ta klic';

  @override
  String get inCallDragAnswerDecline =>
      'Povlecite desno za odgovor · Povlecite levo za zavrnitev';

  @override
  String inCallMobileNumber(String number) {
    return 'Mobilni $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (Trenutno)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Pokličite prek <b>$sim</b> od';
  }

  @override
  String get inCallCallFrom => 'Klic iz';

  @override
  String get inCallUnknown => 'Neznano';

  @override
  String get selectContactRingtone => 'Izberite melodijo zvonjenja za stik';

  @override
  String get speakToSearchPrompt => 'Govorite za iskanje';

  @override
  String get phonePermissionRequired => 'Potrebno je dovoljenje za telefon';

  @override
  String callFailed(String error) {
    return 'Klic ni uspel: $error';
  }

  @override
  String get callPermissionDenied => 'Dovoljenje za klic zavrnjeno';

  @override
  String get alreadyDefaultDialer => 'Že nastavljen kot privzeti klicalnik';

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
