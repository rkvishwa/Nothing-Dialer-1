// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Ничего';

  @override
  String get settings => 'Настройки';

  @override
  String get settingsSearchHint => 'Настройки поиска';

  @override
  String get settingsSearchNoResults => 'Настройки не найдены';

  @override
  String get general => 'Общие';

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
  String get theme => 'Тема';

  @override
  String get themeSystemDefault => 'Как в системе';

  @override
  String get themeLight => 'Свет';

  @override
  String get themeDark => 'Темный';

  @override
  String get themeFollowSystem => 'Следуйте настройкам системы';

  @override
  String get themeAlwaysLight => 'Всегда используйте светлую тему';

  @override
  String get themeAlwaysDark => 'Всегда используйте темную тему';

  @override
  String get language => 'Язык';

  @override
  String get languageDeviceDefault => 'Язык устройства';

  @override
  String get languagePickerTitle => 'Язык';

  @override
  String get languageSearchHint => 'Поиск языков';

  @override
  String get font => 'Шрифт';

  @override
  String get fontSystem => 'Система по умолчанию';

  @override
  String get fontNdot => 'Ничего (NDot)';

  @override
  String get fontSerif => 'Робото с засечками';

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
      'Загрузка шрифта не удалась. Проверьте подключение и повторите попытку.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Шрифт';

  @override
  String get fontPreviewSample => 'Ничего';

  @override
  String get fontAppWide => 'Шрифт приложения';

  @override
  String get fontApplyTo => 'Подать заявку на';

  @override
  String get fontApplyEntireApp => 'Все приложение';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Один и тот же шрифт везде, включая вызов';

  @override
  String get fontApplyTitlesOnly => 'Заголовки и заголовки';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Только крупные заголовки и заголовки разделов.';

  @override
  String get fontApplyCustomize => 'Настроить';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Выберите шрифт для каждого экрана и типа текста.';

  @override
  String get fontCustomizeSection => 'Настроить по экрану';

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
  String get fontRolePageTitle => 'Название страницы';

  @override
  String get fontRoleSectionHeader => 'Заголовок раздела';

  @override
  String get fontRolePrimary => 'Основной текст';

  @override
  String get fontRoleSecondary => 'Вторичный текст';

  @override
  String get fontRoleButton => 'Кнопки';

  @override
  String get fontRoleDialKey => 'Клавиши набора номера';

  @override
  String get fontSurfaceRecents => 'Недавние';

  @override
  String get fontSurfaceContacts => 'Контакты';

  @override
  String get fontSurfaceSettings => 'Настройки';

  @override
  String get fontSurfaceDialpad => 'Панель набора номера';

  @override
  String get fontSurfaceShell => 'Навигация';

  @override
  String get fontSurfaceDefaultDialer => 'Подсказка набора номера по умолчанию';

  @override
  String get fontSurfaceFavourites => 'Избранное';

  @override
  String get fontSurfaceBlocked => 'Заблокированные номера';

  @override
  String get fontSurfaceContactDetail => 'Контактная информация';

  @override
  String get fontSurfaceCallHistory => 'История звонков';

  @override
  String get fontSurfaceSheets => 'Листы и сборщики';

  @override
  String get fontSurfaceInCall => 'Экран вызова';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — всё приложение';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — только заголовки';
  }

  @override
  String get fontSubtitleCustomize => 'Пользовательский для каждого экрана';

  @override
  String get background => 'Фон';

  @override
  String get accent => 'Акцент';

  @override
  String get lightBackground => 'Светлый фон';

  @override
  String get lightAccent => 'Легкий акцент';

  @override
  String get darkBackground => 'Темный фон';

  @override
  String get darkAccent => 'Темный акцент';

  @override
  String get callBackground => 'Фон вызова';

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
  String get appIcon => 'Значок приложения';

  @override
  String get answerMethod => 'Метод ответа';

  @override
  String get answerSlide => 'Слайд для ответа';

  @override
  String get answerSlideSubtitle =>
      'Проведите пальцем влево/вправо по панели, как в Google Phone.';

  @override
  String get answerButton => 'Нажмите кнопку';

  @override
  String get answerButtonSubtitle => 'Нажмите кнопки ответа или отклонения.';

  @override
  String get answerHuawei => 'стиль Хуавей';

  @override
  String get answerHuaweiSubtitle =>
      'Чтобы ответить, перетащите кружок на зеленый телефон.';

  @override
  String get answerHuaweiTileSubtitle =>
      'Huawei — перетащите на зеленый/красный';

  @override
  String get calling => 'Вызов';

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
  String get defaultSim => 'SIM-карта по умолчанию';

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
  String get askEveryTime => 'Спрашивай каждый раз';

  @override
  String get askEveryTimeSubtitle =>
      'Показывать выбор SIM-карты перед каждым звонком';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'SIM-карты не найдены';

  @override
  String couldNotLoadSims(String error) {
    return 'Не удалось загрузить SIM-карты: $error';
  }

  @override
  String get allFavourites => 'Все избранное';

  @override
  String get allFavouritesSubtitle =>
      'Изменение порядка, удаление и добавление из контактов';

  @override
  String get blockedNumbers => 'Заблокированные номера';

  @override
  String get blockedNumbersSubtitle => 'Просмотр и разблокировка номеров';

  @override
  String get soundsAndVibration => 'Звуки и вибрация';

  @override
  String get soundsAndVibrationSubtitle =>
      'Мелодия звонка, вибрация, звуки клавиатуры';

  @override
  String couldNotOpenSettings(String error) {
    return 'Не удалось открыть настройки: $error';
  }

  @override
  String get frequentlyContacted => 'Часто связываемые';

  @override
  String get numberOfRecords => 'Количество записей';

  @override
  String get timePeriod => 'Период времени';

  @override
  String get periodLast24Hours => 'Последние 24 часа';

  @override
  String get periodLast24HoursSubtitle => 'Звонки за прошедший день';

  @override
  String get periodLast7Days => 'Последние 7 дней';

  @override
  String get periodLast7DaysSubtitle => 'Звонки за прошедшую неделю';

  @override
  String get periodLast30Days => 'Последние 30 дней';

  @override
  String get periodLast30DaysSubtitle => 'Звонки за последний месяц';

  @override
  String get periodLast12Months => 'Последние 12 месяцев';

  @override
  String get periodLast12MonthsSubtitle => 'Звонки прошлого года';

  @override
  String get periodAllTime => 'Все время';

  @override
  String get periodAllTimeSubtitle => 'Вся история звонков';

  @override
  String get frequentMaxOff => 'Выключенный';

  @override
  String frequentMaxCount(int count) {
    return '$count контакты';
  }

  @override
  String get torchBlink => 'Мигание факела';

  @override
  String get torchIncomingCall => 'Фонарик входящего вызова';

  @override
  String get torchOutgoingCall => 'Индикатор исходящего вызова';

  @override
  String get torchOngoingCall => 'Индикатор текущего вызова';

  @override
  String get torchIncomingInterval => 'Входящий интервал мигания';

  @override
  String get torchOutgoingInterval => 'Исходящий интервал мигания';

  @override
  String get torchOngoingInterval => 'Постоянный интервал мигания';

  @override
  String get torchOff => 'Выключенный';

  @override
  String get torchOffIncomingSubtitle => 'Нет фонарика во время звонка';

  @override
  String get torchOffOutgoingSubtitle => 'Нет фонарика при наборе номера';

  @override
  String get torchOffOngoingSubtitle =>
      'Нет фонарика во время активного разговора';

  @override
  String get torchFixedInterval => 'Фиксированный интервал';

  @override
  String get torchFixedIntervalSubtitle => 'Мигайте с заданной скоростью';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds с';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds мигать';
  }

  @override
  String get flashlightUnavailable => 'Фонарик недоступен на этом устройстве';

  @override
  String get glyphLights => 'Глиф огни';

  @override
  String get glyphCallingAnimation => 'Анимация вызова глифа';

  @override
  String get glyphOngoingAnimation => 'Анимация непрерывного вызова Glyph';

  @override
  String get glyphNone => 'Никто';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Отключить подсветку глифа для исходящих вызовов';

  @override
  String get glyphNoneInCallSubtitle =>
      'Отключить подсветку глифа во время активного разговора';

  @override
  String get glyphBreathProgress => 'Дыхание и прогресс';

  @override
  String get glyphBreathProgressSubtitle =>
      'Свет дышит, пока линия заполняется в течение 65 секунд';

  @override
  String get glyphAccumulate => 'Накапливать';

  @override
  String get glyphAccumulateSubtitle =>
      'Накопление анимации на источниках света C1-C4.';

  @override
  String get glyphSingle => 'Одинокий';

  @override
  String get glyphSingleSubtitle => 'Одиночный свет, движущийся через C1-C4';

  @override
  String get glyphBreath => 'Дыхание';

  @override
  String get glyphBreathSubtitle => 'Выберите свет и скорость';

  @override
  String get glyphSteady => 'Устойчивый';

  @override
  String get glyphSteadySubtitle => 'Выбранные индикаторы остаются включенными';

  @override
  String get breathSettings => 'Настройки дыхания';

  @override
  String get activeLights => 'Активное освещение';

  @override
  String lightsCount(int count) {
    return '$count огни';
  }

  @override
  String get speedSettings => 'Настройки скорости';

  @override
  String speedSettingsDelay(int ms) {
    return 'Задержка $msмс';
  }

  @override
  String get durationAndSpeed => 'Продолжительность и скорость';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return 'Длительность $durationс, интервал $intervalмс';
  }

  @override
  String get cancel => 'Отмена';

  @override
  String get done => 'Сделанный';

  @override
  String get save => 'Сохранять';

  @override
  String get block => 'Блокировать';

  @override
  String get delete => 'Удалить';

  @override
  String get recents => 'Недавние';

  @override
  String get contacts => 'Контакты';

  @override
  String get hideFavouritesOnRecents => 'Скрыть избранное в разделе «Недавние»';

  @override
  String get showFavouritesOnRecents =>
      'Показывать избранное в разделе «Недавние»';

  @override
  String get ongoingCall => 'Текущий звонок';

  @override
  String get setAsDefaultTitle => 'УСТАНОВИТЬ КАК\nПО УМОЛЧАНИЮ';

  @override
  String get setAsDefaultBody =>
      'Чтобы использовать Nothing Dialer, его необходимо установить в качестве приложения для телефона по умолчанию. Это позволяет вам управлять звонками, просматривать историю и использовать анимацию Glyph.';

  @override
  String get setAsDefaultButton => 'УСТАНОВИТЬ ПО УМОЛЧАНИЮ';

  @override
  String get nothingDialerBrand => 'НИЧЕГО НАБОР 1';

  @override
  String get favourites => 'Избранное';

  @override
  String get addFavourite => 'Добавить в избранное';

  @override
  String get favouritesDrawerHint =>
      'Используйте меню для добавления контактов. Нажмите за пределами ящика или закройте его. Отметьте контакт в его сведениях или нажмите и удерживайте вызов в списке «Недавние».';

  @override
  String get menu => 'Меню';

  @override
  String get noFavouritesYet =>
      'Пока нет фаворитов.\nОткройте меню, чтобы добавить контакт, или пометьте его.';

  @override
  String get contactsPermissionNeeded => 'Требуется разрешение на контакты';

  @override
  String get chooseContact => 'Выберите контакт';

  @override
  String get noPhone => 'Нет телефона';

  @override
  String get pickNumber => 'Выберите номер';

  @override
  String get contactHasNoPhone => 'У этого контакта нет номера телефона';

  @override
  String get blockNumber => 'Номер блока';

  @override
  String get enterPhoneNumber => 'Введите номер телефона';

  @override
  String unblockedDisplay(String display) {
    return 'Разблокировано $display';
  }

  @override
  String get couldNotUnblockNumber => 'Не удалось разблокировать номер';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked заблокировано • $matched соответствует';
  }

  @override
  String get contactsPermissionMissing =>
      'Разрешение на контакты отсутствует. Нажмите, чтобы исправить.';

  @override
  String get noBlockedNumbers => 'Нет заблокированных номеров';

  @override
  String get unknownContact => 'Неизвестный контакт';

  @override
  String get unblock => 'Разблокировать';

  @override
  String get permissionNeeded => 'Требуется разрешение';

  @override
  String get grantPhonePermission =>
      'Предоставьте телефону разрешение на просмотр истории звонков.';

  @override
  String get grantContactsPermission =>
      'Предоставьте контактам разрешение на просмотр вашей адресной книги.';

  @override
  String get openSettings => 'Открыть настройки';

  @override
  String get tryAgain => 'Попробуйте еще раз';

  @override
  String get couldNotLoadContacts => 'Не удалось загрузить контакты';

  @override
  String get contactsLoadError =>
      'Что-то пошло не так при чтении вашей адресной книги.';

  @override
  String get noContactsFound => 'Контакты не найдены';

  @override
  String get contactsEmptySubtitle =>
      'Здесь появятся контакты с вашего устройства.';

  @override
  String get searchContacts => 'Поиск контактов…';

  @override
  String get searchRecentCalls => 'Поиск последних звонков';

  @override
  String get fromContacts => 'Из контактов';

  @override
  String get recentsSearchSection => 'Недавний поиск';

  @override
  String get recentsSearchShowContacts => 'Показать контакты в поиске';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'При поиске в «Недавних» под результатами истории вызовов также отображаются подходящие люди из вашей адресной книги.';

  @override
  String get voiceSearch => 'Голосовой поиск';

  @override
  String get createNewContact => 'Создать новый контакт';

  @override
  String callError(String error) {
    return 'Ошибка вызова: $error';
  }

  @override
  String get noRecentCalls => 'Нет недавних звонков';

  @override
  String get callHistoryEmpty => 'Здесь появится история ваших звонков.';

  @override
  String get loadMore => 'Загрузить больше';

  @override
  String get frequentlyContactedHeader => 'Часто связываются';

  @override
  String get recentHistory => 'Новейшая история';

  @override
  String get noFavouritesRecentsHint =>
      'Пока нет фаворитов. Отметьте контакт, нажмите и удерживайте вызов или воспользуйтесь вкладкой «Избранное».';

  @override
  String get copyNumber => 'Копировать номер';

  @override
  String get editNumberBeforeCall => 'Изменить номер перед звонком';

  @override
  String get removeFromFavourites => 'Удалить из избранного';

  @override
  String get addToFavourites => 'Добавить в избранное';

  @override
  String get blockNumberQuestion => 'Номер блока?';

  @override
  String blockNumberConfirm(String number) {
    return 'Вы больше не будете получать звонки и текстовые сообщения от $number.';
  }

  @override
  String get blocked => 'Заблокировано';

  @override
  String get couldNotBlock => 'Не удалось заблокировать';

  @override
  String get contactNotOnDevice => 'Контакт не сохранен на этом устройстве';

  @override
  String get unblocked => 'Разблокировано';

  @override
  String get numberCopied => 'Номер скопирован';

  @override
  String get showLess => 'Показать меньше';

  @override
  String get showAllTimes => 'Показать все время';

  @override
  String mostRecent(String time) {
    return 'Самый последний · $time';
  }

  @override
  String get videoCall => 'Видеозвонок';

  @override
  String get couldNotPlaceVideoCall => 'Не удалось совершить видеовызов';

  @override
  String get message => 'Сообщение';

  @override
  String get couldNotOpenMessaging =>
      'Не удалось открыть приложение для обмена сообщениями';

  @override
  String get history => 'История';

  @override
  String get viewContact => 'Посмотреть контакт';

  @override
  String get addToContact => 'Добавить в контакт';

  @override
  String get callTypeMissed => 'Пропущенный';

  @override
  String get callTypeRejected => 'Отклоненный';

  @override
  String get callTypeIncoming => 'Входящий';

  @override
  String get callTypeOutgoing => 'Исходящий';

  @override
  String get today => 'Сегодня';

  @override
  String get yesterday => 'Вчера';

  @override
  String get justNow => 'Только что';

  @override
  String minutesAgo(int count) {
    return '$count минуту назад';
  }

  @override
  String hoursAgo(int count) {
    return '$count часа назад';
  }

  @override
  String get filterAll => 'Все';

  @override
  String get filterMissed => 'Пропущенный';

  @override
  String get filterContacts => 'Контакты';

  @override
  String get filterNonContacts => 'Неконтакты';

  @override
  String get iconUpdated =>
      'Значок обновлен. Обновление главного экрана может занять некоторое время.';

  @override
  String get iconSavedRelease =>
      'Выбор сохранен. Значок главного экрана обновляется в выпускных сборках.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Не удалось изменить значок: $error';
  }

  @override
  String get launcherClassicBlack => 'Классический (черный)';

  @override
  String get launcherLight => 'Свет';

  @override
  String get launcherNothingRed => 'Ничего красного';

  @override
  String get launcherDarkGrey => 'Темно-серый';

  @override
  String get launcherCream => 'Крем';

  @override
  String get launcherRetroPhone => 'Ретро телефон';

  @override
  String get launcherRetroPhoneLight => 'Ретро телефон (светлый)';

  @override
  String get voiceSearchUnavailable =>
      'Голосовой поиск недоступен на этом устройстве.';

  @override
  String voiceSearchFailed(String error) {
    return 'Голосовой поиск не удался: $error';
  }

  @override
  String get customColor => 'Обычай';

  @override
  String get selectColor => 'Выберите цвет';

  @override
  String get reset => 'Перезагрузить';

  @override
  String get simPickerTitle => 'Выберите SIM-карту';

  @override
  String get simChooseForCall => 'Выберите SIM-карту для этого звонка';

  @override
  String get defaultSimAsk => 'Спрашивай каждый раз';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Контактные данные';

  @override
  String get call => 'Вызов';

  @override
  String get share => 'Делиться';

  @override
  String get favourite => 'Любимый';

  @override
  String get unfavourite => 'Удалить из избранного';

  @override
  String get blockContact => 'Заблокировать контакт';

  @override
  String get unblockContact => 'Разблокировать контакт';

  @override
  String get deleteContact => 'Удалить контакт';

  @override
  String get phone => 'Телефон';

  @override
  String get email => 'Электронная почта';

  @override
  String get ringtone => 'Рингтон';

  @override
  String get defaultRingtone => 'По умолчанию';

  @override
  String get simForContact => 'SIM-карта для этого контакта';

  @override
  String get callHistoryTitle => 'История звонков';

  @override
  String get noCallsWithNumber => 'Нет звонков с этого номера';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '$minutesм $secondsс';
  }

  @override
  String durationSeconds(int seconds) {
    return '$secondsс';
  }

  @override
  String get glyphAnimationStyle => 'Глиф анимация';

  @override
  String get inCallGlyphAnimationStyle => 'Анимация глифа во время разговора';

  @override
  String get recordsOff => 'Выключенный';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'SIM-карта по умолчанию';

  @override
  String get nothingPhoneOnly => 'Ничего, только телефон';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Для функций Glyph требуется телефон Nothing.';

  @override
  String get custom => 'Своё';

  @override
  String presetColorHex(String hex) {
    return 'Предустановка · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Пользовательский · $hex';
  }

  @override
  String get oneContact => '1 контакт';

  @override
  String upToContacts(int count) {
    return 'До $count контактов';
  }

  @override
  String get answerButtonTapSubtitle => 'Нажмите кнопку, чтобы ответить';

  @override
  String get filterCalls => 'Фильтровать звонки';

  @override
  String get filterTooltip => 'Фильтр';

  @override
  String get settingsTooltip => 'Настройки';

  @override
  String get filterAllSubtitle => 'Весь журнал звонков';

  @override
  String get filterMissedSubtitle => 'Пропущен и отклонен';

  @override
  String get filterContactsSubtitle =>
      'Звонки, соответствующие сохраненному контакту';

  @override
  String get filterNonContactsSubtitle => 'Номера не в вашей адресной книге';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Текущий звонок: $detail';
  }

  @override
  String get defaultSimForCalls => 'SIM-карта по умолчанию для звонков';

  @override
  String get blinkInterval => 'Интервал мигания';

  @override
  String get close => 'Закрывать';

  @override
  String get frequentlyContactedInfoBody =>
      'В верхней части вкладки «Последние» отображаются телефонные номера, по которым вы звоните чаще всего, в зависимости от того, сколько входящих, исходящих, пропущенных или отклоненных вызовов вы совершили по каждому номеру за выбранный вами период времени.\n\nКоличество записей: установите значение 0, чтобы отключить эту функцию. Используйте значения от 1 до 20, чтобы отобразить максимальное количество наиболее популярных контактов.\n\nПериод времени применяется только в том случае, если отображается хотя бы один контакт.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count светится, $msмс скорость';
  }

  @override
  String get deleteContactQuestion => 'Удалить контакт?';

  @override
  String get deleteContactBody =>
      'Этот контакт будет навсегда удален с вашего устройства.';

  @override
  String get blockContactQuestion => 'Заблокировать контакт?';

  @override
  String get unblockContactQuestion => 'Разблокировать контакт?';

  @override
  String get blockContactBody =>
      'Вы больше не будете получать звонки и сообщения от этого контакта.';

  @override
  String get unblockContactBody =>
      'Вы начнете получать звонки и сообщения от этого контакта.';

  @override
  String get contactBlocked => 'Контакт заблокирован';

  @override
  String get contactUnblocked => 'Контакт разблокирован';

  @override
  String get noPhoneNumbersToBlock =>
      'Нет номеров телефонов, которые можно заблокировать';

  @override
  String get simSameAsSystem => 'То же, что и система';

  @override
  String get simSameAsSystemSubtitle =>
      'Следует SIM-карте по умолчанию в настройках';

  @override
  String get simAskEveryTimeForContact =>
      'Всегда показывать средство выбора SIM-карты для этого контакта';

  @override
  String get ringtoneSetForContact =>
      'Мелодия звонка установлена ​​глобально для этого контакта';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Не удалось выбрать рингтон: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Ошибка: $error';
  }

  @override
  String get noCallHistoryFound => 'История звонков не найдена';

  @override
  String get speedDialVoicemail => 'Быстрый набор: голосовая почта';

  @override
  String shareContactSubject(String name) {
    return 'Контакт: $name';
  }

  @override
  String get contactInfo => 'Контактная информация';

  @override
  String get dontAskAgainSim => 'Не спрашивай больше';

  @override
  String get simDontAskAgainSubtitle =>
      'Использовать эту SIM-карту по умолчанию (изменить в настройках)';

  @override
  String get addContact => 'Добавить контакт';

  @override
  String get createContact => 'Создать контакт';

  @override
  String get paste => 'Вставить';

  @override
  String get clear => 'Прозрачный';

  @override
  String get returnToCall => 'Вернуться к звонку';

  @override
  String get numberOfRecordsTitle => 'Количество записей';

  @override
  String get recordsPickerSubtitle =>
      'Сколько часто используемых записей отображать (0 = выключено)';

  @override
  String get torchInfoTitle => 'Мигание фонарика';

  @override
  String get torchInfoBody =>
      'Мигает вспышка камеры во время входящих, исходящих или текущих вызовов. Независимость от источников света Glyph.';

  @override
  String get glyphMapTitle => 'Макет глифов';

  @override
  String get glyphMapBody =>
      'Ничего Телефон 1 Зоны светодиодных индикаторов с символами. Эти каналы используются для анимации исходящего вызова и вызова.';

  @override
  String get answerMethodTitle => 'Метод ответа';

  @override
  String get glyphOutgoingCallStyleTitle => 'Стиль исходящего звонка';

  @override
  String get glyphInCallAnimationTitle => 'Глиф-анимация во время разговора';

  @override
  String get themePickerTitle => 'Тема';

  @override
  String get torchIncomingTitle => 'Фонарик входящего вызова';

  @override
  String get torchOutgoingTitle => 'Индикатор исходящего вызова';

  @override
  String get torchOngoingTitle => 'Индикатор текущего вызова';

  @override
  String get timePeriodTitle => 'Период времени';

  @override
  String get ok => 'ХОРОШО';

  @override
  String get confirmDeleteCall => 'Удалить этот звонок из истории?';

  @override
  String get confirmDeleteAllCalls => 'Удалить все звонки с этого номера?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Отправить сообщение';

  @override
  String get addToExistingContactAction => 'Добавить в контакт';

  @override
  String get mobileLabel => 'Мобильный';

  @override
  String get callingSimForContactTitle => 'Вызов SIM-карты для этого контакта';

  @override
  String get contactSettings => 'Настройки контактов';

  @override
  String get setCallingSim => 'Установить SIM-карту для звонков';

  @override
  String get contactRingtone => 'Контактный рингтон';

  @override
  String get shareContact => 'Поделиться контактом';

  @override
  String get blockNumbers => 'Блокировать номера';

  @override
  String get unblockNumbers => 'Разблокировать номера';

  @override
  String get connectedApps => 'Подключенные приложения';

  @override
  String get simNotSet => 'Не установлено';

  @override
  String get ringtoneDefault => 'По умолчанию';

  @override
  String get customRingtone => 'Обычай';

  @override
  String get aboutSection => 'О приложении';

  @override
  String get aboutFeedbackSection => 'О компании и отзывы';

  @override
  String get aboutDescription =>
      'Nothing Dialer — проект с открытым исходным кодом. Разработчикам можно изучать код и вносить вклад.';

  @override
  String get aboutViewSource => 'Открыть на GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Не удалось открыть ссылку';

  @override
  String get reviewSection => 'Отзыв';

  @override
  String get reviewDescription =>
      'Нравится Nothing Dialer? Оценка в Google Play помогает другим найти приложение.';

  @override
  String get reviewRateOnPlay => 'Оценить в Google Play';

  @override
  String get reviewRateOnPlaySubtitle =>
      'Открывает страницу приложения в Google Play';

  @override
  String get reviewCouldNotOpen => 'Не удалось открыть Google Play';

  @override
  String get breathSpeed => 'Скорость дыхания';

  @override
  String get breathSpeedBlinkHint =>
      'Ниже = моргание, выше = медленное дыхание';

  @override
  String get speedSliderHint => 'Ниже = быстрее, выше = медленнее';

  @override
  String get swatchDefault => 'По умолчанию';

  @override
  String get customAccentColorPicker => 'Пользовательский цвет акцента';

  @override
  String get customLightBackgroundPicker => 'Пользовательский светлый фон';

  @override
  String get customDarkBackgroundPicker => 'Пользовательский темный фон';

  @override
  String get customCallBackgroundPicker => 'Пользовательский фон звонка';

  @override
  String get ongoingCallStyleTitle => 'Стиль текущего вызова';

  @override
  String get glyphMapUnavailable => 'Карта глифов недоступна.';

  @override
  String get animationDelayRange => 'Задержка анимации (1–10 с)';

  @override
  String get animationDelayRangeSingle => 'Задержка анимации (0,1–10 с)';

  @override
  String get inCallMute => 'Без звука';

  @override
  String get inCallKeypad => 'Клавиатура';

  @override
  String get inCallSpeaker => 'Динамик';

  @override
  String get inCallMore => 'Ещё';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Телефон';

  @override
  String get inCallAddCall => 'Добавить вызов';

  @override
  String get inCallChangeSim => 'Сменить SIM';

  @override
  String get inCallDecline => 'Отклонить';

  @override
  String get inCallAnswer => 'Ответить';

  @override
  String get inCallMessage => 'Сообщение';

  @override
  String get inCallCalling => 'Вызов…';

  @override
  String get inCallIncoming => 'Входящий вызов';

  @override
  String get inCallSelectSim => 'Выберите SIM…';

  @override
  String get inCallSwitchingSim => 'Смена SIM…';

  @override
  String get inCallCallEnded => 'Вызов завершён';

  @override
  String inCallCallingVia(String sim) {
    return 'Вызов через $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Вызов через <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Выберите SIM для этого вызова';

  @override
  String get inCallDragAnswerDecline => 'Вправо — ответить · влево — отклонить';

  @override
  String inCallMobileNumber(String number) {
    return 'Мобильный $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label  (Текущий)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Вызов через <b>$sim</b> с';
  }

  @override
  String get inCallCallFrom => 'Вызов от';

  @override
  String get inCallUnknown => 'Неизвестно';

  @override
  String get selectContactRingtone => 'Выберите мелодию контакта';

  @override
  String get speakToSearchPrompt => 'Говорите для поиска';

  @override
  String get phonePermissionRequired => 'Требуется разрешение телефона';

  @override
  String callFailed(String error) {
    return 'Не удалось позвонить: $error';
  }

  @override
  String get callPermissionDenied => 'В разрешении на вызов отказано';

  @override
  String get alreadyDefaultDialer => 'Уже приложение для звонков по умолчанию';

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
