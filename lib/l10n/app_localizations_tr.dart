// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'Hiçbir Şey Çevirici';

  @override
  String get settings => 'Ayarlar';

  @override
  String get settingsSearchHint => 'Arama ayarları';

  @override
  String get settingsSearchNoResults => 'Hiçbir ayar bulunamadı';

  @override
  String get general => 'Genel';

  @override
  String get theme => 'Tema';

  @override
  String get themeSystemDefault => 'Sistem Varsayılanı';

  @override
  String get themeLight => 'Işık';

  @override
  String get themeDark => 'Karanlık';

  @override
  String get themeFollowSystem => 'Sistem ayarlarını takip edin';

  @override
  String get themeAlwaysLight => 'Her zaman açık temayı kullan';

  @override
  String get themeAlwaysDark => 'Her zaman koyu temayı kullan';

  @override
  String get language => 'Dil';

  @override
  String get languageDeviceDefault => 'Cihaz varsayılanı';

  @override
  String get languagePickerTitle => 'Dil';

  @override
  String get languageSearchHint => 'Dilleri ara';

  @override
  String get font => 'Yazı tipi';

  @override
  String get fontSystem => 'Sistem varsayılanı';

  @override
  String get fontNdot => 'Hiçbir şey (NDot)';

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
      'Yazı tipi indirme işlemi başarısız oldu. Bağlantınızı kontrol edip tekrar deneyin.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Yazı tipi';

  @override
  String get fontPreviewSample => 'Hiçbir Şey Çevirici';

  @override
  String get fontAppWide => 'Uygulama yazı tipi';

  @override
  String get fontApplyTo => 'Uygula';

  @override
  String get fontApplyEntireApp => 'Uygulamanın tamamı';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Görüşme sırasında da dahil olmak üzere her yerde aynı yazı tipi';

  @override
  String get fontApplyTitlesOnly => 'Başlıklar ve başlıklar';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Yalnızca büyük başlıklar ve bölüm başlıkları';

  @override
  String get fontApplyCustomize => 'Özelleştirmek';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Ekrana ve metin türüne göre yazı tipi seçin';

  @override
  String get fontCustomizeSection => 'Ekrana göre özelleştirin';

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
  String get fontRolePageTitle => 'Sayfa başlığı';

  @override
  String get fontRoleSectionHeader => 'Bölüm başlığı';

  @override
  String get fontRolePrimary => 'Birincil metin';

  @override
  String get fontRoleSecondary => 'İkincil metin';

  @override
  String get fontRoleButton => 'Düğmeler';

  @override
  String get fontRoleDialKey => 'Tuş takımı tuşları';

  @override
  String get fontSurfaceRecents => 'Son Kullanılanlar';

  @override
  String get fontSurfaceContacts => 'Kişiler';

  @override
  String get fontSurfaceSettings => 'Ayarlar';

  @override
  String get fontSurfaceDialpad => 'Tuş takımı';

  @override
  String get fontSurfaceShell => 'Navigasyon';

  @override
  String get fontSurfaceDefaultDialer => 'Varsayılan çevirici istemi';

  @override
  String get fontSurfaceFavourites => 'Favoriler';

  @override
  String get fontSurfaceBlocked => 'Engellenen numaralar';

  @override
  String get fontSurfaceContactDetail => 'İletişim bilgileri';

  @override
  String get fontSurfaceCallHistory => 'Arama geçmişi';

  @override
  String get fontSurfaceSheets => 'E-Tablolar ve toplayıcılar';

  @override
  String get fontSurfaceInCall => 'Görüşme ekranı';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — uygulamanın tamamı';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — yalnızca başlıklar';
  }

  @override
  String get fontSubtitleCustomize => 'Ekran başına özel';

  @override
  String get background => 'Arka plan';

  @override
  String get accent => 'Aksan';

  @override
  String get lightBackground => 'Açık renkli';

  @override
  String get lightAccent => 'Hafif vurgu';

  @override
  String get darkBackground => 'Koyu arka plan';

  @override
  String get darkAccent => 'Koyu vurgu';

  @override
  String get callBackground => 'Arama arka planı';

  @override
  String get appIcon => 'Uygulama simgesi';

  @override
  String get answerMethod => 'Cevap yöntemi';

  @override
  String get answerSlide => 'Cevaplamak için kaydırın';

  @override
  String get answerSlideSubtitle =>
      'Google Phone\'da olduğu gibi çubukta sola/sağa kaydırın';

  @override
  String get answerButton => 'Düğmeye dokunun';

  @override
  String get answerButtonSubtitle => 'Cevapla veya reddet düğmelerine dokunun';

  @override
  String get answerHuawei => 'Huawei tarzı';

  @override
  String get answerHuaweiSubtitle =>
      'Cevaplamak için daireyi yeşil telefona sürükleyin';

  @override
  String get answerHuaweiTileSubtitle =>
      'Huawei — yeşile / kırmızıya sürükleyin';

  @override
  String get calling => 'Arama';

  @override
  String get defaultSim => 'Varsayılan SIM';

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
  String get askEveryTime => 'Her zaman sor';

  @override
  String get askEveryTimeSubtitle => 'Her aramadan önce SIM seçiciyi göster';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'SIM kart bulunamadı';

  @override
  String couldNotLoadSims(String error) {
    return 'SIM\'ler yüklenemedi: $error';
  }

  @override
  String get allFavourites => 'Tüm favoriler';

  @override
  String get allFavouritesSubtitle =>
      'Kişilerden yeniden sıralama, kaldırma ve ekleme';

  @override
  String get blockedNumbers => 'Engellenen numaralar';

  @override
  String get blockedNumbersSubtitle =>
      'Numaraları görüntüleme ve engellemeyi kaldırma';

  @override
  String get soundsAndVibration => 'Sesler ve titreşim';

  @override
  String get soundsAndVibrationSubtitle =>
      'Zil sesi, titreşim, tuş takımı tonları';

  @override
  String couldNotOpenSettings(String error) {
    return 'Ayarlar açılamadı: $error';
  }

  @override
  String get frequentlyContacted => 'Sıkça Temas Edilenler';

  @override
  String get numberOfRecords => 'Kayıt sayısı';

  @override
  String get timePeriod => 'Zaman dilimi';

  @override
  String get periodLast24Hours => 'Son 24 saat';

  @override
  String get periodLast24HoursSubtitle => 'Geçen güne ait aramalar';

  @override
  String get periodLast7Days => 'Son 7 gün';

  @override
  String get periodLast7DaysSubtitle => 'Geçen haftanın çağrıları';

  @override
  String get periodLast30Days => 'Son 30 gün';

  @override
  String get periodLast30DaysSubtitle => 'Geçen aya ait aramalar';

  @override
  String get periodLast12Months => 'Son 12 ay';

  @override
  String get periodLast12MonthsSubtitle => 'Geçen yıla ait aramalar';

  @override
  String get periodAllTime => 'Tüm zamanlar';

  @override
  String get periodAllTimeSubtitle => 'Tüm çağrı geçmişi';

  @override
  String get frequentMaxOff => 'Kapalı';

  @override
  String frequentMaxCount(int count) {
    return '$count kişiler';
  }

  @override
  String get torchBlink => 'Meşale Yanıp Sönüyor';

  @override
  String get torchIncomingCall => 'Gelen çağrı feneri';

  @override
  String get torchOutgoingCall => 'Giden çağrı feneri';

  @override
  String get torchOngoingCall => 'Devam eden çağrı feneri';

  @override
  String get torchIncomingInterval => 'Gelen göz kırpma aralığı';

  @override
  String get torchOutgoingInterval => 'Giden yanıp sönme aralığı';

  @override
  String get torchOngoingInterval => 'Devam eden yanıp sönme aralığı';

  @override
  String get torchOff => 'Kapalı';

  @override
  String get torchOffIncomingSubtitle => 'Zil sırasında meşale yok';

  @override
  String get torchOffOutgoingSubtitle => 'Numara çevirirken meşale yok';

  @override
  String get torchOffOngoingSubtitle => 'Etkin çağrı sırasında fener yok';

  @override
  String get torchFixedInterval => 'Sabit aralık';

  @override
  String get torchFixedIntervalSubtitle => 'Ayarlanan hızda yanıp sönme';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds sn';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds yanıp sönme';
  }

  @override
  String get flashlightUnavailable => 'El feneri bu cihazda mevcut değil';

  @override
  String get glyphLights => 'Glif Işıklar';

  @override
  String get glyphCallingAnimation => 'Glif çağırma animasyonu';

  @override
  String get glyphOngoingAnimation => 'Glif devam eden çağrı animasyonu';

  @override
  String get glyphNone => 'Hiçbiri';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Giden çağrılar için Glif ışıklarını devre dışı bırakın';

  @override
  String get glyphNoneInCallSubtitle =>
      'Aktif olarak görüşme sırasında Glif ışıklarını devre dışı bırakın';

  @override
  String get glyphBreathProgress => 'Nefes ve İlerleme';

  @override
  String get glyphBreathProgressSubtitle =>
      '65 saniye boyunca hat dolarken ışıklar nefes alıyor';

  @override
  String get glyphAccumulate => 'Biriktir';

  @override
  String get glyphAccumulateSubtitle =>
      'C1-C4 ışıklarında animasyon biriktiriliyor';

  @override
  String get glyphSingle => 'Bekar';

  @override
  String get glyphSingleSubtitle => 'C1-C4 boyunca hareket eden tek ışık';

  @override
  String get glyphBreath => 'Nefes';

  @override
  String get glyphBreathSubtitle => 'Işıkları ve hızı seçin';

  @override
  String get glyphSteady => 'Sabit durmak';

  @override
  String get glyphSteadySubtitle => 'Seçilen ışıklar açık kalır';

  @override
  String get breathSettings => 'Nefes Ayarları';

  @override
  String get activeLights => 'Aktif Işıklar';

  @override
  String lightsCount(int count) {
    return '$count ışıklar';
  }

  @override
  String get speedSettings => 'Hız Ayarları';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms gecikme';
  }

  @override
  String get durationAndSpeed => 'Süre ve Hız';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}sn süre, ${interval}msn aralık';
  }

  @override
  String get cancel => 'İptal etmek';

  @override
  String get done => 'Tamamlamak';

  @override
  String get save => 'Kaydetmek';

  @override
  String get block => 'Engellemek';

  @override
  String get delete => 'Silmek';

  @override
  String get recents => 'Son Kullanılanlar';

  @override
  String get contacts => 'Kişiler';

  @override
  String get hideFavouritesOnRecents =>
      'Son Kullanılanlar\'da favorileri gizle';

  @override
  String get showFavouritesOnRecents =>
      'Favorileri Son Kullanılanlar\'da göster';

  @override
  String get ongoingCall => 'Devam eden arama';

  @override
  String get setAsDefaultTitle => 'OLARAK AYARLA\nVARSAYILAN';

  @override
  String get setAsDefaultBody =>
      'Hiçbir Şey Çeviriciyi kullanmak için varsayılan telefon uygulamanız olarak ayarlanması gerekir. Bu, çağrıları yönetmenize, geçmişi görüntülemenize ve Glif animasyonlarını kullanmanıza olanak tanır.';

  @override
  String get setAsDefaultButton => 'VARSAYILAN OLARAK AYARLA';

  @override
  String get nothingDialerBrand => 'HİÇBİR ŞEY ÇEVİRİCİ 1';

  @override
  String get favourites => 'Favoriler';

  @override
  String get addFavourite => 'Favori ekle';

  @override
  String get favouritesDrawerHint =>
      'Kişi eklemek için menüyü kullanın. Çekmecenin dışına dokunun veya kaydırarak kapatın. Bir kişiye ayrıntılarından yıldız ekleyin veya Son Aramalar\'da bir aramaya uzun basın.';

  @override
  String get menu => 'Menü';

  @override
  String get noFavouritesYet =>
      'Henüz favori yok.\nBir kişi eklemek veya bir kişiye yıldız eklemek için menüyü açın.';

  @override
  String get contactsPermissionNeeded => 'Kişi izni gerekli';

  @override
  String get chooseContact => 'Kişiyi seçin';

  @override
  String get noPhone => 'Telefon yok';

  @override
  String get pickNumber => 'Numarayı seç';

  @override
  String get contactHasNoPhone => 'Bu kişinin telefon numarası yok';

  @override
  String get blockNumber => 'Numarayı engelle';

  @override
  String get enterPhoneNumber => 'Telefon numarasını girin';

  @override
  String unblockedDisplay(String display) {
    return 'Engelleme kaldırıldı $display';
  }

  @override
  String get couldNotUnblockNumber => 'Numaranın engellemesi kaldırılamadı';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked engellendi • $matched eşleşti';
  }

  @override
  String get contactsPermissionMissing =>
      'Kişiler izni eksik. Düzeltmek için dokunun.';

  @override
  String get noBlockedNumbers => 'Engellenen numara yok';

  @override
  String get unknownContact => 'Bilinmeyen kişi';

  @override
  String get unblock => 'Engellemeyi kaldır';

  @override
  String get permissionNeeded => 'İzin gerekli';

  @override
  String get grantPhonePermission =>
      'Arama geçmişinizi görmek için telefona izin verin.';

  @override
  String get grantContactsPermission =>
      'Kişilerinize adres defterinizi görme izni verin.';

  @override
  String get openSettings => 'Ayarları Aç';

  @override
  String get tryAgain => 'Tekrar deneyin';

  @override
  String get couldNotLoadContacts => 'Kişiler yüklenemedi';

  @override
  String get contactsLoadError =>
      'Adres defteriniz okunurken bir şeyler ters gitti.';

  @override
  String get noContactsFound => 'Kişi bulunamadı';

  @override
  String get contactsEmptySubtitle => 'Cihazınızdaki kişiler burada görünecek.';

  @override
  String get searchContacts => 'Kişileri ara…';

  @override
  String get searchRecentCalls => 'Son çağrıları ara';

  @override
  String get fromContacts => 'Kişilerden';

  @override
  String get recentsSearchSection => 'Son arama';

  @override
  String get recentsSearchShowContacts => 'Aramada kişileri göster';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Son Kullanılanlar\'da arama yaparken, arama geçmişi sonuçlarının altında adres defterinizdeki eşleşen kişileri de gösterin.';

  @override
  String get voiceSearch => 'Sesli arama';

  @override
  String get createNewContact => 'Yeni kişi oluştur';

  @override
  String callError(String error) {
    return 'Arama hatası: $error';
  }

  @override
  String get noRecentCalls => 'Son arama yok';

  @override
  String get callHistoryEmpty => 'Arama geçmişiniz burada görünecek.';

  @override
  String get loadMore => 'Daha fazlasını yükle';

  @override
  String get frequentlyContactedHeader => 'Sıklıkla iletişime geçilen';

  @override
  String get recentHistory => 'Yakın tarih';

  @override
  String get noFavouritesRecentsHint =>
      'Henüz favori yok. Bir kişiye yıldız ekleyin, bir çağrıya uzun basın veya Favoriler sekmesini kullanın.';

  @override
  String get copyNumber => 'Numarayı kopyala';

  @override
  String get editNumberBeforeCall => 'Aramadan önce numarayı düzenleyin';

  @override
  String get removeFromFavourites => 'Favorilerden kaldır';

  @override
  String get addToFavourites => 'Favorilere ekle';

  @override
  String get blockNumberQuestion => 'Numarayı engelle?';

  @override
  String blockNumberConfirm(String number) {
    return 'Artık $number numaralı telefondan çağrı veya mesaj almayacaksınız.';
  }

  @override
  String get blocked => 'Engellendi';

  @override
  String get couldNotBlock => 'Engellenemedi';

  @override
  String get contactNotOnDevice => 'Kişi bu cihazda kayıtlı değil';

  @override
  String get unblocked => 'Engelleme kaldırıldı';

  @override
  String get numberCopied => 'Numara kopyalandı';

  @override
  String get showLess => 'Daha az göster';

  @override
  String get showAllTimes => 'Tüm zamanları göster';

  @override
  String mostRecent(String time) {
    return 'En yeni · $time';
  }

  @override
  String get videoCall => 'Video görüşmesi';

  @override
  String get couldNotPlaceVideoCall => 'Görüntülü görüşme gerçekleştirilemedi';

  @override
  String get message => 'Mesaj';

  @override
  String get couldNotOpenMessaging => 'Mesajlaşma uygulaması açılamadı';

  @override
  String get history => 'Tarih';

  @override
  String get viewContact => 'Kişiyi görüntüle';

  @override
  String get addToContact => 'Kişiye ekle';

  @override
  String get callTypeMissed => 'Kaçırıldı';

  @override
  String get callTypeRejected => 'Reddedilmiş';

  @override
  String get callTypeIncoming => 'Gelen';

  @override
  String get callTypeOutgoing => 'Dışa dönük';

  @override
  String get today => 'Bugün';

  @override
  String get yesterday => 'Dün';

  @override
  String get justNow => 'Şu anda';

  @override
  String minutesAgo(int count) {
    return '$count dakika önce';
  }

  @override
  String hoursAgo(int count) {
    return '$count saat önce';
  }

  @override
  String get filterAll => 'Tüm';

  @override
  String get filterMissed => 'Kaçırıldı';

  @override
  String get filterContacts => 'Kişiler';

  @override
  String get filterNonContacts => 'Temassız';

  @override
  String get iconUpdated =>
      'Simge güncellendi. Ana ekranınızın yenilenmesi biraz zaman alabilir.';

  @override
  String get iconSavedRelease =>
      'Seçim kaydedildi. Sürüm sürümlerinde ana ekran simgesi güncellenir.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Simge değiştirilemedi: $error';
  }

  @override
  String get launcherClassicBlack => 'Klasik (siyah)';

  @override
  String get launcherLight => 'Işık';

  @override
  String get launcherNothingRed => 'Kırmızı bir şey yok';

  @override
  String get launcherDarkGrey => 'Koyu gri';

  @override
  String get launcherCream => 'Krem';

  @override
  String get launcherRetroPhone => 'Retro telefon';

  @override
  String get launcherRetroPhoneLight => 'Retro telefon (ışık)';

  @override
  String get voiceSearchUnavailable => 'Bu cihazda sesli arama kullanılamıyor.';

  @override
  String voiceSearchFailed(String error) {
    return 'Sesli arama başarısız oldu: $error';
  }

  @override
  String get customColor => 'Gelenek';

  @override
  String get selectColor => 'Renk seç';

  @override
  String get reset => 'Sıfırla';

  @override
  String get simPickerTitle => 'SIM\'i seçin';

  @override
  String get simChooseForCall => 'Bu arama için SIM\'i seçin';

  @override
  String get defaultSimAsk => 'Her zaman sor';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'İletişim bilgileri';

  @override
  String get call => 'Arama';

  @override
  String get share => 'Paylaşmak';

  @override
  String get favourite => 'Favori';

  @override
  String get unfavourite => 'Favorilerden kaldır';

  @override
  String get blockContact => 'Kişiyi engelle';

  @override
  String get unblockContact => 'Kişinin engellemesini kaldır';

  @override
  String get deleteContact => 'Kişiyi sil';

  @override
  String get phone => 'Telefon';

  @override
  String get email => 'E-posta';

  @override
  String get ringtone => 'Zil sesi';

  @override
  String get defaultRingtone => 'Varsayılan';

  @override
  String get simForContact => 'Bu kişi için SIM';

  @override
  String get callHistoryTitle => 'Arama geçmişi';

  @override
  String get noCallsWithNumber => 'Bu numarayla arama yok';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}dk ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Glif animasyonu';

  @override
  String get inCallGlyphAnimationStyle => 'Görüşme sırasında Glif animasyonu';

  @override
  String get recordsOff => 'Kapalı';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Varsayılan SIM';

  @override
  String get nothingPhoneOnly => 'Hiçbir şey Sadece telefon';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Glif özellikleri Hiçbir Şey Telefonu gerektirmez';

  @override
  String get custom => 'Gelenek';

  @override
  String presetColorHex(String hex) {
    return 'Ön ayar · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Özel · $hex';
  }

  @override
  String get oneContact => '1 kişi';

  @override
  String upToContacts(int count) {
    return 'En fazla $count kişi';
  }

  @override
  String get answerButtonTapSubtitle => 'Cevaplamak için düğmeye dokunun';

  @override
  String get filterCalls => 'Aramaları filtrele';

  @override
  String get filterTooltip => 'Filtre';

  @override
  String get settingsTooltip => 'Ayarlar';

  @override
  String get filterAllSubtitle => 'Tüm çağrı kaydı';

  @override
  String get filterMissedSubtitle => 'Cevapsız ve reddedildi';

  @override
  String get filterContactsSubtitle => 'Kayıtlı bir kişiyle eşleşen aramalar';

  @override
  String get filterNonContactsSubtitle =>
      'Adres defterinizde olmayan numaralar';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Devam eden çağrı: $detail';
  }

  @override
  String get defaultSimForCalls => 'Aramalar için varsayılan SIM';

  @override
  String get blinkInterval => 'Yanıp sönme aralığı';

  @override
  String get close => 'Kapalı';

  @override
  String get frequentlyContactedInfoBody =>
      'Seçtiğiniz zaman diliminde her bir numarayla yaptığınız gelen, giden, cevapsız veya reddedilen çağrı sayısına bağlı olarak, en çok aradığınız telefon numaralarını Son Aramalar sekmesinin üst kısmında gösterir.\n\nKayıt sayısı: Bunu kapatmak için 0\'a ayarlayın. En önemli kişilerin çoğunu göstermek için 1-20\'yi kullanın.\n\nZaman dilimi yalnızca en az bir kişi gösterildiğinde geçerlidir.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count ışık, ${ms}ms hız';
  }

  @override
  String get deleteContactQuestion => 'Kişi silinsin mi?';

  @override
  String get deleteContactBody =>
      'Bu kişi cihazınızdan kalıcı olarak silinecek.';

  @override
  String get blockContactQuestion => 'Kişiyi engelle?';

  @override
  String get unblockContactQuestion => 'Kişinin engellemesi kaldırılsın mı?';

  @override
  String get blockContactBody =>
      'Artık bu kişiden çağrı veya mesaj almayacaksınız.';

  @override
  String get unblockContactBody =>
      'Bu kişiden arama ve mesaj almaya başlayacaksınız.';

  @override
  String get contactBlocked => 'Kişi engellendi';

  @override
  String get contactUnblocked => 'Kişinin engellemesi kaldırıldı';

  @override
  String get noPhoneNumbersToBlock => 'Engellenecek telefon numarası yok';

  @override
  String get simSameAsSystem => 'Sistem ile aynı';

  @override
  String get simSameAsSystemSubtitle => 'Ayarlar\'da Varsayılan SIM\'i İzler';

  @override
  String get simAskEveryTimeForContact =>
      'Bu kişi için her zaman SIM seçiciyi göster';

  @override
  String get ringtoneSetForContact =>
      'Bu kişi için genel olarak zil sesi ayarlandı';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Zil sesi seçilemedi: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Hata: $error';
  }

  @override
  String get noCallHistoryFound => 'Arama geçmişi bulunamadı';

  @override
  String get speedDialVoicemail => 'Hızlı arama: Sesli Posta';

  @override
  String shareContactSubject(String name) {
    return 'İletişim: $name';
  }

  @override
  String get contactInfo => 'İletişim bilgileri';

  @override
  String get dontAskAgainSim => 'Bir daha sorma';

  @override
  String get simDontAskAgainSubtitle =>
      'Bu SIM\'i varsayılan olarak kullan (Ayarlar\'da değişiklik yapın)';

  @override
  String get addContact => 'Kişi ekle';

  @override
  String get createContact => 'Kişi oluştur';

  @override
  String get paste => 'Yapıştır';

  @override
  String get clear => 'Temizlemek';

  @override
  String get returnToCall => 'Aramaya dön';

  @override
  String get numberOfRecordsTitle => 'Kayıt sayısı';

  @override
  String get recordsPickerSubtitle =>
      'Kaç tane sık temas edilen girişin gösterileceği (0 = kapalı)';

  @override
  String get torchInfoTitle => 'Meşale yanıp sönüyor';

  @override
  String get torchInfoBody =>
      'Gelen, giden veya devam eden aramalar sırasında kamera flaşını yanıp söner. Glif ışıklardan bağımsız.';

  @override
  String get glyphMapTitle => 'Glif düzeni';

  @override
  String get glyphMapBody =>
      'Hiçbir Şey Telefon 1 Glif LED bölgeleri. Giden ve çağrı içi animasyonlar bu kanalları kullanır.';

  @override
  String get answerMethodTitle => 'Cevap yöntemi';

  @override
  String get glyphOutgoingCallStyleTitle => 'Giden arama stili';

  @override
  String get glyphInCallAnimationTitle => 'Glif çağrı içi animasyon';

  @override
  String get themePickerTitle => 'Tema';

  @override
  String get torchIncomingTitle => 'Gelen çağrı feneri';

  @override
  String get torchOutgoingTitle => 'Giden çağrı feneri';

  @override
  String get torchOngoingTitle => 'Devam eden çağrı feneri';

  @override
  String get timePeriodTitle => 'Zaman dilimi';

  @override
  String get ok => 'TAMAM';

  @override
  String get confirmDeleteCall => 'Bu çağrı geçmişten silinsin mi?';

  @override
  String get confirmDeleteAllCalls =>
      'Bu numarayla yapılan tüm aramalar silinsin mi?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Mesaj gönder';

  @override
  String get addToExistingContactAction => 'Bir kişiye ekle';

  @override
  String get mobileLabel => 'Mobil';

  @override
  String get callingSimForContactTitle => 'Bu kişi için SIM aranıyor';

  @override
  String get contactSettings => 'Kişi ayarları';

  @override
  String get setCallingSim => 'Arama SIM\'ini ayarla';

  @override
  String get contactRingtone => 'İletişim zil sesi';

  @override
  String get shareContact => 'Kişiyi paylaş';

  @override
  String get blockNumbers => 'Numaraları engelle';

  @override
  String get unblockNumbers => 'Numaraların engellemesini kaldır';

  @override
  String get connectedApps => 'Bağlı uygulamalar';

  @override
  String get simNotSet => 'Ayarlanmadı';

  @override
  String get ringtoneDefault => 'Varsayılan';

  @override
  String get customRingtone => 'Gelenek';

  @override
  String get aboutSection => 'Hakkında';

  @override
  String get aboutFeedbackSection => 'Hakkında ve geri bildirim';

  @override
  String get aboutDescription =>
      'Hiçbir Şey Çevirici açık kaynak değildir. Bir geliştiriciyseniz kodu inceleyebilir ve katkıda bulunabilirsiniz.';

  @override
  String get aboutViewSource => 'GitHub\'da görüntüle';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Bağlantı açılamadı';

  @override
  String get reviewSection => 'Gözden geçirmek';

  @override
  String get reviewDescription =>
      'Hiçbir Şey Çeviriciden memnun musunuz? Google Play\'deki derecelendirmeniz başkalarının uygulamayı bulmasına yardımcı olur.';

  @override
  String get reviewRateOnPlay => 'Google Play\'de puan verin';

  @override
  String get reviewRateOnPlaySubtitle =>
      'Uygulamadan çıkmadan bir derecelendirme bırakın';

  @override
  String get reviewCouldNotOpen => 'Google Play açılamadı';

  @override
  String get breathSpeed => 'Nefes Hızı';

  @override
  String get breathSpeedBlinkHint =>
      'Düşük = Yanıp Sönme, Yüksek = Yavaş Nefes';

  @override
  String get speedSliderHint =>
      'Daha Düşük = Daha Hızlı, Daha Yüksek = Daha Yavaş';

  @override
  String get swatchDefault => 'Varsayılan';

  @override
  String get customAccentColorPicker => 'Özel vurgu rengi';

  @override
  String get customLightBackgroundPicker => 'Özel açık renkli arka plan';

  @override
  String get customDarkBackgroundPicker => 'Özel koyu arka plan';

  @override
  String get customCallBackgroundPicker => 'Özel çağrı arka planı';

  @override
  String get ongoingCallStyleTitle => 'Devam eden çağrı stili';

  @override
  String get glyphMapUnavailable => 'Glif haritası kullanılamıyor';

  @override
  String get animationDelayRange => 'Animasyon Gecikmesi (1s - 10s)';

  @override
  String get animationDelayRangeSingle => 'Animasyon Gecikmesi (0,1s - 10s)';

  @override
  String get inCallMute => 'Sesini kapatmak';

  @override
  String get inCallKeypad => 'Tuş takımı';

  @override
  String get inCallSpeaker => 'Hoparlör';

  @override
  String get inCallMore => 'Daha';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Telefon';

  @override
  String get inCallAddCall => 'Çağrı ekle';

  @override
  String get inCallChangeSim => 'SIM\'i değiştir';

  @override
  String get inCallDecline => 'Reddetmek';

  @override
  String get inCallAnswer => 'Cevap';

  @override
  String get inCallMessage => 'Mesaj';

  @override
  String get inCallCalling => 'Arıyorum…';

  @override
  String get inCallIncoming => 'Gelen arama';

  @override
  String get inCallSelectSim => 'SIM\'i seçin…';

  @override
  String get inCallSwitchingSim => 'SIM değiştiriliyor…';

  @override
  String get inCallCallEnded => 'Arama sona erdi';

  @override
  String inCallCallingVia(String sim) {
    return '$sim üzerinden aranıyor';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return '<b>$sim</b> aracılığıyla aranıyor';
  }

  @override
  String get inCallChooseSim => 'Bu arama için SIM\'i seçin';

  @override
  String get inCallDragAnswerDecline =>
      'Yanıtlamak için sağa sürükleyin · Reddetmek için sola sürükleyin';

  @override
  String inCallMobileNumber(String number) {
    return 'Mobil $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (Güncel)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return '<b>$sim</b> numaralı telefondan arayın';
  }

  @override
  String get inCallCallFrom => 'Şuradan ara:';

  @override
  String get inCallUnknown => 'Bilinmiyor';

  @override
  String get selectContactRingtone => 'Kişi zil sesini seçin';

  @override
  String get speakToSearchPrompt => 'Aramak için konuşun';

  @override
  String get phonePermissionRequired => 'Telefon izni gerekli';

  @override
  String callFailed(String error) {
    return 'Arama başarısız oldu: $error';
  }

  @override
  String get callPermissionDenied => 'Arama izni reddedildi';

  @override
  String get alreadyDefaultDialer =>
      'Zaten varsayılan çevirici olarak ayarlandı';

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
