// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Tidak Ada Pemanggil';

  @override
  String get settings => 'Pengaturan';

  @override
  String get settingsSearchHint => 'Pengaturan pencarian';

  @override
  String get settingsSearchNoResults => 'Tidak ada pengaturan yang ditemukan';

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
  String get themeSystemDefault => 'Bawaan Sistem';

  @override
  String get themeLight => 'Lampu';

  @override
  String get themeDark => 'Gelap';

  @override
  String get themeFollowSystem => 'Ikuti pengaturan sistem';

  @override
  String get themeAlwaysLight => 'Selalu gunakan tema terang';

  @override
  String get themeAlwaysDark => 'Selalu gunakan tema gelap';

  @override
  String get language => 'Bahasa';

  @override
  String get languageDeviceDefault => 'Bawaan perangkat';

  @override
  String get languagePickerTitle => 'Bahasa';

  @override
  String get languageSearchHint => 'Cari bahasa';

  @override
  String get font => 'huruf';

  @override
  String get fontSystem => 'Bawaan sistem';

  @override
  String get fontNdot => 'Tidak ada (NDot)';

  @override
  String get fontSerif => 'Robot Serif';

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
      'Pengunduhan font gagal. Periksa koneksi Anda dan coba lagi.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'huruf';

  @override
  String get fontPreviewSample => 'Tidak Ada Pemanggil';

  @override
  String get fontAppWide => 'Fonta aplikasi';

  @override
  String get fontApplyTo => 'Terapkan ke';

  @override
  String get fontApplyEntireApp => 'Seluruh aplikasi';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Font yang sama di mana saja, termasuk dalam panggilan';

  @override
  String get fontApplyTitlesOnly => 'Judul & header';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Judul besar dan header bagian saja';

  @override
  String get fontApplyCustomize => 'Sesuaikan';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Pilih font per layar dan jenis teks';

  @override
  String get fontCustomizeSection => 'Sesuaikan berdasarkan layar';

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
  String get fontRolePageTitle => 'Judul halaman';

  @override
  String get fontRoleSectionHeader => 'Tajuk bagian';

  @override
  String get fontRolePrimary => 'Teks utama';

  @override
  String get fontRoleSecondary => 'Teks sekunder';

  @override
  String get fontRoleButton => 'Tombol';

  @override
  String get fontRoleDialKey => 'Tombol dialpad';

  @override
  String get fontSurfaceRecents => 'Terbaru';

  @override
  String get fontSurfaceContacts => 'Kontak';

  @override
  String get fontSurfaceSettings => 'Pengaturan';

  @override
  String get fontSurfaceDialpad => 'Papan tombol';

  @override
  String get fontSurfaceShell => 'Navigasi';

  @override
  String get fontSurfaceDefaultDialer => 'Perintah panggilan default';

  @override
  String get fontSurfaceFavourites => 'Favorit';

  @override
  String get fontSurfaceBlocked => 'Nomor yang diblokir';

  @override
  String get fontSurfaceContactDetail => 'Detail kontak';

  @override
  String get fontSurfaceCallHistory => 'Riwayat panggilan';

  @override
  String get fontSurfaceSheets => 'Seprai & pemetik';

  @override
  String get fontSurfaceInCall => 'Layar dalam panggilan';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — seluruh aplikasi';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — hanya judul';
  }

  @override
  String get fontSubtitleCustomize => 'Kustom per layar';

  @override
  String get background => 'Latar belakang';

  @override
  String get accent => 'Aksen';

  @override
  String get lightBackground => 'Latar belakang terang';

  @override
  String get lightAccent => 'Aksen ringan';

  @override
  String get darkBackground => 'Latar belakang gelap';

  @override
  String get darkAccent => 'Aksen gelap';

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
  String get appIcon => 'Ikon aplikasi';

  @override
  String get answerMethod => 'Metode jawaban';

  @override
  String get answerSlide => 'Geser untuk menjawab';

  @override
  String get answerSlideSubtitle =>
      'Gesek ke kiri/kanan pada bilah, seperti Google Phone';

  @override
  String get answerButton => 'Ketuk tombol';

  @override
  String get answerButtonSubtitle => 'Ketuk tombol jawab atau tolak';

  @override
  String get answerHuawei => 'gaya Huawei';

  @override
  String get answerHuaweiSubtitle =>
      'Seret lingkaran ke telepon hijau untuk menjawab';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — seret ke hijau / merah';

  @override
  String get calling => 'Panggilan';

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
  String get defaultSim => 'SIM bawaan';

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
  String get askEveryTime => 'Tanyakan setiap saat';

  @override
  String get askEveryTimeSubtitle =>
      'Tampilkan pemilih SIM sebelum setiap panggilan';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Tidak ada kartu SIM yang ditemukan';

  @override
  String couldNotLoadSims(String error) {
    return 'Tidak dapat memuat SIM: $error';
  }

  @override
  String get allFavourites => 'Semua favorit';

  @override
  String get allFavouritesSubtitle =>
      'Susun ulang, hapus, dan tambahkan dari kontak';

  @override
  String get blockedNumbers => 'Nomor yang diblokir';

  @override
  String get blockedNumbersSubtitle => 'Lihat dan buka blokir nomor';

  @override
  String get soundsAndVibration => 'Suara dan getaran';

  @override
  String get soundsAndVibrationSubtitle =>
      'Nada dering, getaran, nada dial pad';

  @override
  String couldNotOpenSettings(String error) {
    return 'Tidak dapat membuka pengaturan: $error';
  }

  @override
  String get frequentlyContacted => 'Sering Dihubungi';

  @override
  String get numberOfRecords => 'Jumlah catatan';

  @override
  String get timePeriod => 'Periode waktu';

  @override
  String get periodLast24Hours => '24 jam terakhir';

  @override
  String get periodLast24HoursSubtitle => 'Panggilan dari hari yang lalu';

  @override
  String get periodLast7Days => '7 hari terakhir';

  @override
  String get periodLast7DaysSubtitle => 'Panggilan dari seminggu terakhir';

  @override
  String get periodLast30Days => '30 hari terakhir';

  @override
  String get periodLast30DaysSubtitle => 'Panggilan dari sebulan terakhir';

  @override
  String get periodLast12Months => '12 bulan terakhir';

  @override
  String get periodLast12MonthsSubtitle => 'Panggilan dari tahun lalu';

  @override
  String get periodAllTime => 'Sepanjang waktu';

  @override
  String get periodAllTimeSubtitle => 'Seluruh riwayat panggilan';

  @override
  String get frequentMaxOff => 'Mati';

  @override
  String frequentMaxCount(int count) {
    return '$count kontak';
  }

  @override
  String get torchBlink => 'Obor Berkedip';

  @override
  String get torchIncomingCall => 'Obor panggilan masuk';

  @override
  String get torchOutgoingCall => 'Senter panggilan keluar';

  @override
  String get torchOngoingCall => 'Obor panggilan yang sedang berlangsung';

  @override
  String get torchIncomingInterval => 'Interval kedipan masuk';

  @override
  String get torchOutgoingInterval => 'Interval kedipan keluar';

  @override
  String get torchOngoingInterval => 'Interval kedipan yang berkelanjutan';

  @override
  String get torchOff => 'Mati';

  @override
  String get torchOffIncomingSubtitle => 'Tidak ada obor saat berdering';

  @override
  String get torchOffOutgoingSubtitle => 'Tidak ada senter saat menelepon';

  @override
  String get torchOffOngoingSubtitle =>
      'Tidak ada senter selama panggilan aktif';

  @override
  String get torchFixedInterval => 'Interval tetap';

  @override
  String get torchFixedIntervalSubtitle =>
      'Berkedip dengan kecepatan yang ditentukan';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds dtk';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds berkedip';
  }

  @override
  String get flashlightUnavailable => 'Senter tidak tersedia di perangkat ini';

  @override
  String get glyphLights => 'Lampu Mesin Terbang';

  @override
  String get glyphCallingAnimation => 'Animasi panggilan mesin terbang';

  @override
  String get glyphOngoingAnimation =>
      'Animasi panggilan Glyph yang sedang berlangsung';

  @override
  String get glyphNone => 'Tidak ada';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Nonaktifkan lampu Glyph untuk panggilan keluar';

  @override
  String get glyphNoneInCallSubtitle =>
      'Nonaktifkan lampu Glyph saat aktif dalam panggilan';

  @override
  String get glyphBreathProgress => 'Nafas & Kemajuan';

  @override
  String get glyphBreathProgressSubtitle =>
      'Lampu bernafas sementara garis terisi lebih dari 65 detik';

  @override
  String get glyphAccumulate => 'Mengumpulkan';

  @override
  String get glyphAccumulateSubtitle => 'Mengumpulkan animasi pada lampu C1-C4';

  @override
  String get glyphSingle => 'Lajang';

  @override
  String get glyphSingleSubtitle => 'Cahaya tunggal bergerak melintasi C1-C4';

  @override
  String get glyphBreath => 'Napas';

  @override
  String get glyphBreathSubtitle => 'Pilih lampu dan kecepatan';

  @override
  String get glyphSteady => 'Stabil';

  @override
  String get glyphSteadySubtitle => 'Lampu yang dipilih tetap menyala';

  @override
  String get breathSettings => 'Pengaturan Nafas';

  @override
  String get activeLights => 'Lampu Aktif';

  @override
  String lightsCount(int count) {
    return '$count lampu';
  }

  @override
  String get speedSettings => 'Pengaturan Kecepatan';

  @override
  String speedSettingsDelay(int ms) {
    return 'Penundaan ${ms}ms';
  }

  @override
  String get durationAndSpeed => 'Durasi & Kecepatan';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return 'Durasi ${duration}s, interval ${interval}ms';
  }

  @override
  String get cancel => 'Membatalkan';

  @override
  String get done => 'Selesai';

  @override
  String get save => 'Menyimpan';

  @override
  String get block => 'Memblokir';

  @override
  String get delete => 'Menghapus';

  @override
  String get recents => 'Terbaru';

  @override
  String get contacts => 'Kontak';

  @override
  String get hideFavouritesOnRecents => 'Sembunyikan favorit di Terbaru';

  @override
  String get showFavouritesOnRecents => 'Tampilkan favorit di Terbaru';

  @override
  String get ongoingCall => 'Panggilan sedang berlangsung';

  @override
  String get setAsDefaultTitle => 'TETAPKAN SEBAGAI\nDEFAULT';

  @override
  String get setAsDefaultBody =>
      'Untuk menggunakan Nothing Dialer, ini harus ditetapkan sebagai aplikasi telepon default Anda. Ini memungkinkan Anda mengelola panggilan, melihat riwayat, dan menggunakan animasi Glyph.';

  @override
  String get setAsDefaultButton => 'TETAPKAN SEBAGAI DEFAULT';

  @override
  String get nothingDialerBrand => 'TIDAK ADA DIALER 1';

  @override
  String get favourites => 'Favorit';

  @override
  String get addFavourite => 'Tambahkan favorit';

  @override
  String get favouritesDrawerHint =>
      'Gunakan menu untuk menambahkan kontak. Ketuk di luar laci atau geser hingga tertutup. Bintangi kontak dari detailnya, atau tekan lama panggilan di Terbaru.';

  @override
  String get menu => 'Menu';

  @override
  String get noFavouritesYet =>
      'Belum ada favorit.\nBuka menu untuk menambahkan kontak, atau bintangi kontak.';

  @override
  String get contactsPermissionNeeded => 'Izin kontak diperlukan';

  @override
  String get chooseContact => 'Pilih kontak';

  @override
  String get noPhone => 'No Telepon';

  @override
  String get pickNumber => 'Pilih nomor';

  @override
  String get contactHasNoPhone => 'Kontak ini tidak memiliki nomor telepon';

  @override
  String get blockNumber => 'Nomor blok';

  @override
  String get enterPhoneNumber => 'Masukkan nomor telepon';

  @override
  String unblockedDisplay(String display) {
    return 'Tidak diblokir $display';
  }

  @override
  String get couldNotUnblockNumber =>
      'Tidak dapat membatalkan pemblokiran nomor';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked diblokir • $matched cocok';
  }

  @override
  String get contactsPermissionMissing =>
      'Izin kontak tidak ada. Ketuk untuk memperbaiki.';

  @override
  String get noBlockedNumbers => 'Tidak ada nomor yang diblokir';

  @override
  String get unknownContact => 'Kontak tidak dikenal';

  @override
  String get unblock => 'Buka blokir';

  @override
  String get permissionNeeded => 'Diperlukan izin';

  @override
  String get grantPhonePermission =>
      'Berikan izin telepon untuk melihat riwayat panggilan Anda.';

  @override
  String get grantContactsPermission =>
      'Berikan izin kepada kontak untuk melihat buku alamat Anda.';

  @override
  String get openSettings => 'Buka Pengaturan';

  @override
  String get tryAgain => 'Coba lagi';

  @override
  String get couldNotLoadContacts => 'Tidak dapat memuat kontak';

  @override
  String get contactsLoadError =>
      'Ada yang tidak beres saat membaca buku alamat Anda.';

  @override
  String get noContactsFound => 'Tidak ada kontak yang ditemukan';

  @override
  String get contactsEmptySubtitle =>
      'Kontak dari perangkat Anda akan muncul di sini.';

  @override
  String get searchContacts => 'Cari kontak…';

  @override
  String get searchRecentCalls => 'Cari panggilan terbaru';

  @override
  String get fromContacts => 'Dari kontak';

  @override
  String get recentsSearchSection => 'Pencarian terkini';

  @override
  String get recentsSearchShowContacts => 'Tampilkan kontak dalam pencarian';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Saat mencari Terbaru, tampilkan juga orang yang cocok dari buku alamat Anda di bawah hasil riwayat panggilan.';

  @override
  String get voiceSearch => 'Pencarian suara';

  @override
  String get createNewContact => 'Buat kontak baru';

  @override
  String callError(String error) {
    return 'Kesalahan panggilan: $error';
  }

  @override
  String get noRecentCalls => 'Tidak ada panggilan terbaru';

  @override
  String get callHistoryEmpty => 'Riwayat panggilan Anda akan muncul di sini.';

  @override
  String get loadMore => 'Muat lebih banyak';

  @override
  String get frequentlyContactedHeader => 'Sering dihubungi';

  @override
  String get recentHistory => 'Sejarah terkini';

  @override
  String get noFavouritesRecentsHint =>
      'Belum ada favorit. Bintangi kontak, tekan lama panggilan, atau gunakan tab Favorit.';

  @override
  String get copyNumber => 'Salin nomor';

  @override
  String get editNumberBeforeCall => 'Edit nomor sebelum panggilan';

  @override
  String get removeFromFavourites => 'Hapus dari favorit';

  @override
  String get addToFavourites => 'Tambahkan ke favorit';

  @override
  String get blockNumberQuestion => 'Blokir nomor?';

  @override
  String blockNumberConfirm(String number) {
    return 'Anda tidak akan lagi menerima panggilan atau SMS dari $number.';
  }

  @override
  String get blocked => 'Diblokir';

  @override
  String get couldNotBlock => 'Tidak dapat memblokir';

  @override
  String get contactNotOnDevice => 'Kontak tidak disimpan di perangkat ini';

  @override
  String get unblocked => 'Tidak diblokir';

  @override
  String get numberCopied => 'Nomor disalin';

  @override
  String get showLess => 'Tampilkan lebih sedikit';

  @override
  String get showAllTimes => 'Tampilkan sepanjang waktu';

  @override
  String mostRecent(String time) {
    return 'Terbaru · $time';
  }

  @override
  String get videoCall => 'Panggilan video';

  @override
  String get couldNotPlaceVideoCall => 'Tidak dapat melakukan panggilan video';

  @override
  String get message => 'Pesan';

  @override
  String get couldNotOpenMessaging => 'Tidak dapat membuka aplikasi perpesanan';

  @override
  String get history => 'Sejarah';

  @override
  String get viewContact => 'Lihat kontak';

  @override
  String get addToContact => 'Tambahkan ke kontak';

  @override
  String get callTypeMissed => 'Dirindukan';

  @override
  String get callTypeRejected => 'Ditolak';

  @override
  String get callTypeIncoming => 'Masuk';

  @override
  String get callTypeOutgoing => 'Keluar';

  @override
  String get today => 'Hari ini';

  @override
  String get yesterday => 'Kemarin';

  @override
  String get justNow => 'Baru saja';

  @override
  String minutesAgo(int count) {
    return '$count menit yang lalu';
  }

  @override
  String hoursAgo(int count) {
    return '$count jam yang lalu';
  }

  @override
  String get filterAll => 'Semua';

  @override
  String get filterMissed => 'Dirindukan';

  @override
  String get filterContacts => 'Kontak';

  @override
  String get filterNonContacts => 'Non-kontak';

  @override
  String get iconUpdated =>
      'Ikon diperbarui. Layar beranda Anda mungkin perlu beberapa saat untuk disegarkan.';

  @override
  String get iconSavedRelease =>
      'Pilihan disimpan. Ikon layar beranda diperbarui dalam versi rilis.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Tidak dapat mengubah ikon: $error';
  }

  @override
  String get launcherClassicBlack => 'Klasik (hitam)';

  @override
  String get launcherLight => 'Lampu';

  @override
  String get launcherNothingRed => 'Tidak ada yang merah';

  @override
  String get launcherDarkGrey => 'Abu-abu gelap';

  @override
  String get launcherCream => 'Krim';

  @override
  String get launcherRetroPhone => 'Telepon retro';

  @override
  String get launcherRetroPhoneLight => 'Telepon retro (ringan)';

  @override
  String get voiceSearchUnavailable =>
      'Penelusuran suara tidak tersedia di perangkat ini.';

  @override
  String voiceSearchFailed(String error) {
    return 'Pencarian suara gagal: $error';
  }

  @override
  String get customColor => 'Kebiasaan';

  @override
  String get selectColor => 'Pilih warna';

  @override
  String get reset => 'Mengatur ulang';

  @override
  String get simPickerTitle => 'Pilih SIM';

  @override
  String get simChooseForCall => 'Pilih SIM untuk panggilan ini';

  @override
  String get defaultSimAsk => 'Tanyakan setiap saat';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Detail kontak';

  @override
  String get call => 'Panggilan';

  @override
  String get share => 'Membagikan';

  @override
  String get favourite => 'Favorit';

  @override
  String get unfavourite => 'Tidak favorit';

  @override
  String get blockContact => 'Blokir kontak';

  @override
  String get unblockContact => 'Buka blokir kontak';

  @override
  String get deleteContact => 'Hapus kontak';

  @override
  String get phone => 'Telepon';

  @override
  String get email => 'E-mail';

  @override
  String get ringtone => 'Nada dering';

  @override
  String get defaultRingtone => 'Bawaan';

  @override
  String get simForContact => 'SIM untuk kontak ini';

  @override
  String get callHistoryTitle => 'Riwayat panggilan';

  @override
  String get noCallsWithNumber => 'Tidak ada panggilan dengan nomor ini';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Animasi mesin terbang';

  @override
  String get inCallGlyphAnimationStyle => 'Animasi Glyph dalam panggilan';

  @override
  String get recordsOff => 'Mati';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'SIM bawaan';

  @override
  String get nothingPhoneOnly => 'Tidak ada Telepon saja';

  @override
  String get nothingPhoneOnlySubtitle => 'Fitur Glyph memerlukan Nothing Phone';

  @override
  String get custom => 'Kebiasaan';

  @override
  String presetColorHex(String hex) {
    return 'Prasetel · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Kustom · $hex';
  }

  @override
  String get oneContact => '1 kontak';

  @override
  String upToContacts(int count) {
    return 'Hingga $count kontak';
  }

  @override
  String get answerButtonTapSubtitle => 'Ketuk tombol untuk menjawab';

  @override
  String get filterCalls => 'Saring panggilan';

  @override
  String get filterTooltip => 'Menyaring';

  @override
  String get settingsTooltip => 'Pengaturan';

  @override
  String get filterAllSubtitle => 'Seluruh log panggilan';

  @override
  String get filterMissedSubtitle => 'Dirindukan dan ditolak';

  @override
  String get filterContactsSubtitle =>
      'Panggilan cocok dengan kontak yang disimpan';

  @override
  String get filterNonContactsSubtitle => 'Nomor tidak ada di buku alamat Anda';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Panggilan sedang berlangsung: $detail';
  }

  @override
  String get defaultSimForCalls => 'SIM default untuk panggilan';

  @override
  String get blinkInterval => 'Interval kedipan';

  @override
  String get close => 'Menutup';

  @override
  String get frequentlyContactedInfoBody =>
      'Menampilkan nomor telepon yang paling sering Anda hubungi di bagian atas tab Terbaru, berdasarkan berapa banyak panggilan masuk, keluar, tidak terjawab, atau ditolak dengan setiap nomor dalam jangka waktu yang Anda pilih.\n\nJumlah catatan: setel ke 0 untuk mematikannya. Gunakan 1–20 untuk menampilkan banyak kontak teratas.\n\nJangka waktu hanya berlaku bila setidaknya satu kontak ditampilkan.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count lampu, kecepatan ${ms}ms';
  }

  @override
  String get deleteContactQuestion => 'Hapus kontak?';

  @override
  String get deleteContactBody =>
      'Kontak ini akan dihapus secara permanen dari perangkat Anda.';

  @override
  String get blockContactQuestion => 'Blokir kontak?';

  @override
  String get unblockContactQuestion => 'Buka blokir kontak?';

  @override
  String get blockContactBody =>
      'Anda tidak akan lagi menerima panggilan atau SMS dari kontak ini.';

  @override
  String get unblockContactBody =>
      'Anda akan mulai menerima panggilan dan SMS dari kontak ini.';

  @override
  String get contactBlocked => 'Kontak diblokir';

  @override
  String get contactUnblocked => 'Kontak tidak diblokir';

  @override
  String get noPhoneNumbersToBlock =>
      'Tidak ada nomor telepon yang perlu diblokir';

  @override
  String get simSameAsSystem => 'Sama seperti sistem';

  @override
  String get simSameAsSystemSubtitle => 'Mengikuti SIM Default di Pengaturan';

  @override
  String get simAskEveryTimeForContact =>
      'Selalu tampilkan pemilih SIM untuk kontak ini';

  @override
  String get ringtoneSetForContact =>
      'Nada dering disetel secara global untuk kontak ini';

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
    return 'Kesalahan: $error';
  }

  @override
  String get noCallHistoryFound => 'Tidak ada riwayat panggilan yang ditemukan';

  @override
  String get speedDialVoicemail => 'Panggilan cepat: Pesan suara';

  @override
  String shareContactSubject(String name) {
    return 'Kontak: $name';
  }

  @override
  String get contactInfo => 'Informasi kontak';

  @override
  String get dontAskAgainSim => 'Jangan bertanya lagi';

  @override
  String get simDontAskAgainSubtitle =>
      'Gunakan SIM ini sebagai default (ubah di Pengaturan)';

  @override
  String get addContact => 'Tambahkan kontak';

  @override
  String get createContact => 'Buat kontak';

  @override
  String get paste => 'Pasta';

  @override
  String get clear => 'Jernih';

  @override
  String get returnToCall => 'Kembali menelepon';

  @override
  String get numberOfRecordsTitle => 'Jumlah catatan';

  @override
  String get recordsPickerSubtitle =>
      'Berapa banyak entri yang sering dihubungi untuk ditampilkan (0 = nonaktif)';

  @override
  String get torchInfoTitle => 'Obor berkedip';

  @override
  String get torchInfoBody =>
      'Mengedipkan lampu kilat kamera selama panggilan masuk, keluar, atau sedang berlangsung. Independen dari lampu Glyph.';

  @override
  String get glyphMapTitle => 'Tata letak mesin terbang';

  @override
  String get glyphMapBody =>
      'Tidak Ada Telepon 1 Zona LED Glyph. Animasi keluar dan panggilan masuk menggunakan saluran ini.';

  @override
  String get answerMethodTitle => 'Metode jawaban';

  @override
  String get glyphOutgoingCallStyleTitle => 'Gaya panggilan keluar';

  @override
  String get glyphInCallAnimationTitle => 'Animasi panggilan mesin terbang';

  @override
  String get themePickerTitle => 'Tema';

  @override
  String get torchIncomingTitle => 'Obor panggilan masuk';

  @override
  String get torchOutgoingTitle => 'Senter panggilan keluar';

  @override
  String get torchOngoingTitle => 'Obor panggilan yang sedang berlangsung';

  @override
  String get timePeriodTitle => 'Periode waktu';

  @override
  String get ok => 'OKE';

  @override
  String get confirmDeleteCall => 'Hapus panggilan ini dari riwayat?';

  @override
  String get confirmDeleteAllCalls => 'Hapus semua panggilan dengan nomor ini?';

  @override
  String get whatsapp => 'Ada apa';

  @override
  String get sendMessage => 'Kirim pesan';

  @override
  String get addToExistingContactAction => 'Tambahkan ke kontak';

  @override
  String get mobileLabel => 'Seluler';

  @override
  String get callingSimForContactTitle => 'Memanggil SIM untuk kontak ini';

  @override
  String get contactSettings => 'Pengaturan kontak';

  @override
  String get setCallingSim => 'Setel SIM panggilan';

  @override
  String get contactRingtone => 'Nada dering kontak';

  @override
  String get shareContact => 'Bagikan kontak';

  @override
  String get blockNumbers => 'Blokir nomor';

  @override
  String get unblockNumbers => 'Buka blokir nomor';

  @override
  String get connectedApps => 'Aplikasi yang terhubung';

  @override
  String get simNotSet => 'Tidak disetel';

  @override
  String get ringtoneDefault => 'Bawaan';

  @override
  String get customRingtone => 'Kebiasaan';

  @override
  String get aboutSection => 'Tentang';

  @override
  String get aboutFeedbackSection => 'Tentang & umpan balik';

  @override
  String get aboutDescription =>
      'Tidak Ada Dialer yang bersifat open source. Jika Anda seorang pengembang, Anda dipersilakan untuk menjelajahi kode dan berkontribusi.';

  @override
  String get aboutViewSource => 'Lihat di GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Tidak dapat membuka tautan';

  @override
  String get reviewSection => 'Tinjauan';

  @override
  String get reviewDescription =>
      'Menikmati Nothing Dialer? Rating Anda di Google Play membantu orang lain menemukan aplikasi tersebut.';

  @override
  String get reviewRateOnPlay => 'Nilai di Google Play';

  @override
  String get reviewRateOnPlaySubtitle => 'Opens the Play Store listing';

  @override
  String get reviewCouldNotOpen => 'Tidak dapat membuka Google Play';

  @override
  String get breathSpeed => 'Kecepatan Nafas';

  @override
  String get breathSpeedBlinkHint =>
      'Lebih Rendah = Berkedip, Lebih Tinggi = Nafas Lambat';

  @override
  String get speedSliderHint =>
      'Lebih Rendah = Lebih Cepat, Lebih Tinggi = Lebih Lambat';

  @override
  String get swatchDefault => 'Bawaan';

  @override
  String get customAccentColorPicker => 'Warna aksen khusus';

  @override
  String get customLightBackgroundPicker => 'Latar belakang cahaya khusus';

  @override
  String get customDarkBackgroundPicker => 'Latar belakang gelap khusus';

  @override
  String get customCallBackgroundPicker => 'Latar belakang panggilan khusus';

  @override
  String get ongoingCallStyleTitle => 'Gaya panggilan berkelanjutan';

  @override
  String get glyphMapUnavailable => 'Peta mesin terbang tidak tersedia';

  @override
  String get animationDelayRange => 'Penundaan Animasi (1d - 10d)';

  @override
  String get animationDelayRangeSingle =>
      'Penundaan Animasi (0,1 detik - 10 detik)';

  @override
  String get inCallMute => 'Bisu';

  @override
  String get inCallKeypad => 'Papan tombol';

  @override
  String get inCallSpeaker => 'Pembicara';

  @override
  String get inCallMore => 'Lagi';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Telepon';

  @override
  String get inCallAddCall => 'Tambahkan panggilan';

  @override
  String get inCallChangeSim => 'Ganti SIM';

  @override
  String get inCallDecline => 'Menolak';

  @override
  String get inCallAnswer => 'Menjawab';

  @override
  String get inCallMessage => 'Pesan';

  @override
  String get inCallCalling => 'Panggilan…';

  @override
  String get inCallIncoming => 'Panggilan masuk';

  @override
  String get inCallSelectSim => 'Pilih SIM…';

  @override
  String get inCallSwitchingSim => 'Beralih SIM…';

  @override
  String get inCallCallEnded => 'Panggilan berakhir';

  @override
  String inCallCallingVia(String sim) {
    return 'Menelepon melalui $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Menelepon melalui <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Pilih SIM untuk panggilan ini';

  @override
  String get inCallDragAnswerDecline =>
      'Seret ke kanan untuk menjawab · Seret ke kiri untuk menolak';

  @override
  String inCallMobileNumber(String number) {
    return 'Seluler $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (Saat ini)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Hubungi melalui <b>$sim</b> dari';
  }

  @override
  String get inCallCallFrom => 'Telepon dari';

  @override
  String get inCallUnknown => 'Tidak dikenal';

  @override
  String get selectContactRingtone => 'Pilih nada dering kontak';

  @override
  String get speakToSearchPrompt => 'Bicaralah untuk mencari';

  @override
  String get phonePermissionRequired => 'Izin telepon diperlukan';

  @override
  String callFailed(String error) {
    return 'Panggilan gagal: $error';
  }

  @override
  String get callPermissionDenied => 'Izin panggilan ditolak';

  @override
  String get alreadyDefaultDialer => 'Sudah ditetapkan sebagai dialer default';

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
