// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Latvian (`lv`).
class AppLocalizationsLv extends AppLocalizations {
  AppLocalizationsLv([String locale = 'lv']) : super(locale);

  @override
  String get appTitle => 'Nothing Dialer';

  @override
  String get settings => 'Iestatījumi';

  @override
  String get settingsSearchHint => 'Meklēšanas iestatījumi';

  @override
  String get settingsSearchNoResults => 'Iestatījumi nav atrasti';

  @override
  String get general => 'Ģenerālis';

  @override
  String get theme => 'Tēma';

  @override
  String get themeSystemDefault => 'Sistēmas noklusējums';

  @override
  String get themeLight => 'Gaisma';

  @override
  String get themeDark => 'Tumšs';

  @override
  String get themeFollowSystem => 'Sekojiet sistēmas iestatījumiem';

  @override
  String get themeAlwaysLight => 'Vienmēr izmantojiet gaišu tēmu';

  @override
  String get themeAlwaysDark => 'Vienmēr izmantojiet tumšo motīvu';

  @override
  String get language => 'Valoda';

  @override
  String get languageDeviceDefault => 'Ierīces noklusējums';

  @override
  String get languagePickerTitle => 'Valoda';

  @override
  String get languageSearchHint => 'Meklēt valodas';

  @override
  String get font => 'Fonts';

  @override
  String get fontSystem => 'Sistēmas noklusējums';

  @override
  String get fontNdot => 'Nekas (NDot)';

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
      'Fonta lejupielāde neizdevās. Pārbaudiet savienojumu un mēģiniet vēlreiz.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Fonts';

  @override
  String get fontPreviewSample => 'Nothing Dialer';

  @override
  String get fontAppWide => 'Lietotnes fonts';

  @override
  String get fontApplyTo => 'Pieteikties uz';

  @override
  String get fontApplyEntireApp => 'Visa lietotne';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Tas pats fonts visur, tostarp zvana laikā';

  @override
  String get fontApplyTitlesOnly => 'Virsraksti un galvenes';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Tikai lieli nosaukumi un sadaļu galvenes';

  @override
  String get fontApplyCustomize => 'Pielāgot';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Izvēlieties fontu katram ekrānam un teksta veidam';

  @override
  String get fontCustomizeSection => 'Pielāgot pēc ekrāna';

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
  String get fontRolePageTitle => 'Lapas nosaukums';

  @override
  String get fontRoleSectionHeader => 'Sadaļas galvene';

  @override
  String get fontRolePrimary => 'Primārais teksts';

  @override
  String get fontRoleSecondary => 'Sekundārais teksts';

  @override
  String get fontRoleButton => 'Pogas';

  @override
  String get fontRoleDialKey => 'Numura sastādīšanas tastatūras taustiņi';

  @override
  String get fontSurfaceRecents => 'Nesen';

  @override
  String get fontSurfaceContacts => 'Kontakti';

  @override
  String get fontSurfaceSettings => 'Iestatījumi';

  @override
  String get fontSurfaceDialpad => 'Numura sastādīšanas tastatūra';

  @override
  String get fontSurfaceShell => 'Navigācija';

  @override
  String get fontSurfaceDefaultDialer =>
      'Noklusējuma numura sastādītāja uzvedne';

  @override
  String get fontSurfaceFavourites => 'Izlase';

  @override
  String get fontSurfaceBlocked => 'Bloķēti numuri';

  @override
  String get fontSurfaceContactDetail => 'Kontaktinformācija';

  @override
  String get fontSurfaceCallHistory => 'Zvanu vēsture';

  @override
  String get fontSurfaceSheets => 'Loksnes un savācēji';

