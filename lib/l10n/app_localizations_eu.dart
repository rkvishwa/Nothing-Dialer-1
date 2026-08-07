// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Basque (`eu`).
class AppLocalizationsEu extends AppLocalizations {
  AppLocalizationsEu([String locale = 'eu']) : super(locale);

  @override
  String get appTitle => 'Ezer markatzailea';

  @override
  String get settings => 'Ezarpenak';

  @override
  String get settingsSearchHint => 'Bilaketa-ezarpenak';

  @override
  String get settingsSearchNoResults => 'Ez da ezarpenik aurkitu';

  @override
  String get general => 'Orokorra';

  @override
  String get theme => 'Gaia';

  @override
  String get themeSystemDefault => 'Sistema lehenetsia';

  @override
  String get themeLight => 'Argia';

  @override
  String get themeDark => 'Iluna';

  @override
  String get themeFollowSystem => 'Jarraitu sistemaren ezarpenak';

  @override
  String get themeAlwaysLight => 'Erabili beti gai argia';

  @override
  String get themeAlwaysDark => 'Erabili beti gai iluna';

  @override
  String get language => 'Hizkuntza';

  @override
  String get languageDeviceDefault => 'Gailu lehenetsia';

  @override
  String get languagePickerTitle => 'Hizkuntza';

  @override
  String get languageSearchHint => 'Bilatu hizkuntzak';

  @override
  String get font => 'Letra-tipoa';

  @override
  String get fontSystem => 'Sistema lehenetsia';

  @override
  String get fontNdot => 'Ezer ez (NDot)';

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
      'Huts egin du letra-tipoak deskargatu. Egiaztatu konexioa eta saiatu berriro.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Letra-tipoa';

  @override
  String get fontPreviewSample => 'Ezer markatzailea';

  @override
  String get fontAppWide => 'Aplikazioaren letra-tipoa';

  @override
  String get fontApplyTo => 'Aplikatu';

  @override
  String get fontApplyEntireApp => 'Aplikazio osoa';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Letra-tipo bera nonahi, deian barne';

  @override
  String get fontApplyTitlesOnly => 'Izenburuak eta goiburuak';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Izenburu handiak eta atalen goiburuak soilik';

  @override
  String get fontApplyCustomize => 'Pertsonalizatu';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Aukeratu letra-tipoa pantaila eta testu mota bakoitzeko';

  @override
  String get fontCustomizeSection => 'Pertsonalizatu pantailaren arabera';

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
  String get fontRolePageTitle => 'Orriaren izenburua';

  @override
  String get fontRoleSectionHeader => 'Atalaren goiburua';

  @override
  String get fontRolePrimary => 'Lehen mailako testua';

  @override
  String get fontRoleSecondary => 'Bigarren mailako testua';

  @override
  String get fontRoleButton => 'Botoiak';

  @override
  String get fontRoleDialKey => 'Teklatuko teklak';

  @override
  String get fontSurfaceRecents => 'Berriak';

  @override
  String get fontSurfaceContacts => 'Kontaktuak';

  @override
  String get fontSurfaceSettings => 'Ezarpenak';

  @override
  String get fontSurfaceDialpad => 'Markagailua';

  @override
  String get fontSurfaceShell => 'Nabigazioa';

  @override
  String get fontSurfaceDefaultDialer => 'Markagailu lehenetsia';

  @override
  String get fontSurfaceFavourites => 'Gogokoak';

  @override
  String get fontSurfaceBlocked => 'Blokeatutako zenbakiak';

  @override
  String get fontSurfaceContactDetail => 'Harremanetarako xehetasunak';

  @override
  String get fontSurfaceCallHistory => 'Deien historia';

  @override
  String get fontSurfaceSheets => 'Orriak eta hautatzaileak';

