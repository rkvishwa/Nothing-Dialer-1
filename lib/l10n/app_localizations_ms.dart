// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get appTitle => 'Tiada apa-apa Dialer';

  @override
  String get settings => 'tetapan';

  @override
  String get settingsSearchHint => 'Tetapan carian';

  @override
  String get settingsSearchNoResults => 'Tiada tetapan ditemui';

  @override
  String get general => 'Umum';

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
  String get theme => 'Tema';

  @override
  String get themeSystemDefault => 'Lalai Sistem';

  @override
  String get themeLight => 'Cahaya';

  @override
  String get themeDark => 'Gelap';

  @override
  String get themeFollowSystem => 'Ikut tetapan sistem';

  @override
  String get themeAlwaysLight => 'Sentiasa gunakan tema ringan';

  @override
  String get themeAlwaysDark => 'Sentiasa gunakan tema gelap';

  @override
  String get language => 'Bahasa';

  @override
  String get languageDeviceDefault => 'Lalai peranti';

  @override
  String get languagePickerTitle => 'Bahasa';

  @override
  String get languageSearchHint => 'Cari bahasa';

  @override
  String get font => 'fon';

  @override
  String get fontSystem => 'Sistem lalai';

  @override
  String get fontNdot => 'Tiada apa-apa (NDot)';

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
      'Muat turun fon gagal. Semak sambungan anda dan cuba lagi.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'fon';

  @override
  String get fontPreviewSample => 'Tiada apa-apa Dialer';

  @override
  String get fontAppWide => 'Fon apl';

  @override
  String get fontApplyTo => 'Mohon kepada';

  @override
  String get fontApplyEntireApp => 'Keseluruhan apl';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Fon yang sama di mana-mana, termasuk dalam panggilan';

  @override
  String get fontApplyTitlesOnly => 'Tajuk & tajuk';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Tajuk besar dan tajuk bahagian sahaja';

  @override
  String get fontApplyCustomize => 'Sesuaikan';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Pilih fon setiap skrin dan jenis teks';

  @override
  String get fontCustomizeSection => 'Sesuaikan mengikut skrin';

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
  String get fontRolePageTitle => 'Tajuk halaman';

  @override
  String get fontRoleSectionHeader => 'Pengepala bahagian';

  @override
  String get fontRolePrimary => 'Teks utama';

  @override
  String get fontRoleSecondary => 'Teks sekunder';

  @override
  String get fontRoleButton => 'Butang';

  @override
  String get fontRoleDialKey => 'Kekunci pad dail';

  @override
  String get fontSurfaceRecents => 'Terkini';

  @override
  String get fontSurfaceContacts => 'Kenalan';

  @override
  String get fontSurfaceSettings => 'tetapan';

  @override
  String get fontSurfaceDialpad => 'Pad dail';

  @override
  String get fontSurfaceShell => 'Navigasi';

  @override
  String get fontSurfaceDefaultDialer => 'Gesaan pendail lalai';

  @override
  String get fontSurfaceFavourites => 'Kegemaran';

  @override
  String get fontSurfaceBlocked => 'Nombor disekat';

  @override
  String get fontSurfaceContactDetail => 'Butiran kenalan';

  @override
  String get fontSurfaceCallHistory => 'Sejarah panggilan';

  @override
  String get fontSurfaceSheets => 'Helaian & pemetik';

  @override
  String get fontSurfaceInCall => 'Skrin dalam panggilan';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — keseluruhan apl';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — tajuk sahaja';
  }

  @override
  String get fontSubtitleCustomize => 'Tersuai setiap skrin';

  @override
  String get background => 'Latar belakang';

  @override
  String get accent => 'Loghat';

  @override
  String get lightBackground => 'Latar belakang terang';

  @override
  String get lightAccent => 'Loghat ringan';

  @override
  String get darkBackground => 'Latar belakang gelap';

  @override
  String get darkAccent => 'Loghat gelap';

  @override
  String get callBackground => 'Latar belakang panggilan';

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
  String get appIcon => 'Ikon apl';

  @override
  String get answerMethod => 'Kaedah jawapan';

  @override
  String get answerSlide => 'Slaid untuk menjawab';

  @override
  String get answerSlideSubtitle =>
      'Leret ke kiri/kanan pada bar, seperti Google Phone';

  @override
  String get answerButton => 'Ketik butang';

  @override
  String get answerButtonSubtitle => 'Ketik butang jawab atau tolak';

  @override
  String get answerHuawei => 'gaya Huawei';

  @override
  String get answerHuaweiSubtitle =>
      'Seret bulatan ke telefon hijau untuk menjawab';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — seret ke hijau / merah';

  @override
  String get calling => 'Memanggil';

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
  String get defaultSim => 'SIM lalai';

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
  String get askEveryTime => 'Tanya setiap masa';

  @override
  String get askEveryTimeSubtitle =>
      'Tunjukkan pemilih SIM sebelum setiap panggilan';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Tiada kad SIM ditemui';

  @override
  String couldNotLoadSims(String error) {
    return 'Tidak dapat memuatkan SIM: $error';
  }

  @override
  String get allFavourites => 'Semua kegemaran';

  @override
  String get allFavouritesSubtitle =>
      'Susun semula, alih keluar dan tambah daripada kenalan';

  @override
  String get blockedNumbers => 'Nombor disekat';

  @override
  String get blockedNumbersSubtitle => 'Lihat dan nyahsekat nombor';

  @override
  String get soundsAndVibration => 'Bunyi dan getaran';

  @override
  String get soundsAndVibrationSubtitle =>
      'Nada dering, getaran, nada pad dail';

  @override
  String couldNotOpenSettings(String error) {
    return 'Tidak dapat membuka tetapan: $error';
  }

  @override
  String get frequentlyContacted => 'Kerap Dihubungi';

  @override
  String get numberOfRecords => 'Bilangan rekod';

  @override
  String get timePeriod => 'Tempoh masa';

  @override
  String get periodLast24Hours => '24 jam terakhir';

  @override
  String get periodLast24HoursSubtitle => 'Panggilan dari hari lalu';

  @override
  String get periodLast7Days => '7 hari lepas';

  @override
  String get periodLast7DaysSubtitle => 'Panggilan dari minggu lalu';

  @override
  String get periodLast30Days => '30 hari lepas';

  @override
  String get periodLast30DaysSubtitle => 'Panggilan dari bulan lalu';

  @override
  String get periodLast12Months => '12 bulan lepas';

  @override
  String get periodLast12MonthsSubtitle => 'Panggilan dari tahun lalu';

  @override
  String get periodAllTime => 'Sepanjang masa';

  @override
  String get periodAllTimeSubtitle => 'Keseluruhan sejarah panggilan';

  @override
  String get frequentMaxOff => 'Mati';

  @override
  String frequentMaxCount(int count) {
    return '$count kenalan';
  }

  @override
  String get torchBlink => 'Kelip Obor';

  @override
  String get torchIncomingCall => 'Obor panggilan masuk';

  @override
  String get torchOutgoingCall => 'Obor panggilan keluar';

  @override
  String get torchOngoingCall => 'Obor panggilan berterusan';

  @override
  String get torchIncomingInterval => 'Selang kejap masuk';

  @override
  String get torchOutgoingInterval => 'Selang kejap keluar';

  @override
  String get torchOngoingInterval => 'Selang kelipan berterusan';

  @override
  String get torchOff => 'Mati';

  @override
  String get torchOffIncomingSubtitle => 'Tiada obor semasa berdering';

  @override
  String get torchOffOutgoingSubtitle => 'Tiada obor semasa mendail';

  @override
  String get torchOffOngoingSubtitle => 'Tiada obor semasa panggilan aktif';

  @override
  String get torchFixedInterval => 'Selang tetap';

  @override
  String get torchFixedIntervalSubtitle =>
      'Berkelip pada kelajuan yang ditetapkan';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds kejap';
  }

  @override
  String get flashlightUnavailable =>
      'Lampu suluh tidak tersedia pada peranti ini';

  @override
  String get glyphLights => 'Lampu Glyph';

  @override
  String get glyphCallingAnimation => 'Animasi panggilan Glyph';

  @override
  String get glyphOngoingAnimation => 'Animasi panggilan berterusan Glyph';

  @override
  String get glyphNone => 'tiada';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Lumpuhkan lampu Glyph untuk panggilan keluar';

  @override
  String get glyphNoneInCallSubtitle =>
      'Lumpuhkan lampu Glyph semasa aktif dalam panggilan';

  @override
  String get glyphBreathProgress => 'Nafas & Kemajuan';

  @override
  String get glyphBreathProgressSubtitle =>
      'Lampu bernafas semasa talian mengisi lebih 65s';

  @override
  String get glyphAccumulate => 'Terkumpul';

  @override
  String get glyphAccumulateSubtitle => 'Mengumpul animasi pada lampu C1-C4';

  @override
  String get glyphSingle => 'Bujang';

  @override
  String get glyphSingleSubtitle => 'Cahaya tunggal bergerak merentasi C1-C4';

  @override
  String get glyphBreath => 'nafas';

  @override
  String get glyphBreathSubtitle => 'Pilih lampu dan kelajuan';

  @override
  String get glyphSteady => 'mantap';

  @override
  String get glyphSteadySubtitle => 'Lampu terpilih kekal menyala';

  @override
  String get breathSettings => 'Tetapan Nafas';

  @override
  String get activeLights => 'Lampu Aktif';

  @override
  String lightsCount(int count) {
    return '$count lampu';
  }

  @override
  String get speedSettings => 'Tetapan Kelajuan';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms kelewatan';
  }

  @override
  String get durationAndSpeed => 'Tempoh & Kelajuan';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return 'Tempoh ${duration}s, selang ${interval}ms';
  }

  @override
  String get cancel => 'Batal';

  @override
  String get done => 'Selesai';

  @override
  String get save => 'Jimat';

  @override
  String get block => 'Sekat';

  @override
  String get delete => 'Padam';

  @override
  String get recents => 'Terkini';

  @override
  String get contacts => 'Kenalan';

  @override
  String get hideFavouritesOnRecents => 'Sembunyikan kegemaran pada Terbaru';

  @override
  String get showFavouritesOnRecents => 'Tunjukkan kegemaran pada Terbaru';

  @override
  String get ongoingCall => 'Panggilan berterusan';

  @override
  String get setAsDefaultTitle => 'TETAPKAN SEBAGAI\nlalai';

  @override
  String get setAsDefaultBody =>
      'Untuk menggunakan Nothing Dialer, ia mesti ditetapkan sebagai apl telefon lalai anda. Ini membolehkan anda mengurus panggilan, melihat sejarah dan menggunakan animasi Glyph.';

  @override
  String get setAsDefaultButton => 'TETAPKAN SEBAGAI LALAI';

  @override
  String get nothingDialerBrand => 'TIADA PENDAIL 1';

  @override
  String get favourites => 'Kegemaran';

  @override
  String get addFavourite => 'Tambah kegemaran';

  @override
  String get favouritesDrawerHint =>
      'Gunakan menu untuk menambah kenalan. Ketik di luar laci atau leret hingga tertutup. Bintangkan kenalan daripada butiran mereka, atau tekan lama panggilan dalam Terbaru.';

  @override
  String get menu => 'Menu';

  @override
  String get noFavouritesYet =>
      'Tiada kegemaran lagi.\nBuka menu untuk menambah satu atau bintangkan kenalan.';

  @override
  String get contactsPermissionNeeded => 'Kebenaran kenalan diperlukan';

  @override
  String get chooseContact => 'Pilih kenalan';

  @override
  String get noPhone => 'Tiada telefon';

  @override
  String get pickNumber => 'Pilih nombor';

  @override
  String get contactHasNoPhone => 'Kenalan ini tidak mempunyai nombor telefon';

  @override
  String get blockNumber => 'Nombor blok';

  @override
  String get enterPhoneNumber => 'Masukkan nombor telefon';

  @override
  String unblockedDisplay(String display) {
    return 'Disekat $display';
  }

  @override
  String get couldNotUnblockNumber => 'Tidak dapat menyahsekat nombor';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked disekat • $matched dipadankan';
  }

  @override
  String get contactsPermissionMissing =>
      'Kebenaran kenalan tiada. Ketik untuk membetulkan.';

  @override
  String get noBlockedNumbers => 'Tiada nombor yang disekat';

  @override
  String get unknownContact => 'Kenalan tidak dikenali';

  @override
  String get unblock => 'Nyahsekat';

  @override
  String get permissionNeeded => 'Kebenaran diperlukan';

  @override
  String get grantPhonePermission =>
      'Berikan kebenaran telefon untuk melihat sejarah panggilan anda.';

  @override
  String get grantContactsPermission =>
      'Berikan kebenaran kenalan untuk melihat buku alamat anda.';

  @override
  String get openSettings => 'Buka Tetapan';

  @override
  String get tryAgain => 'Cuba lagi';

  @override
  String get couldNotLoadContacts => 'Tidak dapat memuatkan kenalan';

  @override
  String get contactsLoadError =>
      'Kesilapan telah berlaku semasa membaca buku alamat anda.';

  @override
  String get noContactsFound => 'Tiada kenalan ditemui';

  @override
  String get contactsEmptySubtitle =>
      'Kenalan daripada peranti anda akan dipaparkan di sini.';

  @override
  String get searchContacts => 'Cari kenalan…';

  @override
  String get searchRecentCalls => 'Cari panggilan terbaharu';

  @override
  String get fromContacts => 'Daripada kenalan';

  @override
  String get recentsSearchSection => 'Carian terkini';

  @override
  String get recentsSearchShowContacts => 'Tunjukkan kenalan dalam carian';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Semasa mencari Terbaharu, tunjukkan juga orang yang sepadan daripada buku alamat anda di bawah hasil sejarah panggilan.';

  @override
  String get voiceSearch => 'Carian suara';

  @override
  String get createNewContact => 'Buat kenalan baharu';

  @override
  String callError(String error) {
    return 'Ralat panggilan: $error';
  }

  @override
  String get noRecentCalls => 'Tiada panggilan terbaru';

  @override
  String get callHistoryEmpty =>
      'Sejarah panggilan anda akan dipaparkan di sini.';

  @override
  String get loadMore => 'Muatkan lagi';

  @override
  String get frequentlyContactedHeader => 'Kerap dihubungi';

  @override
  String get recentHistory => 'Sejarah terkini';

  @override
  String get noFavouritesRecentsHint =>
      'Tiada kegemaran lagi. Bintangkan kenalan, tekan lama pada panggilan atau gunakan tab Kegemaran.';

  @override
  String get copyNumber => 'Salin nombor';

  @override
  String get editNumberBeforeCall => 'Edit nombor sebelum panggilan';

  @override
  String get removeFromFavourites => 'Alih keluar daripada kegemaran';

  @override
  String get addToFavourites => 'Tambahkan pada kegemaran';

  @override
  String get blockNumberQuestion => 'Nombor blok?';

  @override
  String blockNumberConfirm(String number) {
    return 'Anda tidak akan menerima panggilan atau teks daripada $number lagi.';
  }

  @override
  String get blocked => 'Disekat';

  @override
  String get couldNotBlock => 'Tidak dapat menyekat';

  @override
  String get contactNotOnDevice => 'Kenalan tidak disimpan pada peranti ini';

  @override
  String get unblocked => 'Disekat';

  @override
  String get numberCopied => 'Nombor disalin';

  @override
  String get showLess => 'Tunjukkan lebih sedikit';

  @override
  String get showAllTimes => 'Tunjukkan sepanjang masa';

  @override
  String mostRecent(String time) {
    return 'Terkini · $time';
  }

  @override
  String get videoCall => 'Panggilan video';

  @override
  String get couldNotPlaceVideoCall => 'Tidak dapat membuat panggilan video';

  @override
  String get message => 'Mesej';

  @override
  String get couldNotOpenMessaging => 'Tidak dapat membuka apl pemesejan';

  @override
  String get history => 'Sejarah';

  @override
  String get viewContact => 'Lihat kenalan';

  @override
  String get addToContact => 'Tambahkan pada kenalan';

  @override
  String get callTypeMissed => 'terlepas';

  @override
  String get callTypeRejected => 'ditolak';

  @override
  String get callTypeIncoming => 'masuk';

  @override
  String get callTypeOutgoing => 'Keluar';

  @override
  String get today => 'Hari ini';

  @override
  String get yesterday => 'Semalam';

  @override
  String get justNow => 'tadi';

  @override
  String minutesAgo(int count) {
    return '$count min yang lalu';
  }

  @override
  String hoursAgo(int count) {
    return '$count jam yang lalu';
  }

  @override
  String get filterAll => 'Semua';

  @override
  String get filterMissed => 'terlepas';

  @override
  String get filterContacts => 'Kenalan';

  @override
  String get filterNonContacts => 'Bukan kenalan';

  @override
  String get iconUpdated =>
      'Ikon dikemas kini. Skrin utama anda mungkin mengambil sedikit masa untuk dimuat semula.';

  @override
  String get iconSavedRelease =>
      'Pilihan disimpan. Kemas kini ikon skrin utama dalam binaan keluaran.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Tidak dapat menukar ikon: $error';
  }

  @override
  String get launcherClassicBlack => 'Klasik (hitam)';

  @override
  String get launcherLight => 'Cahaya';

  @override
  String get launcherNothingRed => 'Tiada yang merah';

  @override
  String get launcherDarkGrey => 'Kelabu gelap';

  @override
  String get launcherCream => 'krim';

  @override
  String get launcherRetroPhone => 'Telefon retro';

  @override
  String get launcherRetroPhoneLight => 'Telefon retro (cahaya)';

  @override
  String get voiceSearchUnavailable =>
      'Carian suara tidak tersedia pada peranti ini.';

  @override
  String voiceSearchFailed(String error) {
    return 'Carian suara gagal: $error';
  }

  @override
  String get customColor => 'Adat';

  @override
  String get selectColor => 'Pilih warna';

  @override
  String get reset => 'Tetapkan semula';

  @override
  String get simPickerTitle => 'Pilih SIM';

  @override
  String get simChooseForCall => 'Pilih SIM untuk panggilan ini';

  @override
  String get defaultSimAsk => 'Tanya setiap masa';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Butiran hubungan';

  @override
  String get call => 'Panggil';

  @override
  String get share => 'Kongsi';

  @override
  String get favourite => 'Kegemaran';

  @override
  String get unfavourite => 'Tidak digemari';

  @override
  String get blockContact => 'Sekat kenalan';

  @override
  String get unblockContact => 'Nyahsekat kenalan';

  @override
  String get deleteContact => 'Padam kenalan';

  @override
  String get phone => 'telefon';

  @override
  String get email => 'E-mel';

  @override
  String get ringtone => 'Nada dering';

  @override
  String get defaultRingtone => 'Lalai';

  @override
  String get simForContact => 'SIM untuk kenalan ini';

  @override
  String get callHistoryTitle => 'Sejarah panggilan';

  @override
  String get noCallsWithNumber => 'Tiada panggilan dengan nombor ini';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Animasi Glyph';

  @override
  String get inCallGlyphAnimationStyle => 'Animasi Glyph dalam panggilan';

  @override
  String get recordsOff => 'Mati';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'SIM lalai';

  @override
  String get nothingPhoneOnly => 'Tiada Telefon sahaja';

  @override
  String get nothingPhoneOnlySubtitle => 'Ciri Glyph memerlukan Nothing Phone';

  @override
  String get custom => 'Adat';

  @override
  String presetColorHex(String hex) {
    return 'Pratetap · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Tersuai · $hex';
  }

  @override
  String get oneContact => '1 kenalan';

  @override
  String upToContacts(int count) {
    return 'Sehingga $count kenalan';
  }

  @override
  String get answerButtonTapSubtitle => 'Ketik butang untuk menjawab';

  @override
  String get filterCalls => 'Tapis panggilan';

  @override
  String get filterTooltip => 'Penapis';

  @override
  String get settingsTooltip => 'tetapan';

  @override
  String get filterAllSubtitle => 'Keseluruhan log panggilan';

  @override
  String get filterMissedSubtitle => 'Rindu dan ditolak';

  @override
  String get filterContactsSubtitle =>
      'Panggilan dipadankan dengan kenalan yang disimpan';

  @override
  String get filterNonContactsSubtitle => 'Nombor tiada dalam buku alamat anda';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Panggilan sedang berjalan: $detail';
  }

  @override
  String get defaultSimForCalls => 'SIM lalai untuk panggilan';

  @override
  String get blinkInterval => 'Selang kejap';

  @override
  String get close => 'tutup';

  @override
  String get frequentlyContactedInfoBody =>
      'Menunjukkan nombor telefon anda yang paling kerap dipanggil di bahagian atas tab Terbaharu, berdasarkan bilangan panggilan masuk, keluar, terlepas atau ditolak yang anda ada dengan setiap nombor dalam tempoh masa yang anda pilih.\n\nBilangan rekod: tetapkan kepada 0 untuk mematikan ini. Gunakan 1–20 untuk menunjukkan bahawa ramai kenalan teratas.\n\nTempoh masa hanya digunakan apabila sekurang-kurangnya satu kenalan ditunjukkan.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count lampu, ${ms}ms kelajuan';
  }

  @override
  String get deleteContactQuestion => 'Padam kenalan?';

  @override
  String get deleteContactBody =>
      'Kenalan ini akan dipadamkan secara kekal daripada peranti anda.';

  @override
  String get blockContactQuestion => 'Sekat kenalan?';

  @override
  String get unblockContactQuestion => 'Nyahsekat kenalan?';

  @override
  String get blockContactBody =>
      'Anda tidak lagi akan menerima panggilan atau teks daripada kenalan ini.';

  @override
  String get unblockContactBody =>
      'Anda akan mula menerima panggilan dan teks daripada kenalan ini.';

  @override
  String get contactBlocked => 'Kenalan disekat';

  @override
  String get contactUnblocked => 'Kenalan dinyahsekat';

  @override
  String get noPhoneNumbersToBlock => 'Tiada nombor telefon untuk disekat';

  @override
  String get simSameAsSystem => 'Sama seperti sistem';

  @override
  String get simSameAsSystemSubtitle => 'Ikut SIM Lalai dalam Tetapan';

  @override
  String get simAskEveryTimeForContact =>
      'Sentiasa tunjukkan pemilih SIM untuk kenalan ini';

  @override
  String get ringtoneSetForContact =>
      'Nada dering ditetapkan secara global untuk kenalan ini';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Gagal memilih nada dering: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Ralat: $error';
  }

  @override
  String get noCallHistoryFound => 'Tiada sejarah panggilan ditemui';

  @override
  String get speedDialVoicemail => 'Dail cepat: Mel suara';

  @override
  String shareContactSubject(String name) {
    return 'Hubungi: $name';
  }

  @override
  String get contactInfo => 'Maklumat hubungan';

  @override
  String get dontAskAgainSim => 'Jangan tanya lagi';

  @override
  String get simDontAskAgainSubtitle =>
      'Gunakan SIM ini sebagai lalai (tukar dalam Tetapan)';

  @override
  String get addContact => 'Tambah kenalan';

  @override
  String get createContact => 'Buat kenalan';

  @override
  String get paste => 'Tampal';

  @override
  String get clear => 'Jelas';

  @override
  String get returnToCall => 'Kembali ke panggilan';

  @override
  String get numberOfRecordsTitle => 'Bilangan rekod';

  @override
  String get recordsPickerSubtitle =>
      'Berapa banyak entri yang kerap dihubungi untuk ditunjukkan (0 = off)';

  @override
  String get torchInfoTitle => 'Obor berkelip';

  @override
  String get torchInfoBody =>
      'Berkelip denyar kamera semasa panggilan masuk, keluar atau sedang berjalan. Bebas daripada lampu Glyph.';

  @override
  String get glyphMapTitle => 'Susun atur glyph';

  @override
  String get glyphMapBody =>
      'Tiada apa-apa zon LED Glyph Telefon 1. Animasi keluar dan dalam panggilan menggunakan saluran ini.';

  @override
  String get answerMethodTitle => 'Kaedah jawapan';

  @override
  String get glyphOutgoingCallStyleTitle => 'Gaya panggilan keluar';

  @override
  String get glyphInCallAnimationTitle => 'Animasi dalam panggilan Glyph';

  @override
  String get themePickerTitle => 'Tema';

  @override
  String get torchIncomingTitle => 'Obor panggilan masuk';

  @override
  String get torchOutgoingTitle => 'Obor panggilan keluar';

  @override
  String get torchOngoingTitle => 'Obor panggilan berterusan';

  @override
  String get timePeriodTitle => 'Tempoh masa';

  @override
  String get ok => 'OK';

  @override
  String get confirmDeleteCall => 'Padamkan panggilan ini daripada sejarah?';

  @override
  String get confirmDeleteAllCalls =>
      'Padamkan semua panggilan dengan nombor ini?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Hantar mesej';

  @override
  String get addToExistingContactAction => 'Tambahkan pada kenalan';

  @override
  String get mobileLabel => 'Mudah alih';

  @override
  String get callingSimForContactTitle => 'Memanggil SIM untuk kenalan ini';

  @override
  String get contactSettings => 'Tetapan kenalan';

  @override
  String get setCallingSim => 'Tetapkan SIM panggilan';

  @override
  String get contactRingtone => 'Nada dering kenalan';

  @override
  String get shareContact => 'Kongsi kenalan';

  @override
  String get blockNumbers => 'Sekat nombor';

  @override
  String get unblockNumbers => 'Nyahsekat nombor';

  @override
  String get connectedApps => 'Apl bersambung';

  @override
  String get simNotSet => 'Tidak ditetapkan';

  @override
  String get ringtoneDefault => 'Lalai';

  @override
  String get customRingtone => 'Adat';

  @override
  String get aboutSection => 'Tentang';

  @override
  String get aboutFeedbackSection => 'Perihal & maklum balas';

  @override
  String get aboutDescription =>
      'Tiada Pendail adalah sumber terbuka. Jika anda seorang pembangun, anda dialu-alukan untuk meneroka kod dan menyumbang.';

  @override
  String get aboutViewSource => 'Lihat di GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Tidak dapat membuka pautan';

  @override
  String get reviewSection => 'Semakan';

  @override
  String get reviewDescription =>
      'Menikmati Nothing Dialer? Penilaian anda di Google Play membantu orang lain mencari apl itu.';

  @override
  String get reviewRateOnPlay => 'Nilaikan di Google Play';

  @override
  String get reviewRateOnPlaySubtitle => 'Opens the Play Store listing';

  @override
  String get reviewCouldNotOpen => 'Tidak dapat membuka Google Play';

  @override
  String get breathSpeed => 'Kelajuan Nafas';

  @override
  String get breathSpeedBlinkHint =>
      'Bawah = Berkelip, Tinggi = Nafas Perlahan';

  @override
  String get speedSliderHint =>
      'Rendah = Lebih Cepat, Lebih Tinggi = Lebih perlahan';

  @override
  String get swatchDefault => 'Lalai';

  @override
  String get customAccentColorPicker => 'Warna loghat tersuai';

  @override
  String get customLightBackgroundPicker => 'Latar belakang cahaya tersuai';

  @override
  String get customDarkBackgroundPicker => 'Latar belakang gelap tersuai';

  @override
  String get customCallBackgroundPicker => 'Latar belakang panggilan tersuai';

  @override
  String get ongoingCallStyleTitle => 'Gaya panggilan berterusan';

  @override
  String get glyphMapUnavailable => 'Peta glif tidak tersedia';

  @override
  String get animationDelayRange => 'Kelewatan Animasi (1s - 10s)';

  @override
  String get animationDelayRangeSingle => 'Kelewatan Animasi (0.1s - 10s)';

  @override
  String get inCallMute => 'bisu';

  @override
  String get inCallKeypad => 'Papan kekunci';

  @override
  String get inCallSpeaker => 'Penceramah';

  @override
  String get inCallMore => 'Lagi';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'telefon';

  @override
  String get inCallAddCall => 'Tambah panggilan';

  @override
  String get inCallChangeSim => 'Tukar SIM';

  @override
  String get inCallDecline => 'Tolak';

  @override
  String get inCallAnswer => 'Jawab';

  @override
  String get inCallMessage => 'Mesej';

  @override
  String get inCallCalling => 'Memanggil…';

  @override
  String get inCallIncoming => 'Panggilan masuk';

  @override
  String get inCallSelectSim => 'Pilih SIM…';

  @override
  String get inCallSwitchingSim => 'Menukar SIM…';

  @override
  String get inCallCallEnded => 'Panggilan ditamatkan';

  @override
  String inCallCallingVia(String sim) {
    return 'Memanggil melalui $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Memanggil melalui <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Pilih SIM untuk panggilan ini';

  @override
  String get inCallDragAnswerDecline =>
      'Seret ke kanan untuk menjawab · Seret ke kiri untuk menolak';

  @override
  String inCallMobileNumber(String number) {
    return 'Mudah Alih $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (Semasa)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Hubungi melalui <b>$sim</b> dari';
  }

  @override
  String get inCallCallFrom => 'Panggilan daripada';

  @override
  String get inCallUnknown => 'Tidak diketahui';

  @override
  String get selectContactRingtone => 'Pilih nada dering kenalan';

  @override
  String get speakToSearchPrompt => 'Bercakap untuk mencari';

  @override
  String get phonePermissionRequired => 'Kebenaran telefon diperlukan';

  @override
  String callFailed(String error) {
    return 'Panggilan gagal: $error';
  }

  @override
  String get callPermissionDenied => 'Kebenaran panggilan ditolak';

  @override
  String get alreadyDefaultDialer => 'Sudah ditetapkan sebagai pendail lalai';

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
