// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Georgian (`ka`).
class AppLocalizationsKa extends AppLocalizations {
  AppLocalizationsKa([String locale = 'ka']) : super(locale);

  @override
  String get appTitle => 'არაფერი Dialer';

  @override
  String get settings => 'პარამეტრები';

  @override
  String get settingsSearchHint => 'ძებნის პარამეტრები';

  @override
  String get settingsSearchNoResults => 'პარამეტრები ვერ მოიძებნა';

  @override
  String get general => 'გენერალი';

  @override
  String get theme => 'თემა';

  @override
  String get themeSystemDefault => 'სისტემის ნაგულისხმევი';

  @override
  String get themeLight => 'სინათლე';

  @override
  String get themeDark => 'ბნელი';

  @override
  String get themeFollowSystem => 'მიჰყევით სისტემის პარამეტრებს';

  @override
  String get themeAlwaysLight => 'ყოველთვის გამოიყენეთ მსუბუქი თემა';

  @override
  String get themeAlwaysDark => 'ყოველთვის გამოიყენეთ მუქი თემა';

  @override
  String get language => 'ენა';

  @override
  String get languageDeviceDefault => 'მოწყობილობის ნაგულისხმევი';

  @override
  String get languagePickerTitle => 'ენა';

  @override
  String get languageSearchHint => 'ენების ძიება';

  @override
  String get font => 'შრიფტი';

  @override
  String get fontSystem => 'სისტემის ნაგულისხმევი';

  @override
  String get fontNdot => 'არაფერი (არა)';

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
      'შრიფტის ჩამოტვირთვა ვერ მოხერხდა. შეამოწმეთ თქვენი კავშირი და სცადეთ ხელახლა.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'შრიფტი';

  @override
  String get fontPreviewSample => 'არაფერი Dialer';

  @override
  String get fontAppWide => 'აპლიკაციის შრიფტი';

  @override
  String get fontApplyTo => 'მიმართეთ';

  @override
  String get fontApplyEntireApp => 'მთელი აპლიკაცია';

  @override
  String get fontApplyEntireAppSubtitle =>
      'ყველგან ერთი და იგივე შრიფტი, ზარის ჩათვლით';

  @override
  String get fontApplyTitlesOnly => 'სათაურები და სათაურები';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'მხოლოდ დიდი სათაურები და სექციის სათაურები';

  @override
  String get fontApplyCustomize => 'მორგება';

  @override
  String get fontApplyCustomizeSubtitle =>
      'აირჩიეთ შრიფტი ეკრანზე და ტექსტის ტიპზე';

  @override
  String get fontCustomizeSection => 'მორგება ეკრანის მიხედვით';

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
  String get fontRolePageTitle => 'გვერდის სათაური';

  @override
  String get fontRoleSectionHeader => 'განყოფილების სათაური';

  @override
  String get fontRolePrimary => 'პირველადი ტექსტი';

  @override
  String get fontRoleSecondary => 'მეორადი ტექსტი';

  @override
  String get fontRoleButton => 'ღილაკები';

  @override
  String get fontRoleDialKey => 'ციფერბლატის ღილაკები';

  @override
  String get fontSurfaceRecents => 'ბოლო დროს';

  @override
  String get fontSurfaceContacts => 'კონტაქტები';

  @override
  String get fontSurfaceSettings => 'პარამეტრები';

  @override
  String get fontSurfaceDialpad => 'ციფერბლატი';

  @override
  String get fontSurfaceShell => 'ნავიგაცია';

  @override
  String get fontSurfaceDefaultDialer => 'ნაგულისხმევი აკრიფეს მოთხოვნა';

  @override
  String get fontSurfaceFavourites => 'რჩეულები';

  @override
  String get fontSurfaceBlocked => 'დაბლოკილი ნომრები';

  @override
  String get fontSurfaceContactDetail => 'საკონტაქტო დეტალი';

  @override
  String get fontSurfaceCallHistory => 'ზარის ისტორია';

  @override
  String get fontSurfaceSheets => 'ფურცლები და ამომრჩევები';