  @override
  String get fontSurfaceInCall => 'Dei barruko pantaila';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font - aplikazio osoa';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — izenburuak soilik';
  }

  @override
  String get fontSubtitleCustomize => 'Pantaila bakoitzeko pertsonalizatua';

  @override
  String get background => 'Aurrekariak';

  @override
  String get accent => 'Azentua';

  @override
  String get lightBackground => 'Hondo argia';

  @override
  String get lightAccent => 'Azentu argia';

  @override
  String get darkBackground => 'Hondo iluna';

  @override
  String get darkAccent => 'Azentu iluna';

  @override
  String get callBackground => 'Deiaren atzeko planoa';

  @override
  String get appIcon => 'Aplikazioaren ikonoa';

  @override
  String get answerMethod => 'Erantzun metodoa';

  @override
  String get answerSlide => 'Irristatu erantzuteko';

  @override
  String get answerSlideSubtitle =>
      'Irristatu ezkerrera/eskuinera barran, Google Phone bezala';

  @override
  String get answerButton => 'Sakatu botoia';

  @override
  String get answerButtonSubtitle => 'Sakatu erantzun edo ukatu botoiak';

  @override
  String get answerHuawei => 'Huawei estiloa';

  @override
  String get answerHuaweiSubtitle =>
      'Arrastatu zirkulua telefono berdera erantzuteko';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — arrastatu berde/gorrira';

  @override
  String get calling => 'Deitzen';

  @override
  String get defaultSim => 'SIM lehenetsia';

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
  String get askEveryTime => 'Galdetu aldiro';

  @override
  String get askEveryTimeSubtitle =>
      'Erakutsi SIM hautatzailea dei bakoitzaren aurretik';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Ez da SIM txartelik aurkitu';

  @override
  String couldNotLoadSims(String error) {
    return 'Ezin izan dira SIMak kargatu: $error';
  }

  @override
  String get allFavourites => 'Faborito guztiak';

  @override
  String get allFavouritesSubtitle =>
      'Berrantolatu, kendu eta gehitu kontaktuetatik';

  @override
  String get blockedNumbers => 'Blokeatutako zenbakiak';

  @override
  String get blockedNumbersSubtitle => 'Ikusi eta desblokeatu zenbakiak';

  @override
  String get soundsAndVibration => 'Soinuak eta bibrazioak';

  @override
  String get soundsAndVibrationSubtitle =>
      'Dei-tonua, bibrazioa, teklatuaren tonuak';

  @override
  String couldNotOpenSettings(String error) {
    return 'Ezin izan dira ezarpenak ireki: $error';
  }

  @override
  String get frequentlyContacted => 'Maiz harremanetan jarrita';

  @override
  String get numberOfRecords => 'Erregistro kopurua';

  @override
  String get timePeriod => 'Denbora-epea';

  @override
  String get periodLast24Hours => 'Azken 24 orduak';

  @override
  String get periodLast24HoursSubtitle => 'Azken eguneko deiak';

  @override
  String get periodLast7Days => 'Azken 7 egunak';

  @override
  String get periodLast7DaysSubtitle => 'Azken asteko deiak';

  @override
  String get periodLast30Days => 'Azken 30 egunak';

  @override
  String get periodLast30DaysSubtitle => 'Azken hilabeteko deiak';

  @override
  String get periodLast12Months => 'Azken 12 hilabeteak';

  @override
  String get periodLast12MonthsSubtitle => 'Azken urteko deiak';

  @override
  String get periodAllTime => 'Denbora guztian';

  @override
  String get periodAllTimeSubtitle => 'Deien historia osoa';

  @override
  String get frequentMaxOff => 'Desaktibatuta';

  @override
  String frequentMaxCount(int count) {
    return '$count kontaktuak';
  }

  @override
  String get torchBlink => 'Torch Blink';

  @override
  String get torchIncomingCall => 'Sarrerako dei linterna';

  @override
  String get torchOutgoingCall => 'Irteerako deien linterna';

  @override
  String get torchOngoingCall => 'Etengabeko dei linterna';

  @override
  String get torchIncomingInterval => 'Sarrerako keinu-tartea';

  @override
  String get torchOutgoingInterval => 'Irteerako keinu tartea';

  @override
  String get torchOngoingInterval => 'Etengabeko keinu-tartea';

  @override
  String get torchOff => 'Desaktibatuta';

  @override
  String get torchOffIncomingSubtitle =>
      'Dei egiten ari zaren bitartean linternarik ez';

  @override
  String get torchOffOutgoingSubtitle => 'Markatzerakoan linternarik ez';

  @override
  String get torchOffOngoingSubtitle => 'Ez dago linternarik dei aktiboan';

  @override
  String get torchFixedInterval => 'Tarte finkoa';

  @override
  String get torchFixedIntervalSubtitle =>
      'Keinu egin ezazu zehaztutako abiaduran';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds keinu egin';
  }

  @override
  String get flashlightUnavailable =>
      'Linterna ez dago erabilgarri gailu honetan';

  @override
  String get glyphLights => 'Glifo argiak';

  @override
  String get glyphCallingAnimation => 'Glifoak deitzeko animazioa';

  @override
  String get glyphOngoingAnimation => 'Glifo etengabeko deien animazioa';

  @override
  String get glyphNone => 'Bat ere ez';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Desgaitu glifo argiak irteerako deietarako';

  @override
  String get glyphNoneInCallSubtitle =>
      'Desgaitu glifoen argiak dei aktiboan zaudenean';

  @override
  String get glyphBreathProgress => 'Arnasa eta Aurrerapena';

  @override
  String get glyphBreathProgressSubtitle =>
      'Argiek arnasten dute lerroa 65 segundo baino gehiago betetzen den bitartean';

  @override
  String get glyphAccumulate => 'Metatu';

  @override
  String get glyphAccumulateSubtitle => 'C1-C4 argietan animazioa metatzea';

  @override
  String get glyphSingle => 'Bakarra';

  @override
  String get glyphSingleSubtitle => 'Argi bakarra C1-C4 zehar mugitzen da';

  @override
  String get glyphBreath => 'Arnasa';

  @override
  String get glyphBreathSubtitle => 'Aukeratu argiak eta abiadura';

  @override
  String get glyphSteady => 'Etenkorra';

  @override
  String get glyphSteadySubtitle => 'Hautatutako argiak piztuta geratzen dira';

  @override
  String get breathSettings => 'Arnasaren ezarpenak';

  @override
  String get activeLights => 'Argi Aktiboak';

  @override
  String lightsCount(int count) {
    return '$count argiak';
  }

  @override
  String get speedSettings => 'Abiadura ezarpenak';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms atzerapena';
  }

  @override
  String get durationAndSpeed => 'Iraupena eta Abiadura';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s iraupena, ${interval}ms tartea';
  }

  @override
  String get cancel => 'Utzi';

  @override
  String get done => 'Eginda';

  @override
  String get save => 'Gorde';

  @override
  String get block => 'Blokea';

  @override
  String get delete => 'Ezabatu';

  @override
  String get recents => 'Berriak';

  @override
  String get contacts => 'Kontaktuak';

  @override
  String get hideFavouritesOnRecents => 'Ezkutatu gogokoak Azkenaldian';

  @override
  String get showFavouritesOnRecents => 'Erakutsi gogokoak Azkenaldian';

  @override
  String get ongoingCall => 'Etengabeko deia';

  @override
  String get setAsDefaultTitle => 'EZARTU AS\nLEHENESTASUNA';

  @override
  String get setAsDefaultBody =>
      'Nothing Dialer erabiltzeko, zure telefono-aplikazio lehenetsi gisa ezarri behar da. Horri esker, deiak kudeatu, historia ikusi eta Glifoen animazioak erabili ditzakezu.';

  @override
  String get setAsDefaultButton => 'LEHENEZTASUN BEZALA EZARRI';

  @override
  String get nothingDialerBrand => 'EZER MARKATZAILEA 1';

  @override
  String get favourites => 'Gogokoak';

  @override
  String get addFavourite => 'Gehitu gogokoena';

  @override
  String get favouritesDrawerHint =>
      'Erabili menua kontaktuak gehitzeko. Sakatu tiraderaren kanpoaldea edo irristatu itxita. Izarra kontaktu bati bere xehetasunetatik edo sakatu dei bat Azkenaldian.';

  @override
  String get menu => 'Menua';

  @override
  String get noFavouritesYet =>
      'Oraindik ez dago gogokorik.\nOpen the menu to add one, or star a contact.';

  @override
  String get contactsPermissionNeeded => 'Kontaktuen baimena behar da';

  @override
  String get chooseContact => 'Aukeratu kontaktua';

  @override
  String get noPhone => 'Telefonorik ez';

  @override
  String get pickNumber => 'Aukeratu zenbakia';

  @override
  String get contactHasNoPhone => 'Kontaktu honek ez du telefono-zenbakirik';

  @override
  String get blockNumber => 'Bloke-zenbakia';

  @override
  String get enterPhoneNumber => 'Sartu telefono-zenbakia';

  @override
  String unblockedDisplay(String display) {
    return 'Desblokeatua $display';
  }

  @override
  String get couldNotUnblockNumber => 'Ezin izan da zenbakia desblokeatu';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked blokeatuta • $matched bat dator';
  }

  @override
  String get contactsPermissionMissing =>
      'Kontaktuen baimena falta da. Ukitu konpontzeko.';

  @override
  String get noBlockedNumbers => 'Ez dago blokeatutako zenbakirik';

  @override
  String get unknownContact => 'Kontaktu ezezaguna';

  @override
  String get unblock => 'Desblokeatu';

  @override
  String get permissionNeeded => 'Baimena behar da';

  @override
  String get grantPhonePermission =>
      'Eman telefonoari zure deien historia ikusteko baimena.';

  @override
  String get grantContactsPermission =>
      'Eman kontaktuei zure helbide-liburua ikusteko baimena.';

  @override
  String get openSettings => 'Ireki Ezarpenak';

  @override
  String get tryAgain => 'Saiatu berriro';

  @override
  String get couldNotLoadContacts => 'Ezin izan dira kargatu kontaktuak';

  @override
  String get contactsLoadError =>
      'Arazoren bat izan da zure helbide-liburua irakurtzean.';

  @override
  String get noContactsFound => 'Ez da kontakturik aurkitu';

  @override
  String get contactsEmptySubtitle =>
      'Zure gailuko kontaktuak hemen agertuko dira.';

  @override
  String get searchContacts => 'Bilatu kontaktuak…';

  @override
  String get searchRecentCalls => 'Bilatu azken deiak';

  @override
  String get fromContacts => 'Kontaktuetatik';

  @override
  String get recentsSearchSection => 'Azken bilaketa';

  @override
  String get recentsSearchShowContacts => 'Erakutsi kontaktuak bilaketan';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Azkenak bilatzen ari zaren bitartean, deien historiako emaitzen azpian zure helbide-liburuko bat datozen pertsonak ere erakutsi.';

  @override
  String get voiceSearch => 'Ahots bilaketa';

  @override
  String get createNewContact => 'Sortu kontaktu berria';

  @override
  String callError(String error) {
    return 'Deiaren errorea: $error';
  }

  @override
  String get noRecentCalls => 'Ez dago azken deirik';

  @override
  String get callHistoryEmpty => 'Zure deien historia hemen agertuko da.';

  @override
  String get loadMore => 'Gehiago kargatu';

  @override
  String get frequentlyContactedHeader => 'Maiz harremanetan jartzen da';

  @override
  String get recentHistory => 'Azken historia';

  @override
  String get noFavouritesRecentsHint =>
      'Oraindik ez dago gogokorik. Izarratu kontaktu bati, sakatu luze dei bat edo erabili Gogokoak fitxa.';

  @override
  String get copyNumber => 'Kopiatu zenbakia';

  @override
  String get editNumberBeforeCall => 'Editatu zenbakia deitu aurretik';

  @override
  String get removeFromFavourites => 'Kendu gogokoetatik';

  @override
  String get addToFavourites => 'Gehitu gogokoetara';

  @override
  String get blockNumberQuestion => 'Blokearen zenbakia?';

  @override
  String blockNumberConfirm(String number) {
    return 'Aurrerantzean ez duzu deirik edo testurik jasoko $number-tik.';
  }

  @override
  String get blocked => 'Blokeatua';

  @override
  String get couldNotBlock => 'Ezin izan da blokeatu';

  @override
  String get contactNotOnDevice => 'Kontaktua ez da gorde gailu honetan';

  @override
  String get unblocked => 'Desblokeatua';

  @override
  String get numberCopied => 'Kopiatutako zenbakia';

  @override
  String get showLess => 'Erakutsi gutxiago';

  @override
  String get showAllTimes => 'Erakutsi denbora guztiak';

  @override
  String mostRecent(String time) {
    return 'Azkena · $time';
  }

  @override
  String get videoCall => 'Bideo-deia';

  @override
  String get couldNotPlaceVideoCall => 'Ezin izan da bideo-deia egin';

  @override
  String get message => 'Mezua';

  @override
  String get couldNotOpenMessaging =>
      'Ezin izan da mezularitza-aplikazioa ireki';

  @override
  String get history => 'Historia';

  @override
  String get viewContact => 'Ikusi kontaktua';

  @override
  String get addToContact => 'Gehitu kontaktura';

  @override
  String get callTypeMissed => 'Galdua';

  @override
  String get callTypeRejected => 'Baztertua';

  @override
  String get callTypeIncoming => 'Sarrera';

  @override
  String get callTypeOutgoing => 'Irteerakoa';

  @override
  String get today => 'Gaur';

  @override
  String get yesterday => 'Atzo';

  @override
  String get justNow => 'Oraintxe bertan';

  @override
  String minutesAgo(int count) {
    return 'Duela $count minutu';
  }

  @override
  String hoursAgo(int count) {
    return 'Duela $count ordu';
  }

  @override
  String get filterAll => 'Denak';

  @override
  String get filterMissed => 'Galdua';

  @override
  String get filterContacts => 'Kontaktuak';

  @override
  String get filterNonContacts => 'Kontaktuak ez direnak';

  @override
  String get iconUpdated =>
      'Ikonoa eguneratu da. Baliteke hasierako pantaila freskatzeko une bat behar izatea.';

  @override
  String get iconSavedRelease =>
      'Aukera gorde da. Hasierako pantailako ikonoa bertsioen konplementuetan eguneratzen da.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Ezin izan da ikonoa aldatu: $error';
  }

  @override
  String get launcherClassicBlack => 'Klasikoa (beltza)';

  @override
  String get launcherLight => 'Argia';

  @override
  String get launcherNothingRed => 'Ezer gorririk';

  @override
  String get launcherDarkGrey => 'Gris iluna';

  @override
  String get launcherCream => 'Krema';

  @override
  String get launcherRetroPhone => 'Retro telefonoa';

  @override
  String get launcherRetroPhoneLight => 'Retro telefonoa (argia)';

  @override
  String get voiceSearchUnavailable =>
      'Ahots bilaketa ez dago erabilgarri gailu honetan.';

  @override
  String voiceSearchFailed(String error) {
    return 'Ahots bidezko bilaketak huts egin du: $error';
  }

  @override
  String get customColor => 'Pertsonalizatua';

  @override
  String get selectColor => 'Hautatu kolorea';

  @override
  String get reset => 'Berrezarri';

  @override
  String get simPickerTitle => 'Aukeratu SIM';

  @override
  String get simChooseForCall => 'Aukeratu SIM dei honetarako';

  @override
  String get defaultSimAsk => 'Galdetu aldiro';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Harremanetarako datuak';

  @override
  String get call => 'Deitu';

  @override
  String get share => 'Partekatu';

  @override
  String get favourite => 'Gogokoena';

  @override
  String get unfavourite => 'Faboritorik gabekoa';

  @override
  String get blockContact => 'Blokeatu kontaktua';

  @override
  String get unblockContact => 'Desblokeatu kontaktua';

  @override
  String get deleteContact => 'Ezabatu kontaktua';

  @override
  String get phone => 'Telefonoa';

  @override
  String get email => 'Posta elektronikoa';

  @override
  String get ringtone => 'Dei-tonua';

  @override
  String get defaultRingtone => 'Lehenetsia';

  @override
  String get simForContact => 'Kontaktu honen SIM SIM';

  @override
  String get callHistoryTitle => 'Deien historia';

  @override
  String get noCallsWithNumber => 'Ez dago deirik zenbaki honekin';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Glifoen animazioa';

  @override
  String get inCallGlyphAnimationStyle => 'Deialdiko glifoen animazioa';

  @override
  String get recordsOff => 'Desaktibatuta';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'SIM lehenetsia';

  @override
  String get nothingPhoneOnly => 'Nothing Telefonoa bakarrik';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Glyph eginbideek Nothing Phone behar dute';

  @override
  String get custom => 'Pertsonalizatua';

  @override
  String presetColorHex(String hex) {
    return 'Aurrez ezarrita · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Pertsonalizatua · $hex';
  }

  @override
  String get oneContact => '1 kontaktu';

  @override
  String upToContacts(int count) {
    return 'Gehienez $count kontaktu';
  }

  @override
  String get answerButtonTapSubtitle => 'Sakatu botoia erantzuteko';

  @override
  String get filterCalls => 'Iragazi deiak';

  @override
  String get filterTooltip => 'Iragazkia';

  @override
  String get settingsTooltip => 'Ezarpenak';

  @override
  String get filterAllSubtitle => 'Deien erregistro osoa';

  @override
  String get filterMissedSubtitle => 'Galdua eta baztertua';

  @override
  String get filterContactsSubtitle =>
      'Deiak gordetako kontaktu batekin bat datoz';

  @override
  String get filterNonContactsSubtitle =>
      'Zure helbide-liburuan ez dauden zenbakiak';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Etengabeko deia: $detail';
  }

  @override
  String get defaultSimForCalls => 'SIM lehenetsia deietarako';

  @override
  String get blinkInterval => 'Keinu-tartea';

  @override
  String get close => 'Itxi';

  @override
  String get frequentlyContactedInfoBody =>
      'Gehien deitutako telefono-zenbakiak erakusten ditu Azkenak fitxaren goialdean, hautatutako denbora-tartean zenbaki bakoitzarekin zenbat dei jaso dituzun, ateratakoak, galdutakoak edo baztertuak izan dituzun kontuan hartuta.\n\nErregistro kopurua: ezarri 0 aukera hau desaktibatzeko. Erabili 1-20 kontaktu nagusi asko erakusteko.\n\nDenbora-tartea gutxienez kontaktu bat erakusten denean bakarrik aplikatzen da.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count argiak, ${ms}ms-ko abiadura';
  }

  @override
  String get deleteContactQuestion => 'Kontaktua ezabatu nahi duzu?';

  @override
  String get deleteContactBody =>
      'Kontaktu hau betiko ezabatuko da zure gailutik.';

  @override
  String get blockContactQuestion => 'Kontaktua blokeatu?';

  @override
  String get unblockContactQuestion => 'Kontaktua desblokeatu nahi duzu?';

  @override
  String get blockContactBody =>
      'Aurrerantzean ez duzu kontaktu honen deirik edo testurik jasoko.';

  @override
  String get unblockContactBody =>
      'Kontaktu honen deiak eta testuak jasotzen hasiko zara.';

  @override
  String get contactBlocked => 'Kontaktua blokeatu da';

  @override
  String get contactUnblocked => 'Desblokeatu da kontaktua';

  @override
  String get noPhoneNumbersToBlock => 'Ez dago blokeatzeko telefono zenbakirik';

  @override
  String get simSameAsSystem => 'Sistemaren berdina';

  @override
  String get simSameAsSystemSubtitle =>
      'Ezarpenetako SIM lehenetsiari jarraitzen dio';

  @override
  String get simAskEveryTimeForContact =>
      'Erakutsi beti kontaktu honen SIM hautatzailea';

  @override
  String get ringtoneSetForContact =>
      'Kontaktu honetarako dei-tonua ezarri da globalki';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Ezin izan da hautatu dei-tonua: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Errorea: $error';
  }

  @override
  String get noCallHistoryFound => 'Ez da deien historiarik aurkitu';

  @override
  String get speedDialVoicemail => 'Markaketa bizkorra: ahots-posta';

  @override
  String shareContactSubject(String name) {
    return 'Kontaktua: $name';
  }

  @override
  String get contactInfo => 'Harremanetarako informazioa';

  @override
  String get dontAskAgainSim => 'Ez galdetu berriro';

  @override
  String get simDontAskAgainSubtitle =>
      'Erabili SIM hau lehenetsi gisa (aldatu Ezarpenetan)';

  @override
  String get addContact => 'Gehitu kontaktua';

  @override
  String get createContact => 'Sortu kontaktua';

  @override
  String get paste => 'Itsatsi';

  @override
  String get clear => 'Garbi';

  @override
  String get returnToCall => 'Itzuli deira';

  @override
  String get numberOfRecordsTitle => 'Erregistro kopurua';

  @override
  String get recordsPickerSubtitle =>
      'Maiz harremanetan jarritako zenbat sarrera erakutsi behar diren (0 = desaktibatuta)';

  @override
  String get torchInfoTitle => 'Linterna keinu';

  @override
  String get torchInfoBody =>
      'Kameraren flashak keinu egiten du sarrerako, irteerako edo etengabeko deietan. Glifo argietatik independentea.';

  @override
  String get glyphMapTitle => 'Glifoen diseinua';

  @override
  String get glyphMapBody =>
      'Nothing Phone 1 Glifo LED eremuak. Irteerako eta dei barruko animazioek kanal hauek erabiltzen dituzte.';

  @override
  String get answerMethodTitle => 'Erantzun metodoa';

  @override
  String get glyphOutgoingCallStyleTitle => 'Irteerako deien estiloa';

  @override
  String get glyphInCallAnimationTitle => 'Deian barneko glifoen animazioa';

  @override
  String get themePickerTitle => 'Gaia';

  @override
  String get torchIncomingTitle => 'Sarrerako dei linterna';

  @override
  String get torchOutgoingTitle => 'Irteerako deien linterna';

  @override
  String get torchOngoingTitle => 'Etengabeko dei linterna';

  @override
  String get timePeriodTitle => 'Denbora-epea';

  @override
  String get ok => 'Ados';

  @override
  String get confirmDeleteCall => 'Dei hau historiatik ezabatu nahi duzu?';

  @override
  String get confirmDeleteAllCalls =>
      'Zenbaki honekin dei guztiak ezabatu nahi dituzu?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Bidali mezu bat';

  @override
  String get addToExistingContactAction => 'Gehitu kontaktu bati';

  @override
  String get mobileLabel => 'Mugikorra';

  @override
  String get callingSimForContactTitle => 'Kontaktu honetarako SIM SIM deitzen';

  @override
  String get contactSettings => 'Kontaktuen ezarpenak';

  @override
  String get setCallingSim => 'Ezarri SIM deitzeko';

  @override
  String get contactRingtone => 'Harremanetarako dei-tonua';

  @override
  String get shareContact => 'Partekatu kontaktua';

  @override
  String get blockNumbers => 'Bloke zenbakiak';

  @override
  String get unblockNumbers => 'Desblokeatu zenbakiak';

  @override
  String get connectedApps => 'Konektatutako aplikazioak';

  @override
  String get simNotSet => 'Ezarrita';

  @override
  String get ringtoneDefault => 'Lehenetsia';

  @override
  String get customRingtone => 'Pertsonalizatua';

  @override
  String get aboutSection => 'Buruz';

  @override
  String get aboutFeedbackSection => 'Buruz eta iritzia';

  @override
  String get aboutDescription =>
      'Nothing Dialer kode irekia da. Garatzailea bazara, ongi etorria izango zara kodea arakatu eta ekarpena egin.';

  @override
  String get aboutViewSource => 'Ikusi GitHub-en';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Ezin izan da esteka ireki';

  @override
  String get reviewSection => 'Berrikuspena';

  @override
  String get reviewDescription =>
      'Nothing Dialer gozatzen? Google Play-n duzun balorazioa besteei aplikazioa aurkitzen laguntzen die.';

  @override
  String get reviewRateOnPlay => 'Baloratu Google Play-n';

  @override
  String get reviewRateOnPlaySubtitle =>
      'Utzi balorazioa aplikaziotik irten gabe';

  @override
  String get reviewCouldNotOpen => 'Ezin izan da Google Play ireki';

  @override
  String get breathSpeed => 'Arnasaren Abiadura';

  @override
  String get breathSpeedBlinkHint => 'Behea = Keinua, Goiena = Arnas geldoa';

  @override
  String get speedSliderHint => 'Behea = Azkarrago, Goiena = Motelago';

  @override
  String get swatchDefault => 'Lehenetsia';

  @override
  String get customAccentColorPicker => 'Azentu kolore pertsonalizatua';

  @override
  String get customLightBackgroundPicker => 'Atzeko plano argi pertsonalizatua';

  @override
  String get customDarkBackgroundPicker => 'Atzeko plano iluna pertsonalizatua';

  @override
  String get customCallBackgroundPicker => 'Deien atzeko plano pertsonalizatua';

  @override
  String get ongoingCallStyleTitle => 'Etengabeko dei-estiloa';

  @override
  String get glyphMapUnavailable => 'Glifo-mapa ez dago erabilgarri';

  @override
  String get animationDelayRange => 'Animazioaren atzerapena (1s - 10s)';

  @override
  String get animationDelayRangeSingle =>
      'Animazioaren atzerapena (0,1 s - 10 s)';

  @override
  String get inCallMute => 'Isildu';

  @override
  String get inCallKeypad => 'Teklatua';

  @override
  String get inCallSpeaker => 'Hizlaria';

  @override
  String get inCallMore => 'Gehiago';

  @override
  String get inCallBluetooth => 'Bluetootha';

  @override
  String get inCallPhone => 'Telefonoa';

  @override
  String get inCallAddCall => 'Gehitu deia';

  @override
  String get inCallChangeSim => 'Aldatu SIM';

  @override
  String get inCallDecline => 'Gainbehera';

  @override
  String get inCallAnswer => 'Erantzun';

  @override
  String get inCallMessage => 'Mezua';

  @override
  String get inCallCalling => 'Deitzen…';

  @override
  String get inCallIncoming => 'Sarrerako deia';

  @override
  String get inCallSelectSim => 'Hautatu SIM…';

  @override
  String get inCallSwitchingSim => 'SIM aldatzen…';

  @override
  String get inCallCallEnded => 'Deia amaitu da';

  @override
  String inCallCallingVia(String sim) {
    return '$sim bidez deitzen';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return '<b>$sim</b> bidez deitzen';
  }

  @override
  String get inCallChooseSim => 'Aukeratu SIM dei honetarako';

  @override
  String get inCallDragAnswerDecline =>
      'Arrastatu eskuinera erantzuteko · Arrastatu ezkerrera ukatzeko';

  @override
  String inCallMobileNumber(String number) {
    return 'Mugikorra $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (Oraingo)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Deitu <b>$sim</b> bidez';
  }

  @override
  String get inCallCallFrom => 'Deitu';

  @override
  String get inCallUnknown => 'Ezezaguna';

  @override
  String get selectContactRingtone => 'Hautatu kontaktuen dei-tonua';

  @override
  String get speakToSearchPrompt => 'Hitz egin bilatzeko';

  @override
  String get phonePermissionRequired => 'Telefonoaren baimena behar da';

  @override
  String callFailed(String error) {
    return 'Deiak huts egin du: $error';
  }

  @override
  String get callPermissionDenied => 'Deiaren baimena ukatu da';

  @override
  String get alreadyDefaultDialer =>
      'Dagoeneko markatzaile lehenetsi gisa ezarri duzu';

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
