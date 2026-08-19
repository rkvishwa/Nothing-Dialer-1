// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class AppLocalizationsSr extends AppLocalizations {
  AppLocalizationsSr([String locale = 'sr']) : super(locale);

  @override
  String get appTitle => 'Нотхинг Диалер';

  @override
  String get settings => 'Подешавања';

  @override
  String get settingsSearchHint => 'Подешавања претраге';

  @override
  String get settingsSearchNoResults => 'Нису пронађена подешавања';

  @override
  String get general => 'генерал';

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
  String get themeSystemDefault => 'Систем Дефаулт';

  @override
  String get themeLight => 'Светлост';

  @override
  String get themeDark => 'Дарк';

  @override
  String get themeFollowSystem => 'Пратите системска подешавања';

  @override
  String get themeAlwaysLight => 'Увек користите светлу тему';

  @override
  String get themeAlwaysDark => 'Увек користите тамну тему';

  @override
  String get language => 'Језик';

  @override
  String get languageDeviceDefault => 'Подразумевано за уређај';

  @override
  String get languagePickerTitle => 'Језик';

  @override
  String get languageSearchHint => 'Тражи језике';

  @override
  String get font => 'Фонт';

  @override
  String get fontSystem => 'Систем подразумевано';

  @override
  String get fontNdot => 'Ништа (НДот)';

  @override
  String get fontSerif => 'Робото Сериф';

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
      'Преузимање фонта није успело. Проверите своју везу и покушајте поново.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Фонт';

  @override
  String get fontPreviewSample => 'Нотхинг Диалер';

  @override
  String get fontAppWide => 'Фонт апликације';

  @override
  String get fontApplyTo => 'Пријавите се на';

  @override
  String get fontApplyEntireApp => 'Цела апликација';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Исти фонт свуда, укључујући и позив';

  @override
  String get fontApplyTitlesOnly => 'Наслови и заглавља';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Само велики наслови и заглавља одељака';

  @override
  String get fontApplyCustomize => 'Прилагодите';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Изаберите фонт по екрану и типу текста';

  @override
  String get fontCustomizeSection => 'Прилагодите према екрану';

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
  String get fontRolePageTitle => 'Наслов странице';

  @override
  String get fontRoleSectionHeader => 'Заглавље одељка';

  @override
  String get fontRolePrimary => 'Примарни текст';

  @override
  String get fontRoleSecondary => 'Секундарни текст';

  @override
  String get fontRoleButton => 'Дугмад';

  @override
  String get fontRoleDialKey => 'Тастери за бирање бројева';

  @override
  String get fontSurfaceRecents => 'Недавно';

  @override
  String get fontSurfaceContacts => 'Контакти';

  @override
  String get fontSurfaceSettings => 'Подешавања';

  @override
  String get fontSurfaceDialpad => 'Тастатура за бирање бројева';

  @override
  String get fontSurfaceShell => 'Навигација';

  @override
  String get fontSurfaceDefaultDialer =>
      'Подразумевани позив за бирање бројева';

  @override
  String get fontSurfaceFavourites => 'Фаворитес';

  @override
  String get fontSurfaceBlocked => 'Блокирани бројеви';

  @override
  String get fontSurfaceContactDetail => 'Контакт детаљ';

  @override
  String get fontSurfaceCallHistory => 'Историја позива';

  @override
  String get fontSurfaceSheets => 'Листови и берачи';

  @override
  String get fontSurfaceInCall => 'Екран током позива';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — цела апликација';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — само наслови';
  }

  @override
  String get fontSubtitleCustomize => 'Прилагођено по екрану';

  @override
  String get background => 'Позадина';

  @override
  String get accent => 'Аццент';

  @override
  String get lightBackground => 'Светла позадина';

  @override
  String get lightAccent => 'Лагани акценат';

  @override
  String get darkBackground => 'Тамна позадина';

  @override
  String get darkAccent => 'Тамни акценат';

  @override
  String get callBackground => 'Позадина позива';

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
  String get appIcon => 'Икона апликације';

  @override
  String get answerMethod => 'Метода одговора';

  @override
  String get answerSlide => 'Превуците да бисте одговорили';

  @override
  String get answerSlideSubtitle =>
      'Превуците лево/десно на траци, као што је Гоогле телефон';

  @override
  String get answerButton => 'Тапкање на дугме';

  @override
  String get answerButtonSubtitle => 'Додирните дугме за одговор или одбијање';

  @override
  String get answerHuawei => 'Хуавеи стил';

  @override
  String get answerHuaweiSubtitle =>
      'Превуците круг до зеленог телефона да бисте одговорили';

  @override
  String get answerHuaweiTileSubtitle =>
      'Хуавеи — превуците на зелено / црвено';

  @override
  String get calling => 'Цаллинг';

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
  String get defaultSim => 'Дефаулт СИМ';

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
  String get askEveryTime => 'Питајте сваки пут';

  @override
  String get askEveryTimeSubtitle =>
      'Прикажи бирач СИМ картице пре сваког позива';

  @override
  String simSlot(int slot) {
    return 'СИМ $slot';
  }

  @override
  String get noSimCardsFound => 'СИМ картице нису пронађене';

  @override
  String couldNotLoadSims(String error) {
    return 'Није могуће учитати СИМ картице: $error';
  }

  @override
  String get allFavourites => 'Сви фаворити';

  @override
  String get allFavouritesSubtitle =>
      'Промените редослед, уклоните и додајте из контаката';

  @override
  String get blockedNumbers => 'Блокирани бројеви';

  @override
  String get blockedNumbersSubtitle => 'Прегледајте и деблокирајте бројеве';

  @override
  String get soundsAndVibration => 'Звукови и вибрације';

  @override
  String get soundsAndVibrationSubtitle =>
      'Мелодија звона, вибрација, тонови тастера за бирање бројева';

  @override
  String couldNotOpenSettings(String error) {
    return 'Није могуће отворити подешавања: $error';
  }

  @override
  String get frequentlyContacted => 'Често контактирани';

  @override
  String get numberOfRecords => 'Број записа';

  @override
  String get timePeriod => 'Временски период';

  @override
  String get periodLast24Hours => 'Последња 24 сата';

  @override
  String get periodLast24HoursSubtitle => 'Позиви од прошлог дана';

  @override
  String get periodLast7Days => 'Последњих 7 дана';

  @override
  String get periodLast7DaysSubtitle => 'Позиви од прошле недеље';

  @override
  String get periodLast30Days => 'Последњих 30 дана';

  @override
  String get periodLast30DaysSubtitle => 'Позиви од прошлог месеца';

  @override
  String get periodLast12Months => 'Последњих 12 месеци';

  @override
  String get periodLast12MonthsSubtitle => 'Позиви из прошле године';

  @override
  String get periodAllTime => 'Све време';

  @override
  String get periodAllTimeSubtitle => 'Целокупна историја позива';

  @override
  String get frequentMaxOff => 'Офф';

  @override
  String frequentMaxCount(int count) {
    return '$count контакти';
  }

  @override
  String get torchBlink => 'Торцх Блинк';

  @override
  String get torchIncomingCall => 'Светиљка за долазни позив';

  @override
  String get torchOutgoingCall => 'Светиљка за одлазни позив';

  @override
  String get torchOngoingCall => 'Позив бакља у току';

  @override
  String get torchIncomingInterval => 'Интервал долазног трептања';

  @override
  String get torchOutgoingInterval => 'Интервал одлазног трептања';

  @override
  String get torchOngoingInterval => 'Интервал трептања у току';

  @override
  String get torchOff => 'Офф';

  @override
  String get torchOffIncomingSubtitle => 'Нема бакље док звони';

  @override
  String get torchOffOutgoingSubtitle => 'Нема лампе током бирања';

  @override
  String get torchOffOngoingSubtitle => 'Нема лампе током активног позива';

  @override
  String get torchFixedInterval => 'Фиксни интервал';

  @override
  String get torchFixedIntervalSubtitle => 'Трепните подешеном брзином';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds с';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds трепери';
  }

  @override
  String get flashlightUnavailable => 'Лампа није доступна на овом уређају';

  @override
  String get glyphLights => 'Глипх Лигхтс';

  @override
  String get glyphCallingAnimation => 'Анимација позивања глифова';

  @override
  String get glyphOngoingAnimation => 'Анимација позива у току';

  @override
  String get glyphNone => 'Ниједан';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Онемогућите Глипх лампице за одлазне позиве';

  @override
  String get glyphNoneInCallSubtitle =>
      'Онемогућите Глипх светла док сте активни на позиву';

  @override
  String get glyphBreathProgress => 'Бреатх & Прогресс';

  @override
  String get glyphBreathProgressSubtitle =>
      'Светла дишу док се линија пуни за 65 секунди';

  @override
  String get glyphAccumulate => 'Акумулирати';

  @override
  String get glyphAccumulateSubtitle =>
      'Акумулирајућа анимација на светлима Ц1-Ц4';

  @override
  String get glyphSingle => 'Сингле';

  @override
  String get glyphSingleSubtitle => 'Једно светло које се креће преко Ц1-Ц4';

  @override
  String get glyphBreath => 'Бреатх';

  @override
  String get glyphBreathSubtitle => 'Изаберите светла и брзину';

  @override
  String get glyphSteady => 'Мирно';

  @override
  String get glyphSteadySubtitle => 'Изабрана светла остају укључена';

  @override
  String get breathSettings => 'Бреатх Сеттингс';

  @override
  String get activeLights => 'Ацтиве Лигхтс';

  @override
  String lightsCount(int count) {
    return '$count светла';
  }

  @override
  String get speedSettings => 'Подешавања брзине';

  @override
  String speedSettingsDelay(int ms) {
    return '$msмс кашњење';
  }

  @override
  String get durationAndSpeed => 'Трајање & Брзина';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '$durationс трајање, $intervalмс интервал';
  }

  @override
  String get cancel => 'Откажи';

  @override
  String get done => 'Готово';

  @override
  String get save => 'Сачувај';

  @override
  String get block => 'Блокирај';

  @override
  String get delete => 'Избриши';

  @override
  String get recents => 'Недавно';

  @override
  String get contacts => 'Контакти';

  @override
  String get hideFavouritesOnRecents => 'Сакриј фаворите на Недавним';

  @override
  String get showFavouritesOnRecents => 'Прикажи омиљене на Недавним';

  @override
  String get ongoingCall => 'Позив у току';

  @override
  String get setAsDefaultTitle => 'ПОСТАВИ КАО\nДЕФАУЛТ';

  @override
  String get setAsDefaultBody =>
      'Да бисте користили Нотхинг Диалер, он мора бити постављен као подразумевана апликација за телефон. Ово вам омогућава да управљате позивима, прегледате историју и користите Глипх анимације.';

  @override
  String get setAsDefaultButton => 'ПОСТАВИ КАО ДЕФАУЛТ';

  @override
  String get nothingDialerBrand => 'НИШТА БИРАЧ 1';

  @override
  String get favourites => 'Фаворитес';

  @override
  String get addFavourite => 'Додајте омиљено';

  @override
  String get favouritesDrawerHint =>
      'Користите мени да додате контакте. Додирните изван фиоке или је превуците прстом да затворите. Означите контакт звездицом из његових детаља или дуго притисните позив у Недавним.';

  @override
  String get menu => 'Мени';

  @override
  String get noFavouritesYet =>
      'Још нема фаворита.\nОтворите мени да бисте га додали или контакт звездицом.';

  @override
  String get contactsPermissionNeeded => 'Потребна је дозвола за контакте';

  @override
  String get chooseContact => 'Изаберите контакт';

  @override
  String get noPhone => 'Нема телефона';

  @override
  String get pickNumber => 'Изаберите број';

  @override
  String get contactHasNoPhone => 'Овај контакт нема број телефона';

  @override
  String get blockNumber => 'Број блока';

  @override
  String get enterPhoneNumber => 'Унесите број телефона';

  @override
  String unblockedDisplay(String display) {
    return 'Деблокирано $display';
  }

  @override
  String get couldNotUnblockNumber => 'Није могуће деблокирати број';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked блокирано • $matched се подудара';
  }

  @override
  String get contactsPermissionMissing =>
      'Недостаје дозвола за контакте. Додирните да поправите.';

  @override
  String get noBlockedNumbers => 'Нема блокираних бројева';

  @override
  String get unknownContact => 'Непознати контакт';

  @override
  String get unblock => 'Деблокирај';

  @override
  String get permissionNeeded => 'Потребна је дозвола';

  @override
  String get grantPhonePermission =>
      'Дајте дозволу телефону да видите историју позива.';

  @override
  String get grantContactsPermission =>
      'Дајте контактима дозволу да виде ваш адресар.';

  @override
  String get openSettings => 'Отворите Подешавања';

  @override
  String get tryAgain => 'Покушајте поново';

  @override
  String get couldNotLoadContacts => 'Није могуће учитати контакте';

  @override
  String get contactsLoadError => 'Нешто није у реду читајући ваш адресар.';

  @override
  String get noContactsFound => 'Није пронађен ниједан контакт';

  @override
  String get contactsEmptySubtitle =>
      'Овде ће се појавити контакти са вашег уређаја.';

  @override
  String get searchContacts => 'Претражи контакте…';

  @override
  String get searchRecentCalls => 'Претражите недавне позиве';

  @override
  String get fromContacts => 'Из контаката';

  @override
  String get recentsSearchSection => 'Недавна претрага';

  @override
  String get recentsSearchShowContacts => 'Прикажи контакте у претрази';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Док претражујете Недавне, такође прикажите одговарајуће људе из вашег адресара испод резултата историје позива.';

  @override
  String get voiceSearch => 'Гласовна претрага';

  @override
  String get createNewContact => 'Креирајте нови контакт';

  @override
  String callError(String error) {
    return 'Грешка у позиву: $error';
  }

  @override
  String get noRecentCalls => 'Нема недавних позива';

  @override
  String get callHistoryEmpty => 'Ваша историја позива ће се појавити овде.';

  @override
  String get loadMore => 'Учитај више';

  @override
  String get frequentlyContactedHeader => 'Често контактирани';

  @override
  String get recentHistory => 'Недавна историја';

  @override
  String get noFavouritesRecentsHint =>
      'Још нема фаворита. Означите контакт звездицом, дуго притисните позив или користите картицу Фаворити.';

  @override
  String get copyNumber => 'Копија број';

  @override
  String get editNumberBeforeCall => 'Измените број пре позива';

  @override
  String get removeFromFavourites => 'Уклони из омиљених';

  @override
  String get addToFavourites => 'Додај у фаворите';

  @override
  String get blockNumberQuestion => 'Блокирати број?';

  @override
  String blockNumberConfirm(String number) {
    return 'Више нећете примати позиве или поруке од $number.';
  }

  @override
  String get blocked => 'Блокирано';

  @override
  String get couldNotBlock => 'Није могуће блокирати';

  @override
  String get contactNotOnDevice => 'Контакт није сачуван на овом уређају';

  @override
  String get unblocked => 'Деблокирано';

  @override
  String get numberCopied => 'Број је копиран';

  @override
  String get showLess => 'Прикажи мање';

  @override
  String get showAllTimes => 'Прикажи сва времена';

  @override
  String mostRecent(String time) {
    return 'Најновије · $time';
  }

  @override
  String get videoCall => 'Видео позив';

  @override
  String get couldNotPlaceVideoCall => 'Није могуће упутити видео позив';

  @override
  String get message => 'Порука';

  @override
  String get couldNotOpenMessaging =>
      'Није могуће отворити апликацију за размену порука';

  @override
  String get history => 'Историја';

  @override
  String get viewContact => 'Прикажи контакт';

  @override
  String get addToContact => 'Додај у контакт';

  @override
  String get callTypeMissed => 'Пропуштено';

  @override
  String get callTypeRejected => 'Одбијено';

  @override
  String get callTypeIncoming => 'Инцоминг';

  @override
  String get callTypeOutgoing => 'Одлазни';

  @override
  String get today => 'данас';

  @override
  String get yesterday => 'Јучер';

  @override
  String get justNow => 'Управо сада';

  @override
  String minutesAgo(int count) {
    return '$count мин';
  }

  @override
  String hoursAgo(int count) {
    return 'пре $count сати';
  }

  @override
  String get filterAll => 'Све';

  @override
  String get filterMissed => 'Пропуштено';

  @override
  String get filterContacts => 'Контакти';

  @override
  String get filterNonContacts => 'Неконтакти';

  @override
  String get iconUpdated =>
      'Икона је ажурирана. Вашем почетном екрану може бити потребно мало времена да се освежи.';

  @override
  String get iconSavedRelease =>
      'Избор је сачуван. Икона почетног екрана се ажурира у верзијама издања.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Није могуће променити икону: $error';
  }

  @override
  String get launcherClassicBlack => 'класична (црна)';

  @override
  String get launcherLight => 'Светлост';

  @override
  String get launcherNothingRed => 'Ништа црвено';

  @override
  String get launcherDarkGrey => 'Тамно сива';

  @override
  String get launcherCream => 'Крем';

  @override
  String get launcherRetroPhone => 'Ретро телефон';

  @override
  String get launcherRetroPhoneLight => 'Ретро телефон (светли)';

  @override
  String get voiceSearchUnavailable =>
      'Гласовна претрага није доступна на овом уређају.';

  @override
  String voiceSearchFailed(String error) {
    return 'Гласовна претрага није успела: $error';
  }

  @override
  String get customColor => 'Цустом';

  @override
  String get selectColor => 'Изаберите боју';

  @override
  String get reset => 'Ресетуј';

  @override
  String get simPickerTitle => 'Изаберите СИМ';

  @override
  String get simChooseForCall => 'Изаберите СИМ за овај позив';

  @override
  String get defaultSimAsk => 'Питајте сваки пут';

  @override
  String defaultSimFixed(int slot) {
    return 'СИМ $slot';
  }

  @override
  String get contactDetails => 'Контакт детаљи';

  @override
  String get call => 'Цалл';

  @override
  String get share => 'Схаре';

  @override
  String get favourite => 'Фаворите';

  @override
  String get unfavourite => 'Неомиљено';

  @override
  String get blockContact => 'Блокирајте контакт';

  @override
  String get unblockContact => 'Деблокирајте контакт';

  @override
  String get deleteContact => 'Избриши контакт';

  @override
  String get phone => 'Телефон';

  @override
  String get email => 'Емаил';

  @override
  String get ringtone => 'Рингтоне';

  @override
  String get defaultRingtone => 'Подразумевано';

  @override
  String get simForContact => 'СИМ за овај контакт';

  @override
  String get callHistoryTitle => 'Историја позива';

  @override
  String get noCallsWithNumber => 'Нема позива са овог броја';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '$minutesм $secondsс';
  }

  @override
  String durationSeconds(int seconds) {
    return '$secondsс';
  }

  @override
  String get glyphAnimationStyle => 'Глипх анимација';

  @override
  String get inCallGlyphAnimationStyle => 'Глиф анимација током позива';

  @override
  String get recordsOff => 'Офф';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Дефаулт СИМ';

  @override
  String get nothingPhoneOnly => 'Ништа Само телефон';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Функције глифа захтевају телефон са ничим';

  @override
  String get custom => 'Цустом';

  @override
  String presetColorHex(String hex) {
    return 'Унапред подешено · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Прилагођено · $hex';
  }

  @override
  String get oneContact => '1 контакт';

  @override
  String upToContacts(int count) {
    return 'До $count контаката';
  }

  @override
  String get answerButtonTapSubtitle => 'Додирните дугме да бисте одговорили';

  @override
  String get filterCalls => 'Филтрирајте позиве';

  @override
  String get filterTooltip => 'Филтер';

  @override
  String get settingsTooltip => 'Подешавања';

  @override
  String get filterAllSubtitle => 'Целокупна евиденција позива';

  @override
  String get filterMissedSubtitle => 'Пропуштено и одбијено';

  @override
  String get filterContactsSubtitle =>
      'Позиви се подударају са сачуваним контактом';

  @override
  String get filterNonContactsSubtitle => 'Бројеви који нису у вашем адресару';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Позив у току: $detail';
  }

  @override
  String get defaultSimForCalls => 'Подразумевана СИМ картица за позиве';

  @override
  String get blinkInterval => 'Интервал трептања';

  @override
  String get close => 'Затвори';

  @override
  String get frequentlyContactedInfoBody =>
      'Приказује ваше најчешће позиване бројеве телефона на врху картице Недавно, на основу тога колико сте долазних, одлазних, пропуштених или одбијених позива имали са сваким бројем у временском периоду који одаберете.\n\nБрој записа: поставите на 0 да бисте ово искључили. Користите 1–20 да бисте приказали толико најбољих контаката.\n\nВременски период се примењује само када је приказан најмање један контакт.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count светла, $msмс брзина';
  }

  @override
  String get deleteContactQuestion => 'Избрисати контакт?';

  @override
  String get deleteContactBody =>
      'Овај контакт ће бити трајно избрисан са вашег уређаја.';

  @override
  String get blockContactQuestion => 'Блокирати контакт?';

  @override
  String get unblockContactQuestion => 'Деблокирати контакт?';

  @override
  String get blockContactBody =>
      'Више нећете примати позиве или поруке од овог контакта.';

  @override
  String get unblockContactBody =>
      'Почећете да примате позиве и поруке од овог контакта.';

  @override
  String get contactBlocked => 'Контакт блокиран';

  @override
  String get contactUnblocked => 'Контакт је деблокиран';

  @override
  String get noPhoneNumbersToBlock => 'Нема бројева телефона за блокирање';

  @override
  String get simSameAsSystem => 'Исто као систем';

  @override
  String get simSameAsSystemSubtitle =>
      'Прати подразумевану СИМ картицу у подешавањима';

  @override
  String get simAskEveryTimeForContact =>
      'Увек прикажи бирач СИМ картице за овај контакт';

  @override
  String get ringtoneSetForContact =>
      'Мелодија звона постављена глобално за овај контакт';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Није успело бирање мелодије звона: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Грешка: $error';
  }

  @override
  String get noCallHistoryFound => 'Није пронађена историја позива';

  @override
  String get speedDialVoicemail => 'Брзо бирање: говорна пошта';

  @override
  String shareContactSubject(String name) {
    return 'Контакт: $name';
  }

  @override
  String get contactInfo => 'Контакт информације';

  @override
  String get dontAskAgainSim => 'Не питај поново';

  @override
  String get simDontAskAgainSubtitle =>
      'Користи ову СИМ као подразумевану (промени у подешавањима)';

  @override
  String get addContact => 'Додајте контакт';

  @override
  String get createContact => 'Креирајте контакт';

  @override
  String get paste => 'Залепите';

  @override
  String get clear => 'Јасно';

  @override
  String get returnToCall => 'Вратите се на позив';

  @override
  String get numberOfRecordsTitle => 'Број записа';

  @override
  String get recordsPickerSubtitle =>
      'Колико често контактираних уноса за приказ (0 = искључено)';

  @override
  String get torchInfoTitle => 'Трептање бакље';

  @override
  String get torchInfoBody =>
      'Трепери блиц камере током долазних, одлазних или текућих позива. Независно од Глипх светала.';

  @override
  String get glyphMapTitle => 'Распоред глифа';

  @override
  String get glyphMapBody =>
      'Ништа Телефон 1 Глипх ЛЕД зоне. Одлазне анимације и анимације током позива користе ове канале.';

  @override
  String get answerMethodTitle => 'Метода одговора';

  @override
  String get glyphOutgoingCallStyleTitle => 'Стил одлазног позива';

  @override
  String get glyphInCallAnimationTitle => 'Глиф анимација током позива';

  @override
  String get themePickerTitle => 'Тема';

  @override
  String get torchIncomingTitle => 'Светиљка за долазни позив';

  @override
  String get torchOutgoingTitle => 'Светиљка за одлазни позив';

  @override
  String get torchOngoingTitle => 'Позив бакља у току';

  @override
  String get timePeriodTitle => 'Временски период';

  @override
  String get ok => 'ОК';

  @override
  String get confirmDeleteCall =>
      'Желите ли да избришете овај позив из историје?';

  @override
  String get confirmDeleteAllCalls =>
      'Желите ли да избришете све позиве са овим бројем?';

  @override
  String get whatsapp => 'ВхатсАпп';

  @override
  String get sendMessage => 'Пошаљите поруку';

  @override
  String get addToExistingContactAction => 'Додајте контакту';

  @override
  String get mobileLabel => 'Мобилни';

  @override
  String get callingSimForContactTitle =>
      'Позивање СИМ картице за овај контакт';

  @override
  String get contactSettings => 'Подешавања контаката';

  @override
  String get setCallingSim => 'Подесите СИМ за позивање';

  @override
  String get contactRingtone => 'Контакт звона';

  @override
  String get shareContact => 'Делите контакт';

  @override
  String get blockNumbers => 'Блокирајте бројеве';

  @override
  String get unblockNumbers => 'Деблокирајте бројеве';

  @override
  String get connectedApps => 'Повезане апликације';

  @override
  String get simNotSet => 'Није постављено';

  @override
  String get ringtoneDefault => 'Подразумевано';

  @override
  String get customRingtone => 'Цустом';

  @override
  String get aboutSection => 'Абоут';

  @override
  String get aboutFeedbackSection => 'О и повратне информације';

  @override
  String get aboutDescription =>
      'Нотхинг Диалер је отвореног кода. Ако сте програмер, добродошли сте да истражите код и допринесете.';

  @override
  String get aboutViewSource => 'Погледајте на ГитХуб-у';

  @override
  String get aboutRepositoryHost => 'гитхуб.цом/рквисхва/Нотхинг-Диалер-1';

  @override
  String get aboutCouldNotOpenLink => 'Није могуће отворити везу';

  @override
  String get reviewSection => 'Преглед';

  @override
  String get reviewDescription =>
      'Уживате у Нотхинг Диалеру? Ваша оцена на Гоогле Плаи-у помаже другима да пронађу апликацију.';

  @override
  String get reviewRateOnPlay => 'Оцените на Гоогле Плаи-у';

  @override
  String get reviewRateOnPlaySubtitle => 'Opens the Play Store listing';

  @override
  String get reviewCouldNotOpen => 'Није могуће отворити Гоогле Плаи';

  @override
  String get breathSpeed => 'Брзина дисања';

  @override
  String get breathSpeedBlinkHint => 'Ниже = трептај, више = споро дах';

  @override
  String get speedSliderHint => 'Ниже = брже, више = спорије';

  @override
  String get swatchDefault => 'Подразумевано';

  @override
  String get customAccentColorPicker => 'Прилагођена боја акцента';

  @override
  String get customLightBackgroundPicker => 'Прилагођена светла позадина';

  @override
  String get customDarkBackgroundPicker => 'Прилагођена тамна позадина';

  @override
  String get customCallBackgroundPicker => 'Прилагођена позадина позива';

  @override
  String get ongoingCallStyleTitle => 'Стил позива у току';

  @override
  String get glyphMapUnavailable => 'Мапа глифа није доступна';

  @override
  String get animationDelayRange => 'Кашњење анимације (1 с - 10 с)';

  @override
  String get animationDelayRangeSingle => 'Кашњење анимације (0,1 с - 10 с)';

  @override
  String get inCallMute => 'Муте';

  @override
  String get inCallKeypad => 'Тастатура';

  @override
  String get inCallSpeaker => 'Спеакер';

  @override
  String get inCallMore => 'Више';

  @override
  String get inCallBluetooth => 'Блуетоотх';

  @override
  String get inCallPhone => 'Телефон';

  @override
  String get inCallAddCall => 'Додај позив';

  @override
  String get inCallChangeSim => 'Промени СИМ';

  @override
  String get inCallDecline => 'Одбиј';

  @override
  String get inCallAnswer => 'Одговори';

  @override
  String get inCallMessage => 'Порука';

  @override
  String get inCallCalling => 'Позивање…';

  @override
  String get inCallIncoming => 'Долазни позив';

  @override
  String get inCallSelectSim => 'Изаберите СИМ…';

  @override
  String get inCallSwitchingSim => 'Промена СИМ картице…';

  @override
  String get inCallCallEnded => 'Позив је завршен';

  @override
  String inCallCallingVia(String sim) {
    return 'Позивање преко $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Позивање преко <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Изаберите СИМ за овај позив';

  @override
  String get inCallDragAnswerDecline =>
      'Превуците удесно да одговорите · Превуците лево да одбијете';

  @override
  String inCallMobileNumber(String number) {
    return 'Мобилни $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (тренутно)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Позовите преко <b>$sim</b> од';
  }

  @override
  String get inCallCallFrom => 'Позив од';

  @override
  String get inCallUnknown => 'Непознато';

  @override
  String get selectContactRingtone => 'Изаберите мелодију звона за контакт';

  @override
  String get speakToSearchPrompt => 'Говорите за претрагу';

  @override
  String get phonePermissionRequired => 'Потребна је дозвола за телефон';

  @override
  String callFailed(String error) {
    return 'Позив није успео: $error';
  }

  @override
  String get callPermissionDenied => 'Дозвола за позив је одбијена';

  @override
  String get alreadyDefaultDialer =>
      'Већ је подешено као подразумевано бирање бројева';

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
