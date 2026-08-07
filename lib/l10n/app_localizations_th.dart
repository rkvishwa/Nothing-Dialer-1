// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appTitle => 'ไม่มีอะไร Dialer';

  @override
  String get settings => 'การตั้งค่า';

  @override
  String get settingsSearchHint => 'การตั้งค่าการค้นหา';

  @override
  String get settingsSearchNoResults => 'ไม่พบการตั้งค่า';

  @override
  String get general => 'ทั่วไป';

  @override
  String get theme => 'ธีม';

  @override
  String get themeSystemDefault => 'ค่าเริ่มต้นของระบบ';

  @override
  String get themeLight => 'แสงสว่าง';

  @override
  String get themeDark => 'มืด';

  @override
  String get themeFollowSystem => 'ทำตามการตั้งค่าระบบ';

  @override
  String get themeAlwaysLight => 'ใช้ธีมสว่างเสมอ';

  @override
  String get themeAlwaysDark => 'ใช้ธีมสีเข้มเสมอ';

  @override
  String get language => 'ภาษา';

  @override
  String get languageDeviceDefault => 'ค่าเริ่มต้นของอุปกรณ์';

  @override
  String get languagePickerTitle => 'ภาษา';

  @override
  String get languageSearchHint => 'ค้นหาภาษา';

  @override
  String get font => 'แบบอักษร';

  @override
  String get fontSystem => 'ค่าเริ่มต้นของระบบ';

  @override
  String get fontNdot => 'ไม่มีอะไร (NDot)';

  @override
  String get fontSerif => 'โรโบโต เซริฟ';

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
      'การดาวน์โหลดแบบอักษรล้มเหลว ตรวจสอบการเชื่อมต่อของคุณแล้วลองอีกครั้ง';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'แบบอักษร';

  @override
  String get fontPreviewSample => 'ไม่มีอะไร Dialer';

  @override
  String get fontAppWide => 'แบบอักษรของแอป';

  @override
  String get fontApplyTo => 'นำไปใช้กับ';

  @override
  String get fontApplyEntireApp => 'แอพทั้งหมด';

  @override
  String get fontApplyEntireAppSubtitle =>
      'แบบอักษรเดียวกันทุกที่ รวมถึงในสายด้วย';

  @override
  String get fontApplyTitlesOnly => 'ชื่อเรื่องและส่วนหัว';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'ชื่อขนาดใหญ่และส่วนหัวของส่วนเท่านั้น';

  @override
  String get fontApplyCustomize => 'ปรับแต่ง';

  @override
  String get fontApplyCustomizeSubtitle =>
      'เลือกแบบอักษรต่อหน้าจอและประเภทข้อความ';

  @override
  String get fontCustomizeSection => 'ปรับแต่งตามหน้าจอ';

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
  String get fontRolePageTitle => 'ชื่อหน้า';

  @override
  String get fontRoleSectionHeader => 'ส่วนหัวของส่วน';

  @override
  String get fontRolePrimary => 'ข้อความหลัก';

  @override
  String get fontRoleSecondary => 'ข้อความรอง';

  @override
  String get fontRoleButton => 'ปุ่ม';

  @override
  String get fontRoleDialKey => 'ปุ่มแป้นหมายเลข';

  @override
  String get fontSurfaceRecents => 'ล่าสุด';

  @override
  String get fontSurfaceContacts => 'รายชื่อผู้ติดต่อ';

  @override
  String get fontSurfaceSettings => 'การตั้งค่า';

  @override
  String get fontSurfaceDialpad => 'แป้นกดหมายเลข';

  @override
  String get fontSurfaceShell => 'การนำทาง';

  @override
  String get fontSurfaceDefaultDialer => 'พรอมต์ตัวเรียกเลขหมายเริ่มต้น';

  @override
  String get fontSurfaceFavourites => 'รายการโปรด';

  @override
  String get fontSurfaceBlocked => 'หมายเลขที่ถูกบล็อก';

  @override
  String get fontSurfaceContactDetail => 'รายละเอียดการติดต่อ';

  @override
  String get fontSurfaceCallHistory => 'ประวัติการโทร';

  @override
  String get fontSurfaceSheets => 'ชีตและตัวเลือก';

  @override
  String get fontSurfaceInCall => 'หน้าจอกำลังโทร';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — ทั้งแอป';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — หัวเรื่องเท่านั้น';
  }

  @override
  String get fontSubtitleCustomize => 'กำหนดเองต่อหน้าจอ';

  @override
  String get background => 'พื้นหลัง';

  @override
  String get accent => 'สำเนียง';

  @override
  String get lightBackground => 'พื้นหลังสีอ่อน';

  @override
  String get lightAccent => 'สำเนียงเบา';

  @override
  String get darkBackground => 'พื้นหลังสีเข้ม';

  @override
  String get darkAccent => 'สำเนียงเข้ม';

  @override
  String get callBackground => 'พื้นหลังการโทร';

  @override
  String get appIcon => 'ไอคอนแอพ';

  @override
  String get answerMethod => 'วิธีการตอบ';

  @override
  String get answerSlide => 'เลื่อนเพื่อตอบ';

  @override
  String get answerSlideSubtitle => 'ปัดไปทางซ้าย/ขวาบนแถบ เช่น Google Phone';

  @override
  String get answerButton => 'แตะปุ่ม';

  @override
  String get answerButtonSubtitle => 'แตะปุ่มรับสายหรือปฏิเสธ';

  @override
  String get answerHuawei => 'สไตล์หัวเหว่ย';

  @override
  String get answerHuaweiSubtitle => 'ลากวงกลมไปที่โทรศัพท์สีเขียวเพื่อรับสาย';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — ลากไปที่สีเขียว / แดง';

  @override
  String get calling => 'กำลังโทร';

  @override
  String get defaultSim => 'ซิมเริ่มต้น';

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
  String get askEveryTime => 'ถามทุกครั้ง.';

  @override
  String get askEveryTimeSubtitle =>
      'แสดงเครื่องมือเลือกซิมก่อนการโทรแต่ละครั้ง';

  @override
  String simSlot(int slot) {
    return 'ซิม $slot';
  }

  @override
  String get noSimCardsFound => 'ไม่พบซิมการ์ด';

  @override
  String couldNotLoadSims(String error) {
    return 'ไม่สามารถโหลดซิม: $error';
  }

  @override
  String get allFavourites => 'รายการโปรดทั้งหมด';

  @override
  String get allFavouritesSubtitle => 'เรียงลำดับใหม่ ลบ และเพิ่มจากผู้ติดต่อ';

  @override
  String get blockedNumbers => 'หมายเลขที่ถูกบล็อก';

  @override
  String get blockedNumbersSubtitle => 'ดูและปลดบล็อกหมายเลข';

  @override
  String get soundsAndVibration => 'เสียงและการสั่นสะเทือน';

  @override
  String get soundsAndVibrationSubtitle => 'เสียงเรียกเข้า การสั่น เสียงแป้นกด';

  @override
  String couldNotOpenSettings(String error) {
    return 'ไม่สามารถเปิดการตั้งค่า: $error';
  }

  @override
  String get frequentlyContacted => 'ติดต่อบ่อย';

  @override
  String get numberOfRecords => 'จำนวนเรกคอร์ด';

  @override
  String get timePeriod => 'ช่วงเวลา';

  @override
  String get periodLast24Hours => '24ชม.ที่ผ่านมา';

  @override
  String get periodLast24HoursSubtitle => 'สายจากวันที่ผ่านมา';

  @override
  String get periodLast7Days => '7 วันที่ผ่านมา';

  @override
  String get periodLast7DaysSubtitle => 'โทรจากสัปดาห์ที่ผ่านมา';

  @override
  String get periodLast30Days => '30 วันที่ผ่านมา';

  @override
  String get periodLast30DaysSubtitle => 'โทรตั้งแต่เดือนที่แล้ว';

  @override
  String get periodLast12Months => '12 เดือนที่ผ่านมา';

  @override
  String get periodLast12MonthsSubtitle => 'สายจากปีที่ผ่านมา';

  @override
  String get periodAllTime => 'ตลอดเวลา';

  @override
  String get periodAllTimeSubtitle => 'ประวัติการโทรทั้งหมด';

  @override
  String get frequentMaxOff => 'ปิด';

  @override
  String frequentMaxCount(int count) {
    return '$count ผู้ติดต่อ';
  }

  @override
  String get torchBlink => 'คบเพลิงกะพริบตา';

  @override
  String get torchIncomingCall => 'ไฟฉายสายเรียกเข้า';

  @override
  String get torchOutgoingCall => 'ไฟฉายโทรออก';

  @override
  String get torchOngoingCall => 'คบไฟสายที่กำลังสนทนาอยู่';

  @override
  String get torchIncomingInterval => 'ช่วงเวลาการกะพริบที่เข้ามา';

  @override
  String get torchOutgoingInterval => 'ช่วงเวลากะพริบขาออก';

  @override
  String get torchOngoingInterval => 'ช่วงเวลาการกะพริบต่อเนื่อง';

  @override
  String get torchOff => 'ปิด';

  @override
  String get torchOffIncomingSubtitle => 'ไม่มีคบไฟขณะส่งเสียง';

  @override
  String get torchOffOutgoingSubtitle => 'ไม่มีคบไฟขณะโทรออก';

  @override
  String get torchOffOngoingSubtitle =>
      'ไม่มีคบเพลิงระหว่างการโทรที่ใช้งานอยู่';

  @override
  String get torchFixedInterval => 'ช่วงเวลาคงที่';

  @override
  String get torchFixedIntervalSubtitle => 'กะพริบตาด้วยความเร็วที่กำหนด';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds ส';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds กระพริบตา';
  }

  @override
  String get flashlightUnavailable => 'ไฟฉายไม่พร้อมใช้งานบนอุปกรณ์นี้';

  @override
  String get glyphLights => 'ไฟสัญลักษณ์';

  @override
  String get glyphCallingAnimation => 'ภาพเคลื่อนไหวการเรียกสัญลักษณ์';

  @override
  String get glyphOngoingAnimation =>
      'Glyph ภาพเคลื่อนไหวการโทรที่กำลังดำเนินอยู่';

  @override
  String get glyphNone => 'ไม่มี';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'ปิดการใช้งานไฟสัญลักษณ์สำหรับการโทรออก';

  @override
  String get glyphNoneInCallSubtitle => 'ปิดการใช้งานไฟสัญลักษณ์ขณะสนทนาอยู่';

  @override
  String get glyphBreathProgress => 'ลมหายใจและความก้าวหน้า';

  @override
  String get glyphBreathProgressSubtitle =>
      'ไฟหายใจในขณะที่สายเต็มมากกว่า 65 วินาที';

  @override
  String get glyphAccumulate => 'สะสม';

  @override
  String get glyphAccumulateSubtitle => 'รวบรวมแอนิเมชั่นบนไฟ C1-C4';

  @override
  String get glyphSingle => 'เดี่ยว';

  @override
  String get glyphSingleSubtitle => 'แสงดวงเดียวเคลื่อนผ่าน C1-C4';

  @override
  String get glyphBreath => 'ลมหายใจ';

  @override
  String get glyphBreathSubtitle => 'เลือกไฟและความเร็ว';

  @override
  String get glyphSteady => 'มั่นคง';

  @override
  String get glyphSteadySubtitle => 'ไฟที่เลือกไว้จะสว่างอยู่';

  @override
  String get breathSettings => 'การตั้งค่าลมหายใจ';

  @override
  String get activeLights => 'ไฟที่ใช้งานอยู่';

  @override
  String lightsCount(int count) {
    return '$count ไฟ';
  }

  @override
  String get speedSettings => 'การตั้งค่าความเร็ว';

  @override
  String speedSettingsDelay(int ms) {
    return 'ดีเลย์ ${ms}ms';
  }

  @override
  String get durationAndSpeed => 'ระยะเวลาและความเร็ว';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return 'ระยะเวลา $duration, ช่วงเวลา ${interval}ms';
  }

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get done => 'เสร็จแล้ว';

  @override
  String get save => 'บันทึก';

  @override
  String get block => 'ปิดกั้น';

  @override
  String get delete => 'ลบ';

  @override
  String get recents => 'ล่าสุด';

  @override
  String get contacts => 'รายชื่อผู้ติดต่อ';

  @override
  String get hideFavouritesOnRecents => 'ซ่อนรายการโปรดล่าสุด';

  @override
  String get showFavouritesOnRecents => 'แสดงรายการโปรดในรายการล่าสุด';

  @override
  String get ongoingCall => 'กำลังโทรอยู่';

  @override
  String get setAsDefaultTitle => 'ตั้งเป็น\nค่าเริ่มต้น';

  @override
  String get setAsDefaultBody =>
      'หากต้องการใช้ Nothing Dialer จะต้องตั้งค่าเป็นแอปโทรศัพท์เริ่มต้นของคุณ ซึ่งช่วยให้คุณจัดการการโทร ดูประวัติ และใช้ภาพเคลื่อนไหว Glyph ได้';

  @override
  String get setAsDefaultButton => 'ตั้งเป็นค่าเริ่มต้น';

  @override
  String get nothingDialerBrand => 'ไม่มีอะไร DIALER 1';

  @override
  String get favourites => 'รายการโปรด';

  @override
  String get addFavourite => 'เพิ่มรายการโปรด';

  @override
  String get favouritesDrawerHint =>
      'ใช้เมนูเพื่อเพิ่มผู้ติดต่อ แตะด้านนอกลิ้นชักหรือปัดปิด ติดดาวผู้ติดต่อจากรายละเอียดของพวกเขา หรือกดสายค้างไว้ใน \"ล่าสุด\"';

  @override
  String get menu => 'เมนู';

  @override
  String get noFavouritesYet =>
      'ยังไม่มีรายการโปรด\nเปิดเมนูเพื่อเพิ่มหรือติดดาวผู้ติดต่อ';

  @override
  String get contactsPermissionNeeded => 'จำเป็นต้องได้รับอนุญาตจากผู้ติดต่อ';

  @override
  String get chooseContact => 'เลือกการติดต่อ';

  @override
  String get noPhone => 'ไม่มีโทรศัพท์';

  @override
  String get pickNumber => 'เลือกหมายเลข';

  @override
  String get contactHasNoPhone => 'ผู้ติดต่อรายนี้ไม่มีหมายเลขโทรศัพท์';

  @override
  String get blockNumber => 'บล็อกหมายเลข';

  @override
  String get enterPhoneNumber => 'ป้อนหมายเลขโทรศัพท์';

  @override
  String unblockedDisplay(String display) {
    return 'เลิกบล็อก $display';
  }

  @override
  String get couldNotUnblockNumber => 'ไม่สามารถเลิกบล็อกหมายเลขได้';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked ถูกบล็อก • $matched ตรงกัน';
  }

  @override
  String get contactsPermissionMissing =>
      'สิทธิ์ในการติดต่อขาดหายไป แตะเพื่อแก้ไข';

  @override
  String get noBlockedNumbers => 'ไม่มีหมายเลขที่ถูกบล็อก';

  @override
  String get unknownContact => 'ผู้ติดต่อที่ไม่รู้จัก';

  @override
  String get unblock => 'เลิกบล็อก';

  @override
  String get permissionNeeded => 'จำเป็นต้องได้รับอนุญาต';

  @override
  String get grantPhonePermission =>
      'ให้สิทธิ์โทรศัพท์เพื่อดูประวัติการโทรของคุณ';

  @override
  String get grantContactsPermission =>
      'ให้สิทธิ์ผู้ติดต่อในการดูสมุดที่อยู่ของคุณ';

  @override
  String get openSettings => 'เปิดการตั้งค่า';

  @override
  String get tryAgain => 'ลองอีกครั้ง';

  @override
  String get couldNotLoadContacts => 'ไม่สามารถโหลดที่อยู่ติดต่อได้';

  @override
  String get contactsLoadError =>
      'มีบางอย่างผิดพลาดในการอ่านหนังสือที่อยู่ของคุณ';

  @override
  String get noContactsFound => 'ไม่พบผู้ติดต่อ';

  @override
  String get contactsEmptySubtitle => 'ผู้ติดต่อจากอุปกรณ์ของคุณจะปรากฏที่นี่';

  @override
  String get searchContacts => 'ค้นหาผู้ติดต่อ...';

  @override
  String get searchRecentCalls => 'ค้นหาการโทรล่าสุด';

  @override
  String get fromContacts => 'จากผู้ติดต่อ';

  @override
  String get recentsSearchSection => 'ค้นหาล่าสุด';

  @override
  String get recentsSearchShowContacts => 'แสดงผู้ติดต่อในการค้นหา';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'ขณะค้นหาล่าสุด ให้แสดงบุคคลที่ตรงกันจากสมุดที่อยู่ของคุณด้านล่างผลลัพธ์ประวัติการโทร';

  @override
  String get voiceSearch => 'ค้นหาด้วยเสียง';

  @override
  String get createNewContact => 'สร้างผู้ติดต่อใหม่';

  @override
  String callError(String error) {
    return 'ข้อผิดพลาดในการโทร: $error';
  }

  @override
  String get noRecentCalls => 'ไม่มีการโทรล่าสุด';

  @override
  String get callHistoryEmpty => 'ประวัติการโทรของคุณจะปรากฏที่นี่';

  @override
  String get loadMore => 'โหลดเพิ่ม';

  @override
  String get frequentlyContactedHeader => 'ติดต่อบ่อย';

  @override
  String get recentHistory => 'ประวัติศาสตร์ล่าสุด';

  @override
  String get noFavouritesRecentsHint =>
      'ยังไม่มีรายการโปรด ติดดาวรายชื่อ กดสายค้างไว้ หรือใช้แท็บรายการโปรด';

  @override
  String get copyNumber => 'คัดลอกหมายเลข';

  @override
  String get editNumberBeforeCall => 'แก้ไขเบอร์ก่อนโทร';

  @override
  String get removeFromFavourites => 'ลบออกจากรายการโปรด';

  @override
  String get addToFavourites => 'เพิ่มในรายการโปรด';

  @override
  String get blockNumberQuestion => 'บล็อคเบอร์?';

  @override
  String blockNumberConfirm(String number) {
    return 'คุณจะไม่ได้รับสายหรือข้อความจาก $number อีกต่อไป';
  }

  @override
  String get blocked => 'ถูกบล็อก';

  @override
  String get couldNotBlock => 'ไม่สามารถบล็อกได้';

  @override
  String get contactNotOnDevice => 'รายชื่อติดต่อไม่ได้บันทึกไว้ในอุปกรณ์นี้';

  @override
  String get unblocked => 'เลิกบล็อกแล้ว';

  @override
  String get numberCopied => 'คัดลอกหมายเลขแล้ว';

  @override
  String get showLess => 'แสดงน้อยลง';

  @override
  String get showAllTimes => 'แสดงทุกครั้ง.';

  @override
  String mostRecent(String time) {
    return 'ล่าสุด · $time';
  }

  @override
  String get videoCall => 'แฮงเอาท์วิดีโอ';

  @override
  String get couldNotPlaceVideoCall => 'ไม่สามารถโทรวิดีโอคอลได้';

  @override
  String get message => 'ข้อความ';

  @override
  String get couldNotOpenMessaging => 'ไม่สามารถเปิดแอปส่งข้อความได้';

  @override
  String get history => 'ประวัติศาสตร์';

  @override
  String get viewContact => 'ดูการติดต่อ';

  @override
  String get addToContact => 'เพิ่มในการติดต่อ';

  @override
  String get callTypeMissed => 'พลาด';

  @override
  String get callTypeRejected => 'ถูกปฏิเสธ';

  @override
  String get callTypeIncoming => 'เข้ามา';

  @override
  String get callTypeOutgoing => 'ขาออก';

  @override
  String get today => 'วันนี้';

  @override
  String get yesterday => 'เมื่อวาน';

  @override
  String get justNow => 'แค่ตอนนี้';

  @override
  String minutesAgo(int count) {
    return '$count นาทีที่แล้ว';
  }

  @override
  String hoursAgo(int count) {
    return '$count ชม. ที่แล้ว';
  }

  @override
  String get filterAll => 'ทั้งหมด';

  @override
  String get filterMissed => 'พลาด';

  @override
  String get filterContacts => 'รายชื่อผู้ติดต่อ';

  @override
  String get filterNonContacts => 'ไม่ใช่ผู้ติดต่อ';

  @override
  String get iconUpdated =>
      'อัปเดตไอคอนแล้ว หน้าจอหลักของคุณอาจใช้เวลาสักครู่ในการรีเฟรช';

  @override
  String get iconSavedRelease =>
      'บันทึกตัวเลือกแล้ว ไอคอนหน้าจอหลักจะอัปเดตในเวอร์ชันรีลีส';

  @override
  String couldNotChangeIcon(String error) {
    return 'ไม่สามารถเปลี่ยนไอคอน: $error';
  }

  @override
  String get launcherClassicBlack => 'คลาสสิค (สีดำ)';

  @override
  String get launcherLight => 'แสงสว่าง';

  @override
  String get launcherNothingRed => 'ไม่มีอะไรเป็นสีแดง';

  @override
  String get launcherDarkGrey => 'สีเทาเข้ม';

  @override
  String get launcherCream => 'ครีม';

  @override
  String get launcherRetroPhone => 'โทรศัพท์ย้อนยุค';

  @override
  String get launcherRetroPhoneLight => 'โทรศัพท์ย้อนยุค (เบา)';

  @override
  String get voiceSearchUnavailable =>
      'การค้นหาด้วยเสียงไม่พร้อมใช้งานบนอุปกรณ์นี้';

  @override
  String voiceSearchFailed(String error) {
    return 'การค้นหาด้วยเสียงล้มเหลว: $error';
  }

  @override
  String get customColor => 'กำหนดเอง';

  @override
  String get selectColor => 'เลือกสี';

  @override
  String get reset => 'รีเซ็ต';

  @override
  String get simPickerTitle => 'เลือกซิม';

  @override
  String get simChooseForCall => 'เลือกซิมสำหรับการโทรนี้';

  @override
  String get defaultSimAsk => 'ถามทุกครั้ง.';

  @override
  String defaultSimFixed(int slot) {
    return 'ซิม $slot';
  }

  @override
  String get contactDetails => 'รายละเอียดการติดต่อ';

  @override
  String get call => 'เรียก';

  @override
  String get share => 'แบ่งปัน';

  @override
  String get favourite => 'ที่ชื่นชอบ';

  @override
  String get unfavourite => 'ไม่เป็นที่ชื่นชอบ';

  @override
  String get blockContact => 'บล็อกการติดต่อ';

  @override
  String get unblockContact => 'เลิกบล็อกผู้ติดต่อ';

  @override
  String get deleteContact => 'ลบผู้ติดต่อ';

  @override
  String get phone => 'โทรศัพท์';

  @override
  String get email => 'อีเมล';

  @override
  String get ringtone => 'ริงโทน';

  @override
  String get defaultRingtone => 'ค่าเริ่มต้น';

  @override
  String get simForContact => 'ซิมสำหรับผู้ติดต่อรายนี้';

  @override
  String get callHistoryTitle => 'ประวัติการโทร';

  @override
  String get noCallsWithNumber => 'ไม่มีการโทรด้วยหมายเลขนี้';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '$minutesม $secondsวิ';
  }

  @override
  String durationSeconds(int seconds) {
    return '$secondsวิ';
  }

  @override
  String get glyphAnimationStyle => 'แอนิเมชั่นสัญลักษณ์';

  @override
  String get inCallGlyphAnimationStyle => 'ภาพเคลื่อนไหว Glyph ในการโทร';

  @override
  String get recordsOff => 'ปิด';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'ซิมเริ่มต้น';

  @override
  String get nothingPhoneOnly => 'ไม่มีอะไรโทรศัพท์เท่านั้น';

  @override
  String get nothingPhoneOnlySubtitle => 'คุณสมบัติ Glyph ต้องใช้โทรศัพท์อะไร';

  @override
  String get custom => 'กำหนดเอง';

  @override
  String presetColorHex(String hex) {
    return 'ที่ตั้งไว้ล่วงหน้า · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'กำหนดเอง · $hex';
  }

  @override
  String get oneContact => 'ผู้ติดต่อ 1 ราย';

  @override
  String upToContacts(int count) {
    return 'มากถึง $count ผู้ติดต่อ';
  }

  @override
  String get answerButtonTapSubtitle => 'แตะปุ่มเพื่อรับสาย';

  @override
  String get filterCalls => 'กรองการโทร';

  @override
  String get filterTooltip => 'กรอง';

  @override
  String get settingsTooltip => 'การตั้งค่า';

  @override
  String get filterAllSubtitle => 'บันทึกการโทรทั้งหมด';

  @override
  String get filterMissedSubtitle => 'พลาดแล้วถูกปฏิเสธ';

  @override
  String get filterContactsSubtitle => 'การโทรตรงกับรายชื่อที่บันทึกไว้';

  @override
  String get filterNonContactsSubtitle => 'ตัวเลขไม่อยู่ในสมุดที่อยู่ของคุณ';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'สายที่กำลังสนทนาอยู่: $detail';
  }

  @override
  String get defaultSimForCalls => 'ซิมเริ่มต้นสำหรับการโทร';

  @override
  String get blinkInterval => 'ระยะกะพริบตา';

  @override
  String get close => 'ปิด';

  @override
  String get frequentlyContactedInfoBody =>
      'แสดงหมายเลขโทรศัพท์ที่คุณโทรบ่อยที่สุดที่ด้านบนของแท็บล่าสุด โดยพิจารณาจากจำนวนสายเข้า โทรออก สายที่ไม่ได้รับ หรือสายปฏิเสธที่คุณมีในแต่ละหมายเลขในช่วงเวลาที่คุณเลือก\n\nจำนวนบันทึก: ตั้งค่าเป็น 0 เพื่อปิดสิ่งนี้ ใช้ 1–20 เพื่อแสดงผู้ติดต่อยอดนิยมจำนวนมาก\n\nระยะเวลาจะใช้เฉพาะเมื่อมีการแสดงผู้ติดต่ออย่างน้อยหนึ่งรายการเท่านั้น';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count ไฟ ความเร็ว ${ms}ms';
  }

  @override
  String get deleteContactQuestion => 'ลบผู้ติดต่อใช่ไหม';

  @override
  String get deleteContactBody =>
      'ผู้ติดต่อนี้จะถูกลบออกจากอุปกรณ์ของคุณอย่างถาวร';

  @override
  String get blockContactQuestion => 'บล็อกการติดต่อ?';

  @override
  String get unblockContactQuestion => 'เลิกบล็อกผู้ติดต่อ?';

  @override
  String get blockContactBody =>
      'คุณจะไม่ได้รับสายหรือข้อความจากผู้ติดต่อรายนี้อีกต่อไป';

  @override
  String get unblockContactBody =>
      'คุณจะเริ่มรับสายและข้อความจากผู้ติดต่อรายนี้';

  @override
  String get contactBlocked => 'ผู้ติดต่อถูกบล็อก';

  @override
  String get contactUnblocked => 'ยกเลิกการปิดกั้นการติดต่อ';

  @override
  String get noPhoneNumbersToBlock => 'ไม่มีหมายเลขโทรศัพท์ที่จะบล็อก';

  @override
  String get simSameAsSystem => 'เช่นเดียวกับระบบ';

  @override
  String get simSameAsSystemSubtitle => 'ทำตามซิมเริ่มต้นในการตั้งค่า';

  @override
  String get simAskEveryTimeForContact =>
      'แสดงเครื่องมือเลือกซิมสำหรับผู้ติดต่อรายนี้เสมอ';

  @override
  String get ringtoneSetForContact =>
      'เสียงเรียกเข้าที่ตั้งค่าทั่วโลกสำหรับผู้ติดต่อรายนี้';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'ไม่สามารถเลือกเสียงเรียกเข้า: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'ข้อผิดพลาด: $error';
  }

  @override
  String get noCallHistoryFound => 'ไม่พบประวัติการโทร';

  @override
  String get speedDialVoicemail => 'โทรด่วน: ข้อความเสียง';

  @override
  String shareContactSubject(String name) {
    return 'ติดต่อ: $name';
  }

  @override
  String get contactInfo => 'ข้อมูลการติดต่อ';

  @override
  String get dontAskAgainSim => 'อย่าถามอีก';

  @override
  String get simDontAskAgainSubtitle =>
      'ใช้ซิมนี้เป็นค่าเริ่มต้น (เปลี่ยนในการตั้งค่า)';

  @override
  String get addContact => 'เพิ่มผู้ติดต่อ';

  @override
  String get createContact => 'สร้างการติดต่อ';

  @override
  String get paste => 'แปะ';

  @override
  String get clear => 'ชัดเจน';

  @override
  String get returnToCall => 'โทรกลับไป';

  @override
  String get numberOfRecordsTitle => 'จำนวนเรกคอร์ด';

  @override
  String get recordsPickerSubtitle =>
      'จำนวนรายการที่ติดต่อบ่อยที่จะแสดง (0 = ปิด)';

  @override
  String get torchInfoTitle => 'คบเพลิงกะพริบ';

  @override
  String get torchInfoBody =>
      'กะพริบกล้องระหว่างการโทรเข้า โทรออก หรือกำลังสนทนาอยู่ เป็นอิสระจากไฟสัญลักษณ์';

  @override
  String get glyphMapTitle => 'เค้าโครงสัญลักษณ์';

  @override
  String get glyphMapBody =>
      'Nothing Phone 1 โซน Glyph LED ภาพเคลื่อนไหวทั้งขาออกและระหว่างสายใช้ช่องทางเหล่านี้';

  @override
  String get answerMethodTitle => 'วิธีการตอบ';

  @override
  String get glyphOutgoingCallStyleTitle => 'รูปแบบการโทรออก';

  @override
  String get glyphInCallAnimationTitle => 'สัญลักษณ์ภาพเคลื่อนไหวขณะโทร';

  @override
  String get themePickerTitle => 'ธีม';

  @override
  String get torchIncomingTitle => 'ไฟฉายสายเรียกเข้า';

  @override
  String get torchOutgoingTitle => 'ไฟฉายโทรออก';

  @override
  String get torchOngoingTitle => 'คบไฟสายที่กำลังสนทนาอยู่';

  @override
  String get timePeriodTitle => 'ช่วงเวลา';

  @override
  String get ok => 'ตกลง';

  @override
  String get confirmDeleteCall => 'ลบการโทรนี้ออกจากประวัติใช่ไหม';

  @override
  String get confirmDeleteAllCalls => 'ลบการโทรทั้งหมดด้วยหมายเลขนี้ใช่ไหม';

  @override
  String get whatsapp => 'วอทส์แอพพ์';

  @override
  String get sendMessage => 'ส่งข้อความ';

  @override
  String get addToExistingContactAction => 'เพิ่มไปยังผู้ติดต่อ';

  @override
  String get mobileLabel => 'มือถือ';

  @override
  String get callingSimForContactTitle =>
      'กำลังโทรหา SIM สำหรับรายชื่อติดต่อนี้';

  @override
  String get contactSettings => 'การตั้งค่าการติดต่อ';

  @override
  String get setCallingSim => 'ตั้งค่าซิมการโทร';

  @override
  String get contactRingtone => 'เสียงเรียกเข้าผู้ติดต่อ';

  @override
  String get shareContact => 'แบ่งปันการติดต่อ';

  @override
  String get blockNumbers => 'บล็อกหมายเลข';

  @override
  String get unblockNumbers => 'เลิกบล็อกหมายเลข';

  @override
  String get connectedApps => 'แอพที่เชื่อมต่อ';

  @override
  String get simNotSet => 'ไม่ได้ตั้งค่า';

  @override
  String get ringtoneDefault => 'ค่าเริ่มต้น';

  @override
  String get customRingtone => 'กำหนดเอง';

  @override
  String get aboutSection => 'เกี่ยวกับ';

  @override
  String get aboutFeedbackSection => 'เกี่ยวกับและข้อเสนอแนะ';

  @override
  String get aboutDescription =>
      'ไม่มีสิ่งใด Dialer ที่เป็นโอเพ่นซอร์ส หากคุณเป็นนักพัฒนา คุณสามารถสำรวจโค้ดและมีส่วนร่วมได้';

  @override
  String get aboutViewSource => 'ดูบน GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'ไม่สามารถเปิดลิงก์ได้';

  @override
  String get reviewSection => 'ทบทวน';

  @override
  String get reviewDescription =>
      'เพลิดเพลินกับ Nothing Dialer ใช่ไหม? การให้คะแนนของคุณใน Google Play ช่วยให้ผู้อื่นค้นพบแอปนี้';

  @override
  String get reviewRateOnPlay => 'อัตราบน Google Play';

  @override
  String get reviewRateOnPlaySubtitle => 'ให้คะแนนโดยไม่ต้องออกจากแอป';

  @override
  String get reviewCouldNotOpen => 'ไม่สามารถเปิด Google Play';

  @override
  String get breathSpeed => 'ความเร็วลมหายใจ';

  @override
  String get breathSpeedBlinkHint => 'ล่าง = กะพริบตา สูงขึ้น = หายใจช้าๆ';

  @override
  String get speedSliderHint => 'ต่ำ = เร็วขึ้น สูงขึ้น = ช้าลง';

  @override
  String get swatchDefault => 'ค่าเริ่มต้น';

  @override
  String get customAccentColorPicker => 'สีเน้นแบบกำหนดเอง';

  @override
  String get customLightBackgroundPicker => 'พื้นหลังแสงที่กำหนดเอง';

  @override
  String get customDarkBackgroundPicker => 'พื้นหลังสีเข้มที่กำหนดเอง';

  @override
  String get customCallBackgroundPicker => 'พื้นหลังการโทรที่กำหนดเอง';

  @override
  String get ongoingCallStyleTitle => 'รูปแบบการโทรที่กำลังดำเนินอยู่';

  @override
  String get glyphMapUnavailable => 'แผนที่สัญลักษณ์ไม่พร้อมใช้งาน';

  @override
  String get animationDelayRange =>
      'ความล่าช้าของภาพเคลื่อนไหว (1 วินาที - 10 วินาที)';

  @override
  String get animationDelayRangeSingle =>
      'ความล่าช้าของภาพเคลื่อนไหว (0.1 วินาที - 10 วินาที)';

  @override
  String get inCallMute => 'ปิดเสียง';

  @override
  String get inCallKeypad => 'ปุ่มกด';

  @override
  String get inCallSpeaker => 'วิทยากร';

  @override
  String get inCallMore => 'มากกว่า';

  @override
  String get inCallBluetooth => 'บลูทูธ';

  @override
  String get inCallPhone => 'โทรศัพท์';

  @override
  String get inCallAddCall => 'เพิ่มการโทร';

  @override
  String get inCallChangeSim => 'เปลี่ยนซิม';

  @override
  String get inCallDecline => 'ปฏิเสธ';

  @override
  String get inCallAnswer => 'คำตอบ';

  @override
  String get inCallMessage => 'ข้อความ';

  @override
  String get inCallCalling => 'กำลังโทร...';

  @override
  String get inCallIncoming => 'สายเรียกเข้า';

  @override
  String get inCallSelectSim => 'เลือกซิม...';

  @override
  String get inCallSwitchingSim => 'กำลังสลับซิม...';

  @override
  String get inCallCallEnded => 'การโทรสิ้นสุดลง';

  @override
  String inCallCallingVia(String sim) {
    return 'โทรผ่าน $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'โทรผ่าน <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'เลือกซิมสำหรับการโทรนี้';

  @override
  String get inCallDragAnswerDecline =>
      'ลากไปทางขวาเพื่อตอบ · ลากไปทางซ้ายเพื่อปฏิเสธ';

  @override
  String inCallMobileNumber(String number) {
    return 'มือถือ $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (ปัจจุบัน)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'โทรผ่าน <b>$sim</b> จาก';
  }

  @override
  String get inCallCallFrom => 'โทรจาก';

  @override
  String get inCallUnknown => 'ไม่ทราบ';

  @override
  String get selectContactRingtone => 'เลือกเสียงเรียกเข้าผู้ติดต่อ';

  @override
  String get speakToSearchPrompt => 'พูดเพื่อค้นหา';

  @override
  String get phonePermissionRequired => 'ต้องได้รับอนุญาตจากโทรศัพท์';

  @override
  String callFailed(String error) {
    return 'โทรล้มเหลว: $error';
  }

  @override
  String get callPermissionDenied => 'การอนุญาตการโทรถูกปฏิเสธ';

  @override
  String get alreadyDefaultDialer => 'ตั้งเป็นตัวเรียกเลขหมายเริ่มต้นแล้ว';

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
