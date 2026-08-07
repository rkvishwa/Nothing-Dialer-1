// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Albanian (`sq`).
class AppLocalizationsSq extends AppLocalizations {
  AppLocalizationsSq([String locale = 'sq']) : super(locale);

  @override
  String get appTitle => 'Asgjë Dialer';

  @override
  String get settings => 'Cilësimet';

  @override
  String get settingsSearchHint => 'Cilësimet e kërkimit';

  @override
  String get settingsSearchNoResults => 'Nuk u gjet asnjë cilësim';

  @override
  String get general => 'Gjeneral';

  @override
  String get theme => 'Tema';

  @override
  String get themeSystemDefault => 'Parazgjedhja e sistemit';

  @override
  String get themeLight => 'Drita';

  @override
  String get themeDark => 'E errët';

  @override
  String get themeFollowSystem => 'Ndiqni cilësimet e sistemit';

  @override
  String get themeAlwaysLight => 'Përdorni gjithmonë një temë të lehtë';

  @override
  String get themeAlwaysDark => 'Përdorni gjithmonë temën e errët';

  @override
  String get language => 'Gjuha';

  @override
  String get languageDeviceDefault => 'Parazgjedhja e pajisjes';

  @override
  String get languagePickerTitle => 'Gjuha';

  @override
  String get languageSearchHint => 'Kërkoni gjuhë';

  @override
  String get font => 'Fonti';

  @override
  String get fontSystem => 'Parazgjedhja e sistemit';

  @override
  String get fontNdot => 'Asgjë (Jo)';

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
      'Shkarkimi i fontit dështoi. Kontrollo lidhjen tënde dhe provo sërish.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Fonti';

  @override
  String get fontPreviewSample => 'Asgjë Dialer';

  @override
  String get fontAppWide => 'Fonti i aplikacionit';

  @override
  String get fontApplyTo => 'Aplikoni në';

  @override
  String get fontApplyEntireApp => 'I gjithë aplikacioni';

  @override
  String get fontApplyEntireAppSubtitle =>
      'I njëjti font kudo, duke përfshirë në thirrje';

  @override
  String get fontApplyTitlesOnly => 'Titujt dhe titujt';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Vetëm titujt e mëdhenj dhe titujt e seksioneve';

  @override
  String get fontApplyCustomize => 'Personalizoje';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Zgjidhni fontin për ekran dhe lloj teksti';

  @override
  String get fontCustomizeSection => 'Personalizoje sipas ekranit';

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
  String get fontRolePageTitle => 'Titulli i faqes';

  @override
  String get fontRoleSectionHeader => 'Kreu i seksionit';

  @override
  String get fontRolePrimary => 'Teksti parësor';

  @override
  String get fontRoleSecondary => 'Teksti dytësor';

  @override
  String get fontRoleButton => 'Butonat';

  @override
  String get fontRoleDialKey => 'Tastet e tastierës telefonike';

  @override
  String get fontSurfaceRecents => 'Kohët e fundit';

  @override
  String get fontSurfaceContacts => 'Kontaktet';

  @override
  String get fontSurfaceSettings => 'Cilësimet';

  @override
  String get fontSurfaceDialpad => 'Pllaka telefonike';

  @override
  String get fontSurfaceShell => 'Navigimi';

  @override
  String get fontSurfaceDefaultDialer =>
      'Kërkesa e telefonuesit të parazgjedhur';

  @override
  String get fontSurfaceFavourites => 'Të preferuarat';

  @override
  String get fontSurfaceBlocked => 'Numrat e bllokuar';

  @override
  String get fontSurfaceContactDetail => 'Detajet e kontaktit';

  @override
  String get fontSurfaceCallHistory => 'Historia e thirrjeve';

  @override
  String get fontSurfaceSheets => 'Fletët dhe mbledhësit';

