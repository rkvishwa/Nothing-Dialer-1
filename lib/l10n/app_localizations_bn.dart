// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'কিছুই ডায়লার';

  @override
  String get settings => 'সেটিংস';

  @override
  String get settingsSearchHint => 'অনুসন্ধান সেটিংস';

  @override
  String get settingsSearchNoResults => 'কোনো সেটিংস পাওয়া যায়নি';

  @override
  String get general => 'সাধারণ';

  @override
  String get theme => 'থিম';

  @override
  String get themeSystemDefault => 'সিস্টেম ডিফল্ট';

  @override
  String get themeLight => 'আলো';

  @override
  String get themeDark => 'অন্ধকার';

  @override
  String get themeFollowSystem => 'সিস্টেম সেটিংস অনুসরণ করুন';

  @override
  String get themeAlwaysLight => 'সর্বদা হালকা থিম ব্যবহার করুন';

  @override
  String get themeAlwaysDark => 'সবসময় ডার্ক থিম ব্যবহার করুন';

  @override
  String get language => 'ভাষা';

  @override
  String get languageDeviceDefault => 'ডিভাইস ডিফল্ট';

  @override
  String get languagePickerTitle => 'ভাষা';

  @override
  String get languageSearchHint => 'ভাষা অনুসন্ধান করুন';

  @override
  String get font => 'হরফ';

  @override
  String get fontSystem => 'সিস্টেম ডিফল্ট';

  @override
  String get fontNdot => 'কিছুই নয় (NDot)';

  @override
  String get fontSerif => 'রোবোটো সেরিফ';

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
      'ফন্ট ডাউনলোড ব্যর্থ হয়েছে. আপনার সংযোগ পরীক্ষা করুন এবং আবার চেষ্টা করুন.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'হরফ';

  @override
  String get fontPreviewSample => 'কিছুই ডায়লার';

  @override
  String get fontAppWide => 'অ্যাপ ফন্ট';

  @override
  String get fontApplyTo => 'আবেদন করুন';

  @override
  String get fontApplyEntireApp => 'সম্পূর্ণ অ্যাপ';

  @override
  String get fontApplyEntireAppSubtitle => 'ইন-কল সহ সর্বত্র একই ফন্ট';

  @override
  String get fontApplyTitlesOnly => 'শিরোনাম এবং শিরোনাম';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'বড় শিরোনাম এবং বিভাগ শিরোনাম শুধুমাত্র';

  @override
  String get fontApplyCustomize => 'কাস্টমাইজ করুন';

  @override
  String get fontApplyCustomizeSubtitle =>
      'প্রতি স্ক্রীন এবং টেক্সট টাইপ অনুযায়ী ফন্ট বেছে নিন';

  @override
  String get fontCustomizeSection => 'পর্দা দ্বারা কাস্টমাইজ করুন';

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
  String get fontRolePageTitle => 'পৃষ্ঠার শিরোনাম';

  @override
  String get fontRoleSectionHeader => 'অধ্যায় শিরোনাম';

  @override
  String get fontRolePrimary => 'প্রাথমিক পাঠ্য';

  @override
  String get fontRoleSecondary => 'মাধ্যমিক পাঠ্য';

  @override
  String get fontRoleButton => 'বোতাম';

  @override
  String get fontRoleDialKey => 'ডায়ালপ্যাড কী';

  @override
  String get fontSurfaceRecents => 'সাম্প্রতিক';

  @override
  String get fontSurfaceContacts => 'পরিচিতি';

  @override
  String get fontSurfaceSettings => 'সেটিংস';

  @override
  String get fontSurfaceDialpad => 'ডায়ালপ্যাড';

  @override
  String get fontSurfaceShell => 'নেভিগেশন';

  @override
  String get fontSurfaceDefaultDialer => 'ডিফল্ট ডায়ালার প্রম্পট';

  @override
  String get fontSurfaceFavourites => 'প্রিয়';

  @override
  String get fontSurfaceBlocked => 'ব্লক করা নম্বর';

  @override
  String get fontSurfaceContactDetail => 'যোগাযোগের বিস্তারিত';

  @override
  String get fontSurfaceCallHistory => 'কল ইতিহাস';

  @override
  String get fontSurfaceSheets => 'শীট এবং পিকার';

  @override
  String get fontSurfaceInCall => 'ইন-কল স্ক্রীন';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — সম্পূর্ণ অ্যাপ';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — শুধুমাত্র শিরোনাম';
  }

  @override
  String get fontSubtitleCustomize => 'পর্দা প্রতি কাস্টম';

  @override
  String get background => 'পটভূমি';

  @override
  String get accent => 'উচ্চারণ';

  @override
  String get lightBackground => 'হালকা ব্যাকগ্রাউন্ড';

  @override
  String get lightAccent => 'হালকা উচ্চারণ';

  @override
  String get darkBackground => 'অন্ধকার পটভূমি';

  @override
  String get darkAccent => 'গাঢ় উচ্চারণ';

  @override
  String get callBackground => 'কল ব্যাকগ্রাউন্ড';

  @override
  String get appIcon => 'অ্যাপ আইকন';

  @override
  String get answerMethod => 'উত্তর পদ্ধতি';

  @override
  String get answerSlide => 'উত্তর দিতে স্লাইড করুন';

  @override
  String get answerSlideSubtitle =>
      'Google ফোনের মতো বারে বাম/ডানে সোয়াইপ করুন';

  @override
  String get answerButton => 'বোতামে ট্যাপ করুন';

  @override
  String get answerButtonSubtitle => 'উত্তর বা প্রত্যাখ্যান বোতামে আলতো চাপুন';

  @override
  String get answerHuawei => 'হুয়াওয়ে স্টাইল';

  @override
  String get answerHuaweiSubtitle => 'উত্তর দিতে বৃত্তটিকে সবুজ ফোনে টেনে আনুন';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — সবুজ/লাল টেনে আনুন';

  @override
  String get calling => 'কলিং';

  @override
  String get defaultSim => 'ডিফল্ট সিম';

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
  String get askEveryTime => 'প্রতিবার জিজ্ঞাসা করুন';

  @override
  String get askEveryTimeSubtitle => 'প্রতিটি কলের আগে সিম পিকার দেখান';

  @override
  String simSlot(int slot) {
    return 'সিম $slot';
  }

  @override
  String get noSimCardsFound => 'কোনো সিম কার্ড পাওয়া যায়নি';

  @override
  String couldNotLoadSims(String error) {
    return 'সিম লোড করা যায়নি: $error';
  }

  @override
  String get allFavourites => 'সব প্রিয়';

  @override
  String get allFavouritesSubtitle =>
      'পরিচিতিগুলি থেকে পুনরায় সাজান, সরান এবং যোগ করুন';

  @override
  String get blockedNumbers => 'ব্লক করা নম্বর';

  @override
  String get blockedNumbersSubtitle => 'নম্বরগুলি দেখুন এবং আনব্লক করুন৷';

  @override
  String get soundsAndVibration => 'শব্দ এবং কম্পন';

  @override
  String get soundsAndVibrationSubtitle =>
      'রিংটোন, ভাইব্রেশন, ডায়াল প্যাড টোন';

  @override
  String couldNotOpenSettings(String error) {
    return 'সেটিংস খোলা যায়নি: $error';
  }

  @override
  String get frequentlyContacted => 'প্রায়ই যোগাযোগ করা হয়';

  @override
  String get numberOfRecords => 'রেকর্ডের সংখ্যা';

  @override
  String get timePeriod => 'সময়কাল';

  @override
  String get periodLast24Hours => 'গত 24 ঘন্টা';

  @override
  String get periodLast24HoursSubtitle => 'গত দিনের কল';

  @override
  String get periodLast7Days => 'গত ৭ দিন';

  @override
  String get periodLast7DaysSubtitle => 'গত সপ্তাহের কল';

  @override
  String get periodLast30Days => 'গত 30 দিন';

  @override
  String get periodLast30DaysSubtitle => 'গত মাস থেকে কল';

  @override
  String get periodLast12Months => 'গত 12 মাস';

  @override
  String get periodLast12MonthsSubtitle => 'গত বছরের কল';

  @override
  String get periodAllTime => 'সব সময়';

  @override
  String get periodAllTimeSubtitle => 'পুরো কল ইতিহাস';

  @override
  String get frequentMaxOff => 'বন্ধ';

  @override
  String frequentMaxCount(int count) {
    return '$count পরিচিতি';
  }

  @override
  String get torchBlink => 'টর্চ ব্লিঙ্ক';

  @override
  String get torchIncomingCall => 'ইনকামিং কল টর্চ';

  @override
  String get torchOutgoingCall => 'আউটগোয়িং কল টর্চ';

  @override
  String get torchOngoingCall => 'চলমান কল টর্চ';

  @override
  String get torchIncomingInterval => 'ইনকামিং পলকের ব্যবধান';

  @override
  String get torchOutgoingInterval => 'আউটগোয়িং ব্লিঙ্ক ব্যবধান';

  @override
  String get torchOngoingInterval => 'চলমান পলক বিরতি';

  @override
  String get torchOff => 'বন্ধ';

  @override
  String get torchOffIncomingSubtitle => 'বাজানোর সময় টর্চ নেই';

  @override
  String get torchOffOutgoingSubtitle => 'ডায়াল করার সময় টর্চ নেই';

  @override
  String get torchOffOngoingSubtitle => 'সক্রিয় কলের সময় কোন টর্চ নেই';

  @override
  String get torchFixedInterval => 'নির্দিষ্ট ব্যবধান';

  @override
  String get torchFixedIntervalSubtitle => 'একটি সেট গতিতে পলক';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds সে';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds পলক';
  }

  @override
  String get flashlightUnavailable => 'এই ডিভাইসে টর্চলাইট উপলব্ধ নেই৷';

  @override
  String get glyphLights => 'গ্লাইফ লাইটস';

  @override
  String get glyphCallingAnimation => 'গ্লাইফ কলিং অ্যানিমেশন';

  @override
  String get glyphOngoingAnimation => 'Glyph চলমান কল অ্যানিমেশন';

  @override
  String get glyphNone => 'কোনোটিই নয়';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'আউটগোয়িং কলের জন্য গ্লাইফ লাইট অক্ষম করুন';

  @override
  String get glyphNoneInCallSubtitle =>
      'সক্রিয়ভাবে কল করার সময় Glyph আলো নিষ্ক্রিয় করুন';

  @override
  String get glyphBreathProgress => 'শ্বাস এবং অগ্রগতি';

  @override
  String get glyphBreathProgressSubtitle =>
      '65 সেকেন্ডের বেশি লাইন পূর্ণ হওয়ার সময় আলো শ্বাস নেয়';

  @override
  String get glyphAccumulate => 'জমে';

  @override
  String get glyphAccumulateSubtitle => 'C1-C4 আলোতে অ্যানিমেশন জমা হচ্ছে';

  @override
  String get glyphSingle => 'একক';

  @override
  String get glyphSingleSubtitle => 'একক আলো C1-C4 জুড়ে চলছে';

  @override
  String get glyphBreath => 'শ্বাস';

  @override
  String get glyphBreathSubtitle => 'আলো এবং গতি বাছাই করুন';

  @override
  String get glyphSteady => 'স্থির';

  @override
  String get glyphSteadySubtitle => 'নির্বাচিত আলো জ্বলে থাকে';

  @override
  String get breathSettings => 'শ্বাস সেটিংস';

  @override
  String get activeLights => 'সক্রিয় আলো';

  @override
  String lightsCount(int count) {
    return '$count লাইট';
  }

  @override
  String get speedSettings => 'গতি সেটিংস';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms বিলম্ব';
  }

  @override
  String get durationAndSpeed => 'সময়কাল এবং গতি';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s সময়কাল, ${interval}ms ব্যবধান';
  }

  @override
  String get cancel => 'বাতিল করুন';

  @override
  String get done => 'সম্পন্ন';

  @override
  String get save => 'সংরক্ষণ করুন';

  @override
  String get block => 'ব্লক';

  @override
  String get delete => 'মুছুন';

  @override
  String get recents => 'সাম্প্রতিক';

  @override
  String get contacts => 'পরিচিতি';

  @override
  String get hideFavouritesOnRecents => 'সাম্প্রতিক এ প্রিয় লুকান';

  @override
  String get showFavouritesOnRecents => 'সাম্প্রতিক এ প্রিয় দেখান';

  @override
  String get ongoingCall => 'চলমান কল';

  @override
  String get setAsDefaultTitle => 'AS সেট করুন\nডিফল্ট';

  @override
  String get setAsDefaultBody =>
      'Nothing Dialer ব্যবহার করতে, এটি অবশ্যই আপনার ডিফল্ট ফোন অ্যাপ হিসেবে সেট করতে হবে। এটি আপনাকে কল পরিচালনা করতে, ইতিহাস দেখতে এবং Glyph অ্যানিমেশন ব্যবহার করতে দেয়।';

  @override
  String get setAsDefaultButton => 'ডিফল্ট হিসেবে সেট করুন';

  @override
  String get nothingDialerBrand => 'কিছুই ডায়লার 1';

  @override
  String get favourites => 'প্রিয়';

  @override
  String get addFavourite => 'প্রিয় যোগ করুন';

  @override
  String get favouritesDrawerHint =>
      'পরিচিতি যোগ করতে মেনু ব্যবহার করুন. ড্রয়ারের বাইরে আলতো চাপুন বা এটি বন্ধ সোয়াইপ করুন। তাদের বিশদ বিবরণ থেকে একটি পরিচিতিকে তারকাচিহ্নিত করুন, বা সাম্প্রতিকগুলিতে একটি কল দীর্ঘক্ষণ প্রেস করুন৷';

  @override
  String get menu => 'মেনু';

  @override
  String get noFavouritesYet =>
      'এখনও কোন প্রিয়.\nএকটি যোগ করতে মেনু খুলুন, বা একটি পরিচিতি তারকা৷';

  @override
  String get contactsPermissionNeeded => 'পরিচিতি অনুমতি প্রয়োজন';

  @override
  String get chooseContact => 'যোগাযোগ নির্বাচন করুন';

  @override
  String get noPhone => 'ফোন নেই';

  @override
  String get pickNumber => 'নম্বর বাছাই করুন';

  @override
  String get contactHasNoPhone => 'এই পরিচিতির কোনো ফোন নম্বর নেই';

  @override
  String get blockNumber => 'ব্লক নম্বর';

  @override
  String get enterPhoneNumber => 'ফোন নম্বর লিখুন';

  @override
  String unblockedDisplay(String display) {
    return 'আনব্লক করা হয়েছে $display';
  }

  @override
  String get couldNotUnblockNumber => 'নম্বর আনব্লক করা যায়নি';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked ব্লক করা হয়েছে • $matched মিলেছে';
  }

  @override
  String get contactsPermissionMissing =>
      'পরিচিতি অনুমতি অনুপস্থিত. ঠিক করতে আলতো চাপুন।';

  @override
  String get noBlockedNumbers => 'কোন অবরুদ্ধ সংখ্যা';

  @override
  String get unknownContact => 'অজানা পরিচিতি';

  @override
  String get unblock => 'আনব্লক করুন';

  @override
  String get permissionNeeded => 'অনুমতি প্রয়োজন';

  @override
  String get grantPhonePermission => 'আপনার কল ইতিহাস দেখতে ফোন অনুমতি দিন।';

  @override
  String get grantContactsPermission =>
      'আপনার ঠিকানা বই দেখার জন্য পরিচিতিদের অনুমতি দিন।';

  @override
  String get openSettings => 'সেটিংস খুলুন';

  @override
  String get tryAgain => 'আবার চেষ্টা করুন';

  @override
  String get couldNotLoadContacts => 'পরিচিতি লোড করা যায়নি';

  @override
  String get contactsLoadError => 'আপনার ঠিকানা বই পড়তে কিছু ভুল হয়েছে.';

  @override
  String get noContactsFound => 'কোন পরিচিতি পাওয়া যায়নি';

  @override
  String get contactsEmptySubtitle =>
      'আপনার ডিভাইস থেকে পরিচিতি এখানে প্রদর্শিত হবে.';

  @override
  String get searchContacts => 'পরিচিতি অনুসন্ধান করুন...';

  @override
  String get searchRecentCalls => 'সাম্প্রতিক কল অনুসন্ধান করুন';

  @override
  String get fromContacts => 'পরিচিতি থেকে';

  @override
  String get recentsSearchSection => 'সাম্প্রতিক অনুসন্ধান';

  @override
  String get recentsSearchShowContacts => 'অনুসন্ধানে পরিচিতি দেখান';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'সাম্প্রতিক অনুসন্ধান করার সময়, কল ইতিহাসের ফলাফলের নীচে আপনার ঠিকানা বই থেকে মিলিত ব্যক্তিদেরও দেখান।';

  @override
  String get voiceSearch => 'ভয়েস অনুসন্ধান';

  @override
  String get createNewContact => 'নতুন পরিচিতি তৈরি করুন';

  @override
  String callError(String error) {
    return 'কল ত্রুটি: $error';
  }

  @override
  String get noRecentCalls => 'কোনো সাম্প্রতিক কল নেই';

  @override
  String get callHistoryEmpty => 'আপনার কল ইতিহাস এখানে প্রদর্শিত হবে.';

  @override
  String get loadMore => 'আরো লোড';

  @override
  String get frequentlyContactedHeader => 'প্রায়ই যোগাযোগ করা হয়';

  @override
  String get recentHistory => 'সাম্প্রতিক ইতিহাস';

  @override
  String get noFavouritesRecentsHint =>
      'এখনও কোন প্রিয়. একটি পরিচিতি তারকাচিহ্নিত করুন, একটি কল দীর্ঘক্ষণ প্রেস করুন, বা প্রিয় ট্যাবটি ব্যবহার করুন৷';

  @override
  String get copyNumber => 'নম্বর কপি করুন';

  @override
  String get editNumberBeforeCall => 'কল করার আগে নম্বর সম্পাদনা করুন';

  @override
  String get removeFromFavourites => 'প্রিয় থেকে সরান';

  @override
  String get addToFavourites => 'পছন্দসই যোগ করুন';

  @override
  String get blockNumberQuestion => 'ব্লক নম্বর?';

  @override
  String blockNumberConfirm(String number) {
    return 'আপনি আর $number থেকে কল বা টেক্সট পাবেন না।';
  }

  @override
  String get blocked => 'অবরুদ্ধ';

  @override
  String get couldNotBlock => 'ব্লক করতে পারেনি';

  @override
  String get contactNotOnDevice => 'এই ডিভাইসে পরিচিতি সংরক্ষিত নেই';

  @override
  String get unblocked => 'আনব্লক করা হয়েছে';

  @override
  String get numberCopied => 'নম্বর কপি করা হয়েছে';

  @override
  String get showLess => 'কম দেখান';

  @override
  String get showAllTimes => 'সব সময় দেখান';

  @override
  String mostRecent(String time) {
    return 'অতি সাম্প্রতিক · $time';
  }

  @override
  String get videoCall => 'ভিডিও কল';

  @override
  String get couldNotPlaceVideoCall => 'ভিডিও কল করা যায়নি';

  @override
  String get message => 'বার্তা';

  @override
  String get couldNotOpenMessaging => 'মেসেজিং অ্যাপ খুলতে পারেনি';

  @override
  String get history => 'ইতিহাস';

  @override
  String get viewContact => 'পরিচিতি দেখুন';

  @override
  String get addToContact => 'যোগাযোগ যোগ করুন';

  @override
  String get callTypeMissed => 'মিস';

  @override
  String get callTypeRejected => 'প্রত্যাখ্যাত';

  @override
  String get callTypeIncoming => 'ইনকামিং';

  @override
  String get callTypeOutgoing => 'বহির্মুখী';

  @override
  String get today => 'আজ';

  @override
  String get yesterday => 'গতকাল';

  @override
  String get justNow => 'এইমাত্র';

  @override
  String minutesAgo(int count) {
    return '$count মিনিট আগে';
  }

  @override
  String hoursAgo(int count) {
    return '$count ঘন্টা আগে';
  }

  @override
  String get filterAll => 'সব';

  @override
  String get filterMissed => 'মিস';

  @override
  String get filterContacts => 'পরিচিতি';

  @override
  String get filterNonContacts => 'অ-যোগাযোগ';

  @override
  String get iconUpdated =>
      'আইকন আপডেট করা হয়েছে। আপনার হোম স্ক্রীন রিফ্রেশ হতে একটু সময় নিতে পারে।';

  @override
  String get iconSavedRelease =>
      'পছন্দ সংরক্ষিত. হোম স্ক্রীন আইকন রিলিজ বিল্ডে আপডেট হয়।';

  @override
  String couldNotChangeIcon(String error) {
    return 'আইকন পরিবর্তন করা যায়নি: $error';
  }

  @override
  String get launcherClassicBlack => 'ক্লাসিক (কালো)';

  @override
  String get launcherLight => 'আলো';

  @override
  String get launcherNothingRed => 'লাল কিছুই না';

  @override
  String get launcherDarkGrey => 'গাঢ় ধূসর';

  @override
  String get launcherCream => 'ক্রিম';

  @override
  String get launcherRetroPhone => 'রেট্রো ফোন';

  @override
  String get launcherRetroPhoneLight => 'রেট্রো ফোন (হালকা)';

  @override
  String get voiceSearchUnavailable => 'এই ডিভাইসে ভয়েস অনুসন্ধান উপলব্ধ নয়৷';

  @override
  String voiceSearchFailed(String error) {
    return 'ভয়েস অনুসন্ধান ব্যর্থ হয়েছে: $error';
  }

  @override
  String get customColor => 'কাস্টম';

  @override
  String get selectColor => 'রঙ নির্বাচন করুন';

  @override
  String get reset => 'রিসেট করুন';

  @override
  String get simPickerTitle => 'সিম নির্বাচন করুন';

  @override
  String get simChooseForCall => 'এই কলের জন্য সিম বেছে নিন';

  @override
  String get defaultSimAsk => 'প্রতিবার জিজ্ঞাসা করুন';

  @override
  String defaultSimFixed(int slot) {
    return 'সিম $slot';
  }

  @override
  String get contactDetails => 'যোগাযোগের বিবরণ';

  @override
  String get call => 'কল';

  @override
  String get share => 'শেয়ার করুন';

  @override
  String get favourite => 'প্রিয়';

  @override
  String get unfavourite => 'অপছন্দনীয়';

  @override
  String get blockContact => 'যোগাযোগ অবরুদ্ধ করুন';

  @override
  String get unblockContact => 'যোগাযোগ আনব্লক করুন';

  @override
  String get deleteContact => 'পরিচিতি মুছুন';

  @override
  String get phone => 'ফোন';

  @override
  String get email => 'ইমেইল';

  @override
  String get ringtone => 'রিংটোন';

  @override
  String get defaultRingtone => 'ডিফল্ট';

  @override
  String get simForContact => 'এই পরিচিতির জন্য সিম';

  @override
  String get callHistoryTitle => 'কল ইতিহাস';

  @override
  String get noCallsWithNumber => 'এই নম্বর দিয়ে কোনো কল নেই';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'গ্লিফ অ্যানিমেশন';

  @override
  String get inCallGlyphAnimationStyle => 'ইন-কল Glyph অ্যানিমেশন';

  @override
  String get recordsOff => 'বন্ধ';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'ডিফল্ট সিম';

  @override
  String get nothingPhoneOnly => 'কিছু না শুধু ফোন';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Glyph বৈশিষ্ট্যগুলির জন্য একটি নাথিং ফোন প্রয়োজন';

  @override
  String get custom => 'কাস্টম';

  @override
  String presetColorHex(String hex) {
    return 'প্রিসেট · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'কাস্টম · $hex';
  }

  @override
  String get oneContact => '1 পরিচিতি';

  @override
  String upToContacts(int count) {
    return '$count পরিচিতি পর্যন্ত';
  }

  @override
  String get answerButtonTapSubtitle => 'উত্তর দিতে বোতামে ট্যাপ করুন';

  @override
  String get filterCalls => 'কল ফিল্টার করুন';

  @override
  String get filterTooltip => 'ফিল্টার';

  @override
  String get settingsTooltip => 'সেটিংস';

  @override
  String get filterAllSubtitle => 'পুরো কল লগ';

  @override
  String get filterMissedSubtitle => 'মিস এবং প্রত্যাখ্যাত';

  @override
  String get filterContactsSubtitle => 'একটি সংরক্ষিত পরিচিতির সাথে কল মিলছে৷';

  @override
  String get filterNonContactsSubtitle => 'আপনার ঠিকানা বইতে নম্বর নেই';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'চলমান কল: $detail';
  }

  @override
  String get defaultSimForCalls => 'কলের জন্য ডিফল্ট সিম';

  @override
  String get blinkInterval => 'পলকের ব্যবধান';

  @override
  String get close => 'বন্ধ';

  @override
  String get frequentlyContactedInfoBody =>
      'আপনার বেছে নেওয়া সময়ের মধ্যে প্রতিটি নম্বরের সাথে কতগুলি ইনকামিং, আউটগোয়িং, মিস বা প্রত্যাখ্যান করা কল ছিল তার উপর ভিত্তি করে সাম্প্রতিক ট্যাবের শীর্ষে আপনার সর্বাধিক কল করা ফোন নম্বরগুলি দেখায়৷\n\nরেকর্ডের সংখ্যা: এটি বন্ধ করতে 0 এ সেট করুন। অনেক শীর্ষ পরিচিতি দেখাতে 1-20 ব্যবহার করুন।\n\nঅন্তত একটি পরিচিতি দেখানো হলেই সময়কাল প্রযোজ্য।';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count লাইট, ${ms}ms গতি';
  }

  @override
  String get deleteContactQuestion => 'পরিচিতি মুছবেন?';

  @override
  String get deleteContactBody =>
      'এই পরিচিতিটি আপনার ডিভাইস থেকে স্থায়ীভাবে মুছে ফেলা হবে।';

  @override
  String get blockContactQuestion => 'যোগাযোগ ব্লক করবেন?';

  @override
  String get unblockContactQuestion => 'যোগাযোগ আনব্লক করবেন?';

  @override
  String get blockContactBody =>
      'আপনি এই পরিচিতি থেকে আর কল বা টেক্সট পাবেন না।';

  @override
  String get unblockContactBody =>
      'আপনি এই পরিচিতি থেকে কল এবং টেক্সট পেতে শুরু করবেন।';

  @override
  String get contactBlocked => 'যোগাযোগ অবরুদ্ধ';

  @override
  String get contactUnblocked => 'যোগাযোগ আনব্লক করা হয়েছে';

  @override
  String get noPhoneNumbersToBlock => 'ব্লক করার জন্য কোন ফোন নম্বর নেই';

  @override
  String get simSameAsSystem => 'সিস্টেম হিসাবে একই';

  @override
  String get simSameAsSystemSubtitle => 'সেটিংসে ডিফল্ট সিম অনুসরণ করে';

  @override
  String get simAskEveryTimeForContact =>
      'এই পরিচিতির জন্য সবসময় সিম পিকার দেখান';

  @override
  String get ringtoneSetForContact =>
      'এই পরিচিতির জন্য বিশ্বব্যাপী রিংটোন সেট করা হয়েছে';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'রিংটোন বাছাই করতে ব্যর্থ হয়েছে: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'ত্রুটি: $error';
  }

  @override
  String get noCallHistoryFound => 'কোনো কল ইতিহাস পাওয়া যায়নি';

  @override
  String get speedDialVoicemail => 'স্পিড ডায়াল: ভয়েসমেইল';

  @override
  String shareContactSubject(String name) {
    return 'যোগাযোগ: $name';
  }

  @override
  String get contactInfo => 'যোগাযোগের তথ্য';

  @override
  String get dontAskAgainSim => 'আবার জিজ্ঞাসা করবেন না';

  @override
  String get simDontAskAgainSubtitle =>
      'এই সিমটি ডিফল্ট হিসাবে ব্যবহার করুন (সেটিংস পরিবর্তন করুন)';

  @override
  String get addContact => 'পরিচিতি যোগ করুন';

  @override
  String get createContact => 'যোগাযোগ তৈরি করুন';

  @override
  String get paste => 'পেস্ট করুন';

  @override
  String get clear => 'পরিষ্কার';

  @override
  String get returnToCall => 'কলে ফিরে যান';

  @override
  String get numberOfRecordsTitle => 'রেকর্ডের সংখ্যা';

  @override
  String get recordsPickerSubtitle =>
      'কত ঘন ঘন যোগাযোগ করা এন্ট্রি দেখাতে হবে (0 = বন্ধ)';

  @override
  String get torchInfoTitle => 'টর্চ মিটমিট করে';

  @override
  String get torchInfoBody =>
      'ইনকামিং, আউটগোয়িং বা চলমান কলের সময় ক্যামেরার ফ্ল্যাশ ব্লিঙ্ক করে। গ্লিফ লাইট থেকে স্বাধীন।';

  @override
  String get glyphMapTitle => 'গ্লিফ লেআউট';

  @override
  String get glyphMapBody =>
      'কিছুই নেই ফোন 1 গ্লাইফ এলইডি জোন। আউটগোয়িং এবং ইন-কল অ্যানিমেশনগুলি এই চ্যানেলগুলি ব্যবহার করে৷';

  @override
  String get answerMethodTitle => 'উত্তর পদ্ধতি';

  @override
  String get glyphOutgoingCallStyleTitle => 'বহির্গামী কল শৈলী';

  @override
  String get glyphInCallAnimationTitle => 'গ্লিফ ইন-কল অ্যানিমেশন';

  @override
  String get themePickerTitle => 'থিম';

  @override
  String get torchIncomingTitle => 'ইনকামিং কল টর্চ';

  @override
  String get torchOutgoingTitle => 'আউটগোয়িং কল টর্চ';

  @override
  String get torchOngoingTitle => 'চলমান কল টর্চ';

  @override
  String get timePeriodTitle => 'সময়কাল';

  @override
  String get ok => 'ঠিক আছে';

  @override
  String get confirmDeleteCall => 'ইতিহাস থেকে এই কল মুছবেন?';

  @override
  String get confirmDeleteAllCalls => 'এই নম্বরের সমস্ত কল মুছবেন?';

  @override
  String get whatsapp => 'হোয়াটসঅ্যাপ';

  @override
  String get sendMessage => 'একটি বার্তা পাঠান';

  @override
  String get addToExistingContactAction => 'একটি পরিচিতি যোগ করুন';

  @override
  String get mobileLabel => 'মোবাইল';

  @override
  String get callingSimForContactTitle => 'এই পরিচিতির জন্য সিম কল করা হচ্ছে';

  @override
  String get contactSettings => 'যোগাযোগ সেটিংস';

  @override
  String get setCallingSim => 'কলিং সিম সেট করুন';

  @override
  String get contactRingtone => 'যোগাযোগ রিংটোন';

  @override
  String get shareContact => 'যোগাযোগ শেয়ার করুন';

  @override
  String get blockNumbers => 'ব্লক নম্বর';

  @override
  String get unblockNumbers => 'আনব্লক নম্বর';

  @override
  String get connectedApps => 'সংযুক্ত অ্যাপস';

  @override
  String get simNotSet => 'সেট করা হয়নি';

  @override
  String get ringtoneDefault => 'ডিফল্ট';

  @override
  String get customRingtone => 'কাস্টম';

  @override
  String get aboutSection => 'সম্পর্কে';

  @override
  String get aboutFeedbackSection => 'সম্পর্কে এবং প্রতিক্রিয়া';

  @override
  String get aboutDescription =>
      'কিছুই ডায়ালার ওপেন সোর্স নয়। আপনি যদি একজন বিকাশকারী হন তবে কোডটি অন্বেষণ করতে এবং অবদান রাখতে আপনাকে স্বাগত জানাই৷';

  @override
  String get aboutViewSource => 'GitHub এ দেখুন';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'লিঙ্ক খুলতে পারেনি';

  @override
  String get reviewSection => 'পর্যালোচনা';

  @override
  String get reviewDescription =>
      'নাথিং ডায়ালার উপভোগ করছেন? Google Play-তে আপনার রেটিং অন্যদের অ্যাপ খুঁজে পেতে সাহায্য করে।';

  @override
  String get reviewRateOnPlay => 'Google Play-তে রেট দিন';

  @override
  String get reviewRateOnPlaySubtitle => 'অ্যাপটি ছাড়াই একটি রেটিং দিন';

  @override
  String get reviewCouldNotOpen => 'Google Play খোলা যায়নি';

  @override
  String get breathSpeed => 'শ্বাসের গতি';

  @override
  String get breathSpeedBlinkHint => 'নিম্ন = পলক, উচ্চ = ধীর নিঃশ্বাস';

  @override
  String get speedSliderHint => 'নিম্ন = দ্রুত, উচ্চতর = ধীর';

  @override
  String get swatchDefault => 'ডিফল্ট';

  @override
  String get customAccentColorPicker => 'কাস্টম অ্যাকসেন্ট রঙ';

  @override
  String get customLightBackgroundPicker => 'কাস্টম হালকা ব্যাকগ্রাউন্ড';

  @override
  String get customDarkBackgroundPicker => 'কাস্টম গাঢ় পটভূমি';

  @override
  String get customCallBackgroundPicker => 'কাস্টম কল ব্যাকগ্রাউন্ড';

  @override
  String get ongoingCallStyleTitle => 'চলমান কল শৈলী';

  @override
  String get glyphMapUnavailable => 'Glyph মানচিত্র অনুপলব্ধ';

  @override
  String get animationDelayRange => 'অ্যানিমেশন বিলম্ব (1s - 10s)';

  @override
  String get animationDelayRangeSingle => 'অ্যানিমেশন বিলম্ব (0.1s - 10s)';

  @override
  String get inCallMute => 'নিঃশব্দ';

  @override
  String get inCallKeypad => 'কীপ্যাড';

  @override
  String get inCallSpeaker => 'স্পিকার';

  @override
  String get inCallMore => 'আরও';

  @override
  String get inCallBluetooth => 'ব্লুটুথ';

  @override
  String get inCallPhone => 'ফোন';

  @override
  String get inCallAddCall => 'কল যোগ করুন';

  @override
  String get inCallChangeSim => 'সিম পরিবর্তন করুন';

  @override
  String get inCallDecline => 'প্রত্যাখ্যান';

  @override
  String get inCallAnswer => 'উত্তর';

  @override
  String get inCallMessage => 'বার্তা';

  @override
  String get inCallCalling => 'কল করা হচ্ছে...';

  @override
  String get inCallIncoming => 'ইনকামিং কল';

  @override
  String get inCallSelectSim => 'সিম নির্বাচন করুন...';

  @override
  String get inCallSwitchingSim => 'সিম পাল্টানো হচ্ছে...';

  @override
  String get inCallCallEnded => 'কল শেষ';

  @override
  String inCallCallingVia(String sim) {
    return '$sim এর মাধ্যমে কল করা হচ্ছে';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return '<b>$sim</b> এর মাধ্যমে কল করা হচ্ছে';
  }

  @override
  String get inCallChooseSim => 'এই কলের জন্য সিম বেছে নিন';

  @override
  String get inCallDragAnswerDecline =>
      'উত্তর দিতে ডানদিকে টেনে আনুন · প্রত্যাখ্যান করতে বামে টেনে আনুন';

  @override
  String inCallMobileNumber(String number) {
    return 'মোবাইল $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (বর্তমান)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'থেকে <b>$sim</b> এর মাধ্যমে কল করুন';
  }

  @override
  String get inCallCallFrom => 'থেকে কল করুন';

  @override
  String get inCallUnknown => 'অজানা';

  @override
  String get selectContactRingtone => 'যোগাযোগের রিংটোন নির্বাচন করুন';

  @override
  String get speakToSearchPrompt => 'অনুসন্ধানের জন্য কথা বলুন';

  @override
  String get phonePermissionRequired => 'ফোন অনুমতি প্রয়োজন';

  @override
  String callFailed(String error) {
    return 'কল ব্যর্থ হয়েছে: $error';
  }

  @override
  String get callPermissionDenied => 'কল অনুমতি অস্বীকার করা হয়েছে';

  @override
  String get alreadyDefaultDialer =>
      'ইতিমধ্যেই ডিফল্ট ডায়ালার হিসেবে সেট করা আছে';

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
