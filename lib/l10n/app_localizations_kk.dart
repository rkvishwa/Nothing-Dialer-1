// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kazakh (`kk`).
class AppLocalizationsKk extends AppLocalizations {
  AppLocalizationsKk([String locale = 'kk']) : super(locale);

  @override
  String get appTitle => 'Ештеңе тергіш';

  @override
  String get settings => 'Параметрлер';

  @override
  String get settingsSearchHint => 'Іздеу параметрлері';

  @override
  String get settingsSearchNoResults => 'Параметрлер табылмады';

  @override
  String get general => 'Жалпы';

  @override
  String get theme => 'Тақырып';

  @override
  String get themeSystemDefault => 'Жүйе әдепкі';

  @override
  String get themeLight => 'Жарық';

  @override
  String get themeDark => 'Қараңғы';

  @override
  String get themeFollowSystem => 'Жүйе параметрлерін орындаңыз';

  @override
  String get themeAlwaysLight => 'Әрқашан жеңіл тақырыпты пайдаланыңыз';

  @override
  String get themeAlwaysDark => 'Әрқашан қараңғы тақырыпты пайдаланыңыз';

  @override
  String get language => 'Тіл';

  @override
  String get languageDeviceDefault => 'Құрылғы әдепкі';

  @override
  String get languagePickerTitle => 'Тіл';

  @override
  String get languageSearchHint => 'Тілдерді іздеу';

  @override
  String get font => 'Қаріп';

  @override
  String get fontSystem => 'Жүйе әдепкі';

  @override
  String get fontNdot => 'Ештеңе (NDot)';

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
      'Қаріп жүктелмеді. Байланысты тексеріп, әрекетті қайталаңыз.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Қаріп';

  @override
  String get fontPreviewSample => 'Ештеңе тергіш';

  @override
  String get fontAppWide => 'Қолданба шрифті';

  @override
  String get fontApplyTo => 'Қолдану';

  @override
  String get fontApplyEntireApp => 'Толық қолданба';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Барлық жерде, соның ішінде қоңырау кезінде бірдей қаріп';

  @override
  String get fontApplyTitlesOnly => 'Тақырыптар мен тақырыптар';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Тек үлкен тақырыптар мен бөлім тақырыптары';

  @override
  String get fontApplyCustomize => 'Баптау';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Экранға және мәтін түріне қаріпті таңдаңыз';

  @override
  String get fontCustomizeSection => 'Экран бойынша теңшеу';

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
  String get fontRolePageTitle => 'Бет тақырыбы';

  @override
  String get fontRoleSectionHeader => 'Бөлім тақырыбы';

  @override
  String get fontRolePrimary => 'Негізгі мәтін';

  @override
  String get fontRoleSecondary => 'Қосымша мәтін';

  @override
  String get fontRoleButton => 'Түймешіктер';

  @override
  String get fontRoleDialKey => 'Теру тақтасының пернелері';

  @override
  String get fontSurfaceRecents => 'Соңғылар';

  @override
  String get fontSurfaceContacts => 'Контактілер';

  @override
  String get fontSurfaceSettings => 'Параметрлер';

  @override
  String get fontSurfaceDialpad => 'Теру тақтасы';

  @override
  String get fontSurfaceShell => 'Навигация';

  @override
  String get fontSurfaceDefaultDialer => 'Әдепкі теруші шақыру';

  @override
  String get fontSurfaceFavourites => 'Таңдаулылар';

  @override
  String get fontSurfaceBlocked => 'Бұғатталған нөмірлер';

  @override
  String get fontSurfaceContactDetail => 'Байланыс мәліметтері';

  @override
  String get fontSurfaceCallHistory => 'Қоңыраулар тарихы';

  @override
  String get fontSurfaceSheets => 'Парақтар мен тергіштер';

