// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get appTitle => 'Nic Dialer';

  @override
  String get settings => 'Nastavení';

  @override
  String get settingsSearchHint => 'Nastavení vyhledávání';

  @override
  String get settingsSearchNoResults => 'Nebyla nalezena žádná nastavení';

  @override
  String get general => 'Generál';

  @override
  String get theme => 'Téma';

  @override
  String get themeSystemDefault => 'Výchozí nastavení systému';

  @override
  String get themeLight => 'Světlo';

  @override
  String get themeDark => 'Tmavý';

  @override
  String get themeFollowSystem => 'Postupujte podle nastavení systému';

  @override
  String get themeAlwaysLight => 'Vždy používejte světlé téma';

  @override
  String get themeAlwaysDark => 'Vždy používejte tmavé téma';

  @override
  String get language => 'Jazyk';

  @override
  String get languageDeviceDefault => 'Výchozí nastavení zařízení';

  @override
  String get languagePickerTitle => 'Jazyk';

  @override
  String get languageSearchHint => 'Hledat jazyky';

  @override
  String get font => 'Písmo';

  @override
  String get fontSystem => 'Výchozí nastavení systému';

  @override
  String get fontNdot => 'Nic (NDot)';

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
      'Stažení písma se nezdařilo. Zkontrolujte připojení a zkuste to znovu.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Písmo';

  @override
  String get fontPreviewSample => 'Nic Dialer';

  @override
  String get fontAppWide => 'Písmo aplikace';

  @override
  String get fontApplyTo => 'Přihlaste se na';

  @override
  String get fontApplyEntireApp => 'Celá aplikace';

  @override
  String get fontApplyEntireAppSubtitle => 'Všude stejné písmo, včetně hovoru';

  @override
  String get fontApplyTitlesOnly => 'Titulky a záhlaví';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Pouze velké nadpisy a záhlaví sekcí';

  @override
  String get fontApplyCustomize => 'Přizpůsobit';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Vyberte písmo na obrazovce a typ textu';

  @override
  String get fontCustomizeSection => 'Přizpůsobit podle obrazovky';

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
  String get fontRolePageTitle => 'Název stránky';

  @override
  String get fontRoleSectionHeader => 'Záhlaví sekce';

  @override
  String get fontRolePrimary => 'Primární text';

  @override
  String get fontRoleSecondary => 'Sekundární text';

  @override
  String get fontRoleButton => 'Tlačítka';

  @override
  String get fontRoleDialKey => 'Klávesy číselníku';

  @override
  String get fontSurfaceRecents => 'Nedávné';

  @override
  String get fontSurfaceContacts => 'Kontakty';

  @override
  String get fontSurfaceSettings => 'Nastavení';

  @override
  String get fontSurfaceDialpad => 'Číselník';

  @override
  String get fontSurfaceShell => 'Navigace';

  @override
  String get fontSurfaceDefaultDialer => 'Výchozí výzva k vytáčení';

  @override
  String get fontSurfaceFavourites => 'Oblíbené';

  @override
  String get fontSurfaceBlocked => 'Blokovaná čísla';

  @override
  String get fontSurfaceContactDetail => 'Kontaktní údaje';

  @override
  String get fontSurfaceCallHistory => 'Historie hovorů';

  @override
  String get fontSurfaceSheets => 'Listy a sběrače';

  @override
  String get fontSurfaceInCall => 'Obrazovka během hovoru';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — celá aplikace';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — pouze tituly';
  }

  @override
  String get fontSubtitleCustomize => 'Vlastní na obrazovku';

  @override
  String get background => 'Pozadí';

  @override
  String get accent => 'Přízvuk';

  @override
  String get lightBackground => 'světlé pozadí';

  @override
  String get lightAccent => 'Lehký přízvuk';

  @override
  String get darkBackground => 'tmavé pozadí';

  @override
  String get darkAccent => 'Tmavý přízvuk';

  @override
  String get callBackground => 'Pozadí hovoru';

  @override
  String get appIcon => 'Ikona aplikace';

  @override
  String get answerMethod => 'Způsob odpovědi';

  @override
  String get answerSlide => 'Odpovězte posunutím';

  @override
  String get answerSlideSubtitle =>
      'Přejeďte prstem doleva/doprava na liště, jako Google Phone';

  @override
  String get answerButton => 'Klepnutí na tlačítko';

  @override
  String get answerButtonSubtitle =>
      'Klepněte na tlačítka pro příjem nebo odmítnutí';

  @override
  String get answerHuawei => 'Styl Huawei';

  @override
  String get answerHuaweiSubtitle =>
      'Chcete-li odpovědět, přetáhněte kruh na zelený telefon';

  @override
  String get answerHuaweiTileSubtitle =>
      'Huawei — přetáhněte na zelenou / červenou';

  @override
  String get calling => 'Povolání';

  @override
  String get defaultSim => 'Výchozí SIM';

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
  String get askEveryTime => 'Pokaždé se ptejte';

  @override
  String get askEveryTimeSubtitle =>
      'Před každým hovorem zobrazit výběr SIM karty';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Nebyly nalezeny žádné SIM karty';

  @override
  String couldNotLoadSims(String error) {
    return 'Nelze načíst SIM karty: $error';
  }

  @override
  String get allFavourites => 'Všechny oblíbené';

  @override
  String get allFavouritesSubtitle =>
      'Změnit pořadí, odebrat a přidat z kontaktů';

  @override
  String get blockedNumbers => 'Blokovaná čísla';

  @override
  String get blockedNumbersSubtitle => 'Zobrazení a odblokování čísel';

  @override
  String get soundsAndVibration => 'Zvuky a vibrace';

  @override
  String get soundsAndVibrationSubtitle => 'Vyzvánění, vibrace, tóny číselníku';

  @override
  String couldNotOpenSettings(String error) {
    return 'Nelze otevřít nastavení: $error';
  }

  @override
  String get frequentlyContacted => 'Často kontaktováni';

  @override
  String get numberOfRecords => 'Počet záznamů';

  @override
  String get timePeriod => 'Časové období';

  @override
  String get periodLast24Hours => 'Posledních 24 hodin';

  @override
  String get periodLast24HoursSubtitle => 'Hovory z minulého dne';

  @override
  String get periodLast7Days => 'Posledních 7 dní';

  @override
  String get periodLast7DaysSubtitle => 'Hovory z minulého týdne';

  @override
  String get periodLast30Days => 'Posledních 30 dní';

  @override
  String get periodLast30DaysSubtitle => 'Hovory z minulého měsíce';

  @override
  String get periodLast12Months => 'Posledních 12 měsíců';

  @override
  String get periodLast12MonthsSubtitle => 'Hovory z minulého roku';

  @override
  String get periodAllTime => 'Celou dobu';

  @override
  String get periodAllTimeSubtitle => 'Celá historie hovorů';

  @override
  String get frequentMaxOff => 'Vypnuto';

  @override
  String frequentMaxCount(int count) {
    return '$count kontaktů';
  }

  @override
  String get torchBlink => 'Blikající pochodeň';

  @override
  String get torchIncomingCall => 'Svítilna pro příchozí hovory';

  @override
  String get torchOutgoingCall => 'Svítilna pro odchozí hovory';

  @override
  String get torchOngoingCall => 'Svítilna s průběžným voláním';

  @override
  String get torchIncomingInterval => 'Interval příchozího blikání';

  @override
  String get torchOutgoingInterval => 'Interval odchozího blikání';

  @override
  String get torchOngoingInterval => 'Pokračující interval blikání';

  @override
  String get torchOff => 'Vypnuto';

  @override
  String get torchOffIncomingSubtitle => 'Žádná pochodeň při zvonění';

  @override
  String get torchOffOutgoingSubtitle => 'Žádná baterka při vytáčení';

  @override
  String get torchOffOngoingSubtitle => 'Žádná svítilna během aktivního hovoru';

  @override
  String get torchFixedInterval => 'Pevný interval';

  @override
  String get torchFixedIntervalSubtitle => 'Blikejte nastavenou rychlostí';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds bliká';
  }

  @override
  String get flashlightUnavailable =>
      'Svítilna není na tomto zařízení k dispozici';

  @override
  String get glyphLights => 'Světla glyfů';

  @override
  String get glyphCallingAnimation => 'Animace volání glyfů';

  @override
  String get glyphOngoingAnimation => 'Animace probíhajícího hovoru glyfů';

  @override
  String get glyphNone => 'Žádný';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Deaktivujte světla Glyph pro odchozí hovory';

  @override
  String get glyphNoneInCallSubtitle =>
      'Během aktivního hovoru deaktivujte světla Glyph';

  @override
  String get glyphBreathProgress => 'Breath & Progress';

  @override
  String get glyphBreathProgressSubtitle =>
      'Světla dýchají, zatímco linka se zaplňuje více než 65 s';

  @override
  String get glyphAccumulate => 'Akumulovat';

  @override
  String get glyphAccumulateSubtitle =>
      'Hromadící se animace na světlech C1-C4';

  @override
  String get glyphSingle => 'Singl';

  @override
  String get glyphSingleSubtitle => 'Jediné světlo pohybující se přes C1-C4';

  @override
  String get glyphBreath => 'Dech';

  @override
  String get glyphBreathSubtitle => 'Vyberte světla a rychlost';

  @override
  String get glyphSteady => 'Stabilní';

  @override
  String get glyphSteadySubtitle => 'Vybraná světla zůstanou svítit';

  @override
  String get breathSettings => 'Nastavení dechu';

  @override
  String get activeLights => 'Aktivní světla';

  @override
  String lightsCount(int count) {
    return '$count světla';
  }

  @override
  String get speedSettings => 'Nastavení rychlosti';

  @override
  String speedSettingsDelay(int ms) {
    return 'Zpoždění ${ms}ms';
  }

  @override
  String get durationAndSpeed => 'Doba trvání a rychlost';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s trvání, ${interval}ms interval';
  }

  @override
  String get cancel => 'Zrušit';

  @override
  String get done => 'Hotovo';

  @override
  String get save => 'Uložit';

  @override
  String get block => 'Blok';

  @override
  String get delete => 'Vymazat';

  @override
  String get recents => 'Nedávné';

  @override
  String get contacts => 'Kontakty';

  @override
  String get hideFavouritesOnRecents => 'Skrýt oblíbené položky v Nedávných';

  @override
  String get showFavouritesOnRecents => 'Zobrazit oblíbené v Nedávných';

  @override
  String get ongoingCall => 'Probíhající hovor';

  @override
  String get setAsDefaultTitle => 'NASTAVIT JAKO\nVÝCHOZÍ';

  @override
  String get setAsDefaultBody =>
      'Chcete-li používat program Nothing Dialer, musí být nastaven jako výchozí aplikace pro telefon. To vám umožní spravovat hovory, zobrazovat historii a používat animace glyfů.';

  @override
  String get setAsDefaultButton => 'NASTAVIT JAKO VÝCHOZÍ';

  @override
  String get nothingDialerBrand => 'VOLIČ NIC 1';

  @override
  String get favourites => 'Oblíbené';

  @override
  String get addFavourite => 'Přidat oblíbené';

  @override
  String get favouritesDrawerHint =>
      'Pomocí nabídky přidejte kontakty. Klepněte mimo zásuvku nebo ji zavřete přejetím. Označte kontakt hvězdičkou z jeho podrobností nebo dlouze stiskněte hovor v seznamu Nedávné.';

  @override
  String get menu => 'Menu';

  @override
  String get noFavouritesYet =>
      'Zatím žádné oblíbené.\nOtevřete nabídku a přidejte kontakt nebo kontakt hvězdičkou.';

  @override
  String get contactsPermissionNeeded => 'Vyžaduje se oprávnění ke kontaktům';

  @override
  String get chooseContact => 'Vyberte kontakt';

  @override
  String get noPhone => 'Žádný telefon';

  @override
  String get pickNumber => 'Vyberte číslo';

  @override
  String get contactHasNoPhone => 'Tento kontakt nemá žádné telefonní číslo';

  @override
  String get blockNumber => 'Číslo bloku';

  @override
  String get enterPhoneNumber => 'Zadejte telefonní číslo';

  @override
  String unblockedDisplay(String display) {
    return 'Odblokováno $display';
  }

  @override
  String get couldNotUnblockNumber => 'Číslo se nepodařilo odblokovat';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked blokováno • $matched odpovídá';
  }

  @override
  String get contactsPermissionMissing =>
      'Chybí oprávnění ke kontaktům. Klepnutím opravte.';

  @override
  String get noBlockedNumbers => 'Žádná blokovaná čísla';

  @override
  String get unknownContact => 'Neznámý kontakt';

  @override
  String get unblock => 'Odblokovat';

  @override
  String get permissionNeeded => 'Je potřeba povolení';

  @override
  String get grantPhonePermission =>
      'Udělte telefonu oprávnění k zobrazení vaší historie hovorů.';

  @override
  String get grantContactsPermission =>
      'Udělte kontaktům oprávnění k zobrazení vašeho adresáře.';

  @override
  String get openSettings => 'Otevřete Nastavení';

  @override
  String get tryAgain => 'Zkuste to znovu';

  @override
  String get couldNotLoadContacts => 'Kontakty nelze načíst';

  @override
  String get contactsLoadError => 'Při čtení vašeho adresáře se něco pokazilo.';

  @override
  String get noContactsFound => 'Nebyly nalezeny žádné kontakty';

  @override
  String get contactsEmptySubtitle =>
      'Zde se zobrazí kontakty z vašeho zařízení.';

  @override
  String get searchContacts => 'Hledat kontakty…';

  @override
  String get searchRecentCalls => 'Hledat poslední hovory';

  @override
  String get fromContacts => 'Z kontaktů';

  @override
  String get recentsSearchSection => 'Nedávné vyhledávání';

  @override
  String get recentsSearchShowContacts => 'Zobrazit kontakty ve vyhledávání';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Při vyhledávání Nedávné také zobrazit odpovídající osoby z vašeho adresáře pod výsledky historie hovorů.';

  @override
  String get voiceSearch => 'Hlasové vyhledávání';

  @override
  String get createNewContact => 'Vytvořte nový kontakt';

  @override
  String callError(String error) {
    return 'Chyba volání: $error';
  }

  @override
  String get noRecentCalls => 'Žádné nedávné hovory';

  @override
  String get callHistoryEmpty => 'Zde se zobrazí vaše historie hovorů.';

  @override
  String get loadMore => 'Načíst více';

  @override
  String get frequentlyContactedHeader => 'Často kontaktováni';

  @override
  String get recentHistory => 'Nedávná historie';

  @override
  String get noFavouritesRecentsHint =>
      'Zatím žádné oblíbené. Označte kontakt hvězdičkou, dlouze stiskněte hovor nebo použijte kartu Oblíbené.';

  @override
  String get copyNumber => 'Kopírovat číslo';

  @override
  String get editNumberBeforeCall => 'Upravte číslo před voláním';

  @override
  String get removeFromFavourites => 'Odebrat z oblíbených';

  @override
  String get addToFavourites => 'Přidat k oblíbeným';

  @override
  String get blockNumberQuestion => 'Číslo bloku?';

  @override
  String blockNumberConfirm(String number) {
    return 'Od $number již nebudete přijímat hovory ani SMS.';
  }

  @override
  String get blocked => 'Blokováno';

  @override
  String get couldNotBlock => 'Nelze zablokovat';

  @override
  String get contactNotOnDevice => 'Kontakt není v tomto zařízení uložen';

  @override
  String get unblocked => 'Odblokováno';

  @override
  String get numberCopied => 'Číslo zkopírováno';

  @override
  String get showLess => 'Ukažte méně';

  @override
  String get showAllTimes => 'Zobrazit všechny časy';

  @override
  String mostRecent(String time) {
    return 'Nejnovější · $time';
  }

  @override
  String get videoCall => 'Videohovor';

  @override
  String get couldNotPlaceVideoCall => 'Nelze uskutečnit videohovor';

  @override
  String get message => 'Zpráva';

  @override
  String get couldNotOpenMessaging =>
      'Nelze otevřít aplikaci pro zasílání zpráv';

  @override
  String get history => 'Dějiny';

  @override
  String get viewContact => 'Zobrazit kontakt';

  @override
  String get addToContact => 'Přidat ke kontaktu';

  @override
  String get callTypeMissed => 'Zmeškaný';

  @override
  String get callTypeRejected => 'Odmítnuto';

  @override
  String get callTypeIncoming => 'Přicházející';

  @override
  String get callTypeOutgoing => 'Odchozí';

  @override
  String get today => 'Dnes';

  @override
  String get yesterday => 'Včera';

  @override
  String get justNow => 'Právě teď';

  @override
  String minutesAgo(int count) {
    return 'před $count min';
  }

  @override
  String hoursAgo(int count) {
    return 'před $count h';
  }

  @override
  String get filterAll => 'Vše';

  @override
  String get filterMissed => 'Zmeškaný';

  @override
  String get filterContacts => 'Kontakty';

  @override
  String get filterNonContacts => 'Nekontaktní';

  @override
  String get iconUpdated =>
      'Ikona aktualizována. Obnovení domovské obrazovky může chvíli trvat.';

  @override
  String get iconSavedRelease =>
      'Volba uložena. Ikona domovské obrazovky se aktualizuje ve verzích vydání.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Ikonu nelze změnit: $error';
  }

  @override
  String get launcherClassicBlack => 'klasický (černý)';

  @override
  String get launcherLight => 'Světlo';

  @override
  String get launcherNothingRed => 'Nic červeného';

  @override
  String get launcherDarkGrey => 'Tmavě šedá';

  @override
  String get launcherCream => 'Krém';

  @override
  String get launcherRetroPhone => 'Retro telefon';

  @override
  String get launcherRetroPhoneLight => 'Retro telefon (světlý)';

  @override
  String get voiceSearchUnavailable =>
      'Hlasové vyhledávání není na tomto zařízení dostupné.';

  @override
  String voiceSearchFailed(String error) {
    return 'Hlasové vyhledávání se nezdařilo: $error';
  }

  @override
  String get customColor => 'Zvyk';

  @override
  String get selectColor => 'Vyberte barvu';

  @override
  String get reset => 'Resetovat';

  @override
  String get simPickerTitle => 'Vyberte SIM';

  @override
  String get simChooseForCall => 'Vyberte SIM pro tento hovor';

  @override
  String get defaultSimAsk => 'Pokaždé se ptejte';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Kontaktní údaje';

  @override
  String get call => 'Volání';

  @override
  String get share => 'Podíl';

  @override
  String get favourite => 'Oblíbený';

  @override
  String get unfavourite => 'Neoblíbený';

  @override
  String get blockContact => 'Blokovat kontakt';

  @override
  String get unblockContact => 'Odblokujte kontakt';

  @override
  String get deleteContact => 'Smazat kontakt';

  @override
  String get phone => 'Telefon';

  @override
  String get email => 'E-mail';

  @override
  String get ringtone => 'Vyzváněcí tón';

  @override
  String get defaultRingtone => 'Výchozí';

  @override
  String get simForContact => 'SIM pro tento kontakt';

  @override
  String get callHistoryTitle => 'Historie hovorů';

  @override
  String get noCallsWithNumber => 'Žádné hovory s tímto číslem';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Animace glyfů';

  @override
  String get inCallGlyphAnimationStyle => 'Animace glyfů během hovoru';

  @override
  String get recordsOff => 'Vypnuto';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Výchozí SIM';

  @override
  String get nothingPhoneOnly => 'Nic Pouze telefon';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Funkce glyfů vyžadují telefon Nothing';

  @override
  String get custom => 'Zvyk';

  @override
  String presetColorHex(String hex) {
    return 'Přednastaveno · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Vlastní · $hex';
  }

  @override
  String get oneContact => '1 kontakt';

  @override
  String upToContacts(int count) {
    return 'Až $count kontaktů';
  }

  @override
  String get answerButtonTapSubtitle => 'Klepnutím na tlačítko přijmete';

  @override
  String get filterCalls => 'Filtrovat hovory';

  @override
  String get filterTooltip => 'Filtr';

  @override
  String get settingsTooltip => 'Nastavení';

  @override
  String get filterAllSubtitle => 'Celý protokol hovorů';

  @override
  String get filterMissedSubtitle => 'Zmeškané a odmítnuté';

  @override
  String get filterContactsSubtitle => 'Hovory odpovídající uloženému kontaktu';

  @override
  String get filterNonContactsSubtitle => 'Čísla nejsou ve vašem adresáři';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Probíhající hovor: $detail';
  }

  @override
  String get defaultSimForCalls => 'Výchozí SIM pro hovory';

  @override
  String get blinkInterval => 'Interval blikání';

  @override
  String get close => 'Blízko';

  @override
  String get frequentlyContactedInfoBody =>
      'Zobrazuje vaše nejčastěji volaná telefonní čísla v horní části karty Nedávné podle toho, kolik příchozích, odchozích, zmeškaných nebo odmítnutých hovorů jste měli s každým číslem ve zvoleném časovém období.\n\nPočet záznamů: nastavením na 0 tuto funkci vypnete. Použijte 1–20 k zobrazení velkého počtu hlavních kontaktů.\n\nČasové období platí pouze v případě, že je zobrazen alespoň jeden kontakt.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count svítí, ${ms}ms rychlost';
  }

  @override
  String get deleteContactQuestion => 'Smazat kontakt?';

  @override
  String get deleteContactBody =>
      'Tento kontakt bude trvale smazán z vašeho zařízení.';

  @override
  String get blockContactQuestion => 'Blokovat kontakt?';

  @override
  String get unblockContactQuestion => 'Odblokovat kontakt?';

  @override
  String get blockContactBody =>
      'Od tohoto kontaktu již nebudete přijímat hovory ani SMS.';

  @override
  String get unblockContactBody =>
      'Začnete přijímat hovory a SMS od tohoto kontaktu.';

  @override
  String get contactBlocked => 'Kontakt je zablokován';

  @override
  String get contactUnblocked => 'Kontakt odblokován';

  @override
  String get noPhoneNumbersToBlock => 'Žádná telefonní čísla k blokování';

  @override
  String get simSameAsSystem => 'Stejné jako systém';

  @override
  String get simSameAsSystemSubtitle => 'V Nastavení následuje Výchozí SIM';

  @override
  String get simAskEveryTimeForContact =>
      'Vždy zobrazit výběr SIM karty pro tento kontakt';

  @override
  String get ringtoneSetForContact =>
      'Vyzváněcí tón nastavený pro tento kontakt globálně';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Nepodařilo se vybrat vyzváněcí tón: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Chyba: $error';
  }

  @override
  String get noCallHistoryFound => 'Nebyla nalezena žádná historie hovorů';

  @override
  String get speedDialVoicemail => 'Rychlá volba: Hlasová schránka';

  @override
  String shareContactSubject(String name) {
    return 'Kontakt: $name';
  }

  @override
  String get contactInfo => 'Kontaktní údaje';

  @override
  String get dontAskAgainSim => 'Už se neptejte';

  @override
  String get simDontAskAgainSubtitle =>
      'Použít tuto SIM jako výchozí (změna v Nastavení)';

  @override
  String get addContact => 'Přidat kontakt';

  @override
  String get createContact => 'Vytvořte kontakt';

  @override
  String get paste => 'Pasta';

  @override
  String get clear => 'Jasný';

  @override
  String get returnToCall => 'Vraťte se k hovoru';

  @override
  String get numberOfRecordsTitle => 'Počet záznamů';

  @override
  String get recordsPickerSubtitle =>
      'Kolik položek často kontaktovaných k zobrazení (0 = vypnuto)';

  @override
  String get torchInfoTitle => 'Pochodeň bliká';

  @override
  String get torchInfoBody =>
      'Bliká bleskem fotoaparátu během příchozích, odchozích nebo probíhajících hovorů. Nezávislé na světlech Glyph.';

  @override
  String get glyphMapTitle => 'Rozložení glyfů';

  @override
  String get glyphMapBody =>
      'Nic Telefon 1 Glyph LED zóny. Odchozí animace a animace během hovoru používají tyto kanály.';

  @override
  String get answerMethodTitle => 'Způsob odpovědi';

  @override
  String get glyphOutgoingCallStyleTitle => 'Styl odchozího hovoru';

  @override
  String get glyphInCallAnimationTitle => 'Animace glyfů během hovoru';

  @override
  String get themePickerTitle => 'Téma';

  @override
  String get torchIncomingTitle => 'Svítilna pro příchozí hovory';

  @override
  String get torchOutgoingTitle => 'Svítilna pro odchozí hovory';

  @override
  String get torchOngoingTitle => 'Svítilna s průběžným voláním';

  @override
  String get timePeriodTitle => 'Časové období';

  @override
  String get ok => 'OK';

  @override
  String get confirmDeleteCall => 'Smazat tento hovor z historie?';

  @override
  String get confirmDeleteAllCalls => 'Smazat všechny hovory s tímto číslem?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Pošlete zprávu';

  @override
  String get addToExistingContactAction => 'Přidat ke kontaktu';

  @override
  String get mobileLabel => 'Mobilní';

  @override
  String get callingSimForContactTitle => 'Volání na SIM pro tento kontakt';

  @override
  String get contactSettings => 'Nastavení kontaktu';

  @override
  String get setCallingSim => 'Nastavit SIM pro volání';

  @override
  String get contactRingtone => 'Kontaktní vyzváněcí tón';

  @override
  String get shareContact => 'Sdílejte kontakt';

  @override
  String get blockNumbers => 'Bloková čísla';

  @override
  String get unblockNumbers => 'Odblokujte čísla';

  @override
  String get connectedApps => 'Připojené aplikace';

  @override
  String get simNotSet => 'Není nastaveno';

  @override
  String get ringtoneDefault => 'Výchozí';

  @override
  String get customRingtone => 'Zvyk';

  @override
  String get aboutSection => 'O';

  @override
  String get aboutFeedbackSection => 'Informace a zpětná vazba';

  @override
  String get aboutDescription =>
      'Nothing Dialer je open source. Pokud jste vývojář, můžete prozkoumat kód a přispět.';

  @override
  String get aboutViewSource => 'Zobrazit na GitHubu';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Odkaz nelze otevřít';

  @override
  String get reviewSection => 'Recenze';

  @override
  String get reviewDescription =>
      'Baví vás Nothing Dialer? Vaše hodnocení na Google Play pomůže ostatním najít aplikaci.';

  @override
  String get reviewRateOnPlay => 'Ohodnoťte na Google Play';

  @override
  String get reviewRateOnPlaySubtitle =>
      'Zanechte hodnocení, aniž byste opustili aplikaci';

  @override
  String get reviewCouldNotOpen => 'Nelze otevřít Google Play';

  @override
  String get breathSpeed => 'Rychlost dechu';

  @override
  String get breathSpeedBlinkHint => 'Nižší = mrknutí, vyšší = pomalý dech';

  @override
  String get speedSliderHint => 'Nižší = Rychlejší, Vyšší = Pomalejší';

  @override
  String get swatchDefault => 'Výchozí';

  @override
  String get customAccentColorPicker => 'Vlastní barva akcentu';

  @override
  String get customLightBackgroundPicker => 'Vlastní světlé pozadí';

  @override
  String get customDarkBackgroundPicker => 'Vlastní tmavé pozadí';

  @override
  String get customCallBackgroundPicker => 'Vlastní pozadí hovoru';

  @override
  String get ongoingCallStyleTitle => 'Styl probíhajícího hovoru';

  @override
  String get glyphMapUnavailable => 'Mapa symbolů není k dispozici';

  @override
  String get animationDelayRange => 'Zpoždění animace (1–10 s)';

  @override
  String get animationDelayRangeSingle => 'Zpoždění animace (0,1–10 s)';

  @override
  String get inCallMute => 'Ztlumit';

  @override
  String get inCallKeypad => 'Klávesnice';

  @override
  String get inCallSpeaker => 'Reproduktor';

  @override
  String get inCallMore => 'Více';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Telefon';

  @override
  String get inCallAddCall => 'Přidat hovor';

  @override
  String get inCallChangeSim => 'Změňte SIM';

  @override
  String get inCallDecline => 'Pokles';

  @override
  String get inCallAnswer => 'Odpověď';

  @override
  String get inCallMessage => 'Zpráva';

  @override
  String get inCallCalling => 'Povolání…';

  @override
  String get inCallIncoming => 'Příchozí hovor';

  @override
  String get inCallSelectSim => 'Vyberte SIM…';

  @override
  String get inCallSwitchingSim => 'Přepínání SIM…';

  @override
  String get inCallCallEnded => 'Hovor ukončen';

  @override
  String inCallCallingVia(String sim) {
    return 'Volání přes $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Volání přes <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Vyberte SIM pro tento hovor';

  @override
  String get inCallDragAnswerDecline =>
      'Přetažením doprava přijmete odpověď · Přetažením doleva odmítnete';

  @override
  String inCallMobileNumber(String number) {
    return 'Mobil $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (aktuální)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Volejte přes <b>$sim</b> od';
  }

  @override
  String get inCallCallFrom => 'Volat od';

  @override
  String get inCallUnknown => 'Neznámý';

  @override
  String get selectContactRingtone => 'Vyberte vyzváněcí tón kontaktu';

  @override
  String get speakToSearchPrompt => 'Pro vyhledávání mluvte';

  @override
  String get phonePermissionRequired => 'Vyžaduje se povolení telefonu';

  @override
  String callFailed(String error) {
    return 'Volání se nezdařilo: $error';
  }

  @override
  String get callPermissionDenied => 'Povolení k hovoru odepřeno';

  @override
  String get alreadyDefaultDialer => 'Již nastaven jako výchozí číselník';

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
