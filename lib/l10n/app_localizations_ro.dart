// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get appTitle => 'Nimic Dialer';

  @override
  String get settings => 'Setări';

  @override
  String get settingsSearchHint => 'Setări de căutare';

  @override
  String get settingsSearchNoResults => 'Nu s-au găsit setări';

  @override
  String get general => 'General';

  @override
  String get theme => 'Temă';

  @override
  String get themeSystemDefault => 'Implicit sistem';

  @override
  String get themeLight => 'Aprinde';

  @override
  String get themeDark => 'Întuneric';

  @override
  String get themeFollowSystem => 'Urmați setările sistemului';

  @override
  String get themeAlwaysLight => 'Folosiți întotdeauna o temă ușoară';

  @override
  String get themeAlwaysDark => 'Folosiți întotdeauna tema întunecată';

  @override
  String get language => 'Limbă';

  @override
  String get languageDeviceDefault => 'Dispozitiv implicit';

  @override
  String get languagePickerTitle => 'Limbă';

  @override
  String get languageSearchHint => 'Căutați limbi';

  @override
  String get font => 'Font';

  @override
  String get fontSystem => 'Implicit de sistem';

  @override
  String get fontNdot => 'Nimic (NDot)';

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
      'Descărcarea fontului a eșuat. Verificați conexiunea și încercați din nou.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Font';

  @override
  String get fontPreviewSample => 'Nimic Dialer';

  @override
  String get fontAppWide => 'Fontul aplicației';

  @override
  String get fontApplyTo => 'Aplica la';

  @override
  String get fontApplyEntireApp => 'Întreaga aplicație';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Același font peste tot, inclusiv în apel';

  @override
  String get fontApplyTitlesOnly => 'Titluri și anteturi';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Doar titluri mari și anteturi de secțiuni';

  @override
  String get fontApplyCustomize => 'Personalizați';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Alegeți fontul pentru fiecare ecran și tipul de text';

  @override
  String get fontCustomizeSection => 'Personalizați după ecran';

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
  String get fontRolePageTitle => 'Titlul paginii';

  @override
  String get fontRoleSectionHeader => 'Antetul secțiunii';

  @override
  String get fontRolePrimary => 'Textul principal';

  @override
  String get fontRoleSecondary => 'Text secundar';

  @override
  String get fontRoleButton => 'Butoane';

  @override
  String get fontRoleDialKey => 'Tastele de pe tastatură';

  @override
  String get fontSurfaceRecents => 'Recente';

  @override
  String get fontSurfaceContacts => 'Contacte';

  @override
  String get fontSurfaceSettings => 'Setări';

  @override
  String get fontSurfaceDialpad => 'Tastatură';

  @override
  String get fontSurfaceShell => 'Navigare';

  @override
  String get fontSurfaceDefaultDialer => 'Prompt implicit de apelare';

  @override
  String get fontSurfaceFavourites => 'Favorite';

  @override
  String get fontSurfaceBlocked => 'Numere blocate';

  @override
  String get fontSurfaceContactDetail => 'Detalii de contact';

  @override
  String get fontSurfaceCallHistory => 'Istoricul apelurilor';

  @override
  String get fontSurfaceSheets => 'Foi și culegători';

  @override
  String get fontSurfaceInCall => 'Ecran pentru apeluri';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — întreaga aplicație';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — numai titluri';
  }

  @override
  String get fontSubtitleCustomize => 'Personalizat pe ecran';

  @override
  String get background => 'Fundal';

  @override
  String get accent => 'Accent';

  @override
  String get lightBackground => 'Fundal deschis';

  @override
  String get lightAccent => 'Accent ușor';

  @override
  String get darkBackground => 'Fundal întunecat';

  @override
  String get darkAccent => 'Accent întunecat';

  @override
  String get callBackground => 'Fundalul apelului';

  @override
  String get appIcon => 'Pictograma aplicației';

  @override
  String get answerMethod => 'Metoda de răspuns';

  @override
  String get answerSlide => 'Glisați pentru a răspunde';

  @override
  String get answerSlideSubtitle =>
      'Glisați la stânga/dreapta pe bară, cum ar fi Google Phone';

  @override
  String get answerButton => 'Atingeți butonul';

  @override
  String get answerButtonSubtitle =>
      'Atingeți butoanele de răspuns sau de refuz';

  @override
  String get answerHuawei => 'Stilul Huawei';

  @override
  String get answerHuaweiSubtitle =>
      'Trageți cercul pe telefonul verde pentru a răspunde';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei - trageți la verde / roșu';

  @override
  String get calling => 'Apel';

  @override
  String get defaultSim => 'SIM implicit';

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
  String get askEveryTime => 'Întreabă de fiecare dată';

  @override
  String get askEveryTimeSubtitle =>
      'Afișați selectorul SIM înainte de fiecare apel';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Nu s-au găsit carduri SIM';

  @override
  String couldNotLoadSims(String error) {
    return 'Nu s-au putut încărca SIM-urile: $error';
  }

  @override
  String get allFavourites => 'Toate favoritele';

  @override
  String get allFavouritesSubtitle =>
      'Reordonați, eliminați și adăugați din contacte';

  @override
  String get blockedNumbers => 'Numere blocate';

  @override
  String get blockedNumbersSubtitle => 'Vizualizați și deblocați numerele';

  @override
  String get soundsAndVibration => 'Sunete și vibrații';

  @override
  String get soundsAndVibrationSubtitle =>
      'Ton de apel, vibrații, tonuri de tastatură';

  @override
  String couldNotOpenSettings(String error) {
    return 'Nu s-au putut deschide setările: $error';
  }

  @override
  String get frequentlyContacted => 'Contactat frecvent';

  @override
  String get numberOfRecords => 'Numărul de înregistrări';

  @override
  String get timePeriod => 'Perioada de timp';

  @override
  String get periodLast24Hours => 'Ultimele 24 de ore';

  @override
  String get periodLast24HoursSubtitle => 'Apeluri din ziua trecută';

  @override
  String get periodLast7Days => 'Ultimele 7 zile';

  @override
  String get periodLast7DaysSubtitle => 'Apeluri din ultima săptămână';

  @override
  String get periodLast30Days => 'Ultimele 30 de zile';

  @override
  String get periodLast30DaysSubtitle => 'Apeluri din ultima lună';

  @override
  String get periodLast12Months => 'Ultimele 12 luni';

  @override
  String get periodLast12MonthsSubtitle => 'Apeluri din anul trecut';

  @override
  String get periodAllTime => 'Tot timpul';

  @override
  String get periodAllTimeSubtitle => 'Întregul istoric al apelurilor';

  @override
  String get frequentMaxOff => 'Oprit';

  @override
  String frequentMaxCount(int count) {
    return '$count contacte';
  }

  @override
  String get torchBlink => 'Torță Clipește';

  @override
  String get torchIncomingCall => 'Lanterna pentru apeluri primite';

  @override
  String get torchOutgoingCall => 'Lanterna pentru apeluri de ieșire';

  @override
  String get torchOngoingCall => 'Lanterna de apel în curs';

  @override
  String get torchIncomingInterval => 'Interval de clipire de intrare';

  @override
  String get torchOutgoingInterval => 'Interval de ieșire intermitent';

  @override
  String get torchOngoingInterval => 'Interval de clipire în curs';

  @override
  String get torchOff => 'Oprit';

  @override
  String get torchOffIncomingSubtitle => 'Fără lanternă în timp ce sună';

  @override
  String get torchOffOutgoingSubtitle => 'Fără lanternă în timp ce formați';

  @override
  String get torchOffOngoingSubtitle =>
      'Fără lanternă în timpul apelului activ';

  @override
  String get torchFixedInterval => 'Interval fix';

  @override
  String get torchFixedIntervalSubtitle => 'Clipiți la o viteză stabilită';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds clipește';
  }

  @override
  String get flashlightUnavailable =>
      'Lanterna nu este disponibilă pe acest dispozitiv';

  @override
  String get glyphLights => 'Glyph Lights';

  @override
  String get glyphCallingAnimation => 'Animație de apelare glifă';

  @override
  String get glyphOngoingAnimation => 'Animație de apel în curs de desfășurare';

  @override
  String get glyphNone => 'Nici unul';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Dezactivați luminile Glyph pentru apelurile efectuate';

  @override
  String get glyphNoneInCallSubtitle =>
      'Dezactivați luminile Glifului în timp ce sunteți activ la apel';

  @override
  String get glyphBreathProgress => 'Respirație și progres';

  @override
  String get glyphBreathProgressSubtitle =>
      'Luminile respiră în timp ce linia se umple peste 65 de secunde';

  @override
  String get glyphAccumulate => 'Acumula';

  @override
  String get glyphAccumulateSubtitle => 'Animație acumulată pe lumini C1-C4';

  @override
  String get glyphSingle => 'Singur';

  @override
  String get glyphSingleSubtitle =>
      'O singură lumină care se deplasează pe C1-C4';

  @override
  String get glyphBreath => 'Suflare';

  @override
  String get glyphBreathSubtitle => 'Alege lumini și viteză';

  @override
  String get glyphSteady => 'Stabil';

  @override
  String get glyphSteadySubtitle => 'Luminile selectate rămân aprinse';

  @override
  String get breathSettings => 'Setări de respirație';

  @override
  String get activeLights => 'Lumini active';

  @override
  String lightsCount(int count) {
    return '$count lumini';
  }

  @override
  String get speedSettings => 'Setări de viteză';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms întârziere';
  }

  @override
  String get durationAndSpeed => 'Durată și viteză';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s durată, ${interval}ms interval';
  }

  @override
  String get cancel => 'Anula';

  @override
  String get done => 'Făcut';

  @override
  String get save => 'Salva';

  @override
  String get block => 'Bloc';

  @override
  String get delete => 'Şterge';

  @override
  String get recents => 'Recente';

  @override
  String get contacts => 'Contacte';

  @override
  String get hideFavouritesOnRecents => 'Ascundeți favoritele în Recente';

  @override
  String get showFavouritesOnRecents => 'Afișați favoritele în Recente';

  @override
  String get ongoingCall => 'Apel în curs';

  @override
  String get setAsDefaultTitle => 'SETĂ CA\nIMPLICIT';

  @override
  String get setAsDefaultBody =>
      'Pentru a utiliza Nothing Dialer, trebuie setat ca aplicație implicită pentru telefon. Acest lucru vă permite să gestionați apelurile, să vizualizați istoricul și să utilizați animațiile Glyph.';

  @override
  String get setAsDefaultButton => 'SETAT CA IMPLICIT';

  @override
  String get nothingDialerBrand => 'NIMIC ANUMĂTOR 1';

  @override
  String get favourites => 'Favorite';

  @override
  String get addFavourite => 'Adăugați favorit';

  @override
  String get favouritesDrawerHint =>
      'Utilizați meniul pentru a adăuga contacte. Atingeți în afara sertarului sau glisați-l închide. Marcați un contact din detaliile acestuia sau apăsați lung pe un apel în Recente.';

  @override
  String get menu => 'Meniu';

  @override
  String get noFavouritesYet =>
      'Încă nu sunt favorite.\nDeschideți meniul pentru a adăuga unul sau stea un contact.';

  @override
  String get contactsPermissionNeeded =>
      'Este nevoie de permisiunea Contactelor';

  @override
  String get chooseContact => 'Alegeți contact';

  @override
  String get noPhone => 'Fără telefon';

  @override
  String get pickNumber => 'Alegeți numărul';

  @override
  String get contactHasNoPhone => 'Acest contact nu are număr de telefon';

  @override
  String get blockNumber => 'Numărul blocului';

  @override
  String get enterPhoneNumber => 'Introduceți numărul de telefon';

  @override
  String unblockedDisplay(String display) {
    return 'Deblocat $display';
  }

  @override
  String get couldNotUnblockNumber => 'Nu s-a putut debloca numărul';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked blocat • $matched potrivit';
  }

  @override
  String get contactsPermissionMissing =>
      'Permisiunea de contact lipsește. Atingeți pentru a remedia.';

  @override
  String get noBlockedNumbers => 'Fără numere blocate';

  @override
  String get unknownContact => 'Contact necunoscut';

  @override
  String get unblock => 'Deblocați';

  @override
  String get permissionNeeded => 'Este nevoie de permisiunea';

  @override
  String get grantPhonePermission =>
      'Acordați permisiunea telefonului pentru a vedea istoricul apelurilor.';

  @override
  String get grantContactsPermission =>
      'Acordați persoanelor de contact permisiunea de a vă vedea agenda.';

  @override
  String get openSettings => 'Deschide Setări';

  @override
  String get tryAgain => 'Încearcă din nou';

  @override
  String get couldNotLoadContacts => 'Nu s-au putut încărca contactele';

  @override
  String get contactsLoadError =>
      'Ceva a mers prost citind agenda dvs. de adrese.';

  @override
  String get noContactsFound => 'Nu s-au găsit persoane de contact';

  @override
  String get contactsEmptySubtitle =>
      'Contactele de pe dispozitivul dvs. vor apărea aici.';

  @override
  String get searchContacts => 'Căutați persoane de contact...';

  @override
  String get searchRecentCalls => 'Căutați apeluri recente';

  @override
  String get fromContacts => 'Din contacte';

  @override
  String get recentsSearchSection => 'Căutare recentă';

  @override
  String get recentsSearchShowContacts =>
      'Afișați persoanele de contact în căutare';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'În timp ce căutați Recente, afișați și persoanele care se potrivesc din agenda dvs. sub rezultatele istoricului apelurilor.';

  @override
  String get voiceSearch => 'Căutare vocală';

  @override
  String get createNewContact => 'Creați un contact nou';

  @override
  String callError(String error) {
    return 'Eroare de apel: $error';
  }

  @override
  String get noRecentCalls => 'Fără apeluri recente';

  @override
  String get callHistoryEmpty => 'Istoricul apelurilor dvs. va apărea aici.';

  @override
  String get loadMore => 'Încărcați mai multe';

  @override
  String get frequentlyContactedHeader => 'Contactat frecvent';

  @override
  String get recentHistory => 'Istoria recentă';

  @override
  String get noFavouritesRecentsHint =>
      'Încă nu sunt favorite. Marcați cu stea un contact, apăsați lung pe un apel sau utilizați fila Preferințe.';

  @override
  String get copyNumber => 'Copiați numărul';

  @override
  String get editNumberBeforeCall => 'Editați numărul înainte de a apela';

  @override
  String get removeFromFavourites => 'Eliminați din favorite';

  @override
  String get addToFavourites => 'Adăugați la favorite';

  @override
  String get blockNumberQuestion => 'Numărul blocului?';

  @override
  String blockNumberConfirm(String number) {
    return 'Nu veți mai primi apeluri sau mesaje text de la $number.';
  }

  @override
  String get blocked => 'Blocat';

  @override
  String get couldNotBlock => 'Nu s-a putut bloca';

  @override
  String get contactNotOnDevice =>
      'Contactul nu a fost salvat pe acest dispozitiv';

  @override
  String get unblocked => 'Deblocat';

  @override
  String get numberCopied => 'Număr copiat';

  @override
  String get showLess => 'Arată mai puțin';

  @override
  String get showAllTimes => 'Arată tot timpul';

  @override
  String mostRecent(String time) {
    return 'Cele mai recente · $time';
  }

  @override
  String get videoCall => 'Apel video';

  @override
  String get couldNotPlaceVideoCall => 'Apelul video nu a putut fi efectuat';

  @override
  String get message => 'Mesaj';

  @override
  String get couldNotOpenMessaging =>
      'Aplicația de mesagerie nu a putut fi deschisă';

  @override
  String get history => 'Istorie';

  @override
  String get viewContact => 'Vizualizați contactul';

  @override
  String get addToContact => 'Adaugă la contact';

  @override
  String get callTypeMissed => 'ratat';

  @override
  String get callTypeRejected => 'Respins';

  @override
  String get callTypeIncoming => 'Sosire';

  @override
  String get callTypeOutgoing => 'Ieșire';

  @override
  String get today => 'Astăzi';

  @override
  String get yesterday => 'Ieri';

  @override
  String get justNow => 'Chiar acum';

  @override
  String minutesAgo(int count) {
    return '$count min în urmă';
  }

  @override
  String hoursAgo(int count) {
    return '$count oră în urmă';
  }

  @override
  String get filterAll => 'Toate';

  @override
  String get filterMissed => 'ratat';

  @override
  String get filterContacts => 'Contacte';

  @override
  String get filterNonContacts => 'Non-contacte';

  @override
  String get iconUpdated =>
      'Pictograma a fost actualizată. Ecranul dvs. de pornire poate dura un moment pentru a se reîmprospăta.';

  @override
  String get iconSavedRelease =>
      'Alegerea salvată. Pictograma ecranului de pornire se actualizează în versiunile de versiuni.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Pictograma nu a putut fi schimbată: $error';
  }

  @override
  String get launcherClassicBlack => 'Clasic (negru)';

  @override
  String get launcherLight => 'Aprinde';

  @override
  String get launcherNothingRed => 'Nimic roșu';

  @override
  String get launcherDarkGrey => 'Gri închis';

  @override
  String get launcherCream => 'Cremă';

  @override
  String get launcherRetroPhone => 'Telefon retro';

  @override
  String get launcherRetroPhoneLight => 'Telefon retro (luminos)';

  @override
  String get voiceSearchUnavailable =>
      'Căutarea vocală nu este disponibilă pe acest dispozitiv.';

  @override
  String voiceSearchFailed(String error) {
    return 'Căutarea vocală a eșuat: $error';
  }

  @override
  String get customColor => 'Personalizat';

  @override
  String get selectColor => 'Selectați culoarea';

  @override
  String get reset => 'Resetați';

  @override
  String get simPickerTitle => 'Alegeți SIM';

  @override
  String get simChooseForCall => 'Alegeți SIM pentru acest apel';

  @override
  String get defaultSimAsk => 'Întreabă de fiecare dată';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Date de contact';

  @override
  String get call => 'Apel';

  @override
  String get share => 'Distribuie';

  @override
  String get favourite => 'Favorit';

  @override
  String get unfavourite => 'Nefavorit';

  @override
  String get blockContact => 'Blocați contactul';

  @override
  String get unblockContact => 'Deblocați contactul';

  @override
  String get deleteContact => 'Ștergeți contactul';

  @override
  String get phone => 'Telefon';

  @override
  String get email => 'E-mail';

  @override
  String get ringtone => 'Ton de apel';

  @override
  String get defaultRingtone => 'Implicit';

  @override
  String get simForContact => 'SIM pentru acest contact';

  @override
  String get callHistoryTitle => 'Istoricul apelurilor';

  @override
  String get noCallsWithNumber => 'Nu există apeluri cu acest număr';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Animație glifă';

  @override
  String get inCallGlyphAnimationStyle => 'Animație Glyph în timpul apelului';

  @override
  String get recordsOff => 'Oprit';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'SIM implicit';

  @override
  String get nothingPhoneOnly => 'Nimic Numai la telefon';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Caracteristicile Glyph necesită un telefon Nothing';

  @override
  String get custom => 'Personalizat';

  @override
  String presetColorHex(String hex) {
    return 'Presetat · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Personalizat · $hex';
  }

  @override
  String get oneContact => '1 contact';

  @override
  String upToContacts(int count) {
    return 'Până la $count contacte';
  }

  @override
  String get answerButtonTapSubtitle => 'Atingeți butonul pentru a răspunde';

  @override
  String get filterCalls => 'Filtrați apelurile';

  @override
  String get filterTooltip => 'Filtra';

  @override
  String get settingsTooltip => 'Setări';

  @override
  String get filterAllSubtitle => 'Întregul jurnal de apeluri';

  @override
  String get filterMissedSubtitle => 'Ratată și respinsă';

  @override
  String get filterContactsSubtitle =>
      'Apelurile au fost asociate unui contact salvat';

  @override
  String get filterNonContactsSubtitle => 'Numerele nu sunt în agenda dvs';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Apel în curs: $detail';
  }

  @override
  String get defaultSimForCalls => 'SIM implicit pentru apeluri';

  @override
  String get blinkInterval => 'Interval de clipire';

  @override
  String get close => 'Aproape';

  @override
  String get frequentlyContactedInfoBody =>
      'Afișează cele mai apelate numere de telefon în partea de sus a filei Recente, în funcție de numărul de apeluri primite, efectuate, pierdute sau respinse pe care le-ați avut cu fiecare număr în perioada de timp pe care o alegeți.\n\nNumăr de înregistrări: setați la 0 pentru a dezactiva acest lucru. Folosiți 1–20 pentru a afișa atât de multe persoane de contact de top.\n\nPerioada de timp se aplică numai atunci când este afișat cel puțin un contact.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count lumini, ${ms}ms viteza';
  }

  @override
  String get deleteContactQuestion => 'Ștergeți persoana de contact?';

  @override
  String get deleteContactBody =>
      'Această persoană de contact va fi ștearsă definitiv de pe dispozitiv.';

  @override
  String get blockContactQuestion => 'Blocați contactul?';

  @override
  String get unblockContactQuestion => 'Deblocați persoana de contact?';

  @override
  String get blockContactBody =>
      'Nu veți mai primi apeluri sau mesaje text de la acest contact.';

  @override
  String get unblockContactBody =>
      'Veți începe să primiți apeluri și mesaje text de la acest contact.';

  @override
  String get contactBlocked => 'Contact blocat';

  @override
  String get contactUnblocked => 'Contact deblocat';

  @override
  String get noPhoneNumbersToBlock => 'Nu există numere de telefon de blocat';

  @override
  String get simSameAsSystem => 'La fel ca sistemul';

  @override
  String get simSameAsSystemSubtitle => 'Urmează SIM-ul implicit în Setări';

  @override
  String get simAskEveryTimeForContact =>
      'Afișați întotdeauna selectorul SIM pentru acest contact';

  @override
  String get ringtoneSetForContact =>
      'Ton de apel setat la nivel global pentru această persoană de contact';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Nu s-a putut alege tonul de apel: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Eroare: $error';
  }

  @override
  String get noCallHistoryFound => 'Nu a fost găsit niciun istoric de apeluri';

  @override
  String get speedDialVoicemail => 'Apelare rapidă: mesagerie vocală';

  @override
  String shareContactSubject(String name) {
    return 'Contact: $name';
  }

  @override
  String get contactInfo => 'Informații de contact';

  @override
  String get dontAskAgainSim => 'Nu mai întreba';

  @override
  String get simDontAskAgainSubtitle =>
      'Utilizați acest SIM ca implicit (modificare în Setări)';

  @override
  String get addContact => 'Adăugați contact';

  @override
  String get createContact => 'Creați contact';

  @override
  String get paste => 'Pastă';

  @override
  String get clear => 'Clar';

  @override
  String get returnToCall => 'Reveniți la apel';

  @override
  String get numberOfRecordsTitle => 'Numărul de înregistrări';

  @override
  String get recordsPickerSubtitle =>
      'Câte intrări contactate frecvent de afișat (0 = dezactivat)';

  @override
  String get torchInfoTitle => 'torță clipește';

  @override
  String get torchInfoBody =>
      'Blițul camerei clipește în timpul apelurilor primite, efectuate sau în curs. Independent de luminile Glyph.';

  @override
  String get glyphMapTitle => 'Aspect glif';

  @override
  String get glyphMapBody =>
      'Nimic Telefon 1 Glyph zone LED. Animațiile de ieșire și în apel folosesc aceste canale.';

  @override
  String get answerMethodTitle => 'Metoda de răspuns';

  @override
  String get glyphOutgoingCallStyleTitle => 'Stilul apelului de ieșire';

  @override
  String get glyphInCallAnimationTitle => 'Animație glifă în apel';

  @override
  String get themePickerTitle => 'Temă';

  @override
  String get torchIncomingTitle => 'Lanterna pentru apeluri primite';

  @override
  String get torchOutgoingTitle => 'Lanterna pentru apeluri de ieșire';

  @override
  String get torchOngoingTitle => 'Lanterna de apel în curs';

  @override
  String get timePeriodTitle => 'Perioada de timp';

  @override
  String get ok => 'BINE';

  @override
  String get confirmDeleteCall => 'Ștergeți acest apel din istoric?';

  @override
  String get confirmDeleteAllCalls =>
      'Ștergeți toate apelurile cu acest număr?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Trimite un mesaj';

  @override
  String get addToExistingContactAction => 'Adăugați la un contact';

  @override
  String get mobileLabel => 'Mobil';

  @override
  String get callingSimForContactTitle => 'Apelare SIM pentru acest contact';

  @override
  String get contactSettings => 'Setări de contact';

  @override
  String get setCallingSim => 'Setați SIM pentru apelare';

  @override
  String get contactRingtone => 'Ton de apel de contact';

  @override
  String get shareContact => 'Partajați contactul';

  @override
  String get blockNumbers => 'Numerele blocate';

  @override
  String get unblockNumbers => 'Deblocați numerele';

  @override
  String get connectedApps => 'Aplicații conectate';

  @override
  String get simNotSet => 'Nu setat';

  @override
  String get ringtoneDefault => 'Implicit';

  @override
  String get customRingtone => 'Personalizat';

  @override
  String get aboutSection => 'Despre';

  @override
  String get aboutFeedbackSection => 'Despre și feedback';

  @override
  String get aboutDescription =>
      'Nothing Dialer este open source. Dacă sunteți dezvoltator, sunteți binevenit să explorați codul și să contribuiți.';

  @override
  String get aboutViewSource => 'Vizualizați pe GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Linkul nu a putut fi deschis';

  @override
  String get reviewSection => 'Recenzie';

  @override
  String get reviewDescription =>
      'Vă bucurați de Nothing Dialer? Evaluarea dvs. pe Google Play îi ajută pe alții să găsească aplicația.';

  @override
  String get reviewRateOnPlay => 'Evaluați pe Google Play';

  @override
  String get reviewRateOnPlaySubtitle =>
      'Lăsați o evaluare fără a părăsi aplicația';

  @override
  String get reviewCouldNotOpen => 'Google Play nu a putut fi deschis';

  @override
  String get breathSpeed => 'Viteza respirației';

  @override
  String get breathSpeedBlinkHint =>
      'Jos = Clipește, Mai sus = Respirație lentă';

  @override
  String get speedSliderHint => 'Jos = mai rapid, mai sus = mai lent';

  @override
  String get swatchDefault => 'Implicit';

  @override
  String get customAccentColorPicker => 'Culoare de accent personalizată';

  @override
  String get customLightBackgroundPicker => 'Fundal luminos personalizat';

  @override
  String get customDarkBackgroundPicker => 'Fundal întunecat personalizat';

  @override
  String get customCallBackgroundPicker => 'Fundal personalizat pentru apeluri';

  @override
  String get ongoingCallStyleTitle => 'Stilul de apel în curs';

  @override
  String get glyphMapUnavailable => 'Harta glifă indisponibilă';

  @override
  String get animationDelayRange => 'Întârziere animație (1s - 10s)';

  @override
  String get animationDelayRangeSingle => 'Întârziere animație (0,1 s - 10 s)';

  @override
  String get inCallMute => 'Mut';

  @override
  String get inCallKeypad => 'Tastatura';

  @override
  String get inCallSpeaker => 'Difuzor';

  @override
  String get inCallMore => 'Mai mult';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Telefon';

  @override
  String get inCallAddCall => 'Adăugați apel';

  @override
  String get inCallChangeSim => 'Schimbați SIM';

  @override
  String get inCallDecline => 'Declin';

  @override
  String get inCallAnswer => 'Răspuns';

  @override
  String get inCallMessage => 'Mesaj';

  @override
  String get inCallCalling => 'Apelând…';

  @override
  String get inCallIncoming => 'Apel primit';

  @override
  String get inCallSelectSim => 'Selectați SIM...';

  @override
  String get inCallSwitchingSim => 'Se comută SIM-ul...';

  @override
  String get inCallCallEnded => 'Apel încheiat';

  @override
  String inCallCallingVia(String sim) {
    return 'Apelare prin $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Apelare prin <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Alegeți SIM pentru acest apel';

  @override
  String get inCallDragAnswerDecline =>
      'Trageți la dreapta pentru a răspunde · Trageți la stânga pentru a refuza';

  @override
  String inCallMobileNumber(String number) {
    return 'Mobil $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (Actual)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Apelați prin <b>$sim</b> de la';
  }

  @override
  String get inCallCallFrom => 'Sună de la';

  @override
  String get inCallUnknown => 'Necunoscut';

  @override
  String get selectContactRingtone => 'Selectați tonul de apel de contact';

  @override
  String get speakToSearchPrompt => 'Vorbește pentru a căuta';

  @override
  String get phonePermissionRequired => 'Este necesară permisiunea telefonică';

  @override
  String callFailed(String error) {
    return 'Apel eșuat: $error';
  }

  @override
  String get callPermissionDenied => 'Permisiunea de apel a fost refuzată';

  @override
  String get alreadyDefaultDialer => 'Deja setat ca dialer implicit';

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