  @override
  String get fontSurfaceInCall => 'ზარის ეკრანი';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — მთელი აპლიკაცია';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — მხოლოდ სათაურები';
  }

  @override
  String get fontSubtitleCustomize => 'მორგებულია თითო ეკრანზე';

  @override
  String get background => 'ფონი';

  @override
  String get accent => 'აქცენტი';

  @override
  String get lightBackground => 'მსუბუქი ფონი';

  @override
  String get lightAccent => 'მსუბუქი აქცენტი';

  @override
  String get darkBackground => 'მუქი ფონი';

  @override
  String get darkAccent => 'მუქი აქცენტი';

  @override
  String get callBackground => 'ზარის ფონი';

  @override
  String get appIcon => 'აპლიკაციის ხატულა';

  @override
  String get answerMethod => 'პასუხის მეთოდი';

  @override
  String get answerSlide => 'გადაიტანეთ პასუხის გასაცემად';

  @override
  String get answerSlideSubtitle =>
      'გადაფურცლეთ მარცხნივ/მარჯვნივ ზოლზე, როგორიცაა Google Phone';

  @override
  String get answerButton => 'ღილაკზე დაჭერა';

  @override
  String get answerButtonSubtitle => 'შეეხეთ პასუხის ან უარყოფის ღილაკებს';

  @override
  String get answerHuawei => 'Huawei სტილი';

  @override
  String get answerHuaweiSubtitle =>
      'გადაიტანეთ წრე მწვანე ტელეფონზე პასუხის გასაცემად';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — გადაათრიეთ მწვანე/წითელზე';

  @override
  String get calling => 'რეკავს';

  @override
  String get defaultSim => 'ნაგულისხმევი SIM';

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
  String get askEveryTime => 'იკითხეთ ყოველ ჯერზე';

  @override
  String get askEveryTimeSubtitle => 'SIM ამომრჩევის ჩვენება ყოველი ზარის წინ';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'SIM ბარათები ვერ მოიძებნა';

  @override
  String couldNotLoadSims(String error) {
    return 'SIM ბარათები ვერ ჩაიტვირთა: $error';
  }

  @override
  String get allFavourites => 'ყველა ფავორიტი';

  @override
  String get allFavouritesSubtitle =>
      'ხელახლა შეუკვეთეთ, წაშალეთ და დაამატეთ კონტაქტებიდან';

  @override
  String get blockedNumbers => 'დაბლოკილი ნომრები';

  @override
  String get blockedNumbersSubtitle => 'ნომრების ნახვა და განბლოკვა';

  @override
  String get soundsAndVibration => 'ხმები და ვიბრაცია';

  @override
  String get soundsAndVibrationSubtitle =>
      'ზარის მელოდია, ვიბრაცია, აკრიფეთ ბალიშის ტონები';

  @override
  String couldNotOpenSettings(String error) {
    return 'პარამეტრების გახსნა ვერ მოხერხდა: $error';
  }

  @override
  String get frequentlyContacted => 'ხშირად დაუკავშირდა';

  @override
  String get numberOfRecords => 'ჩანაწერების რაოდენობა';

  @override
  String get timePeriod => 'დროის პერიოდი';

  @override
  String get periodLast24Hours => 'ბოლო 24 საათი';

  @override
  String get periodLast24HoursSubtitle => 'ზარები გასული დღიდან';

  @override
  String get periodLast7Days => 'ბოლო 7 დღე';

  @override
  String get periodLast7DaysSubtitle => 'ზარები გასული კვირის განმავლობაში';

  @override
  String get periodLast30Days => 'ბოლო 30 დღე';

  @override
  String get periodLast30DaysSubtitle => 'ზარები გასული თვიდან';

  @override
  String get periodLast12Months => 'ბოლო 12 თვე';

  @override
  String get periodLast12MonthsSubtitle => 'ზარები გასული წლიდან';

  @override
  String get periodAllTime => 'ყველა დროის';

  @override
  String get periodAllTimeSubtitle => 'ზარის მთელი ისტორია';

  @override
  String get frequentMaxOff => 'გამორთულია';

  @override
  String frequentMaxCount(int count) {
    return '$count კონტაქტები';
  }

  @override
  String get torchBlink => 'ჩირაღდანი მოციმციმე';

  @override
  String get torchIncomingCall => 'შემომავალი ზარის ჩირაღდანი';

  @override
  String get torchOutgoingCall => 'გამავალი ზარის ჩირაღდანი';

  @override
  String get torchOngoingCall => 'მიმდინარე ზარის ჩირაღდანი';

  @override
  String get torchIncomingInterval => 'შემომავალი მოციმციმე ინტერვალი';

  @override
  String get torchOutgoingInterval => 'გამავალი მოციმციმე ინტერვალი';

  @override
  String get torchOngoingInterval => 'მოციმციმე უწყვეტი ინტერვალი';

  @override
  String get torchOff => 'გამორთულია';

  @override
  String get torchOffIncomingSubtitle => 'არ არის ჩირაღდანი ზარის დროს';

  @override
  String get torchOffOutgoingSubtitle => 'არ არის ჩირაღდანი აკრეფისას';

  @override
  String get torchOffOngoingSubtitle => 'არ არის ჩირაღდანი აქტიური ზარის დროს';

  @override
  String get torchFixedInterval => 'ფიქსირებული ინტერვალი';

  @override
  String get torchFixedIntervalSubtitle => 'დაახამხამეთ დაყენებული სიჩქარით';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds წმ';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds მოციმციმე';
  }

  @override
  String get flashlightUnavailable => 'ფანარი მიუწვდომელია ამ მოწყობილობაზე';

  @override
  String get glyphLights => 'Glyph Lights';

  @override
  String get glyphCallingAnimation => 'გლიფის გამოძახების ანიმაცია';

  @override
  String get glyphOngoingAnimation => 'Glyph მიმდინარე ზარის ანიმაცია';

  @override
  String get glyphNone => 'არცერთი';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'გამორთეთ გლიფის განათება გამავალი ზარებისთვის';

  @override
  String get glyphNoneInCallSubtitle =>
      'გამორთეთ გლიფის განათება აქტიური ზარის დროს';

  @override
  String get glyphBreathProgress => 'სუნთქვა და პროგრესი';

  @override
  String get glyphBreathProgressSubtitle =>
      'განათება სუნთქავს, ხოლო ხაზი ივსება 65 წმ';

  @override
  String get glyphAccumulate => 'დაგროვება';

  @override
  String get glyphAccumulateSubtitle => 'ანიმაციის დაგროვება განათებაზე C1-C4';

  @override
  String get glyphSingle => 'მარტოხელა';

  @override
  String get glyphSingleSubtitle => 'ერთი შუქი მოძრაობს C1-C4-ზე';

  @override
  String get glyphBreath => 'სუნთქვა';

  @override
  String get glyphBreathSubtitle => 'აირჩიეთ განათება და სიჩქარე';

  @override
  String get glyphSteady => 'სტაბილური';

  @override
  String get glyphSteadySubtitle => 'არჩეული ნათურები ჩართულია';

  @override
  String get breathSettings => 'სუნთქვის პარამეტრები';

  @override
  String get activeLights => 'აქტიური განათება';

  @override
  String lightsCount(int count) {
    return '$count განათება';
  }

  @override
  String get speedSettings => 'სიჩქარის პარამეტრები';

  @override
  String speedSettingsDelay(int ms) {
    return '$msწთ დაგვიანებით';
  }

  @override
  String get durationAndSpeed => 'ხანგრძლივობა და სიჩქარე';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '$durationწმ ხანგრძლივობა, ${interval}ms ინტერვალი';
  }

  @override
  String get cancel => 'გაუქმება';

  @override
  String get done => 'შესრულებულია';

  @override
  String get save => 'შენახვა';

  @override
  String get block => 'დაბლოკვა';

  @override
  String get delete => 'წაშლა';

  @override
  String get recents => 'ბოლო დროს';

  @override
  String get contacts => 'კონტაქტები';

  @override
  String get hideFavouritesOnRecents => 'რჩეულების დამალვა ბოლო დროს';

  @override
  String get showFavouritesOnRecents => 'რჩეულების ჩვენება ბოლო დროს';

  @override
  String get ongoingCall => 'მიმდინარე ზარი';

  @override
  String get setAsDefaultTitle => 'დააყენეთ როგორც\nნაგულისხმევი';

  @override
  String get setAsDefaultBody =>
      'Nothing Dialer-ის გამოსაყენებლად, ის უნდა იყოს მითითებული, როგორც თქვენი ნაგულისხმევი ტელეფონის აპლიკაცია. ეს საშუალებას გაძლევთ მართოთ ზარები, ნახოთ ისტორია და გამოიყენოთ გლიფის ანიმაციები.';

  @override
  String get setAsDefaultButton => 'ნაგულისხმევად დაყენება';

  @override
  String get nothingDialerBrand => 'NOTHING Dialer 1';

  @override
  String get favourites => 'რჩეულები';

  @override
  String get addFavourite => 'დაამატეთ საყვარელი';

  @override
  String get favouritesDrawerHint =>
      'გამოიყენეთ მენიუ კონტაქტების დასამატებლად. შეეხეთ უჯრის გარეთ ან გადაფურცლეთ დახურული. მონიშნეთ კონტაქტი მათი დეტალებიდან, ან დიდხანს დააჭირეთ ზარს ბოლოში.';

  @override
  String get menu => 'მენიუ';

  @override
  String get noFavouritesYet =>
      'ჯერ არ არის რჩეული.\nგახსენით მენიუ ერთის დასამატებლად ან კონტაქტის ვარსკვლავით.';

  @override
  String get contactsPermissionNeeded => 'საჭიროა კონტაქტების ნებართვა';

  @override
  String get chooseContact => 'აირჩიეთ კონტაქტი';

  @override
  String get noPhone => 'არა ტელეფონი';

  @override
  String get pickNumber => 'აირჩიეთ ნომერი';

  @override
  String get contactHasNoPhone => 'ამ კონტაქტს არ აქვს ტელეფონის ნომერი';

  @override
  String get blockNumber => 'ბლოკის ნომერი';

  @override
  String get enterPhoneNumber => 'შეიყვანეთ ტელეფონის ნომერი';

  @override
  String unblockedDisplay(String display) {
    return 'განბლოკილია $display';
  }

  @override
  String get couldNotUnblockNumber => 'ნომრის განბლოკვა ვერ მოხერხდა';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked დაბლოკილია • $matched ემთხვევა';
  }

  @override
  String get contactsPermissionMissing =>
      'კონტაქტების ნებართვა აკლია. შეეხეთ გამოსასწორებლად.';

  @override
  String get noBlockedNumbers => 'არ არის დაბლოკილი ნომრები';

  @override
  String get unknownContact => 'უცნობი კონტაქტი';

  @override
  String get unblock => 'განბლოკვა';

  @override
  String get permissionNeeded => 'საჭიროა ნებართვა';

  @override
  String get grantPhonePermission =>
      'მიეცით ტელეფონს თქვენი ზარების ისტორიის სანახავად ნებართვა.';

  @override
  String get grantContactsPermission =>
      'მიეცით კონტაქტებს თქვენი მისამართების წიგნის ნახვის უფლება.';

  @override
  String get openSettings => 'გახსენით პარამეტრები';

  @override
  String get tryAgain => 'სცადეთ ხელახლა';

  @override
  String get couldNotLoadContacts => 'კონტაქტების ჩატვირთვა ვერ მოხერხდა';

  @override
  String get contactsLoadError =>
      'თქვენი მისამართების წიგნის წაკითხვისას მოხდა რაღაც შეცდომა.';

  @override
  String get noContactsFound => 'კონტაქტები ვერ მოიძებნა';

  @override
  String get contactsEmptySubtitle =>
      'კონტაქტები თქვენი მოწყობილობიდან აქ გამოჩნდება.';

  @override
  String get searchContacts => 'კონტაქტების ძიება…';

  @override
  String get searchRecentCalls => 'მოძებნეთ ბოლო ზარები';

  @override
  String get fromContacts => 'კონტაქტებიდან';

  @override
  String get recentsSearchSection => 'ბოლო ძიება';

  @override
  String get recentsSearchShowContacts => 'ძიებაში კონტაქტების ჩვენება';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'უახლესი ამბების ძიებისას, ასევე აჩვენეთ შესაბამისი ადამიანები თქვენი მისამართების წიგნიდან ზარების ისტორიის შედეგების ქვემოთ.';

  @override
  String get voiceSearch => 'ხმოვანი ძებნა';

  @override
  String get createNewContact => 'შექმენით ახალი კონტაქტი';

  @override
  String callError(String error) {
    return 'ზარის შეცდომა: $error';
  }

  @override
  String get noRecentCalls => 'ბოლო ზარები არ არის';

  @override
  String get callHistoryEmpty => 'თქვენი ზარის ისტორია აქ გამოჩნდება.';

  @override
  String get loadMore => 'მეტი ჩატვირთვა';

  @override
  String get frequentlyContactedHeader => 'ხშირად დაუკავშირდა';

  @override
  String get recentHistory => 'უახლესი ისტორია';

  @override
  String get noFavouritesRecentsHint =>
      'ჯერ არ არის რჩეული. კონტაქტის ვარსკვლავით ვარსკვლავით, ხანგრძლივად დააჭირეთ ზარს ან გამოიყენეთ ჩანართი რჩეულები.';

  @override
  String get copyNumber => 'დააკოპირეთ ნომერი';

  @override
  String get editNumberBeforeCall => 'შეცვალეთ ნომერი ზარამდე';

  @override
  String get removeFromFavourites => 'რჩეულებიდან ამოღება';

  @override
  String get addToFavourites => 'დაამატეთ რჩეულებში';

  @override
  String get blockNumberQuestion => 'დაიბლოკოს ნომერი?';

  @override
  String blockNumberConfirm(String number) {
    return 'თქვენ აღარ მიიღებთ ზარებს ან შეტყობინებებს $number-დან.';
  }

  @override
  String get blocked => 'დაბლოკილია';

  @override
  String get couldNotBlock => 'დაბლოკვა ვერ მოხერხდა';

  @override
  String get contactNotOnDevice => 'კონტაქტი არ არის შენახული ამ მოწყობილობაზე';

  @override
  String get unblocked => 'განბლოკილია';

  @override
  String get numberCopied => 'ნომერი დაკოპირებულია';

  @override
  String get showLess => 'ნაკლების ჩვენება';

  @override
  String get showAllTimes => 'ყველა დროის ჩვენება';

  @override
  String mostRecent(String time) {
    return 'უახლესი · $time';
  }

  @override
  String get videoCall => 'ვიდეო ზარი';

  @override
  String get couldNotPlaceVideoCall => 'ვიდეოზარი ვერ განხორციელდა';

  @override
  String get message => 'შეტყობინება';

  @override
  String get couldNotOpenMessaging => 'შეტყობინებების აპის გახსნა ვერ მოხერხდა';

  @override
  String get history => 'ისტორია';

  @override
  String get viewContact => 'კონტაქტის ნახვა';

  @override
  String get addToContact => 'კონტაქტში დამატება';

  @override
  String get callTypeMissed => 'გაუშვა';

  @override
  String get callTypeRejected => 'უარყოფილია';

  @override
  String get callTypeIncoming => 'შემომავალი';

  @override
  String get callTypeOutgoing => 'გამავალი';

  @override
  String get today => 'დღეს';

  @override
  String get yesterday => 'გუშინ';

  @override
  String get justNow => 'მხოლოდ ახლა';

  @override
  String minutesAgo(int count) {
    return '$count წუთის წინ';
  }

  @override
  String hoursAgo(int count) {
    return '$count საათის წინ';
  }

  @override
  String get filterAll => 'ყველა';

  @override
  String get filterMissed => 'გაუშვა';

  @override
  String get filterContacts => 'კონტაქტები';

  @override
  String get filterNonContacts => 'არაკონტაქტები';

  @override
  String get iconUpdated =>
      'ხატულა განახლებულია. თქვენს მთავარ ეკრანს შეიძლება რამდენიმე წუთი დასჭირდეს განახლებას.';

  @override
  String get iconSavedRelease =>
      'არჩევანი შენახულია. საწყისი ეკრანის ხატულა განახლდება გამოშვების ვერსიებში.';

  @override
  String couldNotChangeIcon(String error) {
    return 'ხატულა ვერ შევცვალე: $error';
  }

  @override
  String get launcherClassicBlack => 'კლასიკური (შავი)';

  @override
  String get launcherLight => 'სინათლე';

  @override
  String get launcherNothingRed => 'არაფერი წითელი';

  @override
  String get launcherDarkGrey => 'მუქი ნაცრისფერი';

  @override
  String get launcherCream => 'კრემი';

  @override
  String get launcherRetroPhone => 'რეტრო ტელეფონი';

  @override
  String get launcherRetroPhoneLight => 'რეტრო ტელეფონი (მსუბუქი)';

  @override
  String get voiceSearchUnavailable =>
      'ხმოვანი ძებნა ამ მოწყობილობაზე მიუწვდომელია.';

  @override
  String voiceSearchFailed(String error) {
    return 'ხმოვანი ძიება ვერ მოხერხდა: $error';
  }

  @override
  String get customColor => 'საბაჟო';

  @override
  String get selectColor => 'აირჩიეთ ფერი';

  @override
  String get reset => 'გადატვირთვა';

  @override
  String get simPickerTitle => 'აირჩიეთ SIM';

  @override
  String get simChooseForCall => 'აირჩიეთ SIM ამ ზარისთვის';

  @override
  String get defaultSimAsk => 'იკითხეთ ყოველ ჯერზე';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'საკონტაქტო დეტალები';

  @override
  String get call => 'დარეკეთ';

  @override
  String get share => 'გააზიარეთ';

  @override
  String get favourite => 'საყვარელი';

  @override
  String get unfavourite => 'არასასურველი';

  @override
  String get blockContact => 'კონტაქტის დაბლოკვა';

  @override
  String get unblockContact => 'კონტაქტის განბლოკვა';

  @override
  String get deleteContact => 'კონტაქტის წაშლა';

  @override
  String get phone => 'ტელეფონი';

  @override
  String get email => 'ელფოსტა';

  @override
  String get ringtone => 'ზარის მელოდია';

  @override
  String get defaultRingtone => 'ნაგულისხმევი';

  @override
  String get simForContact => 'SIM ამ კონტაქტისთვის';

  @override
  String get callHistoryTitle => 'ზარის ისტორია';

  @override
  String get noCallsWithNumber => 'ამ ნომრით ზარი არ არის';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '$minutesმ $secondsწმ';
  }

  @override
  String durationSeconds(int seconds) {
    return '$seconds წმ';
  }

  @override
  String get glyphAnimationStyle => 'გლიფის ანიმაცია';

  @override
  String get inCallGlyphAnimationStyle => 'In-call Glyph ანიმაცია';

  @override
  String get recordsOff => 'გამორთულია';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'ნაგულისხმევი SIM';

  @override
  String get nothingPhoneOnly => 'არაფერი მხოლოდ ტელეფონი';

  @override
  String get nothingPhoneOnlySubtitle =>
      'გლიფის ფუნქციები საჭიროებს Nothing Phone-ს';

  @override
  String get custom => 'საბაჟო';

  @override
  String presetColorHex(String hex) {
    return 'წინასწარ დაყენებული · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'მორგებული · $hex';
  }

  @override
  String get oneContact => '1 კონტაქტი';

  @override
  String upToContacts(int count) {
    return '$count კონტაქტამდე';
  }

  @override
  String get answerButtonTapSubtitle => 'დააჭირეთ ღილაკს პასუხისთვის';

  @override
  String get filterCalls => 'ზარების გაფილტვრა';

  @override
  String get filterTooltip => 'ფილტრი';

  @override
  String get settingsTooltip => 'პარამეტრები';

  @override
  String get filterAllSubtitle => 'ზარების მთელი ჟურნალი';

  @override
  String get filterMissedSubtitle => 'გამოტოვებული და უარყოფილი';

  @override
  String get filterContactsSubtitle => 'ზარები ემთხვევა შენახულ კონტაქტს';

  @override
  String get filterNonContactsSubtitle =>
      'ნომრები არ არის თქვენს მისამართთა წიგნში';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'მიმდინარე ზარი: $detail';
  }

  @override
  String get defaultSimForCalls => 'ნაგულისხმევი SIM ზარებისთვის';

  @override
  String get blinkInterval => 'მოციმციმე ინტერვალი';

  @override
  String get close => 'დახურვა';

  @override
  String get frequentlyContactedInfoBody =>
      'აჩვენებს თქვენს ყველაზე ხშირად გამოძახებულ ტელეფონის ნომრებს ბოლო ჩანართის ზედა ნაწილში, იმის მიხედვით, თუ რამდენი შემომავალი, გამავალი, გამოტოვებული ან უარყოფილი ზარი გქონდათ თითოეულ ნომერზე თქვენს მიერ არჩეულ პერიოდში.\n\nჩანაწერების რაოდენობა: დააყენეთ 0-ზე ამის გამორთვისთვის. გამოიყენეთ 1–20 იმისთვის, რომ აჩვენოთ ბევრი მთავარი კონტაქტი.\n\nდროის პერიოდი მოქმედებს მხოლოდ მაშინ, როდესაც ნაჩვენებია მინიმუმ ერთი კონტაქტი.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count განათება, ${ms}ms სიჩქარე';
  }

  @override
  String get deleteContactQuestion => 'გსურთ კონტაქტის წაშლა?';

  @override
  String get deleteContactBody =>
      'ეს კონტაქტი სამუდამოდ წაიშლება თქვენი მოწყობილობიდან.';

  @override
  String get blockContactQuestion => 'დაიბლოკოს კონტაქტი?';

  @override
  String get unblockContactQuestion => 'განიბლოკოს კონტაქტი?';

  @override
  String get blockContactBody =>
      'თქვენ აღარ მიიღებთ ზარებს ან ტექსტურ შეტყობინებებს ამ კონტაქტისგან.';

  @override
  String get unblockContactBody =>
      'თქვენ დაიწყებთ ზარების და ტექსტების მიღებას ამ კონტაქტისგან.';

  @override
  String get contactBlocked => 'კონტაქტი დაბლოკილია';

  @override
  String get contactUnblocked => 'კონტაქტი განბლოკილია';

  @override
  String get noPhoneNumbersToBlock => 'დასაბლოკი ტელეფონის ნომრები არ არის';

  @override
  String get simSameAsSystem => 'იგივეა რაც სისტემა';

  @override
  String get simSameAsSystemSubtitle =>
      'მიჰყვება ნაგულისხმევ SIM-ს პარამეტრებში';

  @override
  String get simAskEveryTimeForContact =>
      'ყოველთვის აჩვენე SIM ამომრჩევი ამ კონტაქტისთვის';

  @override
  String get ringtoneSetForContact =>
      'ზარის მელოდია დაყენებულია გლობალურად ამ კონტაქტისთვის';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'ზარის მელოდიის არჩევა ვერ მოხერხდა: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'შეცდომა: $error';
  }

  @override
  String get noCallHistoryFound => 'ზარების ისტორია ვერ მოიძებნა';

  @override
  String get speedDialVoicemail => 'სწრაფი აკრეფა: ხმოვანი ფოსტა';

  @override
  String shareContactSubject(String name) {
    return 'კონტაქტი: $name';
  }

  @override
  String get contactInfo => 'საკონტაქტო ინფორმაცია';

  @override
  String get dontAskAgainSim => 'აღარ გკითხო';

  @override
  String get simDontAskAgainSubtitle =>
      'გამოიყენეთ ეს SIM ნაგულისხმევად (შეცვალეთ პარამეტრებში)';

  @override
  String get addContact => 'კონტაქტის დამატება';

  @override
  String get createContact => 'კონტაქტის შექმნა';

  @override
  String get paste => 'პასტა';

  @override
  String get clear => 'წმინდა';

  @override
  String get returnToCall => 'ზარზე დაბრუნება';

  @override
  String get numberOfRecordsTitle => 'ჩანაწერების რაოდენობა';

  @override
  String get recordsPickerSubtitle =>
      'რამდენი ხშირად დაკავშირებული ჩანაწერი უნდა აჩვენოს (0 = გამორთულია)';

  @override
  String get torchInfoTitle => 'ჩირაღდანი ციმციმებს';

  @override
  String get torchInfoBody =>
      'აციმციმებს კამერის ნათებას შემომავალი, გამავალი ან მიმდინარე ზარების დროს. გლიფის განათებისგან დამოუკიდებელი.';

  @override
  String get glyphMapTitle => 'გლიფის განლაგება';

  @override
  String get glyphMapBody =>
      'არაფერი ტელეფონი 1 Glyph LED ზონები. გამავალი და ზარის ანიმაციები იყენებენ ამ არხებს.';

  @override
  String get answerMethodTitle => 'პასუხის მეთოდი';

  @override
  String get glyphOutgoingCallStyleTitle => 'გამავალი ზარის სტილი';

  @override
  String get glyphInCallAnimationTitle => 'Glyph in-call ანიმაცია';

  @override
  String get themePickerTitle => 'თემა';

  @override
  String get torchIncomingTitle => 'შემომავალი ზარის ჩირაღდანი';

  @override
  String get torchOutgoingTitle => 'გამავალი ზარის ჩირაღდანი';

  @override
  String get torchOngoingTitle => 'მიმდინარე ზარის ჩირაღდანი';

  @override
  String get timePeriodTitle => 'დროის პერიოდი';

  @override
  String get ok => 'კარგი';

  @override
  String get confirmDeleteCall => 'წაშალოთ ეს ზარი ისტორიიდან?';

  @override
  String get confirmDeleteAllCalls => 'წაშალოთ ყველა ზარი ამ ნომრით?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'გაგზავნეთ შეტყობინება';

  @override
  String get addToExistingContactAction => 'კონტაქტში დამატება';

  @override
  String get mobileLabel => 'მობილური';

  @override
  String get callingSimForContactTitle => 'SIM-ის დარეკვა ამ კონტაქტისთვის';

  @override
  String get contactSettings => 'საკონტაქტო პარამეტრები';

  @override
  String get setCallingSim => 'SIM-ის დარეკვის დაყენება';

  @override
  String get contactRingtone => 'საკონტაქტო ზარის მელოდია';

  @override
  String get shareContact => 'კონტაქტის გაზიარება';

  @override
  String get blockNumbers => 'ნომრების დაბლოკვა';

  @override
  String get unblockNumbers => 'ნომრების განბლოკვა';

  @override
  String get connectedApps => 'დაკავშირებული აპები';

  @override
  String get simNotSet => 'არ არის დაყენებული';

  @override
  String get ringtoneDefault => 'ნაგულისხმევი';

  @override
  String get customRingtone => 'საბაჟო';

  @override
  String get aboutSection => 'შესახებ';

  @override
  String get aboutFeedbackSection => 'შესახებ & გამოხმაურება';

  @override
  String get aboutDescription =>
      'Nothing Dialer არის ღია წყარო. თუ დეველოპერი ხართ, შეგიძლიათ შეისწავლოთ კოდი და წვლილი შეიტანოთ.';

  @override
  String get aboutViewSource => 'ნახვა GitHub-ზე';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'ლინკის გახსნა ვერ მოხერხდა';

  @override
  String get reviewSection => 'მიმოხილვა';

  @override
  String get reviewDescription =>
      'მოგწონთ Nothing Dialer? თქვენი რეიტინგი Google Play-ზე ეხმარება სხვებს აპის პოვნაში.';

  @override
  String get reviewRateOnPlay => 'შეაფასეთ Google Play-ზე';

  @override
  String get reviewRateOnPlaySubtitle => 'დატოვეთ რეიტინგი აპიდან გაუსვლელად';

  @override
  String get reviewCouldNotOpen => 'Google Play ვერ გაიხსნა';

  @override
  String get breathSpeed => 'სუნთქვის სიჩქარე';

  @override
  String get breathSpeedBlinkHint =>
      'ქვედა = მოციმციმე, უფრო მაღალი = ნელი სუნთქვა';

  @override
  String get speedSliderHint => 'ქვედა = უფრო სწრაფი, უმაღლესი = ნელი';

  @override
  String get swatchDefault => 'ნაგულისხმევი';

  @override
  String get customAccentColorPicker => 'მორგებული აქცენტის ფერი';

  @override
  String get customLightBackgroundPicker => 'მორგებული მსუბუქი ფონი';

  @override
  String get customDarkBackgroundPicker => 'მორგებული მუქი ფონი';

  @override
  String get customCallBackgroundPicker => 'მორგებული ზარის ფონი';

  @override
  String get ongoingCallStyleTitle => 'მიმდინარე ზარის სტილი';

  @override
  String get glyphMapUnavailable => 'გლიფის რუკა მიუწვდომელია';

  @override
  String get animationDelayRange => 'ანიმაციის დაყოვნება (1 წმ - 10 წმ.)';

  @override
  String get animationDelayRangeSingle =>
      'ანიმაციის დაყოვნება (0,1 წმ - 10 წმ)';

  @override
  String get inCallMute => 'დადუმება';

  @override
  String get inCallKeypad => 'კლავიატურა';

  @override
  String get inCallSpeaker => 'სპიკერი';

  @override
  String get inCallMore => 'მეტი';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'ტელეფონი';

  @override
  String get inCallAddCall => 'ზარის დამატება';

  @override
  String get inCallChangeSim => 'SIM-ის შეცვლა';

  @override
  String get inCallDecline => 'უარყოფა';

  @override
  String get inCallAnswer => 'უპასუხე';

  @override
  String get inCallMessage => 'შეტყობინება';

  @override
  String get inCallCalling => 'ირეკება…';

  @override
  String get inCallIncoming => 'შემომავალი ზარი';

  @override
  String get inCallSelectSim => 'აირჩიეთ SIM…';

  @override
  String get inCallSwitchingSim => 'SIM ბარათის გადართვა…';

  @override
  String get inCallCallEnded => 'ზარი დასრულდა';

  @override
  String inCallCallingVia(String sim) {
    return 'დარეკვა $sim-ით';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'დარეკვა <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'აირჩიეთ SIM ამ ზარისთვის';

  @override
  String get inCallDragAnswerDecline =>
      'გადაათრიეთ მარჯვნივ პასუხისთვის · გადაათრიეთ მარცხნიდან უარყოფისთვის';

  @override
  String inCallMobileNumber(String number) {
    return 'მობილური $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (მიმდინარე)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'დარეკეთ <b>$sim</b>-დან';
  }

  @override
  String get inCallCallFrom => 'ზარი ეხლა';

  @override
  String get inCallUnknown => 'უცნობი';

  @override
  String get selectContactRingtone => 'აირჩიეთ კონტაქტის ზარის მელოდია';

  @override
  String get speakToSearchPrompt => 'ისაუბრეთ მოსაძებნად';

  @override
  String get phonePermissionRequired => 'საჭიროა ტელეფონის ნებართვა';

  @override
  String callFailed(String error) {
    return 'ზარი ჩაიშალა: $error';
  }

  @override
  String get callPermissionDenied => 'ზარის ნებართვა უარყოფილია';

  @override
  String get alreadyDefaultDialer => 'უკვე დაყენებულია ნაგულისხმევ აკრიფეთ';

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
