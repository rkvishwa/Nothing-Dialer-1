// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Zulu (`zu`).
class AppLocalizationsZu extends AppLocalizations {
  AppLocalizationsZu([String locale = 'zu']) : super(locale);

  @override
  String get appTitle => 'Akukho Ukudayela';

  @override
  String get settings => 'Izilungiselelo';

  @override
  String get settingsSearchHint => 'Sesha izilungiselelo';

  @override
  String get settingsSearchNoResults => 'Azikho izilungiselelo ezitholiwe';

  @override
  String get general => 'Okujwayelekile';

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
  String get theme => 'Itimu';

  @override
  String get themeSystemDefault => 'Okuzenzakalelayo Kwesistimu';

  @override
  String get themeLight => 'Ukukhanya';

  @override
  String get themeDark => 'Kumnyama';

  @override
  String get themeFollowSystem => 'Landela izilungiselelo zesistimu';

  @override
  String get themeAlwaysLight => 'Sebenzisa njalo itimu ekhanyayo';

  @override
  String get themeAlwaysDark => 'Sebenzisa njalo itimu emnyama';

  @override
  String get language => 'Ulimi';

  @override
  String get languageDeviceDefault => 'Okuzenzakalelayo kwedivayisi';

  @override
  String get languagePickerTitle => 'Ulimi';

  @override
  String get languageSearchHint => 'Sesha izilimi';

  @override
  String get font => 'Ifonti';

  @override
  String get fontSystem => 'Okuzenzakalelayo kwesistimu';

  @override
  String get fontNdot => 'Lutho (NDot)';

  @override
  String get fontSerif => 'I-Roboto Serif';

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
      'Ukulanda ifonti kuhlulekile. Hlola uxhumo lwakho bese uyazama futhi.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Ifonti';

  @override
  String get fontPreviewSample => 'Akukho Ukudayela';

  @override
  String get fontAppWide => 'Ifonti yohlelo lokusebenza';

  @override
  String get fontApplyTo => 'Faka isicelo ku';

  @override
  String get fontApplyEntireApp => 'Lonke uhlelo lokusebenza';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Ifonti efanayo yonke indawo, okufaka phakathi ocingweni';

  @override
  String get fontApplyTitlesOnly => 'Izihloko nezihloko';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Izihloko ezinkulu nezihloko zezigaba kuphela';

  @override
  String get fontApplyCustomize => 'Enza ngendlela oyifisayo';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Khetha ifonti ngesikrini ngasinye kanye nohlobo lombhalo';

  @override
  String get fontCustomizeSection => 'Enza ngendlela oyifisayo ngesikrini';

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
  String get fontRolePageTitle => 'Isihloko sekhasi';

  @override
  String get fontRoleSectionHeader => 'Unhlokweni wesigaba';

  @override
  String get fontRolePrimary => 'Umbhalo oyinhloko';

  @override
  String get fontRoleSecondary => 'Umbhalo wesibili';

  @override
  String get fontRoleButton => 'Izinkinobho';

  @override
  String get fontRoleDialKey => 'Okhiye bephedi yokudayela';

  @override
  String get fontSurfaceRecents => 'Kwakamuva';

  @override
  String get fontSurfaceContacts => 'Oxhumana nabo';

  @override
  String get fontSurfaceSettings => 'Izilungiselelo';

  @override
  String get fontSurfaceDialpad => 'Iphedi yokudayela';

  @override
  String get fontSurfaceShell => 'Ukuzulazula';

  @override
  String get fontSurfaceDefaultDialer =>
      'Ukwaziswa kokudayela okuzenzakalelayo';

  @override
  String get fontSurfaceFavourites => 'Izintandokazi';

  @override
  String get fontSurfaceBlocked => 'Izinombolo ezivinjiwe';

  @override
  String get fontSurfaceContactDetail => 'Imininingwane yokuxhumana';

  @override
  String get fontSurfaceCallHistory => 'Umlando wekholi';

  @override
  String get fontSurfaceSheets => 'Amashidi nezikhi';