  @override
  String get fontSurfaceInCall => 'Sarunas ekrāns';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — visa lietotne';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — tikai nosaukumi';
  }

  @override
  String get fontSubtitleCustomize => 'Pielāgots katram ekrānam';

  @override
  String get background => 'Fons';

  @override
  String get accent => 'Akcents';

  @override
  String get lightBackground => 'Gaišs fons';

  @override
  String get lightAccent => 'Viegls akcents';

  @override
  String get darkBackground => 'Tumšs fons';

  @override
  String get darkAccent => 'Tumšs akcents';

  @override
  String get callBackground => 'Zvana fons';

  @override
  String get appIcon => 'Lietotnes ikona';

  @override
  String get answerMethod => 'Atbildes metode';

  @override
  String get answerSlide => 'Slidiniet, lai atbildētu';

  @override
  String get answerSlideSubtitle =>
      'Velciet pa kreisi/pa labi pa joslu, piemēram, Google Phone';

  @override
  String get answerButton => 'Pieskarieties pogai';

  @override
  String get answerButtonSubtitle =>
      'Pieskarieties atbildes vai noraidīšanas pogām';

  @override
  String get answerHuawei => 'Huawei stilā';

  @override
  String get answerHuaweiSubtitle =>
      'Lai atbildētu, velciet apli uz zaļo tālruni';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — velciet uz zaļu/sarkanu';

  @override
  String get calling => 'Zvana';

  @override
  String get defaultSim => 'Noklusējuma SIM';

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
  String get askEveryTime => 'Jautājiet katru reizi';

  @override
  String get askEveryTimeSubtitle => 'Rādīt SIM atlasītāju pirms katra zvana';

  @override
  String simSlot(int slot) {
    return 'SIM karte $slot';
  }

  @override
  String get noSimCardsFound => 'Nav atrasta neviena SIM karte';

  @override
  String couldNotLoadSims(String error) {
    return 'Nevarēja ielādēt SIM kartes: $error';
  }

  @override
  String get allFavourites => 'Visi favorīti';

  @override
  String get allFavouritesSubtitle =>
      'Pārkārtot, noņemt un pievienot no kontaktpersonām';

  @override
  String get blockedNumbers => 'Bloķēti numuri';

  @override
  String get blockedNumbersSubtitle => 'Skatiet un atbloķējiet numurus';

  @override
  String get soundsAndVibration => 'Skaņas un vibrācijas';

  @override
  String get soundsAndVibrationSubtitle =>
      'Zvana signāls, vibrācija, numura sastādīšanas tastatūras toņi';

  @override
  String couldNotOpenSettings(String error) {
    return 'Nevarēja atvērt iestatījumus: $error';
  }

  @override
  String get frequentlyContacted => 'Bieži sazināties';

  @override
  String get numberOfRecords => 'Ierakstu skaits';

  @override
  String get timePeriod => 'Laika periods';

  @override
  String get periodLast24Hours => 'Pēdējās 24 stundas';

  @override
  String get periodLast24HoursSubtitle => 'Zvani no pagājušās dienas';

  @override
  String get periodLast7Days => 'Pēdējās 7 dienas';

  @override
  String get periodLast7DaysSubtitle => 'Zvani no pagājušās nedēļas';

  @override
  String get periodLast30Days => 'Pēdējās 30 dienas';

  @override
  String get periodLast30DaysSubtitle => 'Zvani no pagājušā mēneša';

  @override
  String get periodLast12Months => 'Pēdējie 12 mēneši';

  @override
  String get periodLast12MonthsSubtitle => 'Zvani no pagājušā gada';

  @override
  String get periodAllTime => 'Visu laiku';

  @override
  String get periodAllTimeSubtitle => 'Visa zvanu vēsture';

  @override
  String get frequentMaxOff => 'Izslēgts';

  @override
  String frequentMaxCount(int count) {
    return '$count kontaktpersonas';
  }

  @override
  String get torchBlink => 'Lāpas mirgošana';

  @override
  String get torchIncomingCall => 'Ienākošā zvana lāpa';

  @override
  String get torchOutgoingCall => 'Izejošo zvanu lāpa';

  @override
  String get torchOngoingCall => 'Notiekošā zvana lāpa';

  @override
  String get torchIncomingInterval => 'Ienākošā mirgošanas intervāls';

  @override
  String get torchOutgoingInterval => 'Izejošā mirkšķināšanas intervāls';

  @override
  String get torchOngoingInterval => 'Notiek mirkšķināšanas intervāls';

  @override
  String get torchOff => 'Izslēgts';

  @override
  String get torchOffIncomingSubtitle => 'Zvana laikā nav lāpas';

  @override
  String get torchOffOutgoingSubtitle => 'Zvanīšanas laikā nav lāpas';

  @override
  String get torchOffOngoingSubtitle => 'Aktīvās sarunas laikā nav lāpas';

  @override
  String get torchFixedInterval => 'Fiksēts intervāls';

  @override
  String get torchFixedIntervalSubtitle => 'Mirkšķiniet ar iestatīto ātrumu';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds mirgo';
  }

  @override
  String get flashlightUnavailable => 'Lukturis nav pieejams šajā ierīcē';

  @override
  String get glyphLights => 'Glifu gaismas';

  @override
  String get glyphCallingAnimation => 'Glifu izsaukšanas animācija';

  @override
  String get glyphOngoingAnimation => 'Glyph notiekošā zvana animācija';

  @override
  String get glyphNone => 'Nav';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Izejošajiem zvaniem atspējot Glyph gaismas';

  @override
  String get glyphNoneInCallSubtitle =>
      'Aktīvas sarunas laikā atspējojiet Glyph gaismas';

  @override
  String get glyphBreathProgress => 'Elpa un progress';

  @override
  String get glyphBreathProgressSubtitle =>
      'Gaismas elpo, kamēr rinda piepildās pēc 65 sekundēm';

  @override
  String get glyphAccumulate => 'Uzkrāties';

  @override
  String get glyphAccumulateSubtitle =>
      'Animācijas uzkrāšanās uz gaismām C1-C4';

  @override
  String get glyphSingle => 'Vientuļa';

  @override
  String get glyphSingleSubtitle => 'Viena gaisma, kas pārvietojas pāri C1-C4';

  @override
  String get glyphBreath => 'Elpa';

  @override
  String get glyphBreathSubtitle => 'Izvēlieties gaismas un ātrumu';

  @override
  String get glyphSteady => 'Stabils';

  @override
  String get glyphSteadySubtitle => 'Izvēlētās gaismas paliek ieslēgtas';

  @override
  String get breathSettings => 'Elpošanas iestatījumi';

  @override
  String get activeLights => 'Aktīvās gaismas';

  @override
  String lightsCount(int count) {
    return '$count gaismas';
  }

  @override
  String get speedSettings => 'Ātruma iestatījumi';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms aizkave';
  }

  @override
  String get durationAndSpeed => 'Ilgums un ātrums';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s ilgums, ${interval}ms intervāls';
  }

  @override
  String get cancel => 'Atcelt';

  @override
  String get done => 'Gatavs';

  @override
  String get save => 'Saglabāt';

  @override
  String get block => 'Bloķēt';

  @override
  String get delete => 'Dzēst';

  @override
  String get recents => 'Nesen';

  @override
  String get contacts => 'Kontakti';

  @override
  String get hideFavouritesOnRecents => 'Paslēpt izlasi vietnē Nesenie';

  @override
  String get showFavouritesOnRecents => 'Rādīt izlasi vietnē Nesenie';

  @override
  String get ongoingCall => 'Notiek zvans';

  @override
  String get setAsDefaultTitle => 'IESTATĪT KĀ\nNOKLUSĒJUMS';

  @override
  String get setAsDefaultBody =>
      'Lai izmantotu Nothing Dialer, tā ir jāiestata kā noklusējuma tālruņa lietotne. Tas ļauj pārvaldīt zvanus, skatīt vēsturi un izmantot Glyph animācijas.';

  @override
  String get setAsDefaultButton => 'IESTATĪT KĀ NOKLUSĒJUMU';

  @override
  String get nothingDialerBrand => 'NEKAS zvanītājprogramma 1';

  @override
  String get favourites => 'Izlase';

  @override
  String get addFavourite => 'Pievienot izlasi';

  @override
  String get favouritesDrawerHint =>
      'Izmantojiet izvēlni, lai pievienotu kontaktpersonas. Pieskarieties ārpus atvilktnes vai velciet to aizvērtu. Atzīmējiet kontaktpersonu ar zvaigznīti tās detaļās vai turiet nospiestu zvanu sadaļā Nesenie.';

  @override
  String get menu => 'Izvēlne';

  @override
  String get noFavouritesYet =>
      'Izlases vēl nav.\nAtveriet izvēlni, lai to pievienotu, vai ar zvaigznīti kontaktpersonu.';

  @override
  String get contactsPermissionNeeded => 'Nepieciešama kontaktpersonu atļauja';

  @override
  String get chooseContact => 'Izvēlieties kontaktpersonu';

  @override
  String get noPhone => 'Nav tālruņa';

  @override
  String get pickNumber => 'Izvēlieties numuru';

  @override
  String get contactHasNoPhone => 'Šai kontaktpersonai nav tālruņa numura';

  @override
  String get blockNumber => 'Bloķēt numuru';

  @override
  String get enterPhoneNumber => 'Ievadiet tālruņa numuru';

  @override
  String unblockedDisplay(String display) {
    return 'Atbloķēts $display';
  }

  @override
  String get couldNotUnblockNumber => 'Nevarēja atbloķēt numuru';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked bloķēts • $matched atbilst';
  }

  @override
  String get contactsPermissionMissing =>
      'Trūkst kontaktpersonu atļaujas. Pieskarieties, lai labotu.';

  @override
  String get noBlockedNumbers => 'Nav bloķētu numuru';

  @override
  String get unknownContact => 'Nezināma kontaktpersona';

  @override
  String get unblock => 'Atbloķēt';

  @override
  String get permissionNeeded => 'Nepieciešama atļauja';

  @override
  String get grantPhonePermission =>
      'Piešķiriet tālruņa atļauju skatīt zvanu vēsturi.';

  @override
  String get grantContactsPermission =>
      'Piešķiriet kontaktpersonām atļauju skatīt jūsu adrešu grāmatu.';

  @override
  String get openSettings => 'Atveriet iestatījumus';

  @override
  String get tryAgain => 'Mēģiniet vēlreiz';

  @override
  String get couldNotLoadContacts => 'Nevarēja ielādēt kontaktpersonas';

  @override
  String get contactsLoadError => 'Lasot jūsu adrešu grāmatu, radās kļūda.';

  @override
  String get noContactsFound => 'Netika atrasta neviena kontaktpersona';

  @override
  String get contactsEmptySubtitle =>
      'Šeit tiks parādītas kontaktpersonas no jūsu ierīces.';

  @override
  String get searchContacts => 'Meklēt kontaktpersonas…';

  @override
  String get searchRecentCalls => 'Meklēt pēdējos zvanus';

  @override
  String get fromContacts => 'No kontaktiem';

  @override
  String get recentsSearchSection => 'Nesenā meklēšana';

  @override
  String get recentsSearchShowContacts => 'Rādīt kontaktpersonas meklēšanā';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Meklējot jaunākos, zem zvanu vēstures rezultātiem rādiet arī atbilstošas ​​personas no jūsu adrešu grāmatas.';

  @override
  String get voiceSearch => 'Balss meklēšana';

  @override
  String get createNewContact => 'Izveidot jaunu kontaktu';

  @override
  String callError(String error) {
    return 'Zvana kļūda: $error';
  }

  @override
  String get noRecentCalls => 'Nav pēdējo zvanu';

  @override
  String get callHistoryEmpty => 'Šeit tiks parādīta jūsu zvanu vēsture.';

  @override
  String get loadMore => 'Ielādēt vairāk';

  @override
  String get frequentlyContactedHeader => 'Bieži sazinājās';

  @override
  String get recentHistory => 'Jaunākā vēsture';

  @override
  String get noFavouritesRecentsHint =>
      'Izlases vēl nav. Ar zvaigznīti kontaktpersonu, turiet nospiestu zvanu vai izmantojiet cilni Izlase.';

  @override
  String get copyNumber => 'Kopēt numuru';

  @override
  String get editNumberBeforeCall => 'Rediģējiet numuru pirms zvanīšanas';

  @override
  String get removeFromFavourites => 'Noņemt no izlases';

  @override
  String get addToFavourites => 'Pievienot izlasei';

  @override
  String get blockNumberQuestion => 'Bloķēt numuru?';

  @override
  String blockNumberConfirm(String number) {
    return 'Jūs vairs nesaņemsit zvanus vai īsziņas no $number.';
  }

  @override
  String get blocked => 'Bloķēts';

  @override
  String get couldNotBlock => 'Nevarēja bloķēt';

  @override
  String get contactNotOnDevice => 'Kontaktpersona nav saglabāta šajā ierīcē';

  @override
  String get unblocked => 'Atbloķēts';

  @override
  String get numberCopied => 'Numurs nokopēts';

  @override
  String get showLess => 'Rādīt mazāk';

  @override
  String get showAllTimes => 'Rādīt visu laiku';

  @override
  String mostRecent(String time) {
    return 'Jaunākais · $time';
  }

  @override
  String get videoCall => 'Videozvans';

  @override
  String get couldNotPlaceVideoCall => 'Nevarēja veikt videozvanu';

  @override
  String get message => 'Ziņa';

  @override
  String get couldNotOpenMessaging =>
      'Nevarēja atvērt ziņojumapmaiņas lietotni';

  @override
  String get history => 'Vēsture';

  @override
  String get viewContact => 'Skatīt kontaktpersonu';

  @override
  String get addToContact => 'Pievienot kontaktam';

  @override
  String get callTypeMissed => 'Nokavēts';

  @override
  String get callTypeRejected => 'Noraidīts';

  @override
  String get callTypeIncoming => 'Ienākošie';

  @override
  String get callTypeOutgoing => 'Izejošais';

  @override
  String get today => 'Šodien';

  @override
  String get yesterday => 'vakar';

  @override
  String get justNow => 'Tikai tagad';

  @override
  String minutesAgo(int count) {
    return 'pirms $count min';
  }

  @override
  String hoursAgo(int count) {
    return 'pirms $count h';
  }

  @override
  String get filterAll => 'Visi';

  @override
  String get filterMissed => 'Nokavēts';

  @override
  String get filterContacts => 'Kontakti';

  @override
  String get filterNonContacts => 'Bezkontakti';

  @override
  String get iconUpdated =>
      'Ikona atjaunināta. Sākuma ekrāna atsvaidzināšana var aizņemt kādu brīdi.';

  @override
  String get iconSavedRelease =>
      'Izvēle saglabāta. Sākuma ekrāna ikona tiek atjaunināta izlaiduma versijās.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Nevarēja mainīt ikonu: $error';
  }

  @override
  String get launcherClassicBlack => 'Klasisks (melns)';

  @override
  String get launcherLight => 'Gaisma';

  @override
  String get launcherNothingRed => 'Nekas sarkans';

  @override
  String get launcherDarkGrey => 'Tumši pelēks';

  @override
  String get launcherCream => 'Krēms';

  @override
  String get launcherRetroPhone => 'Retro tālrunis';

  @override
  String get launcherRetroPhoneLight => 'Retro tālrunis (gaisma)';

  @override
  String get voiceSearchUnavailable =>
      'Balss meklēšana šajā ierīcē nav pieejama.';

  @override
  String voiceSearchFailed(String error) {
    return 'Balss meklēšana neizdevās: $error';
  }

  @override
  String get customColor => 'Pielāgots';

  @override
  String get selectColor => 'Izvēlieties krāsu';

  @override
  String get reset => 'Atiestatīt';

  @override
  String get simPickerTitle => 'Izvēlieties SIM';

  @override
  String get simChooseForCall => 'Šim zvanam izvēlieties SIM karti';

  @override
  String get defaultSimAsk => 'Jautājiet katru reizi';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM karte $slot';
  }

  @override
  String get contactDetails => 'Kontaktinformācija';

  @override
  String get call => 'Zvaniet';

  @override
  String get share => 'Dalīties';

  @override
  String get favourite => 'Mīļākais';

  @override
  String get unfavourite => 'Neiecienīts';

  @override
  String get blockContact => 'Bloķēt kontaktpersonu';

  @override
  String get unblockContact => 'Atbloķēt kontaktpersonu';

  @override
  String get deleteContact => 'Dzēst kontaktpersonu';

  @override
  String get phone => 'Tālrunis';

  @override
  String get email => 'E-pasts';

  @override
  String get ringtone => 'Zvana signāls';

  @override
  String get defaultRingtone => 'Noklusējums';

  @override
  String get simForContact => 'SIM karte šai kontaktpersonai';

  @override
  String get callHistoryTitle => 'Zvanu vēsture';

  @override
  String get noCallsWithNumber => 'Nav zvanu ar šo numuru';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Glifu animācija';

  @override
  String get inCallGlyphAnimationStyle => 'Glyph animācija zvana laikā';

  @override
  String get recordsOff => 'Izslēgts';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Noklusējuma SIM';

  @override
  String get nothingPhoneOnly => 'Nekas Tikai telefons';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Glyph funkcijām ir nepieciešams Nothing Phone';

  @override
  String get custom => 'Pielāgots';

  @override
  String presetColorHex(String hex) {
    return 'Iepriekš iestatīts · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Pielāgots · $hex';
  }

  @override
  String get oneContact => '1 kontaktpersona';

  @override
  String upToContacts(int count) {
    return 'Līdz $count kontaktpersonām';
  }

  @override
  String get answerButtonTapSubtitle => 'Pieskarieties pogai, lai atbildētu';

  @override
  String get filterCalls => 'Filtrēt zvanus';

  @override
  String get filterTooltip => 'Filtrs';

  @override
  String get settingsTooltip => 'Iestatījumi';

  @override
  String get filterAllSubtitle => 'Viss zvanu žurnāls';

  @override
  String get filterMissedSubtitle => 'Nokavēts un noraidīts';

  @override
  String get filterContactsSubtitle =>
      'Zvani tika saskaņoti ar saglabāto kontaktpersonu';

  @override
  String get filterNonContactsSubtitle => 'Numuri nav jūsu adrešu grāmatā';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Pašreizējais zvans: $detail';
  }

  @override
  String get defaultSimForCalls => 'Noklusējuma SIM karte zvaniem';

  @override
  String get blinkInterval => 'Mirkšķināšanas intervāls';

  @override
  String get close => 'Aizvērt';

  @override
  String get frequentlyContactedInfoBody =>
      'Cilnes Pēdējie augšdaļā tiek rādīti jūsu visbiežāk zvanītie tālruņu numuri, pamatojoties uz to, cik ienākošo, izejošo, neatbildēto vai noraidīto zvanu esat saņēmis ar katru numuru izvēlētajā laika periodā.\n\nIerakstu skaits: iestatiet uz 0, lai to izslēgtu. Izmantojiet 1–20, lai parādītu, cik daudz populārāko kontaktpersonu.\n\nLaika periods ir spēkā tikai tad, ja ir parādīts vismaz viens kontakts.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count gaismas, ${ms}ms ātrums';
  }

  @override
  String get deleteContactQuestion => 'Vai dzēst kontaktpersonu?';

  @override
  String get deleteContactBody =>
      'Šī kontaktpersona tiks neatgriezeniski izdzēsta no jūsu ierīces.';

  @override
  String get blockContactQuestion => 'Vai bloķēt kontaktpersonu?';

  @override
  String get unblockContactQuestion => 'Vai atbloķēt kontaktpersonu?';

  @override
  String get blockContactBody =>
      'Jūs vairs nesaņemsit zvanus vai īsziņas no šīs kontaktpersonas.';

  @override
  String get unblockContactBody =>
      'Jūs sāksit saņemt zvanus un īsziņas no šīs kontaktpersonas.';

  @override
  String get contactBlocked => 'Kontaktpersona ir bloķēta';

  @override
  String get contactUnblocked => 'Kontaktpersona ir atbloķēta';

  @override
  String get noPhoneNumbersToBlock => 'Nav bloķējamo tālruņa numuru';

  @override
  String get simSameAsSystem => 'Tāda pati kā sistēma';

  @override
  String get simSameAsSystemSubtitle =>
      'Iestatījumos ievēro noklusējuma SIM karti';

  @override
  String get simAskEveryTimeForContact =>
      'Vienmēr rādīt šīs kontaktpersonas SIM atlasītāju';

  @override
  String get ringtoneSetForContact =>
      'Šai kontaktpersonai globāli iestatīts zvana signāls';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Neizdevās izvēlēties zvana signālu: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Kļūda: $error';
  }

  @override
  String get noCallHistoryFound => 'Netika atrasta zvanu vēsture';

  @override
  String get speedDialVoicemail => 'Ātrie zvani: balss pasts';

  @override
  String shareContactSubject(String name) {
    return 'Kontaktpersona: $name';
  }

  @override
  String get contactInfo => 'Kontaktinformācija';

  @override
  String get dontAskAgainSim => 'Nejautājiet vēlreiz';

  @override
  String get simDontAskAgainSubtitle =>
      'Izmantot šo SIM karti kā noklusējumu (mainīt iestatījumu sadaļā)';

  @override
  String get addContact => 'Pievienojiet kontaktpersonu';

  @override
  String get createContact => 'Izveidot kontaktu';

  @override
  String get paste => 'Ielīmēt';

  @override
  String get clear => 'Skaidrs';

  @override
  String get returnToCall => 'Atgriezties uz zvanu';

  @override
  String get numberOfRecordsTitle => 'Ierakstu skaits';

  @override
  String get recordsPickerSubtitle =>
      'Cik bieži sazinātos ierakstus rādīt (0 = izslēgts)';

  @override
  String get torchInfoTitle => 'Lāpas mirgošana';

  @override
  String get torchInfoBody =>
      'Mirgo kameras zibspuldze ienākošo, izejošo vai notiekošo zvanu laikā. Neatkarīgs no Glyph gaismām.';

  @override
  String get glyphMapTitle => 'Glifu izkārtojums';

  @override
  String get glyphMapBody =>
      'Nekas Tālrunis 1 Glyph LED zonas. Šos kanālus izmanto izejošo un zvanu animācijas.';

  @override
  String get answerMethodTitle => 'Atbildes metode';

  @override
  String get glyphOutgoingCallStyleTitle => 'Izejošo zvanu stils';

  @override
  String get glyphInCallAnimationTitle => 'Glifa animācija zvana laikā';

  @override
  String get themePickerTitle => 'Tēma';

  @override
  String get torchIncomingTitle => 'Ienākošā zvana lāpa';

  @override
  String get torchOutgoingTitle => 'Izejošo zvanu lāpa';

  @override
  String get torchOngoingTitle => 'Notiekošā zvana lāpa';

  @override
  String get timePeriodTitle => 'Laika periods';

  @override
  String get ok => 'labi';

  @override
  String get confirmDeleteCall => 'Vai dzēst šo zvanu no vēstures?';

  @override
  String get confirmDeleteAllCalls => 'Vai dzēst visus zvanus ar šo numuru?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Nosūtiet ziņu';

  @override
  String get addToExistingContactAction => 'Pievienot kontaktpersonai';

  @override
  String get mobileLabel => 'Mobilais';

  @override
  String get callingSimForContactTitle => 'Zvana SIM kartei šim kontaktam';

  @override
  String get contactSettings => 'Kontaktpersonu iestatījumi';

  @override
  String get setCallingSim => 'Iestatīt zvanīšanas SIM karti';

  @override
  String get contactRingtone => 'Kontakta zvana signāls';

  @override
  String get shareContact => 'Kopīgojiet kontaktu';

  @override
  String get blockNumbers => 'Bloķēt numurus';

  @override
  String get unblockNumbers => 'Atbloķējiet numurus';

  @override
  String get connectedApps => 'Saistītās lietotnes';

  @override
  String get simNotSet => 'Nav iestatīts';

  @override
  String get ringtoneDefault => 'Noklusējums';

  @override
  String get customRingtone => 'Pielāgots';

  @override
  String get aboutSection => 'Par';

  @override
  String get aboutFeedbackSection => 'Par un atsauksmes';

  @override
  String get aboutDescription =>
      'Nothing Dialer ir atvērtā koda. Ja esat izstrādātājs, varat izpētīt kodu un sniegt ieguldījumu.';

  @override
  String get aboutViewSource => 'Skatīt vietnē GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Nevarēja atvērt saiti';

  @override
  String get reviewSection => 'Pārskats';

  @override
  String get reviewDescription =>
      'Izbaudi Nothing Dialer? Jūsu vērtējums pakalpojumā Google Play palīdz citiem atrast lietotni.';

  @override
  String get reviewRateOnPlay => 'Novērtējiet pakalpojumā Google Play';

  @override
  String get reviewRateOnPlaySubtitle =>
      'Atstājiet vērtējumu, neizejot no lietotnes';

  @override
  String get reviewCouldNotOpen => 'Nevarēja atvērt pakalpojumu Google Play';

  @override
  String get breathSpeed => 'Elpas ātrums';

  @override
  String get breathSpeedBlinkHint => 'Zemāk = mirgo, augstāk = lēna elpošana';

  @override
  String get speedSliderHint => 'Zemāk = ātrāk, augstāk = lēnāk';

  @override
  String get swatchDefault => 'Noklusējums';

  @override
  String get customAccentColorPicker => 'Pielāgota akcenta krāsa';

  @override
  String get customLightBackgroundPicker => 'Pielāgots gaišs fons';

  @override
  String get customDarkBackgroundPicker => 'Pielāgots tumšs fons';

  @override
  String get customCallBackgroundPicker => 'Pielāgots zvana fons';

  @override
  String get ongoingCallStyleTitle => 'Notiekošā zvana stils';

  @override
  String get glyphMapUnavailable => 'Glifu karte nav pieejama';

  @override
  String get animationDelayRange => 'Animācijas aizkave (1 s–10 s)';

  @override
  String get animationDelayRangeSingle => 'Animācijas aizkave (0,1 s–10 s)';

  @override
  String get inCallMute => 'Izslēgt skaņu';

  @override
  String get inCallKeypad => 'Tastatūra';

  @override
  String get inCallSpeaker => 'Skaļrunis';

  @override
  String get inCallMore => 'Vairāk';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Tālrunis';

  @override
  String get inCallAddCall => 'Pievienot zvanu';

  @override
  String get inCallChangeSim => 'Mainiet SIM karti';

  @override
  String get inCallDecline => 'Noraidīt';

  @override
  String get inCallAnswer => 'Atbilde';

  @override
  String get inCallMessage => 'Ziņa';

  @override
  String get inCallCalling => 'Zvana…';

  @override
  String get inCallIncoming => 'Ienākošais zvans';

  @override
  String get inCallSelectSim => 'Atlasiet SIM karti…';

  @override
  String get inCallSwitchingSim => 'Notiek SIM kartes maiņa…';

  @override
  String get inCallCallEnded => 'Zvans beidzās';

  @override
  String inCallCallingVia(String sim) {
    return 'Zvanīt pa $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Zvanīt pa <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Šim zvanam izvēlieties SIM karti';

  @override
  String get inCallDragAnswerDecline =>
      'Velciet pa labi, lai atbildētu · Velciet pa kreisi, lai noraidītu';

  @override
  String inCallMobileNumber(String number) {
    return 'Mobilais $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (pašreizējais)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Zvaniet pa <b>$sim</b> no plkst';
  }

  @override
  String get inCallCallFrom => 'Zvans no';

  @override
  String get inCallUnknown => 'Nezināms';

  @override
  String get selectContactRingtone =>
      'Izvēlieties kontaktpersonas zvana signālu';

  @override
  String get speakToSearchPrompt => 'Runājiet, lai meklētu';

  @override
  String get phonePermissionRequired => 'Nepieciešama tālruņa atļauja';

  @override
  String callFailed(String error) {
    return 'Zvans neizdevās: $error';
  }

  @override
  String get callPermissionDenied => 'Zvana atļauja liegta';

  @override
  String get alreadyDefaultDialer =>
      'Jau iestatīts kā noklusējuma numura sastādītājs';

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