  @override
  String get fontSurfaceInCall => 'Ekrani në thirrje';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — i gjithë aplikacioni';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — vetëm titujt';
  }

  @override
  String get fontSubtitleCustomize => 'Me porosi për ekran';

  @override
  String get background => 'Sfondi';

  @override
  String get accent => 'Theksim';

  @override
  String get lightBackground => 'Sfondi i lehtë';

  @override
  String get lightAccent => 'Theks i lehtë';

  @override
  String get darkBackground => 'Sfondi i errët';

  @override
  String get darkAccent => 'Theks i errët';

  @override
  String get callBackground => 'Sfondi i thirrjes';

  @override
  String get appIcon => 'Ikona e aplikacionit';

  @override
  String get answerMethod => 'Metoda e përgjigjes';

  @override
  String get answerSlide => 'Rrëshqisni për t\'u përgjigjur';

  @override
  String get answerSlideSubtitle =>
      'Rrëshqitni majtas/djathtas në shirit, si Google Phone';

  @override
  String get answerButton => 'Trokitni lehtë mbi butonin';

  @override
  String get answerButtonSubtitle =>
      'Prekni butonat e përgjigjes ose refuzimit';

  @override
  String get answerHuawei => 'Stili Huawei';

  @override
  String get answerHuaweiSubtitle =>
      'Zvarritni rrethin në telefonin e gjelbër për t\'u përgjigjur';

  @override
  String get answerHuaweiTileSubtitle =>
      'Huawei - zvarriteni në jeshile / të kuqe';

  @override
  String get calling => 'Duke thirrur';

  @override
  String get defaultSim => 'SIM i parazgjedhur';

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
  String get askEveryTime => 'Pyetni çdo herë';

  @override
  String get askEveryTimeSubtitle =>
      'Shfaq zgjedhësin e kartës SIM përpara çdo telefonate';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Nuk u gjet asnjë kartë SIM';

  @override
  String couldNotLoadSims(String error) {
    return 'SIM-të nuk mund të ngarkoheshin: $error';
  }

  @override
  String get allFavourites => 'Të gjitha të preferuarat';

  @override
  String get allFavouritesSubtitle =>
      'Renditni sërish, hiqni dhe shtoni nga kontaktet';

  @override
  String get blockedNumbers => 'Numrat e bllokuar';

  @override
  String get blockedNumbersSubtitle => 'Shikoni dhe zhbllokoni numrat';

  @override
  String get soundsAndVibration => 'Tingujt dhe dridhjet';

  @override
  String get soundsAndVibrationSubtitle =>
      'Tonet e ziles, dridhjet, tonet e bllokut të telefonimit';

  @override
  String couldNotOpenSettings(String error) {
    return 'Cilësimet nuk mund të hapeshin: $error';
  }

  @override
  String get frequentlyContacted => 'Kontaktuar shpesh';

  @override
  String get numberOfRecords => 'Numri i regjistrimeve';

  @override
  String get timePeriod => 'Periudha kohore';

  @override
  String get periodLast24Hours => '24 orët e fundit';

  @override
  String get periodLast24HoursSubtitle => 'Thirrje nga dita e kaluar';

  @override
  String get periodLast7Days => '7 ditët e fundit';

  @override
  String get periodLast7DaysSubtitle => 'Thirrje nga java e kaluar';

  @override
  String get periodLast30Days => '30 ditët e fundit';

  @override
  String get periodLast30DaysSubtitle => 'Telefonata nga muaji i kaluar';

  @override
  String get periodLast12Months => '12 muajt e fundit';

  @override
  String get periodLast12MonthsSubtitle => 'Thirrje nga viti i kaluar';

  @override
  String get periodAllTime => 'Gjatë gjithë kohës';

  @override
  String get periodAllTimeSubtitle => 'I gjithë historiku i thirrjeve';

  @override
  String get frequentMaxOff => 'Joaktiv';

  @override
  String frequentMaxCount(int count) {
    return '$count kontakte';
  }

  @override
  String get torchBlink => 'Pishtari Blink';

  @override
  String get torchIncomingCall => 'Pishtari i thirrjeve hyrëse';

  @override
  String get torchOutgoingCall => 'Pishtari i thirrjeve dalëse';

  @override
  String get torchOngoingCall => 'Pishtari i thirrjeve në vazhdim';

  @override
  String get torchIncomingInterval => 'Intervali i pulsimit në hyrje';

  @override
  String get torchOutgoingInterval => 'Intervali i ndezjes në dalje';

  @override
  String get torchOngoingInterval => 'Intervali i vazhdueshëm i ndezjeve';

  @override
  String get torchOff => 'Joaktiv';

  @override
  String get torchOffIncomingSubtitle => 'Asnjë pishtar gjatë ziles';

  @override
  String get torchOffOutgoingSubtitle => 'Nuk ka pishtar gjatë telefonimit';

  @override
  String get torchOffOngoingSubtitle => 'Nuk ka pishtar gjatë thirrjes aktive';

  @override
  String get torchFixedInterval => 'Interval fiks';

  @override
  String get torchFixedIntervalSubtitle =>
      'Vezulloni me një shpejtësi të caktuar';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds pulsoj';
  }

  @override
  String get flashlightUnavailable =>
      'Elektrik dore nuk ofrohet në këtë pajisje';

  @override
  String get glyphLights => 'Dritat Glyph';

  @override
  String get glyphCallingAnimation => 'Animacion për thirrjen e glifeve';

  @override
  String get glyphOngoingAnimation => 'Glyph animacioni i thirrjeve në vazhdim';

  @override
  String get glyphNone => 'Asnjë';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Çaktivizo dritat Glyph për thirrjet dalëse';

  @override
  String get glyphNoneInCallSubtitle =>
      'Çaktivizo dritat Glyph ndërsa jeni në thirrje aktive';

  @override
  String get glyphBreathProgress => 'Frymë dhe Përparim';

  @override
  String get glyphBreathProgressSubtitle =>
      'Dritat marrin frymë ndërsa linja mbushet mbi 65 sekonda';

  @override
  String get glyphAccumulate => 'Akumuloni';

  @override
  String get glyphAccumulateSubtitle =>
      'Akumulimi i animacionit në dritat C1-C4';

  @override
  String get glyphSingle => 'Beqare';

  @override
  String get glyphSingleSubtitle => 'Dritë e vetme që lëviz nëpër C1-C4';

  @override
  String get glyphBreath => 'Frymëmarrje';

  @override
  String get glyphBreathSubtitle => 'Zgjidhni dritat dhe shpejtësinë';

  @override
  String get glyphSteady => 'E qëndrueshme';

  @override
  String get glyphSteadySubtitle => 'Dritat e zgjedhura qëndrojnë të ndezura';

  @override
  String get breathSettings => 'Cilësimet e frymëmarrjes';

  @override
  String get activeLights => 'Dritat Aktive';

  @override
  String lightsCount(int count) {
    return '$count dritat';
  }

  @override
  String get speedSettings => 'Cilësimet e shpejtësisë';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms vonesë';
  }

  @override
  String get durationAndSpeed => 'Kohëzgjatja & Shpejtësia';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return 'Kohëzgjatja ${duration}s, intervali ${interval}ms';
  }

  @override
  String get cancel => 'Anulo';

  @override
  String get done => 'U krye';

  @override
  String get save => 'Ruaj';

  @override
  String get block => 'Blloko';

  @override
  String get delete => 'Fshije';

  @override
  String get recents => 'Kohët e fundit';

  @override
  String get contacts => 'Kontaktet';

  @override
  String get hideFavouritesOnRecents => 'Fshih të preferuarat në të fundit';

  @override
  String get showFavouritesOnRecents => 'Shfaq të preferuarat në Të fundit';

  @override
  String get ongoingCall => 'Telefonatë në vazhdim';

  @override
  String get setAsDefaultTitle => 'VENDOSET SI\nPARALAKTUAR';

  @override
  String get setAsDefaultBody =>
      'Për të përdorur Nothing Dialer, duhet të caktohet si aplikacioni juaj i paracaktuar i telefonit. Kjo ju lejon të menaxhoni telefonatat, të shikoni historinë dhe të përdorni animacionet Glyph.';

  @override
  String get setAsDefaultButton => 'VENDOSET SI PARALAKTUAR';

  @override
  String get nothingDialerBrand => 'ASGJË DIALER 1';

  @override
  String get favourites => 'Të preferuarat';

  @override
  String get addFavourite => 'Shto të preferuarin';

  @override
  String get favouritesDrawerHint =>
      'Përdorni menunë për të shtuar kontakte. Prekni jashtë sirtarit ose rrëshqitni atë mbyllur. Ylloni një kontakt nga të dhënat e tij ose shtypni gjatë një telefonatë te \"Të fundit\".';

  @override
  String get menu => 'Menyja';

  @override
  String get noFavouritesYet =>
      'Ende nuk ka të preferuar.\nHapni menunë për të shtuar një ose yll një kontakt.';

  @override
  String get contactsPermissionNeeded => 'Nevojitet leja e kontakteve';

  @override
  String get chooseContact => 'Zgjidhni kontaktin';

  @override
  String get noPhone => 'Asnjë telefon';

  @override
  String get pickNumber => 'Zgjidh numrin';

  @override
  String get contactHasNoPhone => 'Ky kontakt nuk ka numër telefoni';

  @override
  String get blockNumber => 'Numri i bllokut';

  @override
  String get enterPhoneNumber => 'Fut numrin e telefonit';

  @override
  String unblockedDisplay(String display) {
    return 'E zhbllokuar $display';
  }

  @override
  String get couldNotUnblockNumber => 'Numri nuk mund të zhbllokohej';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked bllokuar • $matched përputhet';
  }

  @override
  String get contactsPermissionMissing =>
      'Mungon leja e kontakteve. Trokit për të rregulluar.';

  @override
  String get noBlockedNumbers => 'Nuk ka numra të bllokuar';

  @override
  String get unknownContact => 'Kontakt i panjohur';

  @override
  String get unblock => 'Zhblloko';

  @override
  String get permissionNeeded => 'Nevojitet leje';

  @override
  String get grantPhonePermission =>
      'Jepni leje telefonit për të parë historikun tuaj të telefonatave.';

  @override
  String get grantContactsPermission =>
      'Jepni kontakteve leje për të parë librin tuaj të adresave.';

  @override
  String get openSettings => 'Hapni Cilësimet';

  @override
  String get tryAgain => 'Provo sërish';

  @override
  String get couldNotLoadContacts => 'Kontaktet nuk mund të ngarkoheshin';

  @override
  String get contactsLoadError =>
      'Ndodhi një gabim gjatë leximit të librit tuaj të adresave.';

  @override
  String get noContactsFound => 'Nuk u gjetën kontakte';

  @override
  String get contactsEmptySubtitle =>
      'Kontaktet nga pajisja juaj do të shfaqen këtu.';

  @override
  String get searchContacts => 'Kërko kontaktet…';

  @override
  String get searchRecentCalls => 'Kërko telefonatat e fundit';

  @override
  String get fromContacts => 'Nga kontaktet';

  @override
  String get recentsSearchSection => 'Kërkimi i fundit';

  @override
  String get recentsSearchShowContacts => 'Shfaq kontaktet në kërkim';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Ndërsa kërkoni \"Të fundit\", shfaqni gjithashtu personat që përputhen nga libri juaj i adresave më poshtë rezultatet e historikut të telefonatave.';

  @override
  String get voiceSearch => 'Kërkimi me zë';

  @override
  String get createNewContact => 'Krijo kontakt të ri';

  @override
  String callError(String error) {
    return 'Gabim i thirrjes: $error';
  }

  @override
  String get noRecentCalls => 'Nuk ka telefonata të fundit';

  @override
  String get callHistoryEmpty =>
      'Historia juaj e thirrjeve do të shfaqet këtu.';

  @override
  String get loadMore => 'Ngarko më shumë';

  @override
  String get frequentlyContactedHeader => 'Kontaktuar shpesh';

  @override
  String get recentHistory => 'Historia e fundit';

  @override
  String get noFavouritesRecentsHint =>
      'Ende nuk ka të preferuar. Ylloni një kontakt, shtypni gjatë një telefonatë ose përdorni skedën \"Të preferuarat\".';

  @override
  String get copyNumber => 'Kopjo numrin';

  @override
  String get editNumberBeforeCall => 'Ndrysho numrin përpara telefonatës';

  @override
  String get removeFromFavourites => 'Hiq nga të preferuarat';

  @override
  String get addToFavourites => 'Shtoni në të preferuarat';

  @override
  String get blockNumberQuestion => 'Blloko numrin?';

  @override
  String blockNumberConfirm(String number) {
    return 'Nuk do të merrni më telefonata ose mesazhe nga $number.';
  }

  @override
  String get blocked => 'E bllokuar';

  @override
  String get couldNotBlock => 'Nuk mund të bllokohej';

  @override
  String get contactNotOnDevice => 'Kontakti nuk është ruajtur në këtë pajisje';

  @override
  String get unblocked => 'E zhbllokuar';

  @override
  String get numberCopied => 'Numri u kopjua';

  @override
  String get showLess => 'Trego më pak';

  @override
  String get showAllTimes => 'Shfaq të gjitha kohët';

  @override
  String mostRecent(String time) {
    return 'Më të fundit · $time';
  }

  @override
  String get videoCall => 'Video thirrje';

  @override
  String get couldNotPlaceVideoCall => 'Telefonata me video nuk mund të bëhej';

  @override
  String get message => 'Mesazh';

  @override
  String get couldNotOpenMessaging =>
      'Aplikacioni i mesazheve nuk mund të hapej';

  @override
  String get history => 'Historia';

  @override
  String get viewContact => 'Shiko kontaktin';

  @override
  String get addToContact => 'Shto te kontakti';

  @override
  String get callTypeMissed => 'I humbur';

  @override
  String get callTypeRejected => 'Refuzuar';

  @override
  String get callTypeIncoming => 'Në hyrje';

  @override
  String get callTypeOutgoing => 'Në dalje';

  @override
  String get today => 'Sot';

  @override
  String get yesterday => 'Dje';

  @override
  String get justNow => 'Vetëm tani';

  @override
  String minutesAgo(int count) {
    return '$count minuta më parë';
  }

  @override
  String hoursAgo(int count) {
    return '$count orë më parë';
  }

  @override
  String get filterAll => 'Të gjitha';

  @override
  String get filterMissed => 'I humbur';

  @override
  String get filterContacts => 'Kontaktet';

  @override
  String get filterNonContacts => 'Jo-kontaktet';

  @override
  String get iconUpdated =>
      'Ikona u përditësua. Ekrani juaj bazë mund të marrë një moment për t\'u rifreskuar.';

  @override
  String get iconSavedRelease =>
      'Zgjedhja u ruajt. Ikona e ekranit bazë përditësohet në versionet e lëshimit.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Ikonën nuk mund ta ndryshonte: $error';
  }

  @override
  String get launcherClassicBlack => 'Klasike (e zezë)';

  @override
  String get launcherLight => 'Drita';

  @override
  String get launcherNothingRed => 'Asgjë e kuqe';

  @override
  String get launcherDarkGrey => 'Gri e errët';

  @override
  String get launcherCream => 'Krem';

  @override
  String get launcherRetroPhone => 'Telefon retro';

  @override
  String get launcherRetroPhoneLight => 'Telefon retro (i lehtë)';

  @override
  String get voiceSearchUnavailable =>
      'Kërkimi zanor nuk ofrohet në këtë pajisje.';

  @override
  String voiceSearchFailed(String error) {
    return 'Kërkimi zanor dështoi: $error';
  }

  @override
  String get customColor => 'Me porosi';

  @override
  String get selectColor => 'Zgjidhni ngjyrën';

  @override
  String get reset => 'Rivendos';

  @override
  String get simPickerTitle => 'Zgjidhni SIM';

  @override
  String get simChooseForCall => 'Zgjidh kartën SIM për këtë telefonatë';

  @override
  String get defaultSimAsk => 'Pyetni çdo herë';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Detajet e kontaktit';

  @override
  String get call => 'Thirrni';

  @override
  String get share => 'Shpërndaje';

  @override
  String get favourite => 'E preferuara';

  @override
  String get unfavourite => 'I pafavorshëm';

  @override
  String get blockContact => 'Blloko kontaktin';

  @override
  String get unblockContact => 'Zhblloko kontaktin';

  @override
  String get deleteContact => 'Fshi kontaktin';

  @override
  String get phone => 'Telefoni';

  @override
  String get email => 'Email';

  @override
  String get ringtone => 'Zile';

  @override
  String get defaultRingtone => 'E paracaktuar';

  @override
  String get simForContact => 'SIM për këtë kontakt';

  @override
  String get callHistoryTitle => 'Historia e thirrjeve';

  @override
  String get noCallsWithNumber => 'Asnjë telefonatë me këtë numër';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Glyph animacion';

  @override
  String get inCallGlyphAnimationStyle => 'Animacion Glyph në thirrje';

  @override
  String get recordsOff => 'Joaktiv';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'SIM i parazgjedhur';

  @override
  String get nothingPhoneOnly => 'Asgjë Vetëm telefon';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Veçoritë e glyph kërkojnë një telefon Asgjë';

  @override
  String get custom => 'Me porosi';

  @override
  String presetColorHex(String hex) {
    return 'Paracaktuar · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Me porosi · $hex';
  }

  @override
  String get oneContact => '1 kontakt';

  @override
  String upToContacts(int count) {
    return 'Deri në $count kontakte';
  }

  @override
  String get answerButtonTapSubtitle => 'Prekni butonin për t\'u përgjigjur';

  @override
  String get filterCalls => 'Filtro thirrjet';

  @override
  String get filterTooltip => 'Filtro';

  @override
  String get settingsTooltip => 'Cilësimet';

  @override
  String get filterAllSubtitle => 'I gjithë regjistri i thirrjeve';

  @override
  String get filterMissedSubtitle => 'I humbur dhe i refuzuar';

  @override
  String get filterContactsSubtitle =>
      'Telefonatat përputhen me një kontakt të ruajtur';

  @override
  String get filterNonContactsSubtitle =>
      'Numrat nuk janë në librin tuaj të adresave';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Telefonatë në vazhdim: $detail';
  }

  @override
  String get defaultSimForCalls => 'SIM e paracaktuar për telefonatat';

  @override
  String get blinkInterval => 'Intervali i ndezjes';

  @override
  String get close => 'Mbylle';

  @override
  String get frequentlyContactedInfoBody =>
      'Shfaq numrat e telefonit tuaj më të thirrur në krye të skedës \"Të fundit\", bazuar në numrin e telefonatave hyrëse, dalëse, të humbura ose të refuzuara me secilin numër në periudhën kohore që zgjidhni.\n\nNumri i regjistrimeve: vendoseni në 0 për ta çaktivizuar këtë. Përdorni 1–20 për të treguar se shumë kontakte kryesore.\n\nPeriudha kohore zbatohet vetëm kur shfaqet të paktën një kontakt.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count dritat, ${ms}ms shpejtësi';
  }

  @override
  String get deleteContactQuestion => 'Të fshihet kontakti?';

  @override
  String get deleteContactBody =>
      'Ky kontakt do të fshihet përgjithmonë nga pajisja juaj.';

  @override
  String get blockContactQuestion => 'Të bllokohet kontakti?';

  @override
  String get unblockContactQuestion => 'Të zhbllokohet kontakti?';

  @override
  String get blockContactBody =>
      'Nuk do të merrni më telefonata ose mesazhe nga ky kontakt.';

  @override
  String get unblockContactBody =>
      'Do të filloni të merrni telefonata dhe mesazhe nga ky kontakt.';

  @override
  String get contactBlocked => 'Kontakti u bllokua';

  @override
  String get contactUnblocked => 'Kontakti u zhbllokua';

  @override
  String get noPhoneNumbersToBlock => 'Nuk ka numra telefoni për të bllokuar';

  @override
  String get simSameAsSystem => 'Njësoj si sistemi';

  @override
  String get simSameAsSystemSubtitle =>
      'Ndjek SIM-in e paracaktuar te Cilësimet';

  @override
  String get simAskEveryTimeForContact =>
      'Trego gjithmonë zgjedhësin e kartës SIM për këtë kontakt';

  @override
  String get ringtoneSetForContact =>
      'Toni i ziles është vendosur globalisht për këtë kontakt';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Zgjedhja e ziles dështoi: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Gabim: $error';
  }

  @override
  String get noCallHistoryFound => 'Nuk u gjet asnjë histori e thirrjeve';

  @override
  String get speedDialVoicemail => 'Telefonimi i shpejtë: Posta zanore';

  @override
  String shareContactSubject(String name) {
    return 'Kontakt: $name';
  }

  @override
  String get contactInfo => 'Informacioni i kontaktit';

  @override
  String get dontAskAgainSim => 'Mos pyet më';

  @override
  String get simDontAskAgainSubtitle =>
      'Përdore këtë kartë SIM si parazgjedhje (ndrysho te Cilësimet)';

  @override
  String get addContact => 'Shto kontakt';

  @override
  String get createContact => 'Krijo kontakt';

  @override
  String get paste => 'Paste';

  @override
  String get clear => 'E qartë';

  @override
  String get returnToCall => 'Kthehu në thirrje';

  @override
  String get numberOfRecordsTitle => 'Numri i regjistrimeve';

  @override
  String get recordsPickerSubtitle =>
      'Sa hyrje të kontaktuara shpesh për të shfaqur (0 = jo)';

  @override
  String get torchInfoTitle => 'Pishtari pulson';

  @override
  String get torchInfoBody =>
      'Ndizet blici i kamerës gjatë thirrjeve hyrëse, dalëse ose në vazhdim. I pavarur nga dritat glife.';

  @override
  String get glyphMapTitle => 'Paraqitja e glifeve';

  @override
  String get glyphMapBody =>
      'Asgjë Telefon 1 Zonat LED Glyph. Animacionet në dalje dhe në thirrje përdorin këto kanale.';

  @override
  String get answerMethodTitle => 'Metoda e përgjigjes';

  @override
  String get glyphOutgoingCallStyleTitle => 'Stili i telefonatës dalëse';

  @override
  String get glyphInCallAnimationTitle => 'Glyph in-call animacion';

  @override
  String get themePickerTitle => 'Tema';

  @override
  String get torchIncomingTitle => 'Pishtari i thirrjeve hyrëse';

  @override
  String get torchOutgoingTitle => 'Pishtari i thirrjeve dalëse';

  @override
  String get torchOngoingTitle => 'Pishtari i thirrjeve në vazhdim';

  @override
  String get timePeriodTitle => 'Periudha kohore';

  @override
  String get ok => 'OK';

  @override
  String get confirmDeleteCall => 'Të fshihet kjo telefonatë nga historia?';

  @override
  String get confirmDeleteAllCalls =>
      'Të fshihen të gjitha telefonatat me këtë numër?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Dërgo një mesazh';

  @override
  String get addToExistingContactAction => 'Shto te një kontakt';

  @override
  String get mobileLabel => 'Celular';

  @override
  String get callingSimForContactTitle =>
      'Po telefonon kartën SIM për këtë kontakt';

  @override
  String get contactSettings => 'Cilësimet e kontaktit';

  @override
  String get setCallingSim => 'Cakto thirrjen SIM';

  @override
  String get contactRingtone => 'Toni i ziles së kontaktit';

  @override
  String get shareContact => 'Ndani kontaktin';

  @override
  String get blockNumbers => 'Blloko numrat';

  @override
  String get unblockNumbers => 'Zhblloko numrat';

  @override
  String get connectedApps => 'Aplikacionet e lidhura';

  @override
  String get simNotSet => 'Nuk është vendosur';

  @override
  String get ringtoneDefault => 'E paracaktuar';

  @override
  String get customRingtone => 'Me porosi';

  @override
  String get aboutSection => 'Rreth';

  @override
  String get aboutFeedbackSection => 'Rreth & komente';

  @override
  String get aboutDescription =>
      'Nothing Dialer është me burim të hapur. Nëse jeni një zhvillues, jeni të mirëpritur të eksploroni kodin dhe të kontribuoni.';

  @override
  String get aboutViewSource => 'Shikoni në GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Lidhja nuk mund të hapej';

  @override
  String get reviewSection => 'Rishikimi';

  @override
  String get reviewDescription =>
      'Të pëlqesh \"Nothing Dialer\"? Vlerësimi yt në Google Play i ndihmon të tjerët të gjejnë aplikacionin.';

  @override
  String get reviewRateOnPlay => 'Vlerësoni në Google Play';

  @override
  String get reviewRateOnPlaySubtitle =>
      'Lini një vlerësim pa u larguar nga aplikacioni';

  @override
  String get reviewCouldNotOpen => 'Google Play nuk mund të hapej';

  @override
  String get breathSpeed => 'Shpejtësia e frymëmarrjes';

  @override
  String get breathSpeedBlinkHint =>
      'Më e ulët = Blic, më e lartë = Frymë e ngadaltë';

  @override
  String get speedSliderHint =>
      'Më e ulët = më e shpejtë, më e lartë = më e ngadaltë';

  @override
  String get swatchDefault => 'E paracaktuar';

  @override
  String get customAccentColorPicker => 'Ngjyra e theksit me porosi';

  @override
  String get customLightBackgroundPicker => 'Sfondi i lehtë i personalizuar';

  @override
  String get customDarkBackgroundPicker => 'Sfondi i errët i personalizuar';

  @override
  String get customCallBackgroundPicker => 'Sfondi i personalizuar i thirrjes';

  @override
  String get ongoingCallStyleTitle => 'Stili i telefonatës në vazhdim';

  @override
  String get glyphMapUnavailable => 'Harta e glifeve nuk ofrohet';

  @override
  String get animationDelayRange => 'Vonesa e animacionit (1-10 sekonda)';

  @override
  String get animationDelayRangeSingle =>
      'Vonesa e animacionit (0,1 sekonda - 10 sekonda)';

  @override
  String get inCallMute => 'Hesht';

  @override
  String get inCallKeypad => 'Tastiera';

  @override
  String get inCallSpeaker => 'Folësi';

  @override
  String get inCallMore => 'Më shumë';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Telefoni';

  @override
  String get inCallAddCall => 'Shto thirrje';

  @override
  String get inCallChangeSim => 'Ndrysho SIM';

  @override
  String get inCallDecline => 'Rënia';

  @override
  String get inCallAnswer => 'Përgjigju';

  @override
  String get inCallMessage => 'Mesazh';

  @override
  String get inCallCalling => 'Po telefonon…';

  @override
  String get inCallIncoming => 'Telefonatë hyrëse';

  @override
  String get inCallSelectSim => 'Zgjidh SIM…';

  @override
  String get inCallSwitchingSim => 'SIM po ndërron…';

  @override
  String get inCallCallEnded => 'Telefonata përfundoi';

  @override
  String inCallCallingVia(String sim) {
    return 'Duke telefonuar nëpërmjet $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Duke telefonuar nëpërmjet <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Zgjidh kartën SIM për këtë telefonatë';

  @override
  String get inCallDragAnswerDecline =>
      'Zvarrit djathtas për t\'u përgjigjur · Zvarrit majtas për të refuzuar';

  @override
  String inCallMobileNumber(String number) {
    return 'celular $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (aktual)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Telefono me <b>$sim</b> nga';
  }

  @override
  String get inCallCallFrom => 'Telefononi nga';

  @override
  String get inCallUnknown => 'E panjohur';

  @override
  String get selectContactRingtone => 'Zgjidhni zilen e kontaktit';

  @override
  String get speakToSearchPrompt => 'Fol për të kërkuar';

  @override
  String get phonePermissionRequired => 'Kërkohet leje telefonike';

  @override
  String callFailed(String error) {
    return 'Telefonata dështoi: $error';
  }

  @override
  String get callPermissionDenied => 'Leja e telefonatës u refuzua';

  @override
  String get alreadyDefaultDialer =>
      'Është vendosur tashmë si telefonues i paracaktuar';

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
