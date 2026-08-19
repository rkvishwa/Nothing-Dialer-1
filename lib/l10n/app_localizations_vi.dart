// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'Trình quay số không có gì';

  @override
  String get settings => 'Cài đặt';

  @override
  String get settingsSearchHint => 'Cài đặt tìm kiếm';

  @override
  String get settingsSearchNoResults => 'Không tìm thấy cài đặt nào';

  @override
  String get general => 'Tổng quan';

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
  String get theme => 'chủ đề';

  @override
  String get themeSystemDefault => 'Mặc định hệ thống';

  @override
  String get themeLight => 'Ánh sáng';

  @override
  String get themeDark => 'Tối tăm';

  @override
  String get themeFollowSystem => 'Thực hiện theo cài đặt hệ thống';

  @override
  String get themeAlwaysLight => 'Luôn sử dụng giao diện nhẹ nhàng';

  @override
  String get themeAlwaysDark => 'Luôn sử dụng giao diện tối';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get languageDeviceDefault => 'Mặc định của thiết bị';

  @override
  String get languagePickerTitle => 'Ngôn ngữ';

  @override
  String get languageSearchHint => 'Tìm kiếm ngôn ngữ';

  @override
  String get font => 'Phông chữ';

  @override
  String get fontSystem => 'Mặc định hệ thống';

  @override
  String get fontNdot => 'Không có gì (NDot)';

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
      'Tải xuống phông chữ không thành công. Hãy kiểm tra kết nối của bạn và thử lại.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Phông chữ';

  @override
  String get fontPreviewSample => 'Trình quay số không có gì';

  @override
  String get fontAppWide => 'Phông chữ ứng dụng';

  @override
  String get fontApplyTo => 'Áp dụng cho';

  @override
  String get fontApplyEntireApp => 'Toàn bộ ứng dụng';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Phông chữ giống nhau ở mọi nơi, kể cả trong cuộc gọi';

  @override
  String get fontApplyTitlesOnly => 'Tiêu đề & tiêu đề';

  @override
  String get fontApplyTitlesOnlySubtitle => 'Chỉ tiêu đề lớn và tiêu đề phần';

  @override
  String get fontApplyCustomize => 'Tùy chỉnh';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Chọn phông chữ cho mỗi màn hình và loại văn bản';

  @override
  String get fontCustomizeSection => 'Tùy chỉnh theo màn hình';

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
  String get fontRolePageTitle => 'Tiêu đề trang';

  @override
  String get fontRoleSectionHeader => 'Tiêu đề phần';

  @override
  String get fontRolePrimary => 'Văn bản chính';

  @override
  String get fontRoleSecondary => 'Văn bản phụ';

  @override
  String get fontRoleButton => 'Nút';

  @override
  String get fontRoleDialKey => 'Phím quay số';

  @override
  String get fontSurfaceRecents => 'Gần đây';

  @override
  String get fontSurfaceContacts => 'Danh bạ';

  @override
  String get fontSurfaceSettings => 'Cài đặt';

  @override
  String get fontSurfaceDialpad => 'Bàn phím quay số';

  @override
  String get fontSurfaceShell => 'Điều hướng';

  @override
  String get fontSurfaceDefaultDialer => 'Lời nhắc quay số mặc định';

  @override
  String get fontSurfaceFavourites => 'Yêu thích';

  @override
  String get fontSurfaceBlocked => 'Số bị chặn';

  @override
  String get fontSurfaceContactDetail => 'Chi tiết liên hệ';

  @override
  String get fontSurfaceCallHistory => 'Lịch sử cuộc gọi';

  @override
  String get fontSurfaceSheets => 'Tờ & bộ chọn';

  @override
  String get fontSurfaceInCall => 'Màn hình trong cuộc gọi';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font - toàn bộ ứng dụng';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — chỉ tiêu đề';
  }

  @override
  String get fontSubtitleCustomize => 'Tùy chỉnh trên mỗi màn hình';

  @override
  String get background => 'Lý lịch';

  @override
  String get accent => 'Giọng';

  @override
  String get lightBackground => 'Nền sáng';

  @override
  String get lightAccent => 'Giọng nhẹ';

  @override
  String get darkBackground => 'Nền tối';

  @override
  String get darkAccent => 'Giọng tối';

  @override
  String get callBackground => 'Nền cuộc gọi';

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
  String get appIcon => 'Biểu tượng ứng dụng';

  @override
  String get answerMethod => 'Phương pháp trả lời';

  @override
  String get answerSlide => 'Trượt để trả lời';

  @override
  String get answerSlideSubtitle =>
      'Vuốt sang trái/phải trên thanh, giống như Google Phone';

  @override
  String get answerButton => 'Nhấn nút';

  @override
  String get answerButtonSubtitle => 'Nhấn vào nút trả lời hoặc từ chối';

  @override
  String get answerHuawei => 'phong cách Huawei';

  @override
  String get answerHuaweiSubtitle =>
      'Kéo vòng tròn vào điện thoại xanh để trả lời';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — kéo sang xanh / đỏ';

  @override
  String get calling => 'Đang gọi';

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
  String get defaultSim => 'SIM mặc định';

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
  String get askEveryTime => 'Hỏi mọi lúc';

  @override
  String get askEveryTimeSubtitle => 'Hiển thị bộ chọn SIM trước mỗi cuộc gọi';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Không tìm thấy thẻ SIM';

  @override
  String couldNotLoadSims(String error) {
    return 'Không thể tải SIM: $error';
  }

  @override
  String get allFavourites => 'Tất cả mục yêu thích';

  @override
  String get allFavouritesSubtitle => 'Sắp xếp lại, xóa và thêm từ danh bạ';

  @override
  String get blockedNumbers => 'Số bị chặn';

  @override
  String get blockedNumbersSubtitle => 'Xem và bỏ chặn số';

  @override
  String get soundsAndVibration => 'Âm thanh và độ rung';

  @override
  String get soundsAndVibrationSubtitle =>
      'Nhạc chuông, rung, âm bàn phím quay số';

  @override
  String couldNotOpenSettings(String error) {
    return 'Không thể mở cài đặt: $error';
  }

  @override
  String get frequentlyContacted => 'Thường xuyên liên hệ';

  @override
  String get numberOfRecords => 'Số lượng hồ sơ';

  @override
  String get timePeriod => 'Khoảng thời gian';

  @override
  String get periodLast24Hours => '24 giờ qua';

  @override
  String get periodLast24HoursSubtitle => 'Cuộc gọi từ ngày hôm qua';

  @override
  String get periodLast7Days => '7 ngày qua';

  @override
  String get periodLast7DaysSubtitle => 'Cuộc gọi từ tuần trước';

  @override
  String get periodLast30Days => '30 ngày qua';

  @override
  String get periodLast30DaysSubtitle => 'Cuộc gọi từ tháng trước';

  @override
  String get periodLast12Months => '12 tháng qua';

  @override
  String get periodLast12MonthsSubtitle => 'Những cuộc gọi từ năm ngoái';

  @override
  String get periodAllTime => 'Mọi lúc';

  @override
  String get periodAllTimeSubtitle => 'Toàn bộ lịch sử cuộc gọi';

  @override
  String get frequentMaxOff => 'Tắt';

  @override
  String frequentMaxCount(int count) {
    return '$count liên hệ';
  }

  @override
  String get torchBlink => 'Ngọn đuốc nhấp nháy';

  @override
  String get torchIncomingCall => 'Đèn báo cuộc gọi đến';

  @override
  String get torchOutgoingCall => 'Đèn báo cuộc gọi đi';

  @override
  String get torchOngoingCall => 'Ngọn đuốc cuộc gọi đang diễn ra';

  @override
  String get torchIncomingInterval => 'Khoảng thời gian nhấp nháy đến';

  @override
  String get torchOutgoingInterval => 'Khoảng thời gian nhấp nháy đi';

  @override
  String get torchOngoingInterval => 'Khoảng thời gian chớp mắt liên tục';

  @override
  String get torchOff => 'Tắt';

  @override
  String get torchOffIncomingSubtitle => 'Không có đèn pin khi đổ chuông';

  @override
  String get torchOffOutgoingSubtitle => 'Không có đèn pin khi quay số';

  @override
  String get torchOffOngoingSubtitle => 'Không có đèn pin trong khi đang gọi';

  @override
  String get torchFixedInterval => 'Khoảng thời gian cố định';

  @override
  String get torchFixedIntervalSubtitle => 'Nhấp nháy ở tốc độ đã đặt';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds giây';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds chớp mắt';
  }

  @override
  String get flashlightUnavailable => 'Đèn pin không có sẵn trên thiết bị này';

  @override
  String get glyphLights => 'Đèn Glyph';

  @override
  String get glyphCallingAnimation => 'Hoạt hình gọi Glyph';

  @override
  String get glyphOngoingAnimation => 'Hoạt hình cuộc gọi đang diễn ra Glyph';

  @override
  String get glyphNone => 'Không có';

  @override
  String get glyphNoneOutgoingSubtitle => 'Tắt đèn Glyph cho cuộc gọi đi';

  @override
  String get glyphNoneInCallSubtitle =>
      'Tắt đèn Glyph khi đang thực hiện cuộc gọi';

  @override
  String get glyphBreathProgress => 'Hơi thở & Tiến bộ';

  @override
  String get glyphBreathProgressSubtitle =>
      'Đèn thở trong khi dòng lấp đầy trong hơn 65 giây';

  @override
  String get glyphAccumulate => 'tích lũy';

  @override
  String get glyphAccumulateSubtitle => 'Tích lũy hoạt ảnh trên đèn C1-C4';

  @override
  String get glyphSingle => 'Đơn';

  @override
  String get glyphSingleSubtitle => 'Ánh sáng đơn di chuyển qua C1-C4';

  @override
  String get glyphBreath => 'Hơi thở';

  @override
  String get glyphBreathSubtitle => 'Chọn đèn và tốc độ';

  @override
  String get glyphSteady => 'Vững chắc';

  @override
  String get glyphSteadySubtitle => 'Đèn đã chọn vẫn sáng';

  @override
  String get breathSettings => 'Cài đặt hơi thở';

  @override
  String get activeLights => 'Đèn hoạt động';

  @override
  String lightsCount(int count) {
    return '$count đèn';
  }

  @override
  String get speedSettings => 'Cài đặt tốc độ';

  @override
  String speedSettingsDelay(int ms) {
    return 'Độ trễ ${ms}ms';
  }

  @override
  String get durationAndSpeed => 'Thời lượng & Tốc độ';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return 'Thời lượng ${duration}s, khoảng thời gian ${interval}ms';
  }

  @override
  String get cancel => 'Hủy bỏ';

  @override
  String get done => 'Xong';

  @override
  String get save => 'Cứu';

  @override
  String get block => 'Khối';

  @override
  String get delete => 'Xóa bỏ';

  @override
  String get recents => 'Gần đây';

  @override
  String get contacts => 'Danh bạ';

  @override
  String get hideFavouritesOnRecents => 'Ẩn mục yêu thích trên Gần đây';

  @override
  String get showFavouritesOnRecents => 'Hiển thị mục yêu thích trên Gần đây';

  @override
  String get ongoingCall => 'Cuộc gọi đang diễn ra';

  @override
  String get setAsDefaultTitle => 'ĐẶT LÀ\nMẶC ĐỊNH';

  @override
  String get setAsDefaultBody =>
      'Để sử dụng Nothing Dialer, nó phải được đặt làm ứng dụng điện thoại mặc định của bạn. Điều này cho phép bạn quản lý cuộc gọi, xem lịch sử và sử dụng hoạt ảnh Glyph.';

  @override
  String get setAsDefaultButton => 'ĐẶT LÀM MẶC ĐỊNH';

  @override
  String get nothingDialerBrand => 'KHÔNG GÌ ĐÓNG GÓI 1';

  @override
  String get favourites => 'Yêu thích';

  @override
  String get addFavourite => 'Thêm yêu thích';

  @override
  String get favouritesDrawerHint =>
      'Sử dụng menu để thêm liên hệ. Chạm vào bên ngoài ngăn kéo hoặc vuốt nó đóng lại. Gắn dấu sao cho một liên hệ từ thông tin chi tiết của họ hoặc nhấn và giữ một cuộc gọi trong Gần đây.';

  @override
  String get menu => 'Thực đơn';

  @override
  String get noFavouritesYet =>
      'Chưa có mục yêu thích nào.\nMở menu để thêm một liên hệ hoặc gắn dấu sao cho một liên hệ.';

  @override
  String get contactsPermissionNeeded => 'Cần có quyền liên hệ';

  @override
  String get chooseContact => 'Chọn liên hệ';

  @override
  String get noPhone => 'Không có điện thoại';

  @override
  String get pickNumber => 'Chọn số';

  @override
  String get contactHasNoPhone => 'Liên hệ này không có số điện thoại';

  @override
  String get blockNumber => 'Số khối';

  @override
  String get enterPhoneNumber => 'Nhập số điện thoại';

  @override
  String unblockedDisplay(String display) {
    return 'Đã bỏ chặn $display';
  }

  @override
  String get couldNotUnblockNumber => 'Không thể bỏ chặn số';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked bị chặn • $matched khớp';
  }

  @override
  String get contactsPermissionMissing =>
      'Quyền liên hệ bị thiếu. Nhấn để sửa.';

  @override
  String get noBlockedNumbers => 'Không có số bị chặn';

  @override
  String get unknownContact => 'Địa chỉ liên hệ không xác định';

  @override
  String get unblock => 'Bỏ chặn';

  @override
  String get permissionNeeded => 'Cần có sự cho phép';

  @override
  String get grantPhonePermission =>
      'Cấp quyền cho điện thoại để xem lịch sử cuộc gọi của bạn.';

  @override
  String get grantContactsPermission =>
      'Cấp cho người liên hệ quyền xem sổ địa chỉ của bạn.';

  @override
  String get openSettings => 'Mở cài đặt';

  @override
  String get tryAgain => 'Thử lại';

  @override
  String get couldNotLoadContacts => 'Không thể tải danh bạ';

  @override
  String get contactsLoadError => 'Đã xảy ra lỗi khi đọc sổ địa chỉ của bạn.';

  @override
  String get noContactsFound => 'Không tìm thấy địa chỉ liên hệ nào';

  @override
  String get contactsEmptySubtitle =>
      'Danh bạ từ thiết bị của bạn sẽ xuất hiện ở đây.';

  @override
  String get searchContacts => 'Tìm kiếm liên hệ…';

  @override
  String get searchRecentCalls => 'Tìm kiếm cuộc gọi gần đây';

  @override
  String get fromContacts => 'Từ danh bạ';

  @override
  String get recentsSearchSection => 'Tìm kiếm gần đây';

  @override
  String get recentsSearchShowContacts => 'Hiển thị liên hệ trong tìm kiếm';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Trong khi tìm kiếm Gần đây, cũng hiển thị những người phù hợp từ sổ địa chỉ của bạn bên dưới kết quả lịch sử cuộc gọi.';

  @override
  String get voiceSearch => 'Tìm kiếm bằng giọng nói';

  @override
  String get createNewContact => 'Tạo liên hệ mới';

  @override
  String callError(String error) {
    return 'Lỗi cuộc gọi: $error';
  }

  @override
  String get noRecentCalls => 'Không có cuộc gọi gần đây';

  @override
  String get callHistoryEmpty => 'Lịch sử cuộc gọi của bạn sẽ xuất hiện ở đây.';

  @override
  String get loadMore => 'Tải thêm';

  @override
  String get frequentlyContactedHeader => 'Thường xuyên liên lạc';

  @override
  String get recentHistory => 'Lịch sử gần đây';

  @override
  String get noFavouritesRecentsHint =>
      'Chưa có mục yêu thích nào. Gắn dấu sao cho một liên hệ, nhấn và giữ cuộc gọi hoặc sử dụng tab Yêu thích.';

  @override
  String get copyNumber => 'Sao chép số';

  @override
  String get editNumberBeforeCall => 'Chỉnh sửa số trước khi gọi';

  @override
  String get removeFromFavourites => 'Xóa khỏi mục yêu thích';

  @override
  String get addToFavourites => 'Thêm vào mục yêu thích';

  @override
  String get blockNumberQuestion => 'Chặn số?';

  @override
  String blockNumberConfirm(String number) {
    return 'Bạn sẽ không còn nhận được cuộc gọi hoặc tin nhắn từ $number.';
  }

  @override
  String get blocked => 'Bị chặn';

  @override
  String get couldNotBlock => 'Không thể chặn';

  @override
  String get contactNotOnDevice => 'Liên hệ không được lưu trên thiết bị này';

  @override
  String get unblocked => 'Đã bỏ chặn';

  @override
  String get numberCopied => 'Số đã sao chép';

  @override
  String get showLess => 'Hiển thị ít hơn';

  @override
  String get showAllTimes => 'Hiển thị tất cả thời gian';

  @override
  String mostRecent(String time) {
    return 'Gần đây nhất · $time';
  }

  @override
  String get videoCall => 'Cuộc gọi video';

  @override
  String get couldNotPlaceVideoCall =>
      'Không thể thực hiện cuộc gọi điện video';

  @override
  String get message => 'Tin nhắn';

  @override
  String get couldNotOpenMessaging => 'Không thể mở ứng dụng nhắn tin';

  @override
  String get history => 'Lịch sử';

  @override
  String get viewContact => 'Xem liên hệ';

  @override
  String get addToContact => 'Thêm vào liên hệ';

  @override
  String get callTypeMissed => 'Bỏ lỡ';

  @override
  String get callTypeRejected => 'Vật bị loại bỏ';

  @override
  String get callTypeIncoming => 'Đang đến';

  @override
  String get callTypeOutgoing => 'Hướng ngoại';

  @override
  String get today => 'Hôm nay';

  @override
  String get yesterday => 'Hôm qua';

  @override
  String get justNow => 'Vừa rồi';

  @override
  String minutesAgo(int count) {
    return '$count phút trước';
  }

  @override
  String hoursAgo(int count) {
    return '$count giờ trước';
  }

  @override
  String get filterAll => 'Tất cả';

  @override
  String get filterMissed => 'Bỏ lỡ';

  @override
  String get filterContacts => 'Danh bạ';

  @override
  String get filterNonContacts => 'Không liên lạc';

  @override
  String get iconUpdated =>
      'Biểu tượng được cập nhật. Màn hình chính của bạn có thể mất một chút thời gian để làm mới.';

  @override
  String get iconSavedRelease =>
      'Đã lưu lựa chọn. Biểu tượng màn hình chính cập nhật trong các bản phát hành.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Không thể thay đổi biểu tượng: $error';
  }

  @override
  String get launcherClassicBlack => 'Cổ điển (đen)';

  @override
  String get launcherLight => 'Ánh sáng';

  @override
  String get launcherNothingRed => 'Không có gì màu đỏ';

  @override
  String get launcherDarkGrey => 'Màu xám đậm';

  @override
  String get launcherCream => 'Kem';

  @override
  String get launcherRetroPhone => 'Điện thoại cổ điển';

  @override
  String get launcherRetroPhoneLight => 'Điện thoại cổ điển (đèn)';

  @override
  String get voiceSearchUnavailable =>
      'Tìm kiếm bằng giọng nói không khả dụng trên thiết bị này.';

  @override
  String voiceSearchFailed(String error) {
    return 'Tìm kiếm bằng giọng nói không thành công: $error';
  }

  @override
  String get customColor => 'Phong tục';

  @override
  String get selectColor => 'Chọn màu';

  @override
  String get reset => 'Cài lại';

  @override
  String get simPickerTitle => 'Chọn SIM';

  @override
  String get simChooseForCall => 'Chọn SIM cho cuộc gọi này';

  @override
  String get defaultSimAsk => 'Hỏi mọi lúc';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Chi tiết liên hệ';

  @override
  String get call => 'Gọi';

  @override
  String get share => 'Chia sẻ';

  @override
  String get favourite => 'Yêu thích';

  @override
  String get unfavourite => 'Không yêu thích';

  @override
  String get blockContact => 'Chặn liên hệ';

  @override
  String get unblockContact => 'Bỏ chặn liên hệ';

  @override
  String get deleteContact => 'Xóa liên hệ';

  @override
  String get phone => 'Điện thoại';

  @override
  String get email => 'E-mail';

  @override
  String get ringtone => 'Nhạc chuông';

  @override
  String get defaultRingtone => 'Mặc định';

  @override
  String get simForContact => 'SIM cho liên hệ này';

  @override
  String get callHistoryTitle => 'Lịch sử cuộc gọi';

  @override
  String get noCallsWithNumber => 'Không có cuộc gọi nào với số này';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '$seconds giây';
  }

  @override
  String get glyphAnimationStyle => 'Hoạt hình Glyph';

  @override
  String get inCallGlyphAnimationStyle => 'Hoạt ảnh Glyph trong cuộc gọi';

  @override
  String get recordsOff => 'Tắt';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'SIM mặc định';

  @override
  String get nothingPhoneOnly => 'Không có gì Chỉ có điện thoại';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Tính năng Glyph yêu cầu Nothing Phone';

  @override
  String get custom => 'Phong tục';

  @override
  String presetColorHex(String hex) {
    return 'Đặt trước · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Tùy chỉnh · $hex';
  }

  @override
  String get oneContact => '1 liên hệ';

  @override
  String upToContacts(int count) {
    return 'Lên tới $count liên hệ';
  }

  @override
  String get answerButtonTapSubtitle => 'Nhấn nút để trả lời';

  @override
  String get filterCalls => 'Lọc cuộc gọi';

  @override
  String get filterTooltip => 'Lọc';

  @override
  String get settingsTooltip => 'Cài đặt';

  @override
  String get filterAllSubtitle => 'Toàn bộ nhật ký cuộc gọi';

  @override
  String get filterMissedSubtitle => 'Bị bỏ lỡ và bị từ chối';

  @override
  String get filterContactsSubtitle =>
      'Cuộc gọi trùng khớp với một liên hệ đã lưu';

  @override
  String get filterNonContactsSubtitle =>
      'Những số không có trong sổ địa chỉ của bạn';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Cuộc gọi đang diễn ra: $detail';
  }

  @override
  String get defaultSimForCalls => 'SIM mặc định cho cuộc gọi';

  @override
  String get blinkInterval => 'Khoảng thời gian chớp mắt';

  @override
  String get close => 'Đóng';

  @override
  String get frequentlyContactedInfoBody =>
      'Hiển thị các số điện thoại được gọi nhiều nhất của bạn ở đầu tab Gần đây, dựa trên số lượng cuộc gọi đến, đi, nhỡ hoặc bị từ chối mà bạn có với mỗi số trong khoảng thời gian bạn chọn.\n\nSố lượng bản ghi: đặt thành 0 để tắt tính năng này. Sử dụng 1–20 để hiển thị nhiều địa chỉ liên hệ hàng đầu.\n\nKhoảng thời gian chỉ áp dụng khi có ít nhất một liên hệ được hiển thị.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count đèn, tốc độ ${ms}ms';
  }

  @override
  String get deleteContactQuestion => 'Xóa liên hệ?';

  @override
  String get deleteContactBody =>
      'Liên hệ này sẽ bị xóa vĩnh viễn khỏi thiết bị của bạn.';

  @override
  String get blockContactQuestion => 'Chặn liên lạc?';

  @override
  String get unblockContactQuestion => 'Bỏ chặn liên hệ?';

  @override
  String get blockContactBody =>
      'Bạn sẽ không còn nhận được cuộc gọi hoặc tin nhắn từ liên hệ này nữa.';

  @override
  String get unblockContactBody =>
      'Bạn sẽ bắt đầu nhận cuộc gọi và tin nhắn từ liên hệ này.';

  @override
  String get contactBlocked => 'Liên hệ bị chặn';

  @override
  String get contactUnblocked => 'Đã bỏ chặn liên hệ';

  @override
  String get noPhoneNumbersToBlock => 'Không có số điện thoại nào để chặn';

  @override
  String get simSameAsSystem => 'Tương tự như hệ thống';

  @override
  String get simSameAsSystemSubtitle => 'Theo dõi SIM mặc định trong Cài đặt';

  @override
  String get simAskEveryTimeForContact =>
      'Luôn hiển thị bộ chọn SIM cho liên hệ này';

  @override
  String get ringtoneSetForContact =>
      'Nhạc chuông được đặt chung cho liên hệ này';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Không chọn được nhạc chuông: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Lỗi: $error';
  }

  @override
  String get noCallHistoryFound => 'Không tìm thấy lịch sử cuộc gọi';

  @override
  String get speedDialVoicemail => 'Quay số nhanh: Thư thoại';

  @override
  String shareContactSubject(String name) {
    return 'Liên hệ: $name';
  }

  @override
  String get contactInfo => 'Thông tin liên hệ';

  @override
  String get dontAskAgainSim => 'Đừng hỏi lại';

  @override
  String get simDontAskAgainSubtitle =>
      'Sử dụng SIM này làm mặc định (thay đổi trong Cài đặt)';

  @override
  String get addContact => 'Thêm liên hệ';

  @override
  String get createContact => 'Tạo liên hệ';

  @override
  String get paste => 'Dán';

  @override
  String get clear => 'Thông thoáng';

  @override
  String get returnToCall => 'Quay lại cuộc gọi';

  @override
  String get numberOfRecordsTitle => 'Số lượng hồ sơ';

  @override
  String get recordsPickerSubtitle =>
      'Có bao nhiêu mục được liên hệ thường xuyên để hiển thị (0 = tắt)';

  @override
  String get torchInfoTitle => 'Ngọn đuốc nhấp nháy';

  @override
  String get torchInfoBody =>
      'Nhấp nháy đèn flash của máy ảnh trong khi có cuộc gọi đến, cuộc gọi đi hoặc cuộc gọi đang diễn ra. Độc lập với đèn Glyph.';

  @override
  String get glyphMapTitle => 'Bố cục Glyph';

  @override
  String get glyphMapBody =>
      'Không có gì Điện thoại 1 Vùng LED Glyph. Hoạt ảnh đi và trong cuộc gọi sử dụng các kênh này.';

  @override
  String get answerMethodTitle => 'Phương pháp trả lời';

  @override
  String get glyphOutgoingCallStyleTitle => 'Kiểu cuộc gọi đi';

  @override
  String get glyphInCallAnimationTitle => 'Hoạt ảnh trong cuộc gọi Glyph';

  @override
  String get themePickerTitle => 'chủ đề';

  @override
  String get torchIncomingTitle => 'Đèn báo cuộc gọi đến';

  @override
  String get torchOutgoingTitle => 'Đèn báo cuộc gọi đi';

  @override
  String get torchOngoingTitle => 'Ngọn đuốc cuộc gọi đang diễn ra';

  @override
  String get timePeriodTitle => 'Khoảng thời gian';

  @override
  String get ok => 'ĐƯỢC RỒI';

  @override
  String get confirmDeleteCall => 'Xóa cuộc gọi này khỏi lịch sử?';

  @override
  String get confirmDeleteAllCalls => 'Xóa tất cả cuộc gọi có số này?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Gửi tin nhắn';

  @override
  String get addToExistingContactAction => 'Thêm vào một liên hệ';

  @override
  String get mobileLabel => 'Điện thoại di động';

  @override
  String get callingSimForContactTitle => 'Đang gọi SIM cho liên hệ này';

  @override
  String get contactSettings => 'Cài đặt liên hệ';

  @override
  String get setCallingSim => 'Đặt SIM gọi điện';

  @override
  String get contactRingtone => 'Nhạc chuông liên lạc';

  @override
  String get shareContact => 'Chia sẻ liên hệ';

  @override
  String get blockNumbers => 'Chặn số';

  @override
  String get unblockNumbers => 'Bỏ chặn số';

  @override
  String get connectedApps => 'Ứng dụng được kết nối';

  @override
  String get simNotSet => 'Chưa đặt';

  @override
  String get ringtoneDefault => 'Mặc định';

  @override
  String get customRingtone => 'Phong tục';

  @override
  String get aboutSection => 'Về';

  @override
  String get aboutFeedbackSection => 'Giới thiệu & phản hồi';

  @override
  String get aboutDescription =>
      'Nothing Dialer là mã nguồn mở. Nếu bạn là nhà phát triển, bạn có thể khám phá mã và đóng góp.';

  @override
  String get aboutViewSource => 'Xem trên GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Không thể mở liên kết';

  @override
  String get reviewSection => 'Ôn tập';

  @override
  String get reviewDescription =>
      'Bạn đang thích thú với Trình quay số không có gì? Xếp hạng của bạn trên Google Play giúp người khác tìm thấy ứng dụng.';

  @override
  String get reviewRateOnPlay => 'Xếp hạng trên Google Play';

  @override
  String get reviewRateOnPlaySubtitle => 'Opens the Play Store listing';

  @override
  String get reviewCouldNotOpen => 'Không thể mở Google Play';

  @override
  String get breathSpeed => 'Tốc độ thở';

  @override
  String get breathSpeedBlinkHint => 'Thấp hơn = Nháy mắt, Cao hơn = Thở chậm';

  @override
  String get speedSliderHint => 'Thấp hơn = Nhanh hơn, Cao hơn = Chậm hơn';

  @override
  String get swatchDefault => 'Mặc định';

  @override
  String get customAccentColorPicker => 'Màu nhấn tùy chỉnh';

  @override
  String get customLightBackgroundPicker => 'Nền sáng tùy chỉnh';

  @override
  String get customDarkBackgroundPicker => 'Nền tối tùy chỉnh';

  @override
  String get customCallBackgroundPicker => 'Nền cuộc gọi tùy chỉnh';

  @override
  String get ongoingCallStyleTitle => 'Kiểu cuộc gọi đang diễn ra';

  @override
  String get glyphMapUnavailable => 'Bản đồ Glyph không có sẵn';

  @override
  String get animationDelayRange => 'Độ trễ hoạt ảnh (1 giây - 10 giây)';

  @override
  String get animationDelayRangeSingle =>
      'Độ trễ hoạt ảnh (0,1 giây - 10 giây)';

  @override
  String get inCallMute => 'Tắt tiếng';

  @override
  String get inCallKeypad => 'Bàn phím';

  @override
  String get inCallSpeaker => 'Loa';

  @override
  String get inCallMore => 'Hơn';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Điện thoại';

  @override
  String get inCallAddCall => 'Thêm cuộc gọi';

  @override
  String get inCallChangeSim => 'Đổi SIM';

  @override
  String get inCallDecline => 'Sự suy sụp';

  @override
  String get inCallAnswer => 'Trả lời';

  @override
  String get inCallMessage => 'Tin nhắn';

  @override
  String get inCallCalling => 'Đang gọi…';

  @override
  String get inCallIncoming => 'Cuộc gọi đến';

  @override
  String get inCallSelectSim => 'Chọn SIM…';

  @override
  String get inCallSwitchingSim => 'Đang chuyển đổi SIM…';

  @override
  String get inCallCallEnded => 'Cuộc gọi đã kết thúc';

  @override
  String inCallCallingVia(String sim) {
    return 'Gọi qua $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Gọi qua <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Chọn SIM cho cuộc gọi này';

  @override
  String get inCallDragAnswerDecline =>
      'Kéo sang phải để trả lời · Kéo sang trái để từ chối';

  @override
  String inCallMobileNumber(String number) {
    return 'Điện thoại di động $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (Hiện tại)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Gọi qua <b>$sim</b> từ';
  }

  @override
  String get inCallCallFrom => 'Gọi từ';

  @override
  String get inCallUnknown => 'Không xác định';

  @override
  String get selectContactRingtone => 'Chọn nhạc chuông liên hệ';

  @override
  String get speakToSearchPrompt => 'Nói để tìm kiếm';

  @override
  String get phonePermissionRequired => 'Cần có sự cho phép của điện thoại';

  @override
  String callFailed(String error) {
    return 'Cuộc gọi không thành công: $error';
  }

  @override
  String get callPermissionDenied => 'Quyền gọi bị từ chối';

  @override
  String get alreadyDefaultDialer => 'Đã được đặt làm trình quay số mặc định';

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
