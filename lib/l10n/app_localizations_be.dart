// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Belarusian (`be`).
class AppLocalizationsBe extends AppLocalizations {
  AppLocalizationsBe([String locale = 'be']) : super(locale);

  @override
  String get appTitle => 'Тэлефон нічога';

  @override
  String get settings => 'Налады';

  @override
  String get settingsSearchHint => 'Налады пошуку';

  @override
  String get settingsSearchNoResults => 'Налады не знойдзены';

  @override
  String get general => 'Генерал';

  @override
  String get theme => 'Тэма';

  @override
  String get themeSystemDefault => 'Сістэма па змаўчанні';

  @override
  String get themeLight => 'Святло';

  @override
  String get themeDark => 'Цёмны';

  @override
  String get themeFollowSystem => 'Сачыце за наладамі сістэмы';

  @override
  String get themeAlwaysLight => 'Заўсёды выкарыстоўвайце светлую тэму';

  @override
  String get themeAlwaysDark => 'Заўсёды выкарыстоўвайце цёмную тэму';

  @override
  String get language => 'мова';

  @override
  String get languageDeviceDefault => 'Прылада па змаўчанні';

  @override
  String get languagePickerTitle => 'мова';

  @override
  String get languageSearchHint => 'Пошук моў';

  @override
  String get font => 'Шрыфт';

  @override
  String get fontSystem => 'Сістэма па змаўчанні';

  @override
  String get fontNdot => 'Нічога (NDot)';

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
      'Памылка спампоўкі шрыфта. Праверце падключэнне і паўтарыце спробу.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Шрыфт';

  @override
  String get fontPreviewSample => 'Тэлефон нічога';

  @override
  String get fontAppWide => 'Шрыфт праграмы';

  @override
  String get fontApplyTo => 'Прымяніць да';

  @override
  String get fontApplyEntireApp => 'Увесь дадатак';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Адзін і той жа шрыфт усюды, у тым ліку падчас выкліку';

  @override
  String get fontApplyTitlesOnly => 'Загалоўкі і загалоўкі';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Толькі вялікія назвы і загалоўкі раздзелаў';

  @override
  String get fontApplyCustomize => 'Наладзіць';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Выберыце шрыфт для экрана і тыпу тэксту';

  @override
  String get fontCustomizeSection => 'Наладзіць па экране';

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
  String get fontRolePageTitle => 'Назва старонкі';

  @override
  String get fontRoleSectionHeader => 'Загаловак раздзела';

  @override
  String get fontRolePrimary => 'Першасны тэкст';

  @override
  String get fontRoleSecondary => 'Другасны тэкст';

  @override
  String get fontRoleButton => 'Гузікі';

  @override
  String get fontRoleDialKey => 'Клавішы клавіятуры';

  @override
  String get fontSurfaceRecents => 'Апошнія';

  @override
  String get fontSurfaceContacts => 'Кантакты';

  @override
  String get fontSurfaceSettings => 'Налады';

  @override
  String get fontSurfaceDialpad => 'Панэль набору нумара';

  @override
  String get fontSurfaceShell => 'Навігацыя';

  @override
  String get fontSurfaceDefaultDialer => 'Падказка дазвону па змаўчанні';

  @override
  String get fontSurfaceFavourites => 'Выбранае';

  @override
  String get fontSurfaceBlocked => 'Заблакіраваныя нумары';

  @override
  String get fontSurfaceContactDetail => 'Кантактная інфармацыя';

  @override
  String get fontSurfaceCallHistory => 'Гісторыя званкоў';

  @override
  String get fontSurfaceSheets => 'Аркушы і падборшчыкі';