  @override
  String get fontSurfaceInCall => 'Қоңыраудағы экран';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — бүкіл қолданба';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — тек тақырыптар';
  }

  @override
  String get fontSubtitleCustomize => 'Әр экранға теңшелетін';

  @override
  String get background => 'Фон';

  @override
  String get accent => 'Акцент';

  @override
  String get lightBackground => 'Ашық фон';

  @override
  String get lightAccent => 'Жеңіл акцент';

  @override
  String get darkBackground => 'Қараңғы фон';

  @override
  String get darkAccent => 'Қараңғы акцент';

  @override
  String get callBackground => 'Қоңырау фоны';

  @override
  String get appIcon => 'Қолданба белгішесі';

  @override
  String get answerMethod => 'Жауап әдісі';

  @override
  String get answerSlide => 'Жауап беру үшін сырғытыңыз';

  @override
  String get answerSlideSubtitle =>
      'Google телефоны сияқты жолақта солға/оңға сырғытыңыз';

  @override
  String get answerButton => 'Түймені түрту';

  @override
  String get answerButtonSubtitle =>
      'Жауап беру немесе қабылдамау түймелерін түртіңіз';

  @override
  String get answerHuawei => 'Huawei стилі';

  @override
  String get answerHuaweiSubtitle =>
      'Жауап беру үшін шеңберді жасыл телефонға сүйреңіз';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — жасыл / қызылға сүйреңіз';

  @override
  String get calling => 'Қоңырау шалу';

  @override
  String get defaultSim => 'Әдепкі SIM';

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
  String get askEveryTime => 'Әр жолы сұраңыз';

  @override
  String get askEveryTimeSubtitle =>
      'Әрбір қоңырау алдында SIM таңдау құралын көрсетіңіз';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'SIM карталары табылмады';

  @override
  String couldNotLoadSims(String error) {
    return 'SIM карталарын жүктеу мүмкін болмады: $error';
  }

  @override
  String get allFavourites => 'Барлық таңдаулылар';

  @override
  String get allFavouritesSubtitle =>
      'Контактілерден ретін өзгертіңіз, жойыңыз және қосыңыз';

  @override
  String get blockedNumbers => 'Бұғатталған нөмірлер';

  @override
  String get blockedNumbersSubtitle => 'Нөмірлерді көру және блоктан шығару';

  @override
  String get soundsAndVibration => 'Дыбыстар және діріл';

  @override
  String get soundsAndVibrationSubtitle =>
      'Қоңырау үні, діріл, теру тақтасының дыбыстары';

  @override
  String couldNotOpenSettings(String error) {
    return 'Параметрлерді ашу мүмкін болмады: $error';
  }

  @override
  String get frequentlyContacted => 'Жиі хабарласатын';

  @override
  String get numberOfRecords => 'Жазбалар саны';

  @override
  String get timePeriod => 'Уақыт кезеңі';

  @override
  String get periodLast24Hours => 'Соңғы 24 сағат';

  @override
  String get periodLast24HoursSubtitle => 'Өткен күндегі қоңыраулар';

  @override
  String get periodLast7Days => 'Соңғы 7 күн';

  @override
  String get periodLast7DaysSubtitle => 'Өткен аптадағы қоңыраулар';

  @override
  String get periodLast30Days => 'Соңғы 30 күн';

  @override
  String get periodLast30DaysSubtitle => 'Өткен айдағы қоңыраулар';

  @override
  String get periodLast12Months => 'Соңғы 12 ай';

  @override
  String get periodLast12MonthsSubtitle => 'Өткен жылғы қоңыраулар';

  @override
  String get periodAllTime => 'Барлық уақытта';

  @override
  String get periodAllTimeSubtitle => 'Толық қоңыраулар тарихы';

  @override
  String get frequentMaxOff => 'Өшірулі';

  @override
  String frequentMaxCount(int count) {
    return '$count контактілер';
  }

  @override
  String get torchBlink => 'Шам жыпылықтау';

  @override
  String get torchIncomingCall => 'Кіріс қоңырау шамы';

  @override
  String get torchOutgoingCall => 'Шығыс қоңырау шамы';

  @override
  String get torchOngoingCall => 'Ағымдағы қоңырау шамы';

  @override
  String get torchIncomingInterval => 'Кіріс жыпылықтау аралығы';

  @override
  String get torchOutgoingInterval => 'Шығыс жыпылықтау аралығы';

  @override
  String get torchOngoingInterval => 'Ағымдағы жыпылықтау аралығы';

  @override
  String get torchOff => 'Өшірулі';

  @override
  String get torchOffIncomingSubtitle => 'Шырылдаған кезде алау жоқ';

  @override
  String get torchOffOutgoingSubtitle => 'Теру кезінде шам жоқ';

  @override
  String get torchOffOngoingSubtitle => 'Белсенді қоңырау кезінде алау жоқ';

  @override
  String get torchFixedInterval => 'Бекітілген интервал';

  @override
  String get torchFixedIntervalSubtitle => 'Орнатылған жылдамдықпен жыпылықтау';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds с';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds жыпылықтау';
  }

  @override
  String get flashlightUnavailable => 'Бұл құрылғыда фонарь қолжетімді емес';

  @override
  String get glyphLights => 'Глиф шамдары';

  @override
  String get glyphCallingAnimation => 'Глифті шақыратын анимация';

  @override
  String get glyphOngoingAnimation => 'Ағымдағы қоңырау анимациясының глифі';

  @override
  String get glyphNone => 'Жоқ';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Шығыс қоңыраулар үшін Glyph шамдарын өшіріңіз';

  @override
  String get glyphNoneInCallSubtitle =>
      'Белсенді қоңырау кезінде Glyph шамдарын өшіріңіз';

  @override
  String get glyphBreathProgress => 'Тыныс және прогресс';

  @override
  String get glyphBreathProgressSubtitle =>
      'Сызық 65 секундтан астам толтырылған кезде шамдар дем алады';

  @override
  String get glyphAccumulate => 'Жинақтау';

  @override
  String get glyphAccumulateSubtitle =>
      'C1-C4 шамдарындағы жинақталған анимация';

  @override
  String get glyphSingle => 'Бойдақ';

  @override
  String get glyphSingleSubtitle => 'C1-C4 бойымен қозғалатын жалғыз жарық';

  @override
  String get glyphBreath => 'Тыныс алу';

  @override
  String get glyphBreathSubtitle => 'Шамдар мен жылдамдықты таңдаңыз';

  @override
  String get glyphSteady => 'Тұрақты';

  @override
  String get glyphSteadySubtitle => 'Таңдалған шамдар жанып тұрады';

  @override
  String get breathSettings => 'Тыныс алу параметрлері';

  @override
  String get activeLights => 'Белсенді шамдар';

  @override
  String lightsCount(int count) {
    return '$count шамдары';
  }

  @override
  String get speedSettings => 'Жылдамдық параметрлері';

  @override
  String speedSettingsDelay(int ms) {
    return '$msмс кешігу';
  }

  @override
  String get durationAndSpeed => 'Ұзақтығы мен жылдамдығы';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '$durationс ұзақтығы, $intervalмс интервал';
  }

  @override
  String get cancel => 'Болдырмау';

  @override
  String get done => 'Дайын';

  @override
  String get save => 'Сақтау';

  @override
  String get block => 'Блоктау';

  @override
  String get delete => 'Жою';

  @override
  String get recents => 'Соңғылар';

  @override
  String get contacts => 'Контактілер';

  @override
  String get hideFavouritesOnRecents => 'Соңғылардағы таңдаулыларды жасыру';

  @override
  String get showFavouritesOnRecents => 'Соңғыларда таңдаулыларды көрсету';

  @override
  String get ongoingCall => 'Ағымдағы қоңырау';

  @override
  String get setAsDefaultTitle => 'ОРНАТУ\nӘдепкі';

  @override
  String get setAsDefaultBody =>
      'Nothing Dialer пайдалану үшін ол әдепкі телефон қолданбасы ретінде орнатылуы керек. Бұл қоңырауларды басқаруға, тарихты қарауға және Glyph анимацияларын пайдалануға мүмкіндік береді.';

  @override
  String get setAsDefaultButton => 'Әдепкі РЕТІНДЕ ОРНАТУ';

  @override
  String get nothingDialerBrand => 'ЕМЕС ТЕРІС 1';

  @override
  String get favourites => 'Таңдаулылар';

  @override
  String get addFavourite => 'Таңдаулыны қосыңыз';

  @override
  String get favouritesDrawerHint =>
      'Контактілерді қосу үшін мәзірді пайдаланыңыз. Тартпаның сыртын түртіңіз немесе сырғытыңыз. Контактіні мәліметтерінен жұлдызшамен белгілеңіз немесе «Соңғылар» бөлімінде қоңырауды ұзақ басып тұрыңыз.';

  @override
  String get menu => 'Мәзір';

  @override
  String get noFavouritesYet =>
      'Таңдаулылар әлі жоқ.\nБір контактіні қосу немесе жұлдызшамен қою үшін мәзірді ашыңыз.';

  @override
  String get contactsPermissionNeeded => 'Контактілерге рұқсат қажет';

  @override
  String get chooseContact => 'Байланысты таңдаңыз';

  @override
  String get noPhone => 'Телефон жоқ';

  @override
  String get pickNumber => 'Нөмірді таңдау';

  @override
  String get contactHasNoPhone => 'Бұл контактінің телефон нөмірі жоқ';

  @override
  String get blockNumber => 'Блок нөмірі';

  @override
  String get enterPhoneNumber => 'Телефон нөмірін енгізіңіз';

  @override
  String unblockedDisplay(String display) {
    return 'Бөгеуден шығарылды $display';
  }

  @override
  String get couldNotUnblockNumber => 'Нөмірді бөгеуден шығару мүмкін болмады';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked бұғатталды • $matched сәйкес келді';
  }

  @override
  String get contactsPermissionMissing =>
      'Контактілердің рұқсаты жоқ. Түзету үшін түртіңіз.';

  @override
  String get noBlockedNumbers => 'Блокталған нөмірлер жоқ';

  @override
  String get unknownContact => 'Белгісіз контакт';

  @override
  String get unblock => 'Блоктан шығару';

  @override
  String get permissionNeeded => 'Рұқсат қажет';

  @override
  String get grantPhonePermission =>
      'Қоңыраулар тарихын көруге телефон рұқсатын беріңіз.';

  @override
  String get grantContactsPermission =>
      'Контактілерге мекенжай кітапшаңызды көруге рұқсат беріңіз.';

  @override
  String get openSettings => 'Параметрлерді ашыңыз';

  @override
  String get tryAgain => 'Қайтадан байқап көріңіз';

  @override
  String get couldNotLoadContacts => 'Контактілерді жүктеу мүмкін болмады';

  @override
  String get contactsLoadError =>
      'Мекенжай кітапшаңызды оқу кезінде бірдеңе дұрыс болмады.';

  @override
  String get noContactsFound => 'Ешбір контакт табылмады';

  @override
  String get contactsEmptySubtitle =>
      'Құрылғыңыздағы контактілер осы жерде пайда болады.';

  @override
  String get searchContacts => 'Контактілерді іздеу…';

  @override
  String get searchRecentCalls => 'Соңғы қоңырауларды іздеу';

  @override
  String get fromContacts => 'Контактілерден';

  @override
  String get recentsSearchSection => 'Соңғы іздеу';

  @override
  String get recentsSearchShowContacts => 'Іздеуде контактілерді көрсету';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Соңғыларды іздеу кезінде қоңыраулар журналы нәтижелерінің астында мекенжай кітабынан сәйкес адамдарды да көрсетіңіз.';

  @override
  String get voiceSearch => 'Дауыспен іздеу';

  @override
  String get createNewContact => 'Жаңа контакт жасау';

  @override
  String callError(String error) {
    return 'Қоңырау қатесі: $error';
  }

  @override
  String get noRecentCalls => 'Соңғы қоңыраулар жоқ';

  @override
  String get callHistoryEmpty => 'Қоңыраулар журналы осы жерде пайда болады.';

  @override
  String get loadMore => 'Көбірек жүктеңіз';

  @override
  String get frequentlyContactedHeader => 'Жиі хабарласатын';

  @override
  String get recentHistory => 'Соңғы тарих';

  @override
  String get noFavouritesRecentsHint =>
      'Таңдаулылар әлі жоқ. Контактіні жұлдызшамен белгілеңіз, қоңырауды ұзақ басып тұрыңыз немесе Таңдаулылар қойындысын пайдаланыңыз.';

  @override
  String get copyNumber => 'Нөмірді көшіру';

  @override
  String get editNumberBeforeCall => 'Қоңырау алдында нөмірді өңдеңіз';

  @override
  String get removeFromFavourites => 'Таңдаулылардан өшіру';

  @override
  String get addToFavourites => 'Таңдаулыларға қосыңыз';

  @override
  String get blockNumberQuestion => 'Блок нөмірі?';

  @override
  String blockNumberConfirm(String number) {
    return 'Енді $number нөмірінен қоңыраулар немесе мәтіндік хабарламалар қабылданбайды.';
  }

  @override
  String get blocked => 'Блокталған';

  @override
  String get couldNotBlock => 'Блоктау мүмкін болмады';

  @override
  String get contactNotOnDevice => 'Контакт бұл құрылғыда сақталмады';

  @override
  String get unblocked => 'Бұғаудан шығарылды';

  @override
  String get numberCopied => 'Нөмір көшірілді';

  @override
  String get showLess => 'Азырақ көрсету';

  @override
  String get showAllTimes => 'Барлық уақытта көрсету';

  @override
  String mostRecent(String time) {
    return 'Ең соңғы · $time';
  }

  @override
  String get videoCall => 'Бейне қоңырау';

  @override
  String get couldNotPlaceVideoCall => 'Бейне қоңырау шалу мүмкін емес';

  @override
  String get message => 'Хабарлама';

  @override
  String get couldNotOpenMessaging =>
      'Хабар алмасу қолданбасын ашу мүмкін болмады';

  @override
  String get history => 'Тарих';

  @override
  String get viewContact => 'Контактіні көру';

  @override
  String get addToContact => 'Байланысқа қосу';

  @override
  String get callTypeMissed => 'Сағынды';

  @override
  String get callTypeRejected => 'Қабылданбады';

  @override
  String get callTypeIncoming => 'Кіріс';

  @override
  String get callTypeOutgoing => 'Шығыс';

  @override
  String get today => 'Бүгін';

  @override
  String get yesterday => 'Кеше';

  @override
  String get justNow => 'Жаңа ғана';

  @override
  String minutesAgo(int count) {
    return '$count мин бұрын';
  }

  @override
  String hoursAgo(int count) {
    return '$count сағ бұрын';
  }

  @override
  String get filterAll => 'Барлығы';

  @override
  String get filterMissed => 'Сағынды';

  @override
  String get filterContacts => 'Контактілер';

  @override
  String get filterNonContacts => 'Контактілер';

  @override
  String get iconUpdated =>
      'Белгіше жаңартылды. Негізгі экранды жаңартуға біраз уақыт кетуі мүмкін.';

  @override
  String get iconSavedRelease =>
      'Таңдау сақталды. Бастапқы экран белгішесі шығарылым жинақтарында жаңартылады.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Белгішені өзгерту мүмкін болмады: $error';
  }

  @override
  String get launcherClassicBlack => 'Классикалық (қара)';

  @override
  String get launcherLight => 'Жарық';

  @override
  String get launcherNothingRed => 'Қызыл ештеңе жоқ';

  @override
  String get launcherDarkGrey => 'Қою сұр';

  @override
  String get launcherCream => 'Крем';

  @override
  String get launcherRetroPhone => 'Ретро телефон';

  @override
  String get launcherRetroPhoneLight => 'Ретро телефон (жарық)';

  @override
  String get voiceSearchUnavailable =>
      'Бұл құрылғыда дауыспен іздеу мүмкін емес.';

  @override
  String voiceSearchFailed(String error) {
    return 'Дауыспен іздеу орындалмады: $error';
  }

  @override
  String get customColor => 'Арнаулы';

  @override
  String get selectColor => 'Түсті таңдаңыз';

  @override
  String get reset => 'Қалпына келтіру';

  @override
  String get simPickerTitle => 'SIM картасын таңдаңыз';

  @override
  String get simChooseForCall => 'Бұл қоңырау үшін SIM картасын таңдаңыз';

  @override
  String get defaultSimAsk => 'Әр жолы сұраңыз';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Байланыс мәліметтері';

  @override
  String get call => 'Қоңырау';

  @override
  String get share => 'Бөлісу';

  @override
  String get favourite => 'Таңдаулы';

  @override
  String get unfavourite => 'Сүйікті емес';

  @override
  String get blockContact => 'Контактіні блоктау';

  @override
  String get unblockContact => 'Контактіні блоктан шығару';

  @override
  String get deleteContact => 'Контактіні жою';

  @override
  String get phone => 'Телефон';

  @override
  String get email => 'Электрондық пошта';

  @override
  String get ringtone => 'Қоңырау үні';

  @override
  String get defaultRingtone => 'Әдепкі';

  @override
  String get simForContact => 'Осы контакт үшін SIM';

  @override
  String get callHistoryTitle => 'Қоңыраулар тарихы';

  @override
  String get noCallsWithNumber => 'Бұл нөмірмен қоңыраулар жоқ';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '$minutesм $secondsс';
  }

  @override
  String durationSeconds(int seconds) {
    return '$secondsс';
  }

  @override
  String get glyphAnimationStyle => 'Глифтік анимация';

  @override
  String get inCallGlyphAnimationStyle => 'Қоңыраудағы Glyph анимациясы';

  @override
  String get recordsOff => 'Өшірулі';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Әдепкі SIM';

  @override
  String get nothingPhoneOnly => 'Ештеңе емес Тек телефон';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Глиф мүмкіндіктері «Ештеңе» телефонын қажет етеді';

  @override
  String get custom => 'Арнаулы';

  @override
  String presetColorHex(String hex) {
    return 'Алдын ала орнатылған · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Арнаулы · $hex';
  }

  @override
  String get oneContact => '1 контакт';

  @override
  String upToContacts(int count) {
    return '$count контактіге дейін';
  }

  @override
  String get answerButtonTapSubtitle => 'Жауап беру үшін түймені түртіңіз';

  @override
  String get filterCalls => 'Қоңырауларды сүзу';

  @override
  String get filterTooltip => 'Сүзгі';

  @override
  String get settingsTooltip => 'Параметрлер';

  @override
  String get filterAllSubtitle => 'Толық қоңыраулар журналы';

  @override
  String get filterMissedSubtitle => 'Қабылданбады және қабылданбады';

  @override
  String get filterContactsSubtitle =>
      'Қоңыраулар сақталған контактіге сәйкес келді';

  @override
  String get filterNonContactsSubtitle => 'Нөмірлер мекенжай кітабында жоқ';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Ағымдағы қоңырау: $detail';
  }

  @override
  String get defaultSimForCalls => 'Қоңырауларға арналған әдепкі SIM';

  @override
  String get blinkInterval => 'Жыпылықтау аралығы';

  @override
  String get close => 'Жабу';

  @override
  String get frequentlyContactedInfoBody =>
      'Сіз таңдаған уақыт аралығында әрбір нөмірмен қанша кіріс, шығыс, қабылданбаған немесе қабылданбаған қоңыраулар негізінде «Соңғылар» қойындысының жоғарғы жағында ең көп шақырылатын телефон нөмірлеріңізді көрсетеді.\n\nЖазбалар саны: оны өшіру үшін 0 мәніне қойыңыз. Осыншама жоғарғы контактілерді көрсету үшін 1–20 пайдаланыңыз.\n\nУақыт кезеңі кем дегенде бір контакт көрсетілгенде ғана қолданылады.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count шамдар, $msмс жылдамдық';
  }

  @override
  String get deleteContactQuestion => 'Контактіні жою керек пе?';

  @override
  String get deleteContactBody => 'Бұл контакт құрылғыңыздан біржола жойылады.';

  @override
  String get blockContactQuestion => 'Контактіні блоктау керек пе?';

  @override
  String get unblockContactQuestion => 'Контакт бөгеуін алу керек пе?';

  @override
  String get blockContactBody =>
      'Бұл контактіден енді қоңыраулар немесе мәтіндер қабылданбайды.';

  @override
  String get unblockContactBody =>
      'Сіз осы контактіден қоңыраулар мен мәтіндерді қабылдай бастайсыз.';

  @override
  String get contactBlocked => 'Контакт блокталды';

  @override
  String get contactUnblocked => 'Контакт блоктан шығарылды';

  @override
  String get noPhoneNumbersToBlock => 'Блокталатын телефон нөмірлері жоқ';

  @override
  String get simSameAsSystem => 'Жүйе сияқты';

  @override
  String get simSameAsSystemSubtitle =>
      'Параметрлердегі әдепкі SIM картасын орындайды';

  @override
  String get simAskEveryTimeForContact =>
      'Әрқашан осы контакт үшін SIM таңдау құралын көрсетіңіз';

  @override
  String get ringtoneSetForContact =>
      'Қоңырау үні осы контакт үшін ғаламдық деңгейде орнатылған';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Қоңырау үні таңдалмады: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Қате: $error';
  }

  @override
  String get noCallHistoryFound => 'Қоңыраулар тарихы табылмады';

  @override
  String get speedDialVoicemail => 'Жылдам теру: Дауыстық пошта';

  @override
  String shareContactSubject(String name) {
    return 'Байланыс: $name';
  }

  @override
  String get contactInfo => 'Байланыс ақпараты';

  @override
  String get dontAskAgainSim => 'Қайта сұрамаңыз';

  @override
  String get simDontAskAgainSubtitle =>
      'Бұл SIM картасын әдепкі ретінде пайдаланыңыз (Параметрлерде өзгерту)';

  @override
  String get addContact => 'Контакт қосу';

  @override
  String get createContact => 'Контакт құру';

  @override
  String get paste => 'Қою';

  @override
  String get clear => 'Таза';

  @override
  String get returnToCall => 'Қоңырауға оралу';

  @override
  String get numberOfRecordsTitle => 'Жазбалар саны';

  @override
  String get recordsPickerSubtitle =>
      'Көрсетілетін жиі хабарласатын жазбалардың саны (0 = өшірулі)';

  @override
  String get torchInfoTitle => 'Шам жыпылықтайды';

  @override
  String get torchInfoBody =>
      'Кіріс, шығыс немесе ағымдағы қоңыраулар кезінде камера жарқылын жыпылықтайды. Глиф шамдарынан тәуелсіз.';

  @override
  String get glyphMapTitle => 'Глифтің орналасуы';

  @override
  String get glyphMapBody =>
      'Ештеңе жоқ Phone 1 Glyph LED аймақтары. Шығыс және қоңыраудағы анимациялар осы арналарды пайдаланады.';

  @override
  String get answerMethodTitle => 'Жауап әдісі';

  @override
  String get glyphOutgoingCallStyleTitle => 'Шығыс қоңырау стилі';

  @override
  String get glyphInCallAnimationTitle => 'Қоңыраудағы анимациядағы глиф';

  @override
  String get themePickerTitle => 'Тақырып';

  @override
  String get torchIncomingTitle => 'Кіріс қоңырау шамы';

  @override
  String get torchOutgoingTitle => 'Шығыс қоңырау шамы';

  @override
  String get torchOngoingTitle => 'Ағымдағы қоңырау шамы';

  @override
  String get timePeriodTitle => 'Уақыт кезеңі';

  @override
  String get ok => 'Жарайды';

  @override
  String get confirmDeleteCall => 'Бұл қоңырауды тарихтан жою керек пе?';

  @override
  String get confirmDeleteAllCalls =>
      'Осы нөмір арқылы жасалған барлық қоңыраулар жойылсын ба?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Хабарлама жіберу';

  @override
  String get addToExistingContactAction => 'Контактіге қосыңыз';

  @override
  String get mobileLabel => 'Ұялы';

  @override
  String get callingSimForContactTitle => 'Осы контактіге қоңырау шалу SIM';

  @override
  String get contactSettings => 'Байланыс параметрлері';

  @override
  String get setCallingSim => 'Қоңырау SIM картасын орнату';

  @override
  String get contactRingtone => 'Байланыс рингтоны';

  @override
  String get shareContact => 'Контактіні бөлісу';

  @override
  String get blockNumbers => 'Блок нөмірлері';

  @override
  String get unblockNumbers => 'Нөмірлерді бөгеуден шығару';

  @override
  String get connectedApps => 'Қосылған қолданбалар';

  @override
  String get simNotSet => 'Орнатылмаған';

  @override
  String get ringtoneDefault => 'Әдепкі';

  @override
  String get customRingtone => 'Арнаулы';

  @override
  String get aboutSection => 'туралы';

  @override
  String get aboutFeedbackSection => 'Туралы және кері байланыс';

  @override
  String get aboutDescription =>
      'Ештеңе теру құралының көзі ашық емес. Егер сіз әзірлеуші ​​болсаңыз, кодты зерттеп, үлес қосуыңызға болады.';

  @override
  String get aboutViewSource => 'GitHub сайтында көру';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Сілтемені ашу мүмкін болмады';

  @override
  String get reviewSection => 'Қарау';

  @override
  String get reviewDescription =>
      'Ештеңе теру функциясын ұнатасыз ба? Google Play-дегі бағаңыз басқаларға қолданбаны табуға көмектеседі.';

  @override
  String get reviewRateOnPlay => 'Google Play-де бағалаңыз';

  @override
  String get reviewRateOnPlaySubtitle =>
      'Қолданбадан шықпай-ақ рейтинг қалдырыңыз';

  @override
  String get reviewCouldNotOpen => 'Google Play ашылмады';

  @override
  String get breathSpeed => 'Тыныс алу жылдамдығы';

  @override
  String get breathSpeedBlinkHint =>
      'Төменгі = жыпылықтау, жоғары = баяу тыныс';

  @override
  String get speedSliderHint => 'Төменгі = жылдамырақ, жоғары = баяу';

  @override
  String get swatchDefault => 'Әдепкі';

  @override
  String get customAccentColorPicker => 'Арнайы екпін түсі';

  @override
  String get customLightBackgroundPicker => 'Арнаулы ашық фон';

  @override
  String get customDarkBackgroundPicker => 'Арнаулы күңгірт фон';

  @override
  String get customCallBackgroundPicker => 'Арнаулы қоңырау фоны';

  @override
  String get ongoingCallStyleTitle => 'Ағымдағы қоңырау стилі';

  @override
  String get glyphMapUnavailable => 'Глиф картасы қолжетімді емес';

  @override
  String get animationDelayRange => 'Анимацияның кешігуі (1с - 10с)';

  @override
  String get animationDelayRangeSingle =>
      'Анимацияның кешігуі (0,1 - 10 секунд)';

  @override
  String get inCallMute => 'Дыбысты өшіру';

  @override
  String get inCallKeypad => 'Пернетақта';

  @override
  String get inCallSpeaker => 'Спикер';

  @override
  String get inCallMore => 'Көбірек';

  @override
  String get inCallBluetooth => 'Блютез';

  @override
  String get inCallPhone => 'Телефон';

  @override
  String get inCallAddCall => 'Қоңырау қосу';

  @override
  String get inCallChangeSim => 'SIM картасын өзгерту';

  @override
  String get inCallDecline => 'Бас тарту';

  @override
  String get inCallAnswer => 'Жауап';

  @override
  String get inCallMessage => 'Хабарлама';

  @override
  String get inCallCalling => 'Қоңырау шалуда...';

  @override
  String get inCallIncoming => 'Кіріс қоңырау';

  @override
  String get inCallSelectSim => 'SIM картасын таңдау…';

  @override
  String get inCallSwitchingSim => 'SIM картасы ауыстырылуда…';

  @override
  String get inCallCallEnded => 'Қоңырау аяқталды';

  @override
  String inCallCallingVia(String sim) {
    return '$sim арқылы қоңырау шалу';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return '<b>$sim</b> арқылы қоңырау шалу';
  }

  @override
  String get inCallChooseSim => 'Бұл қоңырау үшін SIM картасын таңдаңыз';

  @override
  String get inCallDragAnswerDecline =>
      'Жауап беру үшін оңға сүйреңіз · Бас тарту үшін солға сүйреңіз';

  @override
  String inCallMobileNumber(String number) {
    return 'Ұялы телефон $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (ағымдағы)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return '<b>$sim</b> арқылы қоңырау шалыңыз';
  }

  @override
  String get inCallCallFrom => 'қоңырау шалу';

  @override
  String get inCallUnknown => 'Белгісіз';

  @override
  String get selectContactRingtone => 'Контакт қоңырау үнін таңдаңыз';

  @override
  String get speakToSearchPrompt => 'Іздеу үшін сөйлеңіз';

  @override
  String get phonePermissionRequired => 'Телефон рұқсаты қажет';

  @override
  String callFailed(String error) {
    return 'Қоңырау орындалмады: $error';
  }

  @override
  String get callPermissionDenied => 'Қоңырауға рұқсат берілмеді';

  @override
  String get alreadyDefaultDialer =>
      'Әдепкі тергіш ретінде әлдеқашан орнатылған';

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
