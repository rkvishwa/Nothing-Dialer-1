// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get appTitle => 'Nič Dialer';

  @override
  String get settings => 'Nastavenia';

  @override
  String get settingsSearchHint => 'Nastavenia vyhľadávania';

  @override
  String get settingsSearchNoResults => 'Nenašli sa žiadne nastavenia';

  @override
  String get general => 'generál';

  @override
  String get theme => 'Téma';

  @override
  String get themeSystemDefault => 'Predvolené nastavenie systému';

  @override
  String get themeLight => 'Svetlo';

  @override
  String get themeDark => 'Tmavý';

  @override
  String get themeFollowSystem => 'Postupujte podľa systémových nastavení';

  @override
  String get themeAlwaysLight => 'Vždy používajte svetlú tému';

  @override
  String get themeAlwaysDark => 'Vždy používajte tmavú tému';

  @override
  String get language => 'Jazyk';

  @override
  String get languageDeviceDefault => 'Predvolené nastavenie zariadenia';

  @override
  String get languagePickerTitle => 'Jazyk';

  @override
  String get languageSearchHint => 'Hľadať jazyky';

  @override
  String get font => 'Písmo';

  @override
  String get fontSystem => 'Predvolené nastavenie systému';

  @override
  String get fontNdot => 'nič (NDot)';

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
      'Sťahovanie písma zlyhalo. Skontrolujte pripojenie a skúste to znova.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Písmo';

  @override
  String get fontPreviewSample => 'Nič Dialer';

  @override
  String get fontAppWide => 'Písmo aplikácie';

  @override
  String get fontApplyTo => 'Použiť na';

  @override
  String get fontApplyEntireApp => 'Celá aplikácia';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Všade rovnaké písmo, vrátane hovoru';

  @override
  String get fontApplyTitlesOnly => 'Názvy a hlavičky';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Len veľké nadpisy a hlavičky sekcií';

  @override
  String get fontApplyCustomize => 'Prispôsobiť';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Vyberte písmo na obrazovke a typ textu';

  @override
  String get fontCustomizeSection => 'Prispôsobiť podľa obrazovky';

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
  String get fontRolePageTitle => 'Názov stránky';

  @override
  String get fontRoleSectionHeader => 'Hlavička sekcie';

  @override
  String get fontRolePrimary => 'Primárny text';

  @override
  String get fontRoleSecondary => 'Sekundárny text';

  @override
  String get fontRoleButton => 'Tlačidlá';

  @override
  String get fontRoleDialKey => 'Klávesy číselnej klávesnice';

  @override
  String get fontSurfaceRecents => 'Nedávne';

  @override
  String get fontSurfaceContacts => 'Kontakty';

  @override
  String get fontSurfaceSettings => 'Nastavenia';

  @override
  String get fontSurfaceDialpad => 'Číselník';

  @override
  String get fontSurfaceShell => 'Navigácia';

  @override
  String get fontSurfaceDefaultDialer => 'Predvolená výzva vytáčania';

  @override
  String get fontSurfaceFavourites => 'Obľúbené';

  @override
  String get fontSurfaceBlocked => 'Blokované čísla';

  @override
  String get fontSurfaceContactDetail => 'Kontaktný údaj';

  @override
  String get fontSurfaceCallHistory => 'História hovorov';

  @override
  String get fontSurfaceSheets => 'Listy a zberače';

  @override
  String get fontSurfaceInCall => 'Obrazovka počas hovoru';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — celá aplikácia';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — len tituly';
  }

  @override
  String get fontSubtitleCustomize => 'Vlastné na obrazovku';

  @override
  String get background => 'Pozadie';

  @override
  String get accent => 'Prízvuk';

  @override
  String get lightBackground => 'Svetlé pozadie';

  @override
  String get lightAccent => 'Svetlý akcent';

  @override
  String get darkBackground => 'Tmavé pozadie';

  @override
  String get darkAccent => 'Tmavý prízvuk';

  @override
  String get callBackground => 'Pozadie hovoru';

  @override
  String get appIcon => 'Ikona aplikácie';

  @override
  String get answerMethod => 'Spôsob odpovede';

  @override
  String get answerSlide => 'Odpovedzte posunutím';

  @override
  String get answerSlideSubtitle =>
      'Potiahnite prstom doľava/doprava po paneli, ako napríklad Google Phone';

  @override
  String get answerButton => 'Klepnutie na tlačidlo';

  @override
  String get answerButtonSubtitle =>
      'Klepnite na tlačidlá prijatia alebo odmietnutia';

  @override
  String get answerHuawei => 'Huawei štýl';

  @override
  String get answerHuaweiSubtitle =>
      'Ak chcete odpovedať, presuňte kruh na zelený telefón';

  @override
  String get answerHuaweiTileSubtitle =>
      'Huawei — potiahnite na zelenú / červenú';

  @override
  String get calling => 'Volanie';

  @override
  String get defaultSim => 'Predvolená SIM karta';

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
  String get askEveryTime => 'Pýtajte sa zakaždým';

  @override
  String get askEveryTimeSubtitle =>
      'Pred každým hovorom zobraziť výber SIM karty';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Nenašli sa žiadne SIM karty';

  @override
  String couldNotLoadSims(String error) {
    return 'Nepodarilo sa načítať SIM karty: $error';
  }

  @override
  String get allFavourites => 'Všetky obľúbené';

  @override
  String get allFavouritesSubtitle =>
      'Zmeňte poradie, odstráňte a pridajte kontakty';

  @override
  String get blockedNumbers => 'Blokované čísla';

  @override
  String get blockedNumbersSubtitle => 'Zobrazte a odblokujte čísla';

  @override
  String get soundsAndVibration => 'Zvuky a vibrácie';

  @override
  String get soundsAndVibrationSubtitle =>
      'Vyzváňací tón, vibrácie, tóny číselníka';

  @override
  String couldNotOpenSettings(String error) {
    return 'Nepodarilo sa otvoriť nastavenia: $error';
  }

  @override
  String get frequentlyContacted => 'Často kontaktovaní';

  @override
  String get numberOfRecords => 'Počet záznamov';

  @override
  String get timePeriod => 'Časové obdobie';

  @override
  String get periodLast24Hours => 'Posledných 24 hodín';

  @override
  String get periodLast24HoursSubtitle => 'Hovory z minulého dňa';

  @override
  String get periodLast7Days => 'Posledných 7 dní';

  @override
  String get periodLast7DaysSubtitle => 'Hovory z minulého týždňa';

  @override
  String get periodLast30Days => 'Posledných 30 dní';

  @override
  String get periodLast30DaysSubtitle => 'Hovory za posledný mesiac';

  @override
  String get periodLast12Months => 'Posledných 12 mesiacov';

  @override
  String get periodLast12MonthsSubtitle => 'Hovory z minulého roka';

  @override
  String get periodAllTime => 'Celý čas';

  @override
  String get periodAllTimeSubtitle => 'Celá história hovorov';

  @override
  String get frequentMaxOff => 'Vypnuté';

  @override
  String frequentMaxCount(int count) {
    return '$count kontaktov';
  }

  @override
  String get torchBlink => 'Baterka Blink';

  @override
  String get torchIncomingCall => 'Baterka na prichádzajúce hovory';

  @override
  String get torchOutgoingCall => 'Baterka na odchádzajúci hovor';

  @override
  String get torchOngoingCall => 'Baterka na trvalé volanie';

  @override
  String get torchIncomingInterval => 'Interval prichádzajúceho žmurkania';

  @override
  String get torchOutgoingInterval => 'Interval odchádzajúceho blikania';

  @override
  String get torchOngoingInterval => 'Prebiehajúci interval blikania';

  @override
  String get torchOff => 'Vypnuté';

  @override
  String get torchOffIncomingSubtitle => 'Žiadna baterka počas zvonenia';

  @override
  String get torchOffOutgoingSubtitle => 'Žiadna baterka pri vytáčaní';

  @override
  String get torchOffOngoingSubtitle => 'Žiadna baterka počas aktívneho hovoru';

  @override
  String get torchFixedInterval => 'Pevný interval';

  @override
  String get torchFixedIntervalSubtitle => 'Blikanie nastavenou rýchlosťou';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds blikať';
  }

  @override
  String get flashlightUnavailable =>
      'Baterka nie je na tomto zariadení k dispozícii';

  @override
  String get glyphLights => 'Svetlá glyfov';

  @override
  String get glyphCallingAnimation => 'Animácia volania glyfov';

  @override
  String get glyphOngoingAnimation => 'Animácia prebiehajúceho hovoru glyfov';

  @override
  String get glyphNone => 'žiadne';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Vypnite svetlá Glyph pre odchádzajúce hovory';

  @override
  String get glyphNoneInCallSubtitle =>
      'Počas aktívneho hovoru vypnite svetlá Glyph';

  @override
  String get glyphBreathProgress => 'Breath & Progress';

  @override
  String get glyphBreathProgressSubtitle =>
      'Svetlá dýchajú, zatiaľ čo linka sa zapĺňa viac ako 65 s';

  @override
  String get glyphAccumulate => 'Akumulovať';

  @override
  String get glyphAccumulateSubtitle =>
      'Hromadiaca sa animácia na svetlách C1-C4';

  @override
  String get glyphSingle => 'Slobodný';

  @override
  String get glyphSingleSubtitle => 'Jediné svetlo pohybujúce sa cez C1-C4';

  @override
  String get glyphBreath => 'Dych';

  @override
  String get glyphBreathSubtitle => 'Vyberte svetlá a rýchlosť';

  @override
  String get glyphSteady => 'Stabilný';

  @override
  String get glyphSteadySubtitle => 'Vybrané svetlá zostanú svietiť';

  @override
  String get breathSettings => 'Nastavenia dychu';

  @override
  String get activeLights => 'Aktívne svetlá';

  @override
  String lightsCount(int count) {
    return '$count svieti';
  }

  @override
  String get speedSettings => 'Nastavenia rýchlosti';

  @override
  String speedSettingsDelay(int ms) {
    return 'Oneskorenie ${ms}ms';
  }

  @override
  String get durationAndSpeed => 'Trvanie a rýchlosť';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return 'Trvanie ${duration}s, interval ${interval}ms';
  }

  @override
  String get cancel => 'Zrušiť';

  @override
  String get done => 'Hotovo';

  @override
  String get save => 'Uložiť';

  @override
  String get block => 'Blokovať';

  @override
  String get delete => 'Odstrániť';

  @override
  String get recents => 'Nedávne';

  @override
  String get contacts => 'Kontakty';

  @override
  String get hideFavouritesOnRecents =>
      'Skryť obľúbené položky v sekcii Nedávne';

  @override
  String get showFavouritesOnRecents => 'Zobraziť obľúbené v Nedávnych';

  @override
  String get ongoingCall => 'Prebiehajúci hovor';

  @override
  String get setAsDefaultTitle => 'NASTAVIŤ AKO\nDEFAULT';

  @override
  String get setAsDefaultBody =>
      'Ak chcete používať program Nothing Dialer, musíte ho nastaviť ako predvolenú aplikáciu pre telefón. To vám umožní spravovať hovory, prezerať históriu a používať animácie glyfov.';

  @override
  String get setAsDefaultButton => 'NASTAVIŤ AKO VÝCHOZÍ';

  @override
  String get nothingDialerBrand => 'NIČ DIALER 1';

  @override
  String get favourites => 'Obľúbené';

  @override
  String get addFavourite => 'Pridať obľúbené';

  @override
  String get favouritesDrawerHint =>
      'Pomocou ponuky pridajte kontakty. Klepnite mimo zásuvky alebo ju zatvorte potiahnutím. Označte kontakt hviezdičkou z jeho podrobností alebo dlho stlačte hovor v časti Nedávne.';

  @override
  String get menu => 'Menu';

  @override
  String get noFavouritesYet =>
      'Zatiaľ žiadne obľúbené.\nOtvorte ponuku a pridajte kontakt alebo hviezdičkou.';

  @override
  String get contactsPermissionNeeded => 'Vyžaduje sa povolenie kontaktov';

  @override
  String get chooseContact => 'Vyberte kontakt';

  @override
  String get noPhone => 'Žiadny telefón';

  @override
  String get pickNumber => 'Vyberte číslo';

  @override
  String get contactHasNoPhone => 'Tento kontakt nemá žiadne telefónne číslo';

  @override
  String get blockNumber => 'Číslo bloku';

  @override
  String get enterPhoneNumber => 'Zadajte telefónne číslo';

  @override
  String unblockedDisplay(String display) {
    return 'Odblokované $display';
  }

  @override
  String get couldNotUnblockNumber => 'Číslo sa nepodarilo odblokovať';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked blokovaných • $matched zhodných';
  }

  @override
  String get contactsPermissionMissing =>
      'Chýba povolenie na kontakty. Opravte klepnutím.';

  @override
  String get noBlockedNumbers => 'Žiadne blokované čísla';

  @override
  String get unknownContact => 'Neznámy kontakt';

  @override
  String get unblock => 'Odblokovať';

  @override
  String get permissionNeeded => 'Vyžaduje sa povolenie';

  @override
  String get grantPhonePermission =>
      'Udeľte telefónu povolenie na zobrazenie histórie hovorov.';

  @override
  String get grantContactsPermission =>
      'Udeľte kontaktom povolenie na zobrazenie vášho adresára.';

  @override
  String get openSettings => 'Otvorte Nastavenia';

  @override
  String get tryAgain => 'Skúste to znova';

  @override
  String get couldNotLoadContacts => 'Kontakty sa nepodarilo načítať';

  @override
  String get contactsLoadError =>
      'Pri čítaní vášho adresára sa vyskytla chyba.';

  @override
  String get noContactsFound => 'Nenašli sa žiadne kontakty';

  @override
  String get contactsEmptySubtitle =>
      'Tu sa zobrazia kontakty z vášho zariadenia.';

  @override
  String get searchContacts => 'Hľadať kontakty…';

  @override
  String get searchRecentCalls => 'Vyhľadajte posledné hovory';

  @override
  String get fromContacts => 'Z kontaktov';

  @override
  String get recentsSearchSection => 'Nedávne vyhľadávanie';

  @override
  String get recentsSearchShowContacts => 'Zobraziť kontakty vo vyhľadávaní';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Pri vyhľadávaní Nedávne môžete pod výsledkami histórie hovorov zobraziť aj zhodných ľudí z vášho adresára.';

  @override
  String get voiceSearch => 'Hlasové vyhľadávanie';

  @override
  String get createNewContact => 'Vytvorte nový kontakt';

  @override
  String callError(String error) {
    return 'Chyba hovoru: $error';
  }

  @override
  String get noRecentCalls => 'Žiadne nedávne hovory';

  @override
  String get callHistoryEmpty => 'Tu sa zobrazí vaša história hovorov.';

  @override
  String get loadMore => 'Načítať viac';

  @override
  String get frequentlyContactedHeader => 'Často kontaktovaní';

  @override
  String get recentHistory => 'Nedávna história';

  @override
  String get noFavouritesRecentsHint =>
      'Zatiaľ žiadne obľúbené. Označte kontakt hviezdičkou, dlho stlačte hovor alebo použite kartu Obľúbené.';

  @override
  String get copyNumber => 'Kopírovať číslo';

  @override
  String get editNumberBeforeCall => 'Pred hovorom upravte číslo';

  @override
  String get removeFromFavourites => 'Odstrániť z obľúbených';

  @override
  String get addToFavourites => 'Pridať k obľúbeným';

  @override
  String get blockNumberQuestion => 'Číslo bloku?';

  @override
  String blockNumberConfirm(String number) {
    return 'Od $number už nebudete dostávať hovory ani SMS.';
  }

  @override
  String get blocked => 'Zablokované';

  @override
  String get couldNotBlock => 'Nepodarilo sa zablokovať';

  @override
  String get contactNotOnDevice => 'Kontakt nie je v tomto zariadení uložený';

  @override
  String get unblocked => 'Odblokované';

  @override
  String get numberCopied => 'Číslo bolo skopírované';

  @override
  String get showLess => 'Ukážte menej';

  @override
  String get showAllTimes => 'Zobraziť všetky časy';

  @override
  String mostRecent(String time) {
    return 'Najnovšie · $time';
  }

  @override
  String get videoCall => 'Videohovor';

  @override
  String get couldNotPlaceVideoCall => 'Nepodarilo sa uskutočniť videohovor';

  @override
  String get message => 'Správa';

  @override
  String get couldNotOpenMessaging =>
      'Nepodarilo sa otvoriť aplikáciu na odosielanie správ';

  @override
  String get history => 'História';

  @override
  String get viewContact => 'Zobraziť kontakt';

  @override
  String get addToContact => 'Pridať do kontaktu';

  @override
  String get callTypeMissed => 'Zmeškané';

  @override
  String get callTypeRejected => 'Odmietnuté';

  @override
  String get callTypeIncoming => 'Prichádzajúce';

  @override
  String get callTypeOutgoing => 'Odchádzajúce';

  @override
  String get today => 'Dnes';

  @override
  String get yesterday => 'včera';

  @override
  String get justNow => 'Práve teraz';

  @override
  String minutesAgo(int count) {
    return 'Pred $count min';
  }

  @override
  String hoursAgo(int count) {
    return 'Pred $count hod';
  }

  @override
  String get filterAll => 'Všetky';

  @override
  String get filterMissed => 'Zmeškané';

  @override
  String get filterContacts => 'Kontakty';

  @override
  String get filterNonContacts => 'Nekontaktné';

  @override
  String get iconUpdated =>
      'Ikona bola aktualizovaná. Obnovenie vašej domovskej obrazovky môže chvíľu trvať.';

  @override
  String get iconSavedRelease =>
      'Voľba uložená. Ikona domovskej obrazovky sa aktualizuje vo verziách vydania.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Ikonu sa nepodarilo zmeniť: $error';
  }

  @override
  String get launcherClassicBlack => 'Klasické (čierne)';

  @override
  String get launcherLight => 'Svetlo';

  @override
  String get launcherNothingRed => 'Nič červené';

  @override
  String get launcherDarkGrey => 'Tmavosivá';

  @override
  String get launcherCream => 'Krém';

  @override
  String get launcherRetroPhone => 'Retro telefón';

  @override
  String get launcherRetroPhoneLight => 'Retro telefón (svetlý)';

  @override
  String get voiceSearchUnavailable =>
      'Hlasové vyhľadávanie nie je na tomto zariadení k dispozícii.';

  @override
  String voiceSearchFailed(String error) {
    return 'Hlasové vyhľadávanie zlyhalo: $error';
  }

  @override
  String get customColor => 'Vlastné';

  @override
  String get selectColor => 'Vyberte farbu';

  @override
  String get reset => 'Resetovať';

  @override
  String get simPickerTitle => 'Vyberte SIM';

  @override
  String get simChooseForCall => 'Vyberte SIM pre tento hovor';

  @override
  String get defaultSimAsk => 'Pýtajte sa zakaždým';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Kontaktné údaje';

  @override
  String get call => 'Zavolajte';

  @override
  String get share => 'zdieľať';

  @override
  String get favourite => 'Obľúbené';

  @override
  String get unfavourite => 'Neobľúbené';

  @override
  String get blockContact => 'Blokovať kontakt';

  @override
  String get unblockContact => 'Odblokujte kontakt';

  @override
  String get deleteContact => 'Odstrániť kontakt';

  @override
  String get phone => 'Telefón';

  @override
  String get email => 'Email';

  @override
  String get ringtone => 'Vyzváňací tón';

  @override
  String get defaultRingtone => 'Predvolené';

  @override
  String get simForContact => 'SIM pre tento kontakt';

  @override
  String get callHistoryTitle => 'História hovorov';

  @override
  String get noCallsWithNumber => 'Žiadne hovory s týmto číslom';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Animácia glyfov';

  @override
  String get inCallGlyphAnimationStyle => 'Animácia glyfov počas hovoru';

  @override
  String get recordsOff => 'Vypnuté';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Predvolená SIM karta';

  @override
  String get nothingPhoneOnly => 'Nič Len telefón';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Funkcie glyfov vyžadujú telefón Nothing';

  @override
  String get custom => 'Vlastné';

  @override
  String presetColorHex(String hex) {
    return 'Prednastavené · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Vlastné · $hex';
  }

  @override
  String get oneContact => '1 kontakt';

  @override
  String upToContacts(int count) {
    return 'Až $count kontaktov';
  }

  @override
  String get answerButtonTapSubtitle => 'Klepnutím na tlačidlo odpoviete';

  @override
  String get filterCalls => 'Filtrovať hovory';

  @override
  String get filterTooltip => 'Filter';

  @override
  String get settingsTooltip => 'Nastavenia';

  @override
  String get filterAllSubtitle => 'Celý denník hovorov';

  @override
  String get filterMissedSubtitle => 'Zmeškané a odmietnuté';

  @override
  String get filterContactsSubtitle => 'Hovory priradené k uloženému kontaktu';

  @override
  String get filterNonContactsSubtitle => 'Čísla nie sú vo vašom adresári';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Prebiehajúci hovor: $detail';
  }

  @override
  String get defaultSimForCalls => 'Predvolená SIM karta pre hovory';

  @override
  String get blinkInterval => 'Interval blikania';

  @override
  String get close => 'Zavrieť';

  @override
  String get frequentlyContactedInfoBody =>
      'Zobrazuje najčastejšie volané telefónne čísla v hornej časti karty Nedávne na základe toho, koľko prichádzajúcich, odchádzajúcich, zmeškaných alebo odmietnutých hovorov ste mali s každým číslom vo vybratom časovom období.\n\nPočet záznamov: nastavenie na 0 vypnete. Použite 1–20, aby ste ukázali, že veľa hlavných kontaktov.\n\nČasové obdobie platí len vtedy, keď je zobrazený aspoň jeden kontakt.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count svieti, ${ms}ms rýchlosť';
  }

  @override
  String get deleteContactQuestion => 'Odstrániť kontakt?';

  @override
  String get deleteContactBody =>
      'Tento kontakt bude natrvalo odstránený z vášho zariadenia.';

  @override
  String get blockContactQuestion => 'Blokovať kontakt?';

  @override
  String get unblockContactQuestion => 'Odblokovať kontakt?';

  @override
  String get blockContactBody =>
      'Od tohto kontaktu už nebudete dostávať hovory ani SMS.';

  @override
  String get unblockContactBody =>
      'Od tohto kontaktu začnete prijímať hovory a SMS.';

  @override
  String get contactBlocked => 'Kontakt je zablokovaný';

  @override
  String get contactUnblocked => 'Kontakt je odblokovaný';

  @override
  String get noPhoneNumbersToBlock => 'Žiadne telefónne čísla na blokovanie';

  @override
  String get simSameAsSystem => 'Rovnako ako systém';

  @override
  String get simSameAsSystemSubtitle =>
      'Nasleduje predvolená SIM v Nastaveniach';

  @override
  String get simAskEveryTimeForContact =>
      'Vždy zobraziť výber SIM karty pre tento kontakt';

  @override
  String get ringtoneSetForContact =>
      'Tón zvonenia nastavený globálne pre tento kontakt';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Nepodarilo sa vybrať vyzváňací tón: $error';
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
  String get noCallHistoryFound => 'Nenašla sa žiadna história hovorov';

  @override
  String get speedDialVoicemail => 'Rýchla voľba: Hlasová schránka';

  @override
  String shareContactSubject(String name) {
    return 'Kontakt: $name';
  }

  @override
  String get contactInfo => 'Kontaktné údaje';

  @override
  String get dontAskAgainSim => 'Už sa nepýtaj';

  @override
  String get simDontAskAgainSubtitle =>
      'Použiť túto SIM ako predvolenú (zmena v Nastaveniach)';

  @override
  String get addContact => 'Pridať kontakt';

  @override
  String get createContact => 'Vytvorte kontakt';

  @override
  String get paste => 'Prilepiť';

  @override
  String get clear => 'Jasné';

  @override
  String get returnToCall => 'Vráťte sa k hovoru';

  @override
  String get numberOfRecordsTitle => 'Počet záznamov';

  @override
  String get recordsPickerSubtitle =>
      'Koľko často kontaktovaných záznamov sa má zobraziť (0 = vypnuté)';

  @override
  String get torchInfoTitle => 'Baterka bliká';

  @override
  String get torchInfoBody =>
      'Bliká bleskom fotoaparátu počas prichádzajúcich, odchádzajúcich alebo prebiehajúcich hovorov. Nezávislé od svetiel Glyph.';

  @override
  String get glyphMapTitle => 'Rozloženie glyfov';

  @override
  String get glyphMapBody =>
      'Nič Telefón 1 Glyph LED zóny. Odchádzajúce animácie a animácie počas hovoru používajú tieto kanály.';

  @override
  String get answerMethodTitle => 'Spôsob odpovede';

  @override
  String get glyphOutgoingCallStyleTitle => 'Štýl odchádzajúceho hovoru';

  @override
  String get glyphInCallAnimationTitle => 'Animácia glyfov počas hovoru';

  @override
  String get themePickerTitle => 'Téma';

  @override
  String get torchIncomingTitle => 'Baterka na prichádzajúce hovory';

  @override
  String get torchOutgoingTitle => 'Baterka na odchádzajúci hovor';

  @override
  String get torchOngoingTitle => 'Baterka na trvalé volanie';

  @override
  String get timePeriodTitle => 'Časové obdobie';

  @override
  String get ok => 'OK';

  @override
  String get confirmDeleteCall => 'Odstrániť tento hovor z histórie?';

  @override
  String get confirmDeleteAllCalls => 'Odstrániť všetky hovory s týmto číslom?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Pošlite správu';

  @override
  String get addToExistingContactAction => 'Pridať ku kontaktu';

  @override
  String get mobileLabel => 'Mobil';

  @override
  String get callingSimForContactTitle =>
      'Volanie na SIM kartu pre tento kontakt';

  @override
  String get contactSettings => 'Nastavenia kontaktu';

  @override
  String get setCallingSim => 'Nastavte SIM kartu na volanie';

  @override
  String get contactRingtone => 'Vyzváňací tón kontaktu';

  @override
  String get shareContact => 'Zdieľať kontakt';

  @override
  String get blockNumbers => 'Blokové čísla';

  @override
  String get unblockNumbers => 'Odblokujte čísla';

  @override
  String get connectedApps => 'Pripojené aplikácie';

  @override
  String get simNotSet => 'Nie je nastavené';

  @override
  String get ringtoneDefault => 'Predvolené';

  @override
  String get customRingtone => 'Vlastné';

  @override
  String get aboutSection => 'O';

  @override
  String get aboutFeedbackSection => 'Informácie a spätná väzba';

  @override
  String get aboutDescription =>
      'Nič Dialer je open source. Ak ste vývojár, môžete preskúmať kód a prispieť.';

  @override
  String get aboutViewSource => 'Zobraziť na GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Odkaz sa nepodarilo otvoriť';

  @override
  String get reviewSection => 'recenzia';

  @override
  String get reviewDescription =>
      'Páči sa vám program Nothing Dialer? Vaše hodnotenie na Google Play pomôže ostatným nájsť aplikáciu.';

  @override
  String get reviewRateOnPlay => 'Ohodnoťte na Google Play';

  @override
  String get reviewRateOnPlaySubtitle =>
      'Zanechajte hodnotenie bez opustenia aplikácie';

  @override
  String get reviewCouldNotOpen => 'Službu Google Play sa nepodarilo otvoriť';

  @override
  String get breathSpeed => 'Rýchlosť dychu';

  @override
  String get breathSpeedBlinkHint =>
      'Nižšie = žmurknutie, vyššie = pomalé dýchanie';

  @override
  String get speedSliderHint => 'Nižšie = rýchlejšie, vyššie = pomalšie';

  @override
  String get swatchDefault => 'Predvolené';

  @override
  String get customAccentColorPicker => 'Vlastná akcentová farba';

  @override
  String get customLightBackgroundPicker => 'Vlastné svetlé pozadie';

  @override
  String get customDarkBackgroundPicker => 'Vlastné tmavé pozadie';

  @override
  String get customCallBackgroundPicker => 'Vlastné pozadie hovoru';

  @override
  String get ongoingCallStyleTitle => 'Štýl prebiehajúceho hovoru';

  @override
  String get glyphMapUnavailable => 'Mapa symbolov nie je k dispozícii';

  @override
  String get animationDelayRange => 'Oneskorenie animácie (1 s – 10 s)';

  @override
  String get animationDelayRangeSingle => 'Oneskorenie animácie (0,1 s – 10 s)';

  @override
  String get inCallMute => 'Stlmiť';

  @override
  String get inCallKeypad => 'Klávesnica';

  @override
  String get inCallSpeaker => 'Hovorca';

  @override
  String get inCallMore => 'Viac';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Telefón';

  @override
  String get inCallAddCall => 'Pridať hovor';

  @override
  String get inCallChangeSim => 'Zmeniť SIM';

  @override
  String get inCallDecline => 'Odmietnuť';

  @override
  String get inCallAnswer => 'Odpoveď';

  @override
  String get inCallMessage => 'Správa';

  @override
  String get inCallCalling => 'Volá sa…';

  @override
  String get inCallIncoming => 'Prichádzajúci hovor';

  @override
  String get inCallSelectSim => 'Vyberte SIM…';

  @override
  String get inCallSwitchingSim => 'Prepína sa SIM karta…';

  @override
  String get inCallCallEnded => 'Hovor bol ukončený';

  @override
  String inCallCallingVia(String sim) {
    return 'Volanie cez $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Volanie cez <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Vyberte SIM pre tento hovor';

  @override
  String get inCallDragAnswerDecline =>
      'Potiahnutím doprava prijmite · Potiahnutím doľava odmietnete';

  @override
  String inCallMobileNumber(String number) {
    return 'Mobil $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (aktuálne)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Volajte cez <b>$sim</b> od';
  }

  @override
  String get inCallCallFrom => 'Volať z';

  @override
  String get inCallUnknown => 'Neznámy';

  @override
  String get selectContactRingtone => 'Vyberte vyzváňací tón kontaktu';

  @override
  String get speakToSearchPrompt => 'Hľadajte hovorením';

  @override
  String get phonePermissionRequired => 'Vyžaduje sa povolenie telefónu';

  @override
  String callFailed(String error) {
    return 'Hovor zlyhal: $error';
  }

  @override
  String get callPermissionDenied => 'Povolenie na hovor bolo odmietnuté';

  @override
  String get alreadyDefaultDialer => 'Už je nastavený ako predvolený číselník';

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