  @override
  String get fontSurfaceInCall => 'Экран выкліку';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — уся праграма';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — толькі загалоўкі';
  }

  @override
  String get fontSubtitleCustomize => 'Індывідуальныя для кожнага экрана';

  @override
  String get background => 'Фон';

  @override
  String get accent => 'Акцэнт';

  @override
  String get lightBackground => 'Светлы фон';

  @override
  String get lightAccent => 'Лёгкі акцэнт';

  @override
  String get darkBackground => 'Цёмны фон';

  @override
  String get darkAccent => 'Цёмны акцэнт';

  @override
  String get callBackground => 'Фон выкліку';

  @override
  String get appIcon => 'Значок праграмы';

  @override
  String get answerMethod => 'Спосаб адказу';

  @override
  String get answerSlide => 'Прасуньце, каб адказаць';

  @override
  String get answerSlideSubtitle =>
      'Правядзіце па панэлі ўлева/управа, як Google Phone';

  @override
  String get answerButton => 'Націск кнопкі';

  @override
  String get answerButtonSubtitle => 'Націсніце кнопку адказу або адмовы';

  @override
  String get answerHuawei => 'Стыль Huawei';

  @override
  String get answerHuaweiSubtitle =>
      'Каб адказаць, перацягніце круг на зялёны тэлефон';

  @override
  String get answerHuaweiTileSubtitle =>
      'Huawei — перацягнуць на зялёны / чырвоны';

  @override
  String get calling => 'Тэлефанаванне';

  @override
  String get defaultSim => 'Стандартная SIM-карта';

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
  String get askEveryTime => 'Пытайцеся кожны раз';

  @override
  String get askEveryTimeSubtitle => 'Паказваць выбар SIM перад кожным званком';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'SIM-карты не знойдзены';

  @override
  String couldNotLoadSims(String error) {
    return 'Немагчыма загрузіць SIM-карты: $error';
  }

  @override
  String get allFavourites => 'Усе любімыя';

  @override
  String get allFavouritesSubtitle =>
      'Змяняйце парадак, выдаляйце і дадавайце з кантактаў';

  @override
  String get blockedNumbers => 'Заблакіраваныя нумары';

  @override
  String get blockedNumbersSubtitle => 'Прагляд і разблакіроўка нумароў';

  @override
  String get soundsAndVibration => 'Гукі і вібрацыя';

  @override
  String get soundsAndVibrationSubtitle =>
      'Рынгтон, вібрацыя, сігналы панэлі набору';

  @override
  String couldNotOpenSettings(String error) {
    return 'Немагчыма адкрыць налады: $error';
  }

  @override
  String get frequentlyContacted => 'Часта кантакт';

  @override
  String get numberOfRecords => 'Колькасць запісаў';

  @override
  String get timePeriod => 'Перыяд часу';

  @override
  String get periodLast24Hours => 'Апошнія 24 гадзіны';

  @override
  String get periodLast24HoursSubtitle => 'Званкі за мінулы дзень';

  @override
  String get periodLast7Days => 'Апошнія 7 дзён';

  @override
  String get periodLast7DaysSubtitle => 'Званкі за мінулы тыдзень';

  @override
  String get periodLast30Days => 'Апошнія 30 дзён';

  @override
  String get periodLast30DaysSubtitle => 'Званкі за мінулы месяц';

  @override
  String get periodLast12Months => 'Апошнія 12 месяцаў';

  @override
  String get periodLast12MonthsSubtitle => 'Званкі з мінулага года';

  @override
  String get periodAllTime => 'Увесь час';

  @override
  String get periodAllTimeSubtitle => 'Уся гісторыя выклікаў';

  @override
  String get frequentMaxOff => 'Выкл';

  @override
  String frequentMaxCount(int count) {
    return '$count кантакты';
  }

  @override
  String get torchBlink => 'Мігценне факела';

  @override
  String get torchIncomingCall => 'Ліхтарык ўваходнага званка';

  @override
  String get torchOutgoingCall => 'Ліхтарык выходнага выкліку';

  @override
  String get torchOngoingCall => 'Ліхтар бягучага выкліку';

  @override
  String get torchIncomingInterval => 'Інтэрвал уваходнага міргання';

  @override
  String get torchOutgoingInterval => 'Выходны інтэрвал міргання';

  @override
  String get torchOngoingInterval => 'Працяглы інтэрвал мігцення';

  @override
  String get torchOff => 'Выкл';

  @override
  String get torchOffIncomingSubtitle => 'Няма факела падчас званка';

  @override
  String get torchOffOutgoingSubtitle => 'Няма факела падчас набору';

  @override
  String get torchOffOngoingSubtitle => 'Няма факела падчас актыўнага выкліку';

  @override
  String get torchFixedInterval => 'Фіксаваны інтэрвал';

  @override
  String get torchFixedIntervalSubtitle => 'Міргайце з зададзенай хуткасцю';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds с';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds міргнуць';
  }

  @override
  String get flashlightUnavailable => 'Ліхтарык недаступны на гэтай прыладзе';

  @override
  String get glyphLights => 'Агні гліфаў';

  @override
  String get glyphCallingAnimation => 'Анімацыя выкліку гліфа';

  @override
  String get glyphOngoingAnimation => 'Гліф анімацыі бягучага выкліку';

  @override
  String get glyphNone => 'Няма';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Адключыць індыкатары Glyph для выходных выклікаў';

  @override
  String get glyphNoneInCallSubtitle =>
      'Адключайце агні Glyph падчас актыўнага выкліку';

  @override
  String get glyphBreathProgress => 'Дыханне і прагрэс';

  @override
  String get glyphBreathProgressSubtitle =>
      'Агні дыхаюць, пакуль чарга запаўняецца за 65 секунд';

  @override
  String get glyphAccumulate => 'Назапашваць';

  @override
  String get glyphAccumulateSubtitle => 'Назапашванне анімацыі на агнях C1-C4';

  @override
  String get glyphSingle => 'Халасты';

  @override
  String get glyphSingleSubtitle => 'Адзіны святло, які рухаецца праз C1-C4';

  @override
  String get glyphBreath => 'Дыханне';

  @override
  String get glyphBreathSubtitle => 'Выберыце святло і хуткасць';

  @override
  String get glyphSteady => 'Устойлівы';

  @override
  String get glyphSteadySubtitle => 'Выбраныя агні застаюцца гарэць';

  @override
  String get breathSettings => 'Налады дыхання';

  @override
  String get activeLights => 'Актыўныя фары';

  @override
  String lightsCount(int count) {
    return '$count агні';
  }

  @override
  String get speedSettings => 'Налады хуткасці';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms затрымка';
  }

  @override
  String get durationAndSpeed => 'Працягласць і хуткасць';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return 'Працягласць $durationс, інтэрвал $intervalмс';
  }

  @override
  String get cancel => 'Адмяніць';

  @override
  String get done => 'Гатова';

  @override
  String get save => 'Захаваць';

  @override
  String get block => 'Блок';

  @override
  String get delete => 'Выдаліць';

  @override
  String get recents => 'Апошнія';

  @override
  String get contacts => 'Кантакты';

  @override
  String get hideFavouritesOnRecents => 'Схаваць абранае на Апошнія';

  @override
  String get showFavouritesOnRecents => 'Паказаць абранае на Апошнія';

  @override
  String get ongoingCall => 'Бягучы выклік';

  @override
  String get setAsDefaultTitle => 'УСТАНАВІЦЬ ЯК\nПА ЗМАВЧАННІ';

  @override
  String get setAsDefaultBody =>
      'Каб выкарыстоўваць Nothing Dialer, яго трэба ўсталяваць у якасці праграмы для тэлефона па змаўчанні. Гэта дазваляе вам кіраваць званкамі, праглядаць гісторыю і выкарыстоўваць анімацыю гліфаў.';

  @override
  String get setAsDefaultButton => 'УСТАНАВІЦЬ ПА ЗМАВЧАННІ';

  @override
  String get nothingDialerBrand => 'NOTHING DIALER 1';

  @override
  String get favourites => 'Выбранае';

  @override
  String get addFavourite => 'Дадаць абранае';

  @override
  String get favouritesDrawerHint =>
      'Выкарыстоўвайце меню, каб дадаць кантакты. Націсніце звонку скрыні або зачыніце яе пальцам. Пазначце кантакт зорачкай з яго звестак або доўга націскайце выклік у Нядаўніх.';

  @override
  String get menu => 'Меню';

  @override
  String get noFavouritesYet =>
      'Пакуль няма абраных.\nАдкрыйце меню, каб дадаць кантакт, або пазначце яго зорачкай.';

  @override
  String get contactsPermissionNeeded => 'Патрабуецца дазвол кантактаў';

  @override
  String get chooseContact => 'Выберыце кантакт';

  @override
  String get noPhone => 'Няма тэлефона';

  @override
  String get pickNumber => 'Выберыце нумар';

  @override
  String get contactHasNoPhone => 'У гэтага кантакту няма нумара тэлефона';

  @override
  String get blockNumber => 'Нумар блока';

  @override
  String get enterPhoneNumber => 'Увядзіце нумар тэлефона';

  @override
  String unblockedDisplay(String display) {
    return 'Разблакіравана $display';
  }

  @override
  String get couldNotUnblockNumber => 'Не ўдалося разблакіраваць нумар';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked заблакіравана • $matched знойдзена';
  }

  @override
  String get contactsPermissionMissing =>
      'Адсутнічае дазвол на кантакты. Націсніце, каб выправіць.';

  @override
  String get noBlockedNumbers => 'Няма заблакаваных нумароў';

  @override
  String get unknownContact => 'Невядомы кантакт';

  @override
  String get unblock => 'Разблакіраваць';

  @override
  String get permissionNeeded => 'Патрабуецца дазвол';

  @override
  String get grantPhonePermission =>
      'Дазвольце тэлефону праглядаць вашу гісторыю выклікаў.';

  @override
  String get grantContactsPermission =>
      'Дайце кантактам дазвол на прагляд вашай адраснай кнігі.';

  @override
  String get openSettings => 'Адкрыйце Налады';

  @override
  String get tryAgain => 'Паспрабуйце яшчэ раз';

  @override
  String get couldNotLoadContacts => 'Не атрымалася загрузіць кантакты';

  @override
  String get contactsLoadError =>
      'Нешта пайшло не так падчас чытання адраснай кнігі.';

  @override
  String get noContactsFound => 'Кантакты не знойдзены';

  @override
  String get contactsEmptySubtitle => 'Тут з\'явяцца кантакты з вашай прылады.';

  @override
  String get searchContacts => 'Пошук кантактаў…';

  @override
  String get searchRecentCalls => 'Пошук апошніх выклікаў';

  @override
  String get fromContacts => 'З кантактаў';

  @override
  String get recentsSearchSection => 'Нядаўні пошук';

  @override
  String get recentsSearchShowContacts => 'Паказаць кантакты ў пошуку';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Падчас пошуку \"Нядаўнія\" таксама паказвайце адпаведных людзей з вашай адраснай кнігі пад вынікамі гісторыі выклікаў.';

  @override
  String get voiceSearch => 'Галасавы пошук';

  @override
  String get createNewContact => 'Стварыць новы кантакт';

  @override
  String callError(String error) {
    return 'Памылка выкліку: $error';
  }

  @override
  String get noRecentCalls => 'Няма апошніх званкоў';

  @override
  String get callHistoryEmpty => 'Тут з\'явіцца ваша гісторыя выклікаў.';

  @override
  String get loadMore => 'Загрузіць больш';

  @override
  String get frequentlyContactedHeader => 'Часта кантактавалі';

  @override
  String get recentHistory => 'Найноўшая гісторыя';

  @override
  String get noFavouritesRecentsHint =>
      'Пакуль няма абраных. Пазначце кантакт зорачкай, націсніце і ўтрымлівайце выклік або выкарыстоўвайце ўкладку «Выбранае».';

  @override
  String get copyNumber => 'Нумар копіі';

  @override
  String get editNumberBeforeCall => 'Рэдагаваць нумар перад званком';

  @override
  String get removeFromFavourites => 'Выдаліць з абранага';

  @override
  String get addToFavourites => 'Дадаць у абранае';

  @override
  String get blockNumberQuestion => 'Нумар блока?';

  @override
  String blockNumberConfirm(String number) {
    return 'Вы больш не будзеце атрымліваць званкі і тэкставыя паведамленні з $number.';
  }

  @override
  String get blocked => 'Заблакіраваны';

  @override
  String get couldNotBlock => 'Не атрымалася заблакіраваць';

  @override
  String get contactNotOnDevice => 'Кантакт не захаваны на гэтай прыладзе';

  @override
  String get unblocked => 'Разблакіравана';

  @override
  String get numberCopied => 'Нумар скапіраваны';

  @override
  String get showLess => 'Паказваць менш';

  @override
  String get showAllTimes => 'Паказаць увесь час';

  @override
  String mostRecent(String time) {
    return 'Апошні · $time';
  }

  @override
  String get videoCall => 'Відэазванок';

  @override
  String get couldNotPlaceVideoCall => 'Не атрымалася зрабіць відэавыклік';

  @override
  String get message => 'паведамленне';

  @override
  String get couldNotOpenMessaging =>
      'Немагчыма адкрыць праграму абмену паведамленнямі';

  @override
  String get history => 'Гісторыя';

  @override
  String get viewContact => 'Прагляд кантакту';

  @override
  String get addToContact => 'Дадаць у кантакт';

  @override
  String get callTypeMissed => 'Прамахнуўся';

  @override
  String get callTypeRejected => 'Адхілена';

  @override
  String get callTypeIncoming => 'Паступае';

  @override
  String get callTypeOutgoing => 'Выходны';

  @override
  String get today => 'сёння';

  @override
  String get yesterday => 'Учора';

  @override
  String get justNow => 'Толькі што';

  @override
  String minutesAgo(int count) {
    return '$count хвілін таму';
  }

  @override
  String hoursAgo(int count) {
    return '$count гадзін таму';
  }

  @override
  String get filterAll => 'Усе';

  @override
  String get filterMissed => 'Прамахнуўся';

  @override
  String get filterContacts => 'Кантакты';

  @override
  String get filterNonContacts => 'Бескантактавыя';

  @override
  String get iconUpdated =>
      'Значок абноўлены. Абнаўленне галоўнага экрана можа заняць некаторы час.';

  @override
  String get iconSavedRelease =>
      'Выбар захаваны. Значок галоўнага экрана абнаўляецца ў зборках выпуску.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Не атрымалася змяніць значок: $error';
  }

  @override
  String get launcherClassicBlack => 'Класічны (чорны)';

  @override
  String get launcherLight => 'Святло';

  @override
  String get launcherNothingRed => 'Нічога чырвонага';

  @override
  String get launcherDarkGrey => 'Цёмна-шэры';

  @override
  String get launcherCream => 'Сліўкі';

  @override
  String get launcherRetroPhone => 'Рэтра тэлефон';

  @override
  String get launcherRetroPhoneLight => 'Рэтра тэлефон (светлы)';

  @override
  String get voiceSearchUnavailable =>
      'Галасавы пошук недаступны на гэтай прыладзе.';

  @override
  String voiceSearchFailed(String error) {
    return 'Збой галасавога пошуку: $error';
  }

  @override
  String get customColor => 'Прыстасаваныя';

  @override
  String get selectColor => 'Выберыце колер';

  @override
  String get reset => 'Скінуць';

  @override
  String get simPickerTitle => 'Выберыце SIM';

  @override
  String get simChooseForCall => 'Выберыце SIM для гэтага выкліку';

  @override
  String get defaultSimAsk => 'Пытайцеся кожны раз';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Кантактныя дадзеныя';

  @override
  String get call => 'Тэлефануйце';

  @override
  String get share => 'падзяліцца';

  @override
  String get favourite => 'Любімая';

  @override
  String get unfavourite => 'Выключыць з абранага';

  @override
  String get blockContact => 'Заблакіраваць кантакт';

  @override
  String get unblockContact => 'Разблакіраваць кантакт';

  @override
  String get deleteContact => 'Выдаліць кантакт';

  @override
  String get phone => 'Тэлефон';

  @override
  String get email => 'Электронная пошта';

  @override
  String get ringtone => 'Рынгтон';

  @override
  String get defaultRingtone => 'Па змаўчанні';

  @override
  String get simForContact => 'SIM для гэтага кантакту';

  @override
  String get callHistoryTitle => 'Гісторыя званкоў';

  @override
  String get noCallsWithNumber => 'Ніякіх званкоў з гэтага нумара';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '$minutesм $secondsс';
  }

  @override
  String durationSeconds(int seconds) {
    return '$secondsс';
  }

  @override
  String get glyphAnimationStyle => 'Анімацыя гліфаў';

  @override
  String get inCallGlyphAnimationStyle => 'Анімацыя Glyph падчас выкліку';

  @override
  String get recordsOff => 'Выкл';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Стандартная SIM-карта';

  @override
  String get nothingPhoneOnly => 'Нічога, толькі тэлефон';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Функцыі гліфа патрабуюць Nothing Phone';

  @override
  String get custom => 'Прыстасаваныя';

  @override
  String presetColorHex(String hex) {
    return 'Зададзены · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Індывідуальны · $hex';
  }

  @override
  String get oneContact => '1 кантакт';

  @override
  String upToContacts(int count) {
    return 'Да $count кантактаў';
  }

  @override
  String get answerButtonTapSubtitle => 'Націсніце кнопку, каб адказаць';

  @override
  String get filterCalls => 'Фільтр званкоў';

  @override
  String get filterTooltip => 'Фільтраваць';

  @override
  String get settingsTooltip => 'Налады';

  @override
  String get filterAllSubtitle => 'Увесь журнал выклікаў';

  @override
  String get filterMissedSubtitle => 'Прапушчаны і адхілены';

  @override
  String get filterContactsSubtitle =>
      'Выклікі супадаюць з захаваным кантактам';

  @override
  String get filterNonContactsSubtitle => 'Нумараў няма ў вашай адраснай кнізе';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Бягучы выклік: $detail';
  }

  @override
  String get defaultSimForCalls => 'Стандартная SIM-карта для выклікаў';

  @override
  String get blinkInterval => 'Інтэрвал мігцення';

  @override
  String get close => 'Блізка';

  @override
  String get frequentlyContactedInfoBody =>
      'Паказвае нумары тэлефонаў, на якія вы часцей за ўсё тэлефанавалі, у верхняй частцы ўкладкі \"Апошнія\" на аснове колькасці ўваходных, выходных, прапушчаных або адхіленых выклікаў з кожным нумарам за выбраны вамі перыяд часу.\n\nКолькасць запісаў: усталюйце 0, каб адключыць гэта. Выкарыстоўвайце 1–20, каб паказаць столькі галоўных кантактаў.\n\nПерыяд часу прымяняецца толькі тады, калі паказаны хаця б адзін кантакт.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count агні, ${ms}ms хуткасць';
  }

  @override
  String get deleteContactQuestion => 'Выдаліць кантакт?';

  @override
  String get deleteContactBody =>
      'Гэты кантакт будзе назаўсёды выдалены з вашай прылады.';

  @override
  String get blockContactQuestion => 'Заблакіраваць кантакт?';

  @override
  String get unblockContactQuestion => 'Разблакіраваць кантакт?';

  @override
  String get blockContactBody =>
      'Вы больш не будзеце атрымліваць званкі або тэкставыя паведамленні ад гэтага кантакту.';

  @override
  String get unblockContactBody =>
      'Вы пачнеце атрымліваць званкі і тэкставыя паведамленні ад гэтага кантакту.';

  @override
  String get contactBlocked => 'Кантакт заблакаваны';

  @override
  String get contactUnblocked => 'Кантакт разблакіраваны';

  @override
  String get noPhoneNumbersToBlock => 'Няма тэлефонных нумароў для блакіроўкі';

  @override
  String get simSameAsSystem => 'Тое самае, што сістэма';

  @override
  String get simSameAsSystemSubtitle =>
      'Выконвайце SIM-карту па змаўчанні ў наладах';

  @override
  String get simAskEveryTimeForContact =>
      'Заўсёды паказваць сродак выбару SIM для гэтага кантакту';

  @override
  String get ringtoneSetForContact =>
      'Рынгтон усталяваны глабальна для гэтага кантакту';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Не ўдалося выбраць рынгтон: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Памылка: $error';
  }

  @override
  String get noCallHistoryFound => 'Гісторыя выклікаў не знойдзена';

  @override
  String get speedDialVoicemail => 'Хуткі набор: галасавая пошта';

  @override
  String shareContactSubject(String name) {
    return 'Кантакт: $name';
  }

  @override
  String get contactInfo => 'Кантактная інфармацыя';

  @override
  String get dontAskAgainSim => 'Больш не пытайся';

  @override
  String get simDontAskAgainSubtitle =>
      'Выкарыстоўваць гэту SIM па змаўчанні (змяніць у наладах)';

  @override
  String get addContact => 'Дадаць кантакт';

  @override
  String get createContact => 'Стварыць кантакт';

  @override
  String get paste => 'Уставіць';

  @override
  String get clear => 'Ясна';

  @override
  String get returnToCall => 'Вярнуцца да выкліку';

  @override
  String get numberOfRecordsTitle => 'Колькасць запісаў';

  @override
  String get recordsPickerSubtitle =>
      'Колькі запісаў, з якімі часта кантактуюць, паказаць (0 = выключана)';

  @override
  String get torchInfoTitle => 'Мігценне факела';

  @override
  String get torchInfoBody =>
      'Мігае ўспышка камеры падчас уваходных, выходных або бягучых выклікаў. Незалежна ад агнёў Glyph.';

  @override
  String get glyphMapTitle => 'Макет гліфа';

  @override
  String get glyphMapBody =>
      'Nothing Phone 1 Glyph LED зоны. Гэтыя каналы выкарыстоўваюць анімацыю выходных і званкоў.';

  @override
  String get answerMethodTitle => 'Спосаб адказу';

  @override
  String get glyphOutgoingCallStyleTitle => 'Стыль выходнага выкліку';

  @override
  String get glyphInCallAnimationTitle => 'Гліф анімацыі падчас выкліку';

  @override
  String get themePickerTitle => 'Тэма';

  @override
  String get torchIncomingTitle => 'Ліхтарык ўваходнага званка';

  @override
  String get torchOutgoingTitle => 'Ліхтарык выходнага выкліку';

  @override
  String get torchOngoingTitle => 'Ліхтар бягучага выкліку';

  @override
  String get timePeriodTitle => 'Перыяд часу';

  @override
  String get ok => 'добра';

  @override
  String get confirmDeleteCall => 'Выдаліць гэты выклік з гісторыі?';

  @override
  String get confirmDeleteAllCalls => 'Выдаліць усе выклікі з гэтага нумара?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Адправіць паведамленне';

  @override
  String get addToExistingContactAction => 'Дадаць у кантакт';

  @override
  String get mobileLabel => 'Мабільны';

  @override
  String get callingSimForContactTitle => 'Выклік SIM для гэтага кантакту';

  @override
  String get contactSettings => 'Налады кантактаў';

  @override
  String get setCallingSim => 'Усталюйце SIM для выкліку';

  @override
  String get contactRingtone => 'Рынгтон на кантакт';

  @override
  String get shareContact => 'Абагуліць кантакт';

  @override
  String get blockNumbers => 'Блок нумароў';

  @override
  String get unblockNumbers => 'Разблакіраваць нумары';

  @override
  String get connectedApps => 'Падключаныя праграмы';

  @override
  String get simNotSet => 'Не ўстаноўлена';

  @override
  String get ringtoneDefault => 'Па змаўчанні';

  @override
  String get customRingtone => 'Прыстасаваныя';

  @override
  String get aboutSection => 'Пра';

  @override
  String get aboutFeedbackSection => 'Пра і водгукі';

  @override
  String get aboutDescription =>
      'Nothing Dialer з\'яўляецца адкрытым зыходным кодам. Калі вы распрацоўшчык, вы можаце вывучыць код і ўнесці свой уклад.';

  @override
  String get aboutViewSource => 'Паглядзець на GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Немагчыма адкрыць спасылку';

  @override
  String get reviewSection => 'Агляд';

  @override
  String get reviewDescription =>
      'Вам падабаецца Nothing Dialer? Ваш рэйтынг у Google Play дапамагае іншым знайсці праграму.';

  @override
  String get reviewRateOnPlay => 'Ацаніце ў Google Play';

  @override
  String get reviewRateOnPlaySubtitle =>
      'Пакіньце ацэнку, не выходзячы з праграмы';

  @override
  String get reviewCouldNotOpen => 'Немагчыма адкрыць Google Play';

  @override
  String get breathSpeed => 'Хуткасць дыхання';

  @override
  String get breathSpeedBlinkHint =>
      'Ніжэй = міргаць, вышэй = павольнае дыханне';

  @override
  String get speedSliderHint => 'Ніжэй = хутчэй, вышэй = павольней';

  @override
  String get swatchDefault => 'Па змаўчанні';

  @override
  String get customAccentColorPicker => 'Індывідуальны колер акцэнту';

  @override
  String get customLightBackgroundPicker => 'Індывідуальны светлы фон';

  @override
  String get customDarkBackgroundPicker => 'Індывідуальны цёмны фон';

  @override
  String get customCallBackgroundPicker => 'Індывідуальны фон выкліку';

  @override
  String get ongoingCallStyleTitle => 'Стыль бягучага выкліку';

  @override
  String get glyphMapUnavailable => 'Карта гліфаў недаступная';

  @override
  String get animationDelayRange => 'Затрымка анімацыі (1-10 с)';

  @override
  String get animationDelayRangeSingle => 'Затрымка анімацыі (0,1 с - 10 с)';

  @override
  String get inCallMute => 'Адключыць гук';

  @override
  String get inCallKeypad => 'Клавіятура';

  @override
  String get inCallSpeaker => 'Дакладчык';

  @override
  String get inCallMore => 'больш';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Тэлефон';

  @override
  String get inCallAddCall => 'Дадаць выклік';

  @override
  String get inCallChangeSim => 'Змяніць SIM';

  @override
  String get inCallDecline => 'адмовіцца';

  @override
  String get inCallAnswer => 'Адказ';

  @override
  String get inCallMessage => 'паведамленне';

  @override
  String get inCallCalling => 'Выклік…';

  @override
  String get inCallIncoming => 'Уваходны званок';

  @override
  String get inCallSelectSim => 'Выберыце SIM…';

  @override
  String get inCallSwitchingSim => 'Пераключэнне SIM-карты…';

  @override
  String get inCallCallEnded => 'Выклік завершаны';

  @override
  String inCallCallingVia(String sim) {
    return 'Выклік праз $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Выклік праз <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Выберыце SIM для гэтага выкліку';

  @override
  String get inCallDragAnswerDecline =>
      'Перацягніце ўправа, каб адказаць · Перацягніце ўлева, каб адмовіцца';

  @override
  String inCallMobileNumber(String number) {
    return 'Мабільны $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (цяперашні)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Тэлефануйце праз <b>$sim</b> з';
  }

  @override
  String get inCallCallFrom => 'Тэлефанаваць ад';

  @override
  String get inCallUnknown => 'Невядомы';

  @override
  String get selectContactRingtone => 'Выберыце рынгтон кантакту';

  @override
  String get speakToSearchPrompt => 'Прамаўляйце для пошуку';

  @override
  String get phonePermissionRequired => 'Патрабуецца дазвол на тэлефон';

  @override
  String callFailed(String error) {
    return 'Збой выкліку: $error';
  }

  @override
  String get callPermissionDenied => 'У дазволе на выклік адмоўлена';

  @override
  String get alreadyDefaultDialer =>
      'Ужо ўстаноўлена ў якасці дазвону па змаўчанні';

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