  @override
  String get fontSurfaceInCall => 'Isikrini esingaphakathi kwekholi';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — lonke uhlelo lokusebenza';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — izihloko kuphela';
  }

  @override
  String get fontSubtitleCustomize => 'Ngokwezifiso isikrini ngasinye';

  @override
  String get background => 'Ingemuva';

  @override
  String get accent => 'I-Accent';

  @override
  String get lightBackground => 'Ingemuva elikhanyayo';

  @override
  String get lightAccent => 'Iphimbo elilula';

  @override
  String get darkBackground => 'Ingemuva elimnyama';

  @override
  String get darkAccent => 'Iphimbo elimnyama';

  @override
  String get callBackground => 'Ingemuva lekholi';

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
  String get appIcon => 'Isithonjana sohlelo lokusebenza';

  @override
  String get answerMethod => 'Indlela yokuphendula';

  @override
  String get answerSlide => 'Shelelezisa ukuze uphendule';

  @override
  String get answerSlideSubtitle =>
      'Swayiphela kwesokunxele/kwesokudla kubha, njenge-Google Phone';

  @override
  String get answerButton => 'Thepha inkinobho';

  @override
  String get answerButtonSubtitle =>
      'Thepha izinkinobho zokuphendula noma zenqaba';

  @override
  String get answerHuawei => 'Isitayela seHuawei';

  @override
  String get answerHuaweiSubtitle =>
      'Hudula umbuthano uye ocingweni oluluhlaza ukuze uphendule';

  @override
  String get answerHuaweiTileSubtitle =>
      'I-Huawei — donsela kokuluhlaza / obomvu';

  @override
  String get calling => 'Iyafona';

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
  String get defaultSim => 'I-SIM ezenzakalelayo';

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
  String get askEveryTime => 'Buza njalo';

  @override
  String get askEveryTimeSubtitle =>
      'Bonisa isikhi seSIM ngaphambi kocingo ngalunye';

  @override
  String simSlot(int slot) {
    return 'I-SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Awekho amakhadi e-SIM atholiwe';

  @override
  String couldNotLoadSims(String error) {
    return 'Ayikwazanga ukulayisha ama-SIM: $error';
  }

  @override
  String get allFavourites => 'Zonke izintandokazi';

  @override
  String get allFavouritesSubtitle =>
      'Hlela kabusha, susa, futhi wengeze koxhumana nabo';

  @override
  String get blockedNumbers => 'Izinombolo ezivinjiwe';

  @override
  String get blockedNumbersSubtitle => 'Buka futhi uvule izinombolo';

  @override
  String get soundsAndVibration => 'Imisindo nokudlidliza';

  @override
  String get soundsAndVibrationSubtitle =>
      'Iringithoni, ukudlidliza, amathoni ephedi yokudayela';

  @override
  String couldNotOpenSettings(String error) {
    return 'Ayikwazanga ukuvula izilungiselelo: $error';
  }

  @override
  String get frequentlyContacted => 'Okuthintwa njalo';

  @override
  String get numberOfRecords => 'Inombolo yamarekhodi';

  @override
  String get timePeriod => 'Isikhathi';

  @override
  String get periodLast24Hours => 'Amahora angu-24 edlule';

  @override
  String get periodLast24HoursSubtitle => 'Izingcingo zosuku oludlule';

  @override
  String get periodLast7Days => 'Izinsuku ezingu-7 ezedlule';

  @override
  String get periodLast7DaysSubtitle => 'Izingcingo zeviki eledlule';

  @override
  String get periodLast30Days => 'Izinsuku zokugcina ezingu-30';

  @override
  String get periodLast30DaysSubtitle => 'Izingcingo zenyanga edlule';

  @override
  String get periodLast12Months => 'Izinyanga ezingu-12 ezedlule';

  @override
  String get periodLast12MonthsSubtitle => 'Izingcingo zonyaka odlule';

  @override
  String get periodAllTime => 'Sonke isikhathi';

  @override
  String get periodAllTimeSubtitle => 'Wonke umlando wekholi';

  @override
  String get frequentMaxOff => 'Valiwe';

  @override
  String frequentMaxCount(int count) {
    return '$count abathintwayo';
  }

  @override
  String get torchBlink => 'Ithoshi Ukucwayiza';

  @override
  String get torchIncomingCall => 'Ithoshi lekholi engenayo';

  @override
  String get torchOutgoingCall => 'Ithoshi lekholi ephumayo';

  @override
  String get torchOngoingCall => 'Ithoshi yokufona eqhubekayo';

  @override
  String get torchIncomingInterval => 'Isikhawu sokucwayiza esingenayo';

  @override
  String get torchOutgoingInterval => 'Isikhawu sokucwayiza esiphumayo';

  @override
  String get torchOngoingInterval => 'Isikhawu sokucwayiza esiqhubekayo';

  @override
  String get torchOff => 'Valiwe';

  @override
  String get torchOffIncomingSubtitle => 'Alikho ithoshi ngenkathi kukhala';

  @override
  String get torchOffOutgoingSubtitle => 'Alikho ithoshi ngenkathi udayela';

  @override
  String get torchOffOngoingSubtitle =>
      'Ayikho ithoshi ngesikhathi socingo olusebenzayo';

  @override
  String get torchFixedInterval => 'Isikhawu esilungisiwe';

  @override
  String get torchFixedIntervalSubtitle => 'Ukucwayiza ngesivinini esimisiwe';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds ukucwayiza';
  }

  @override
  String get flashlightUnavailable => 'I-Flashlight ayitholakali kule divayisi';

  @override
  String get glyphLights => 'Glyph Lights';

  @override
  String get glyphCallingAnimation => 'Upopayi obiza i-Glyph';

  @override
  String get glyphOngoingAnimation =>
      'I-Glyph eqhubekayo yokugqwayiza kwekholi';

  @override
  String get glyphNone => 'Lutho';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Khubaza izibani ze-Glyph kumakholi aphumayo';

  @override
  String get glyphNoneInCallSubtitle =>
      'Khubaza izibani ze-Glyph ngenkathi usocingweni';

  @override
  String get glyphBreathProgress => 'Ukuphefumula Nentuthuko';

  @override
  String get glyphBreathProgressSubtitle =>
      'Izibani ziyaphefumula ngenkathi umugqa ugcwala ngaphezu kwama-65s';

  @override
  String get glyphAccumulate => 'Qoqa';

  @override
  String get glyphAccumulateSubtitle =>
      'Ukugqwayiza okunqwabelanayo kumalambu C1-C4';

  @override
  String get glyphSingle => 'Awushadile';

  @override
  String get glyphSingleSubtitle => 'Ukukhanya okukodwa okuhambayo ku-C1-C4';

  @override
  String get glyphBreath => 'Ukuphefumula';

  @override
  String get glyphBreathSubtitle => 'Khetha izibani nesivinini';

  @override
  String get glyphSteady => 'Izinzile';

  @override
  String get glyphSteadySubtitle => 'Izibani ezikhethiwe zihlala zikhanya';

  @override
  String get breathSettings => 'Izilungiselelo Zokuphefumula';

  @override
  String get activeLights => 'Izibani Ezisebenzayo';

  @override
  String lightsCount(int count) {
    return '$count izibani';
  }

  @override
  String get speedSettings => 'Izilungiselelo Zesivinini';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms ukubambezeleka';
  }

  @override
  String get durationAndSpeed => 'Ubude nesivinini';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s ubude, ${interval}ms isikhawu';
  }

  @override
  String get cancel => 'Khansela';

  @override
  String get done => 'Kwenziwe';

  @override
  String get save => 'Londoloza';

  @override
  String get block => 'Vimba';

  @override
  String get delete => 'Susa';

  @override
  String get recents => 'Kwakamuva';

  @override
  String get contacts => 'Oxhumana nabo';

  @override
  String get hideFavouritesOnRecents => 'Fihla izintandokazi kokwakamuva';

  @override
  String get showFavouritesOnRecents => 'Bonisa izintandokazi kokwakamuva';

  @override
  String get ongoingCall => 'Ucingo oluqhubekayo';

  @override
  String get setAsDefaultTitle => 'ISETHA NJENGOBA\nUKUZENZAKALELA';

  @override
  String get setAsDefaultBody =>
      'Ukuze usebenzise i-Nothing Dialer, kufanele isethwe njengohlelo lwakho lokusebenza lwefoni oluzenzakalelayo. Lokhu kukuvumela ukuthi uphathe amakholi, ubuke umlando, futhi usebenzise ukugqwayiza kwe-Glyph.';

  @override
  String get setAsDefaultButton => 'SETHA NJENGEZIFAKAZIYO';

  @override
  String get nothingDialerBrand => 'AKUKHO I-DIALER 1';

  @override
  String get favourites => 'Izintandokazi';

  @override
  String get addFavourite => 'Engeza intandokazi';

  @override
  String get favouritesDrawerHint =>
      'Sebenzisa imenyu ukwengeza oxhumana nabo. Thepha ngaphandle kwekhabethe noma uliswayiphe livaliwe. Faka inkanyezi koxhumana naye emininingwaneni yakhe, noma cindezela isikhathi eside ucingo kokuthi Recents.';

  @override
  String get menu => 'Imenyu';

  @override
  String get noFavouritesYet =>
      'Azikho izintandokazi okwamanje.\nVula imenyu ukuze wengeze oyedwa, noma ufake inkanyezi oxhumana naye.';

  @override
  String get contactsPermissionNeeded => 'Kudingeka imvume yoxhumana nabo';

  @override
  String get chooseContact => 'Khetha oxhumana naye';

  @override
  String get noPhone => 'Ayikho ifoni';

  @override
  String get pickNumber => 'Khetha inombolo';

  @override
  String get contactHasNoPhone => 'Lo oxhumana naye akanayo inombolo yefoni';

  @override
  String get blockNumber => 'Vimba inombolo';

  @override
  String get enterPhoneNumber => 'Faka inombolo yocingo';

  @override
  String unblockedDisplay(String display) {
    return 'Kuvuliwe $display';
  }

  @override
  String get couldNotUnblockNumber => 'Ayikwazanga ukuvulela inombolo';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked ivinjiwe • $matched ifanisiwe';
  }

  @override
  String get contactsPermissionMissing =>
      'Imvume yoxhumana nabo ayikho. Thepha ukuze ulungise.';

  @override
  String get noBlockedNumbers => 'Azikho izinombolo ezivinjiwe';

  @override
  String get unknownContact => 'Oxhumana naye ongaziwa';

  @override
  String get unblock => 'Vulela';

  @override
  String get permissionNeeded => 'Imvume iyadingeka';

  @override
  String get grantPhonePermission =>
      'Nikeza imvume yefoni ukuze ubone umlando wakho wekholi.';

  @override
  String get grantContactsPermission =>
      'Nikeza oxhumana nabo imvume yokubona ibhuku lakho lamakheli.';

  @override
  String get openSettings => 'Vula Izilungiselelo';

  @override
  String get tryAgain => 'Zama futhi';

  @override
  String get couldNotLoadContacts => 'Ayikwazanga ukulayisha abathintwayo';

  @override
  String get contactsLoadError =>
      'Kukhona okungahambanga kahle ngokufunda ibhuku lakho lamakheli.';

  @override
  String get noContactsFound => 'Abekho abathintwayo abatholiwe';

  @override
  String get contactsEmptySubtitle =>
      'Oxhumana nabo abavela kudivayisi yakho bazovela lapha.';

  @override
  String get searchContacts => 'Sesha abathintwayo...';

  @override
  String get searchRecentCalls => 'Sesha izingcingo zakamuva';

  @override
  String get fromContacts => 'Kusuka koxhumana nabo';

  @override
  String get recentsSearchSection => 'Usesho lwakamuva';

  @override
  String get recentsSearchShowContacts => 'Bonisa oxhumana nabo oseshweni';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Ngenkathi usesha okwakamuva, futhi bonisa abantu abafanayo abavela encwadini yakho yamakheli engezansi kwemiphumela yomlando wekholi.';

  @override
  String get voiceSearch => 'Ukusesha ngezwi';

  @override
  String get createNewContact => 'Dala oxhumana naye omusha';

  @override
  String callError(String error) {
    return 'Iphutha lokushaya: $error';
  }

  @override
  String get noRecentCalls => 'Awekho amakholi wakamuva';

  @override
  String get callHistoryEmpty => 'Umlando wakho wekholi uzovela lapha.';

  @override
  String get loadMore => 'Layisha okuningi';

  @override
  String get frequentlyContactedHeader => 'Okuxhunyanwa nabo njalo';

  @override
  String get recentHistory => 'Umlando wakamuva';

  @override
  String get noFavouritesRecentsHint =>
      'Azikho izintandokazi okwamanje. Faka inkanyezi koxhumana naye, cindezela isikhathi eside ucingo, noma sebenzisa ithebhu ethi Izintandokazi.';

  @override
  String get copyNumber => 'Kopisha inombolo';

  @override
  String get editNumberBeforeCall =>
      'Hlela inombolo ngaphambi kokushaya ucingo';

  @override
  String get removeFromFavourites => 'Susa ezintandokazini';

  @override
  String get addToFavourites => 'Engeza ezintandokazini';

  @override
  String get blockNumberQuestion => 'Vimba inombolo?';

  @override
  String blockNumberConfirm(String number) {
    return 'Ngeke usathola amakholi noma imibhalo evela ku-$number.';
  }

  @override
  String get blocked => 'Kuvinjiwe';

  @override
  String get couldNotBlock => 'Ayikwazanga ukuvimba';

  @override
  String get contactNotOnDevice =>
      'Oxhumana naye akalondolozwanga kule divayisi';

  @override
  String get unblocked => 'Kuvuliwe';

  @override
  String get numberCopied => 'Inombolo ikopishiwe';

  @override
  String get showLess => 'Bonisa okuncane';

  @override
  String get showAllTimes => 'Bonisa zonke izikhathi';

  @override
  String mostRecent(String time) {
    return 'Kwakamuva · $time';
  }

  @override
  String get videoCall => 'Ucingo lwevidiyo';

  @override
  String get couldNotPlaceVideoCall => 'Ayikwazanga ukwenza ikholi yevidiyo';

  @override
  String get message => 'Umlayezo';

  @override
  String get couldNotOpenMessaging =>
      'Ayikwazanga ukuvula uhlelo lokusebenza lokuthumela imiyalezo';

  @override
  String get history => 'Umlando';

  @override
  String get viewContact => 'Buka othintana naye';

  @override
  String get addToContact => 'Engeza koxhumana naye';

  @override
  String get callTypeMissed => 'Uphuthelwe';

  @override
  String get callTypeRejected => 'Kwaliwe';

  @override
  String get callTypeIncoming => 'Okungenayo';

  @override
  String get callTypeOutgoing => 'Okuphumayo';

  @override
  String get today => 'Namuhla';

  @override
  String get yesterday => 'Izolo';

  @override
  String get justNow => 'Khona manje';

  @override
  String minutesAgo(int count) {
    return '$count iminithi eledlule';
  }

  @override
  String hoursAgo(int count) {
    return '$count ihora eledlule';
  }

  @override
  String get filterAll => 'Konke';

  @override
  String get filterMissed => 'Uphuthelwe';

  @override
  String get filterContacts => 'Oxhumana nabo';

  @override
  String get filterNonContacts => 'Abangewona othintana nabo';

  @override
  String get iconUpdated =>
      'Isithonjana sibuyekeziwe. Isikrini sakho sasekhaya singase sithathe isikhashana ukuvuselela.';

  @override
  String get iconSavedRelease =>
      'Ukukhetha kulondoloziwe. Isithonjana sesikrini sasekhaya sibuyekeza ekwakhiweni kokukhishwa.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Ayikwazanga ukushintsha isithonjana: $error';
  }

  @override
  String get launcherClassicBlack => 'Okwakudala (okumnyama)';

  @override
  String get launcherLight => 'Ukukhanya';

  @override
  String get launcherNothingRed => 'Akukho okubomvu';

  @override
  String get launcherDarkGrey => 'Okumpunga okumnyama';

  @override
  String get launcherCream => 'Ukhilimu';

  @override
  String get launcherRetroPhone => 'Ifoni ye-Retro';

  @override
  String get launcherRetroPhoneLight => 'Ifoni ye-Retro (ukukhanya)';

  @override
  String get voiceSearchUnavailable =>
      'Ukusesha ngezwi akutholakali kule divayisi.';

  @override
  String voiceSearchFailed(String error) {
    return 'Ukusesha ngezwi kuhlulekile: $error';
  }

  @override
  String get customColor => 'Ngokwezifiso';

  @override
  String get selectColor => 'Khetha umbala';

  @override
  String get reset => 'Setha kabusha';

  @override
  String get simPickerTitle => 'Khetha i-SIM';

  @override
  String get simChooseForCall => 'Khetha i-SIM yale kholi';

  @override
  String get defaultSimAsk => 'Buza njalo';

  @override
  String defaultSimFixed(int slot) {
    return 'I-SIM $slot';
  }

  @override
  String get contactDetails => 'Imniningwano Yokuxhumana';

  @override
  String get call => 'Shaya ucingo';

  @override
  String get share => 'Yabelana';

  @override
  String get favourite => 'Intandokazi';

  @override
  String get unfavourite => 'Okungeyona intandokazi';

  @override
  String get blockContact => 'Vimba othintana naye';

  @override
  String get unblockContact => 'Vulela oxhumana naye';

  @override
  String get deleteContact => 'Susa othintana naye';

  @override
  String get phone => 'Ucingo';

  @override
  String get email => 'I-imeyili';

  @override
  String get ringtone => 'Iringithoni';

  @override
  String get defaultRingtone => 'Okuzenzakalelayo';

  @override
  String get simForContact => 'I-SIM yalo oxhumana naye';

  @override
  String get callHistoryTitle => 'Umlando wekholi';

  @override
  String get noCallsWithNumber => 'Awekho amakholi anale nombolo';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Glyph izithombe';

  @override
  String get inCallGlyphAnimationStyle => 'Opopayi be-in-call ye-Glyph';

  @override
  String get recordsOff => 'Valiwe';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'I-SIM ezenzakalelayo';

  @override
  String get nothingPhoneOnly => 'Lutho Ucingo kuphela';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Izici ze-Glyph zidinga Ucingo Olungenalutho';

  @override
  String get custom => 'Ngokwezifiso';

  @override
  String presetColorHex(String hex) {
    return 'Hlela kusengaphambili · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Ngokwezifiso · $hex';
  }

  @override
  String get oneContact => '1 othintana naye';

  @override
  String upToContacts(int count) {
    return 'Kufika kwabangu-$count abathintwayo';
  }

  @override
  String get answerButtonTapSubtitle => 'Thepha inkinobho ukuze uphendule';

  @override
  String get filterCalls => 'Hlunga amakholi';

  @override
  String get filterTooltip => 'Hlunga';

  @override
  String get settingsTooltip => 'Izilungiselelo';

  @override
  String get filterAllSubtitle => 'Lonke irekhodi lamakholi';

  @override
  String get filterMissedSubtitle => 'Uphuthelwe futhi waliwe';

  @override
  String get filterContactsSubtitle =>
      'Izingcingo ezifaniswa noxhumana naye ogciniwe';

  @override
  String get filterNonContactsSubtitle =>
      'Izinombolo ezingekho ebhukwini lakho lamakheli';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Ucingo oluqhubekayo: $detail';
  }

  @override
  String get defaultSimForCalls => 'I-SIM ezenzakalelayo yamakholi';

  @override
  String get blinkInterval => 'Isikhawu sokucwayiza';

  @override
  String get close => 'Vala';

  @override
  String get frequentlyContactedInfoBody =>
      'Ibonisa izinombolo zakho zocingo ezibizwa kakhulu phezulu kuthebhu ethi Okwakamuva, ngokusekelwe ekutheni mangaki amakholi angenayo, aphumayo, aphuthelwe, noma anqatshiwe obunawo ngenombolo ngayinye ngesikhathi osikhethayo.\n\nInombolo yamarekhodi: isethwe ku-0 ukuze uvale lokhu. Sebenzisa 1–20 ukukhombisa oxhumana nabo abaningi abaphezulu.\n\nIsikhathi sisebenza kuphela lapho kuboniswa okungenani oyedwa oxhumana naye.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count izibani, ${ms}ms isivinini';
  }

  @override
  String get deleteContactQuestion => 'Susa oxhumana naye?';

  @override
  String get deleteContactBody =>
      'Lo oxhumana naye uzosuswa unomphela kudivayisi yakho.';

  @override
  String get blockContactQuestion => 'Vimba oxhumana naye?';

  @override
  String get unblockContactQuestion => 'Vulela oxhumana naye?';

  @override
  String get blockContactBody =>
      'Ngeke usathola amakholi noma imibhalo evela kulo oxhumana naye.';

  @override
  String get unblockContactBody =>
      'Uzoqala ukuthola amakholi nemibhalo evela kulo oxhumana naye.';

  @override
  String get contactBlocked => 'Oxhumana naye uvinjelwe';

  @override
  String get contactUnblocked => 'Oxhumana naye uvulelwe';

  @override
  String get noPhoneNumbersToBlock => 'Azikho izinombolo zocingo ezingavinjwa';

  @override
  String get simSameAsSystem => 'Ngokufanayo nesistimu';

  @override
  String get simSameAsSystemSubtitle =>
      'Ilandela i-SIM ezenzakalelayo kokuthi Izilungiselelo';

  @override
  String get simAskEveryTimeForContact =>
      'Hlala ubonisa isikhi se-SIM salo oxhumana naye';

  @override
  String get ringtoneSetForContact =>
      'Iringithoni isethwe emhlabeni wonke kulo oxhumana naye';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Yehlulekile ukukhetha iringithoni: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Iphutha: $error';
  }

  @override
  String get noCallHistoryFound => 'Awukho umlando wekholi otholiwe';

  @override
  String get speedDialVoicemail => 'Ukudayela ngokushesha: Ivoyisimeyili';

  @override
  String shareContactSubject(String name) {
    return 'Othintana naye: $name';
  }

  @override
  String get contactInfo => 'Ulwazi lokuxhumana';

  @override
  String get dontAskAgainSim => 'Ungaphinde ubuze';

  @override
  String get simDontAskAgainSubtitle =>
      'Sebenzisa le SIM njengokuzenzakalelayo (shintsha kokuthi Izilungiselelo)';

  @override
  String get addContact => 'Engeza oxhumana naye';

  @override
  String get createContact => 'Dala oxhumana naye';

  @override
  String get paste => 'Namathisela';

  @override
  String get clear => 'Kucace';

  @override
  String get returnToCall => 'Buyela ocingweni';

  @override
  String get numberOfRecordsTitle => 'Inombolo yamarekhodi';

  @override
  String get recordsPickerSubtitle =>
      'Bangaki okufakiwe okuxhunyanwa nabo njalo okuzoboniswa (0 = kuvaliwe)';

  @override
  String get torchInfoTitle => 'Ithoshi liyacwayiza';

  @override
  String get torchInfoBody =>
      'Icwayiza i-flash yekhamera ngesikhathi samakholi angenayo, aphumayo, noma aqhubekayo. Izimele izibani ze-Glyph.';

  @override
  String get glyphMapTitle => 'Isakhiwo se-Glyph';

  @override
  String get glyphMapBody =>
      'Akukho lutho lwe-Phone 1 Glyph LED zones. Opopayi abaphumayo nabangaphakathi kwekholi basebenzisa lezi ziteshi.';

  @override
  String get answerMethodTitle => 'Indlela yokuphendula';

  @override
  String get glyphOutgoingCallStyleTitle => 'Isitayela sekholi ephumayo';

  @override
  String get glyphInCallAnimationTitle => 'I-Glyph in-call animation';

  @override
  String get themePickerTitle => 'Itimu';

  @override
  String get torchIncomingTitle => 'Ithoshi lekholi engenayo';

  @override
  String get torchOutgoingTitle => 'Ithoshi lekholi ephumayo';

  @override
  String get torchOngoingTitle => 'Ithoshi yokufona eqhubekayo';

  @override
  String get timePeriodTitle => 'Isikhathi';

  @override
  String get ok => 'KULUNGILE';

  @override
  String get confirmDeleteCall => 'Susa le kholi emlandweni?';

  @override
  String get confirmDeleteAllCalls => 'Susa wonke amakholi anale nombolo?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Thumela umlayezo';

  @override
  String get addToExistingContactAction => 'Engeza koxhumana naye';

  @override
  String get mobileLabel => 'Iselula';

  @override
  String get callingSimForContactTitle => 'Ishayela i-SIM yalo oxhumana naye';

  @override
  String get contactSettings => 'Izilungiselelo zoxhumana naye';

  @override
  String get setCallingSim => 'Setha i-SIM yokushaya ucingo';

  @override
  String get contactRingtone => 'Iringithoni yokuxhumana';

  @override
  String get shareContact => 'Yabelana oxhumana naye';

  @override
  String get blockNumbers => 'Vimba izinombolo';

  @override
  String get unblockNumbers => 'Vulela izinombolo';

  @override
  String get connectedApps => 'Izinhlelo zokusebenza ezixhunyiwe';

  @override
  String get simNotSet => 'Akusethiwe';

  @override
  String get ringtoneDefault => 'Okuzenzakalelayo';

  @override
  String get customRingtone => 'Ngokwezifiso';

  @override
  String get aboutSection => 'Mayelana';

  @override
  String get aboutFeedbackSection => 'Mayelana & impendulo';

  @override
  String get aboutDescription =>
      'Nothing Dialer ingumthombo ovulekile. Uma ungunjiniyela, wamukelekile ukuhlola ikhodi futhi unikele.';

  @override
  String get aboutViewSource => 'Buka ku-GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Ayikwazanga ukuvula isixhumanisi';

  @override
  String get reviewSection => 'Buyekeza';

  @override
  String get reviewDescription =>
      'Awujabuleli Ukudayela Lutho? Isilinganiso sakho ku-Google Play sisiza abanye bathole uhlelo lokusebenza.';

  @override
  String get reviewRateOnPlay => 'Linganisa ku-Google Play';

  @override
  String get reviewRateOnPlaySubtitle => 'Opens the Play Store listing';

  @override
  String get reviewCouldNotOpen => 'Ayikwazanga ukuvula i-Google Play';

  @override
  String get breathSpeed => 'Isivinini sokuphefumula';

  @override
  String get breathSpeedBlinkHint =>
      'Okuphansi = Ukucwayiza, Okuphakeme = Ukuphefumula Kancane';

  @override
  String get speedSliderHint => 'Phansi = Ngokushesha, Phezulu = Kancane';

  @override
  String get swatchDefault => 'Okuzenzakalelayo';

  @override
  String get customAccentColorPicker => 'Umbala we-accent yangokwezifiso';

  @override
  String get customLightBackgroundPicker =>
      'Ingemuva elikhanyayo langokwezifiso';

  @override
  String get customDarkBackgroundPicker => 'Ingemuva elimnyama ngokwezifiso';

  @override
  String get customCallBackgroundPicker => 'Ingemuva lekholi yangokwezifiso';

  @override
  String get ongoingCallStyleTitle => 'Isitayela sekholi esiqhubekayo';

  @override
  String get glyphMapUnavailable => 'Imephu ye-Glyph ayitholakali';

  @override
  String get animationDelayRange => 'Ukubambezeleka kokugqwayiza (1s - 10s)';

  @override
  String get animationDelayRangeSingle =>
      'Ukubambezeleka Kopopayi (0.1s - 10s)';

  @override
  String get inCallMute => 'Thulisa';

  @override
  String get inCallKeypad => 'Ikhiphedi';

  @override
  String get inCallSpeaker => 'Somlomo';

  @override
  String get inCallMore => 'Okuningi';

  @override
  String get inCallBluetooth => 'I-Bluetooth';

  @override
  String get inCallPhone => 'Ucingo';

  @override
  String get inCallAddCall => 'Engeza ikholi';

  @override
  String get inCallChangeSim => 'Shintsha i-SIM';

  @override
  String get inCallDecline => 'Yenqaba';

  @override
  String get inCallAnswer => 'Phendula';

  @override
  String get inCallMessage => 'Umlayezo';

  @override
  String get inCallCalling => 'Iyashaya...';

  @override
  String get inCallIncoming => 'Ucingo olungenayo';

  @override
  String get inCallSelectSim => 'Khetha i-SIM...';

  @override
  String get inCallSwitchingSim => 'Ishintsha i-SIM...';

  @override
  String get inCallCallEnded => 'Ucingo luphelile';

  @override
  String inCallCallingVia(String sim) {
    return 'Ishaya nge-$sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Ishaya nge-<b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Khetha i-SIM yale kholi';

  @override
  String get inCallDragAnswerDecline =>
      'Hudula kwesokudla ukuze uphendule · Hudula kwesokunxele ukuze wenqabe';

  @override
  String inCallMobileNumber(String number) {
    return 'Iselula $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (Okwamanje)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Shaya nge-<b>$sim</b> kusuka';
  }

  @override
  String get inCallCallFrom => 'Shayela kusuka';

  @override
  String get inCallUnknown => 'Akwaziwa';

  @override
  String get selectContactRingtone => 'Khetha iringithoni yokuxhumana';

  @override
  String get speakToSearchPrompt => 'Khuluma ukuze useshe';

  @override
  String get phonePermissionRequired => 'Kudingeka imvume yefoni';

  @override
  String callFailed(String error) {
    return 'Ucingo lwehlulekile: $error';
  }

  @override
  String get callPermissionDenied => 'Imvume yocingo inqatshiwe';

  @override
  String get alreadyDefaultDialer =>
      'Sekuvele kusethwe njengokudayela okuzenzakalelayo';

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
