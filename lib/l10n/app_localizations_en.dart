// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Nothing Dialer';

  @override
  String get settings => 'Settings';

  @override
  String get settingsSearchHint => 'Search settings';

  @override
  String get settingsSearchNoResults => 'No settings found';

  @override
  String get general => 'General';

  @override
  String get theme => 'Theme';

  @override
  String get themeSystemDefault => 'System Default';

  @override
  String get themeLight => 'Light';

  @override
  String get themeDark => 'Dark';

  @override
  String get themeFollowSystem => 'Follow system settings';

  @override
  String get themeAlwaysLight => 'Always use light theme';

  @override
  String get themeAlwaysDark => 'Always use dark theme';

  @override
  String get language => 'Language';

  @override
  String get languageDeviceDefault => 'Device default';

  @override
  String get languagePickerTitle => 'Language';

  @override
  String get languageSearchHint => 'Search languages';

  @override
  String get font => 'Font';

  @override
  String get fontSystem => 'System default';

  @override
  String get fontNdot => 'Nothing (NDot)';

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
      'Font download failed. Check your connection and try again.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Font';

  @override
  String get fontPreviewSample => 'Nothing Dialer';

  @override
  String get fontAppWide => 'App font';

  @override
  String get fontApplyTo => 'Apply to';

  @override
  String get fontApplyEntireApp => 'Entire app';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Same font everywhere, including in-call';

  @override
  String get fontApplyTitlesOnly => 'Titles & headers';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Large titles and section headers only';

  @override
  String get fontApplyCustomize => 'Customize';

  @override
  String get fontApplyCustomizeSubtitle => 'Pick font per screen and text type';

  @override
  String get fontCustomizeSection => 'Customize by screen';

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
  String get fontRolePageTitle => 'Page title';

  @override
  String get fontRoleSectionHeader => 'Section header';

  @override
  String get fontRolePrimary => 'Primary text';

  @override
  String get fontRoleSecondary => 'Secondary text';

  @override
  String get fontRoleButton => 'Buttons';

  @override
  String get fontRoleDialKey => 'Dialpad keys';

  @override
  String get fontSurfaceRecents => 'Recents';

  @override
  String get fontSurfaceContacts => 'Contacts';

  @override
  String get fontSurfaceSettings => 'Settings';

  @override
  String get fontSurfaceDialpad => 'Dialpad';

  @override
  String get fontSurfaceShell => 'Navigation';

  @override
  String get fontSurfaceDefaultDialer => 'Default dialer prompt';

  @override
  String get fontSurfaceFavourites => 'Favourites';

  @override
  String get fontSurfaceBlocked => 'Blocked numbers';

  @override
  String get fontSurfaceContactDetail => 'Contact detail';

  @override
  String get fontSurfaceCallHistory => 'Call history';

  @override
  String get fontSurfaceSheets => 'Sheets & pickers';

  @override
  String get fontSurfaceInCall => 'In-call screen';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — entire app';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — titles only';
  }

  @override
  String get fontSubtitleCustomize => 'Custom per screen';

  @override
  String get background => 'Background';

  @override
  String get accent => 'Accent';

  @override
  String get lightBackground => 'Light background';

  @override
  String get lightAccent => 'Light accent';

  @override
  String get darkBackground => 'Dark background';

  @override
  String get darkAccent => 'Dark accent';

  @override
  String get callBackground => 'Call background';

  @override
  String get appIcon => 'App icon';

  @override
  String get answerMethod => 'Answer method';

  @override
  String get answerSlide => 'Slide to answer';

  @override
  String get answerSlideSubtitle =>
      'Swipe left/right on the bar, like Google Phone';

  @override
  String get answerButton => 'Button tap';

  @override
  String get answerButtonSubtitle => 'Tap answer or decline buttons';

  @override
  String get answerHuawei => 'Huawei style';

  @override
  String get answerHuaweiSubtitle =>
      'Drag the circle to the green phone to answer';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — drag to green / red';

  @override
  String get calling => 'Calling';

  @override
  String get defaultSim => 'Default SIM';

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
  String get askEveryTime => 'Ask every time';

  @override
  String get askEveryTimeSubtitle => 'Show SIM picker before each call';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'No SIM cards found';

  @override
  String couldNotLoadSims(String error) {
    return 'Could not load SIMs: $error';
  }

  @override
  String get allFavourites => 'All favourites';

  @override
  String get allFavouritesSubtitle => 'Reorder, remove, and add from contacts';

  @override
  String get blockedNumbers => 'Blocked numbers';

  @override
  String get blockedNumbersSubtitle => 'View and unblock numbers';

  @override
  String get soundsAndVibration => 'Sounds and vibration';

  @override
  String get soundsAndVibrationSubtitle =>
      'Ringtone, vibration, dial pad tones';

  @override
  String couldNotOpenSettings(String error) {
    return 'Could not open settings: $error';
  }

  @override
  String get frequentlyContacted => 'Frequently Contacted';

  @override
  String get numberOfRecords => 'Number of records';

  @override
  String get timePeriod => 'Time period';

  @override
  String get periodLast24Hours => 'Last 24 hours';

  @override
  String get periodLast24HoursSubtitle => 'Calls from the past day';

  @override
  String get periodLast7Days => 'Last 7 days';

  @override
  String get periodLast7DaysSubtitle => 'Calls from the past week';

  @override
  String get periodLast30Days => 'Last 30 days';

  @override
  String get periodLast30DaysSubtitle => 'Calls from the past month';

  @override
  String get periodLast12Months => 'Last 12 months';

  @override
  String get periodLast12MonthsSubtitle => 'Calls from the past year';

  @override
  String get periodAllTime => 'All time';

  @override
  String get periodAllTimeSubtitle => 'Entire call history';

  @override
  String get frequentMaxOff => 'Off';

  @override
  String frequentMaxCount(int count) {
    return '$count contacts';
  }

  @override
  String get torchBlink => 'Torch Blink';

  @override
  String get torchIncomingCall => 'Incoming call torch';

  @override
  String get torchOutgoingCall => 'Outgoing call torch';

  @override
  String get torchOngoingCall => 'Ongoing call torch';

  @override
  String get torchIncomingInterval => 'Incoming blink interval';

  @override
  String get torchOutgoingInterval => 'Outgoing blink interval';

  @override
  String get torchOngoingInterval => 'Ongoing blink interval';

  @override
  String get torchOff => 'Off';

  @override
  String get torchOffIncomingSubtitle => 'No torch while ringing';

  @override
  String get torchOffOutgoingSubtitle => 'No torch while dialing';

  @override
  String get torchOffOngoingSubtitle => 'No torch during active call';

  @override
  String get torchFixedInterval => 'Fixed interval';

  @override
  String get torchFixedIntervalSubtitle => 'Blink at a set speed';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds blink';
  }

  @override
  String get flashlightUnavailable => 'Flashlight not available on this device';

  @override
  String get glyphLights => 'Glyph Lights';

  @override
  String get glyphCallingAnimation => 'Glyph calling animation';

  @override
  String get glyphOngoingAnimation => 'Glyph ongoing call animation';

  @override
  String get glyphNone => 'None';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Disable Glyph lights for outgoing calls';

  @override
  String get glyphNoneInCallSubtitle =>
      'Disable Glyph lights while actively on call';

  @override
  String get glyphBreathProgress => 'Breath & Progress';

  @override
  String get glyphBreathProgressSubtitle =>
      'Lights breathe while line fills up over 65s';

  @override
  String get glyphAccumulate => 'Accumulate';

  @override
  String get glyphAccumulateSubtitle =>
      'Accumulating animation on lights C1-C4';

  @override
  String get glyphSingle => 'Single';

  @override
  String get glyphSingleSubtitle => 'Single light moving across C1-C4';

  @override
  String get glyphBreath => 'Breath';

  @override
  String get glyphBreathSubtitle => 'Pick lights and speed';

  @override
  String get glyphSteady => 'Steady';

  @override
  String get glyphSteadySubtitle => 'Selected lights stay on';

  @override
  String get breathSettings => 'Breath Settings';

  @override
  String get activeLights => 'Active Lights';

  @override
  String lightsCount(int count) {
    return '$count lights';
  }

  @override
  String get speedSettings => 'Speed Settings';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms delay';
  }

  @override
  String get durationAndSpeed => 'Duration & Speed';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s duration, ${interval}ms interval';
  }

  @override
  String get cancel => 'Cancel';

  @override
  String get done => 'Done';

  @override
  String get save => 'Save';

  @override
  String get block => 'Block';

  @override
  String get delete => 'Delete';

  @override
  String get recents => 'Recents';

  @override
  String get contacts => 'Contacts';

  @override
  String get hideFavouritesOnRecents => 'Hide favourites on Recents';

  @override
  String get showFavouritesOnRecents => 'Show favourites on Recents';

  @override
  String get ongoingCall => 'Ongoing call';

  @override
  String get setAsDefaultTitle => 'SET AS\nDEFAULT';

  @override
  String get setAsDefaultBody =>
      'To use Nothing Dialer, it must be set as your default phone app. This allows you to manage calls, view history, and use Glyph animations.';

  @override
  String get setAsDefaultButton => 'SET AS DEFAULT';

  @override
  String get nothingDialerBrand => 'NOTHING DIALER 1';

  @override
  String get favourites => 'Favourites';

  @override
  String get addFavourite => 'Add favourite';

  @override
  String get favouritesDrawerHint =>
      'Use the menu to add contacts. Tap outside the drawer or swipe it closed. Star a contact from their details, or long-press a call in Recents.';

  @override
  String get menu => 'Menu';

  @override
  String get noFavouritesYet =>
      'No favourites yet.\nOpen the menu to add one, or star a contact.';

  @override
  String get contactsPermissionNeeded => 'Contacts permission needed';

  @override
  String get chooseContact => 'Choose contact';

  @override
  String get noPhone => 'No phone';

  @override
  String get pickNumber => 'Pick number';

  @override
  String get contactHasNoPhone => 'This contact has no phone number';

  @override
  String get blockNumber => 'Block number';

  @override
  String get enterPhoneNumber => 'Enter phone number';

  @override
  String unblockedDisplay(String display) {
    return 'Unblocked $display';
  }

  @override
  String get couldNotUnblockNumber => 'Could not unblock number';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked blocked • $matched matched';
  }

  @override
  String get contactsPermissionMissing =>
      'Contacts permission missing. Tap to fix.';

  @override
  String get noBlockedNumbers => 'No blocked numbers';

  @override
  String get unknownContact => 'Unknown contact';

  @override
  String get unblock => 'Unblock';

  @override
  String get permissionNeeded => 'Permission needed';

  @override
  String get grantPhonePermission =>
      'Grant phone permission to see your call history.';

  @override
  String get grantContactsPermission =>
      'Grant contacts permission to see your address book.';

  @override
  String get openSettings => 'Open Settings';

  @override
  String get tryAgain => 'Try again';

  @override
  String get couldNotLoadContacts => 'Could not load contacts';

  @override
  String get contactsLoadError =>
      'Something went wrong reading your address book.';

  @override
  String get noContactsFound => 'No contacts found';

  @override
  String get contactsEmptySubtitle =>
      'Contacts from your device will appear here.';

  @override
  String get searchContacts => 'Search contacts…';

  @override
  String get searchRecentCalls => 'Search recent calls';

  @override
  String get fromContacts => 'From contacts';

  @override
  String get recentsSearchSection => 'Recents search';

  @override
  String get recentsSearchShowContacts => 'Show contacts in search';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'While searching Recents, also show matching people from your address book below call history results.';

  @override
  String get voiceSearch => 'Voice search';

  @override
  String get createNewContact => 'Create new contact';

  @override
  String callError(String error) {
    return 'Call error: $error';
  }

  @override
  String get noRecentCalls => 'No recent calls';

  @override
  String get callHistoryEmpty => 'Your call history will appear here.';

  @override
  String get loadMore => 'Load more';

  @override
  String get frequentlyContactedHeader => 'Frequently contacted';

  @override
  String get recentHistory => 'Recent history';

  @override
  String get noFavouritesRecentsHint =>
      'No favourites yet. Star a contact, long-press a call, or use the Favourites tab.';

  @override
  String get copyNumber => 'Copy number';

  @override
  String get editNumberBeforeCall => 'Edit number before call';

  @override
  String get removeFromFavourites => 'Remove from favourites';

  @override
  String get addToFavourites => 'Add to favourites';

  @override
  String get blockNumberQuestion => 'Block number?';

  @override
  String blockNumberConfirm(String number) {
    return 'You will no longer receive calls or texts from $number.';
  }

  @override
  String get blocked => 'Blocked';

  @override
  String get couldNotBlock => 'Could not block';

  @override
  String get contactNotOnDevice => 'Contact not saved on this device';

  @override
  String get unblocked => 'Unblocked';

  @override
  String get numberCopied => 'Number copied';

  @override
  String get showLess => 'Show less';

  @override
  String get showAllTimes => 'Show all times';

  @override
  String mostRecent(String time) {
    return 'Most recent · $time';
  }

  @override
  String get videoCall => 'Video call';

  @override
  String get couldNotPlaceVideoCall => 'Could not place video call';

  @override
  String get message => 'Message';

  @override
  String get couldNotOpenMessaging => 'Could not open messaging app';

  @override
  String get history => 'History';

  @override
  String get viewContact => 'View contact';

  @override
  String get addToContact => 'Add to contact';

  @override
  String get callTypeMissed => 'Missed';

  @override
  String get callTypeRejected => 'Rejected';

  @override
  String get callTypeIncoming => 'Incoming';

  @override
  String get callTypeOutgoing => 'Outgoing';

  @override
  String get today => 'Today';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get justNow => 'Just now';

  @override
  String minutesAgo(int count) {
    return '$count min ago';
  }

  @override
  String hoursAgo(int count) {
    return '$count hr ago';
  }

  @override
  String get filterAll => 'All';

  @override
  String get filterMissed => 'Missed';

  @override
  String get filterContacts => 'Contacts';

  @override
  String get filterNonContacts => 'Non-contacts';

  @override
  String get iconUpdated =>
      'Icon updated. Your home screen may take a moment to refresh.';

  @override
  String get iconSavedRelease =>
      'Choice saved. The home screen icon updates in release builds.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Could not change icon: $error';
  }

  @override
  String get launcherClassicBlack => 'Classic (black)';

  @override
  String get launcherLight => 'Light';

  @override
  String get launcherNothingRed => 'Nothing red';

  @override
  String get launcherDarkGrey => 'Dark grey';

  @override
  String get launcherCream => 'Cream';

  @override
  String get launcherRetroPhone => 'Retro phone';

  @override
  String get launcherRetroPhoneLight => 'Retro phone (light)';

  @override
  String get voiceSearchUnavailable =>
      'Voice search is not available on this device.';

  @override
  String voiceSearchFailed(String error) {
    return 'Voice search failed: $error';
  }

  @override
  String get customColor => 'Custom';

  @override
  String get selectColor => 'Select color';

  @override
  String get reset => 'Reset';

  @override
  String get simPickerTitle => 'Choose SIM';

  @override
  String get simChooseForCall => 'Choose SIM for this call';

  @override
  String get defaultSimAsk => 'Ask every time';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Contact details';

  @override
  String get call => 'Call';

  @override
  String get share => 'Share';

  @override
  String get favourite => 'Favourite';

  @override
  String get unfavourite => 'Unfavourite';

  @override
  String get blockContact => 'Block contact';

  @override
  String get unblockContact => 'Unblock contact';

  @override
  String get deleteContact => 'Delete contact';

  @override
  String get phone => 'Phone';

  @override
  String get email => 'Email';

  @override
  String get ringtone => 'Ringtone';

  @override
  String get defaultRingtone => 'Default';

  @override
  String get simForContact => 'SIM for this contact';

  @override
  String get callHistoryTitle => 'Call history';

  @override
  String get noCallsWithNumber => 'No calls with this number';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Glyph animation';

  @override
  String get inCallGlyphAnimationStyle => 'In-call Glyph animation';

  @override
  String get recordsOff => 'Off';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Default SIM';

  @override
  String get nothingPhoneOnly => 'Nothing Phone only';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Glyph features require a Nothing Phone';

  @override
  String get custom => 'Custom';

  @override
  String presetColorHex(String hex) {
    return 'Preset · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Custom · $hex';
  }

  @override
  String get oneContact => '1 contact';

  @override
  String upToContacts(int count) {
    return 'Up to $count contacts';
  }

  @override
  String get answerButtonTapSubtitle => 'Button tap to answer';

  @override
  String get filterCalls => 'Filter calls';

  @override
  String get filterTooltip => 'Filter';

  @override
  String get settingsTooltip => 'Settings';

  @override
  String get filterAllSubtitle => 'Entire call log';

  @override
  String get filterMissedSubtitle => 'Missed and rejected';

  @override
  String get filterContactsSubtitle => 'Calls matched to a saved contact';

  @override
  String get filterNonContactsSubtitle => 'Numbers not in your address book';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Ongoing call: $detail';
  }

  @override
  String get defaultSimForCalls => 'Default SIM for calls';

  @override
  String get blinkInterval => 'Blink interval';

  @override
  String get close => 'Close';

  @override
  String get frequentlyContactedInfoBody =>
      'Shows your most-called phone numbers at the top of the Recents tab, based on how many incoming, outgoing, missed, or rejected calls you had with each number in the time period you choose.\n\nNumber of records: set to 0 to turn this off. Use 1–20 to show that many top contacts.\n\nTime period applies only when at least one contact is shown.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count lights, ${ms}ms speed';
  }

  @override
  String get deleteContactQuestion => 'Delete contact?';

  @override
  String get deleteContactBody =>
      'This contact will be permanently deleted from your device.';

  @override
  String get blockContactQuestion => 'Block contact?';

  @override
  String get unblockContactQuestion => 'Unblock contact?';

  @override
  String get blockContactBody =>
      'You will no longer receive calls or texts from this contact.';

  @override
  String get unblockContactBody =>
      'You will start receiving calls and texts from this contact.';

  @override
  String get contactBlocked => 'Contact blocked';

  @override
  String get contactUnblocked => 'Contact unblocked';

  @override
  String get noPhoneNumbersToBlock => 'No phone numbers to block';

  @override
  String get simSameAsSystem => 'Same as system';

  @override
  String get simSameAsSystemSubtitle => 'Follows Default SIM in Settings';

  @override
  String get simAskEveryTimeForContact =>
      'Always show SIM picker for this contact';

  @override
  String get ringtoneSetForContact => 'Ringtone set for this contact';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Failed to pick ringtone: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Error: $error';
  }

  @override
  String get noCallHistoryFound => 'No call history found';

  @override
  String get speedDialVoicemail => 'Speed dial: Voicemail';

  @override
  String shareContactSubject(String name) {
    return 'Contact: $name';
  }

  @override
  String get contactInfo => 'Contact info';

  @override
  String get dontAskAgainSim => 'Don\'t ask again';

  @override
  String get simDontAskAgainSubtitle =>
      'Use this SIM as default (change in Settings)';

  @override
  String get addContact => 'Add contact';

  @override
  String get createContact => 'Create contact';

  @override
  String get paste => 'Paste';

  @override
  String get clear => 'Clear';

  @override
  String get returnToCall => 'Return to call';

  @override
  String get numberOfRecordsTitle => 'Number of records';

  @override
  String get recordsPickerSubtitle =>
      'How many frequently contacted entries to show (0 = off)';

  @override
  String get torchInfoTitle => 'Torch blink';

  @override
  String get torchInfoBody =>
      'Blinks the camera flash during incoming, outgoing, or ongoing calls. Independent of Glyph lights.';

  @override
  String get glyphMapTitle => 'Glyph layout';

  @override
  String get glyphMapBody =>
      'Nothing Phone 1 Glyph LED zones. Outgoing and in-call animations use these channels.';

  @override
  String get answerMethodTitle => 'Answer method';

  @override
  String get glyphOutgoingCallStyleTitle => 'Outgoing call style';

  @override
  String get glyphInCallAnimationTitle => 'Glyph in-call animation';

  @override
  String get themePickerTitle => 'Theme';

  @override
  String get torchIncomingTitle => 'Incoming call torch';

  @override
  String get torchOutgoingTitle => 'Outgoing call torch';

  @override
  String get torchOngoingTitle => 'Ongoing call torch';

  @override
  String get timePeriodTitle => 'Time period';

  @override
  String get ok => 'OK';

  @override
  String get confirmDeleteCall => 'Delete this call from history?';

  @override
  String get confirmDeleteAllCalls => 'Delete all calls with this number?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Send a message';

  @override
  String get addToExistingContactAction => 'Add to a contact';

  @override
  String get mobileLabel => 'Mobile';

  @override
  String get callingSimForContactTitle => 'Calling SIM for this contact';

  @override
  String get contactSettings => 'Contact settings';

  @override
  String get setCallingSim => 'Set calling SIM';

  @override
  String get contactRingtone => 'Contact ringtone';

  @override
  String get shareContact => 'Share contact';

  @override
  String get blockNumbers => 'Block numbers';

  @override
  String get unblockNumbers => 'Unblock numbers';

  @override
  String get connectedApps => 'Connected apps';

  @override
  String get simNotSet => 'Not set';

  @override
  String get ringtoneDefault => 'Default';

  @override
  String get customRingtone => 'Custom';

  @override
  String get aboutSection => 'About';

  @override
  String get aboutFeedbackSection => 'About & feedback';

  @override
  String get aboutDescription =>
      'Nothing Dialer is open source. If you are a developer, you are welcome to explore the code and contribute.';

  @override
  String get aboutViewSource => 'View on GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Could not open link';

  @override
  String get reviewSection => 'Review';

  @override
  String get reviewDescription =>
      'Enjoying Nothing Dialer? Your rating on Google Play helps others find the app.';

  @override
  String get reviewRateOnPlay => 'Rate on Google Play';

  @override
  String get reviewRateOnPlaySubtitle =>
      'Leave a rating without leaving the app';

  @override
  String get reviewCouldNotOpen => 'Could not open Google Play';

  @override
  String get breathSpeed => 'Breath Speed';

  @override
  String get breathSpeedBlinkHint => 'Lower = Blink, Higher = Slow Breath';

  @override
  String get speedSliderHint => 'Lower = Faster, Higher = Slower';

  @override
  String get swatchDefault => 'Default';

  @override
  String get customAccentColorPicker => 'Custom accent color';

  @override
  String get customLightBackgroundPicker => 'Custom light background';

  @override
  String get customDarkBackgroundPicker => 'Custom dark background';

  @override
  String get customCallBackgroundPicker => 'Custom call background';

  @override
  String get ongoingCallStyleTitle => 'Ongoing call style';

  @override
  String get glyphMapUnavailable => 'Glyph map unavailable';

  @override
  String get animationDelayRange => 'Animation Delay (1s - 10s)';

  @override
  String get animationDelayRangeSingle => 'Animation Delay (0.1s - 10s)';

  @override
  String get inCallMute => 'Mute';

  @override
  String get inCallKeypad => 'Keypad';

  @override
  String get inCallSpeaker => 'Speaker';

  @override
  String get inCallMore => 'More';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Phone';

  @override
  String get inCallAddCall => 'Add call';

  @override
  String get inCallChangeSim => 'Change SIM';

  @override
  String get inCallDecline => 'Decline';

  @override
  String get inCallAnswer => 'Answer';

  @override
  String get inCallMessage => 'Message';

  @override
  String get inCallCalling => 'Calling…';

  @override
  String get inCallIncoming => 'Incoming call';

  @override
  String get inCallSelectSim => 'Select SIM…';

  @override
  String get inCallSwitchingSim => 'Switching SIM…';

  @override
  String get inCallCallEnded => 'Call ended';

  @override
  String inCallCallingVia(String sim) {
    return 'Calling via $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Calling via <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Choose SIM for this call';

  @override
  String get inCallDragAnswerDecline =>
      'Drag right to answer · Drag left to decline';

  @override
  String inCallMobileNumber(String number) {
    return 'Mobile $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label  (Current)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Call via <b>$sim</b> from';
  }

  @override
  String get inCallCallFrom => 'Call from';

  @override
  String get inCallUnknown => 'Unknown';

  @override
  String get selectContactRingtone => 'Select contact ringtone';

  @override
  String get speakToSearchPrompt => 'Speak to search';

  @override
  String get phonePermissionRequired => 'Phone permission required';

  @override
  String callFailed(String error) {
    return 'Call failed: $error';
  }

  @override
  String get callPermissionDenied => 'Call permission denied';

  @override
  String get alreadyDefaultDialer => 'Already set as default dialer';

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

/// The translations for English, as used in Australia (`en_AU`).
class AppLocalizationsEnAu extends AppLocalizationsEn {
  AppLocalizationsEnAu() : super('en_AU');

  @override
  String get appTitle => 'Nothing Dialer';

  @override
  String get settings => 'Settings';

  @override
  String get settingsSearchHint => 'Search settings';

  @override
  String get settingsSearchNoResults => 'No settings found';

  @override
  String get general => 'General';

  @override
  String get theme => 'Theme';

  @override
  String get themeSystemDefault => 'System Default';

  @override
  String get themeLight => 'Light';

  @override
  String get themeDark => 'Dark';

  @override
  String get themeFollowSystem => 'Follow system settings';

  @override
  String get themeAlwaysLight => 'Always use light theme';

  @override
  String get themeAlwaysDark => 'Always use dark theme';

  @override
  String get language => 'Language';

  @override
  String get languageDeviceDefault => 'Device default';

  @override
  String get languagePickerTitle => 'Language';

  @override
  String get languageSearchHint => 'Search languages';

  @override
  String get font => 'Font';

  @override
  String get fontSystem => 'System default';

  @override
  String get fontNdot => 'Nothing (NDot)';

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
      'Font download failed. Check your connection and try again.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Font';

  @override
  String get fontPreviewSample => 'Nothing Dialer';

  @override
  String get fontAppWide => 'App font';

  @override
  String get fontApplyTo => 'Apply to';

  @override
  String get fontApplyEntireApp => 'Entire app';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Same font everywhere, including in-call';

  @override
  String get fontApplyTitlesOnly => 'Titles & headers';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Large titles and section headers only';

  @override
  String get fontApplyCustomize => 'Customize';

  @override
  String get fontApplyCustomizeSubtitle => 'Pick font per screen and text type';

  @override
  String get fontCustomizeSection => 'Customize by screen';

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
  String get fontRolePageTitle => 'Page title';

  @override
  String get fontRoleSectionHeader => 'Section header';

  @override
  String get fontRolePrimary => 'Primary text';

  @override
  String get fontRoleSecondary => 'Secondary text';

  @override
  String get fontRoleButton => 'Buttons';

  @override
  String get fontRoleDialKey => 'Dialpad keys';

  @override
  String get fontSurfaceRecents => 'Recents';

  @override
  String get fontSurfaceContacts => 'Contacts';

  @override
  String get fontSurfaceSettings => 'Settings';

  @override
  String get fontSurfaceDialpad => 'Dialpad';

  @override
  String get fontSurfaceShell => 'Navigation';

  @override
  String get fontSurfaceDefaultDialer => 'Default dialer prompt';

  @override
  String get fontSurfaceFavourites => 'Favourites';

  @override
  String get fontSurfaceBlocked => 'Blocked numbers';

  @override
  String get fontSurfaceContactDetail => 'Contact detail';

  @override
  String get fontSurfaceCallHistory => 'Call history';

  @override
  String get fontSurfaceSheets => 'Sheets & pickers';

  @override
  String get fontSurfaceInCall => 'In-call screen';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — entire app';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — titles only';
  }

  @override
  String get fontSubtitleCustomize => 'Custom per screen';

  @override
  String get background => 'Background';

  @override
  String get accent => 'Accent';

  @override
  String get lightBackground => 'Light background';

  @override
  String get lightAccent => 'Light accent';

  @override
  String get darkBackground => 'Dark background';

  @override
  String get darkAccent => 'Dark accent';

  @override
  String get callBackground => 'Call background';

  @override
  String get appIcon => 'App icon';

  @override
  String get answerMethod => 'Answer method';

  @override
  String get answerSlide => 'Slide to answer';

  @override
  String get answerSlideSubtitle =>
      'Swipe left/right on the bar, like Google Phone';

  @override
  String get answerButton => 'Button tap';

  @override
  String get answerButtonSubtitle => 'Tap answer or decline buttons';

  @override
  String get answerHuawei => 'Huawei style';

  @override
  String get answerHuaweiSubtitle =>
      'Drag the circle to the green phone to answer';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — drag to green / red';

  @override
  String get calling => 'Calling';

  @override
  String get defaultSim => 'Default SIM';

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
  String get askEveryTime => 'Ask every time';

  @override
  String get askEveryTimeSubtitle => 'Show SIM picker before each call';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'No SIM cards found';

  @override
  String couldNotLoadSims(String error) {
    return 'Could not load SIMs: $error';
  }

  @override
  String get allFavourites => 'All favourites';

  @override
  String get allFavouritesSubtitle => 'Reorder, remove, and add from contacts';

  @override
  String get blockedNumbers => 'Blocked numbers';

  @override
  String get blockedNumbersSubtitle => 'View and unblock numbers';

  @override
  String get soundsAndVibration => 'Sounds and vibration';

  @override
  String get soundsAndVibrationSubtitle =>
      'Ringtone, vibration, dial pad tones';

  @override
  String couldNotOpenSettings(String error) {
    return 'Could not open settings: $error';
  }

  @override
  String get frequentlyContacted => 'Frequently Contacted';

  @override
  String get numberOfRecords => 'Number of records';

  @override
  String get timePeriod => 'Time period';

  @override
  String get periodLast24Hours => 'Last 24 hours';

  @override
  String get periodLast24HoursSubtitle => 'Calls from the past day';

  @override
  String get periodLast7Days => 'Last 7 days';

  @override
  String get periodLast7DaysSubtitle => 'Calls from the past week';

  @override
  String get periodLast30Days => 'Last 30 days';

  @override
  String get periodLast30DaysSubtitle => 'Calls from the past month';

  @override
  String get periodLast12Months => 'Last 12 months';

  @override
  String get periodLast12MonthsSubtitle => 'Calls from the past year';

  @override
  String get periodAllTime => 'All time';

  @override
  String get periodAllTimeSubtitle => 'Entire call history';

  @override
  String get frequentMaxOff => 'Off';

  @override
  String frequentMaxCount(int count) {
    return '$count contacts';
  }

  @override
  String get torchBlink => 'Torch Blink';

  @override
  String get torchIncomingCall => 'Incoming call torch';

  @override
  String get torchOutgoingCall => 'Outgoing call torch';

  @override
  String get torchOngoingCall => 'Ongoing call torch';

  @override
  String get torchIncomingInterval => 'Incoming blink interval';

  @override
  String get torchOutgoingInterval => 'Outgoing blink interval';

  @override
  String get torchOngoingInterval => 'Ongoing blink interval';

  @override
  String get torchOff => 'Off';

  @override
  String get torchOffIncomingSubtitle => 'No torch while ringing';

  @override
  String get torchOffOutgoingSubtitle => 'No torch while dialing';

  @override
  String get torchOffOngoingSubtitle => 'No torch during active call';

  @override
  String get torchFixedInterval => 'Fixed interval';

  @override
  String get torchFixedIntervalSubtitle => 'Blink at a set speed';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds blink';
  }

  @override
  String get flashlightUnavailable => 'Flashlight not available on this device';

  @override
  String get glyphLights => 'Glyph Lights';

  @override
  String get glyphCallingAnimation => 'Glyph calling animation';

  @override
  String get glyphOngoingAnimation => 'Glyph ongoing call animation';

  @override
  String get glyphNone => 'None';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Disable Glyph lights for outgoing calls';

  @override
  String get glyphNoneInCallSubtitle =>
      'Disable Glyph lights while actively on call';

  @override
  String get glyphBreathProgress => 'Breath & Progress';

  @override
  String get glyphBreathProgressSubtitle =>
      'Lights breathe while line fills up over 65s';

  @override
  String get glyphAccumulate => 'Accumulate';

  @override
  String get glyphAccumulateSubtitle =>
      'Accumulating animation on lights C1-C4';

  @override
  String get glyphSingle => 'Single';

  @override
  String get glyphSingleSubtitle => 'Single light moving across C1-C4';

  @override
  String get glyphBreath => 'Breath';

  @override
  String get glyphBreathSubtitle => 'Pick lights and speed';

  @override
  String get glyphSteady => 'Steady';

  @override
  String get glyphSteadySubtitle => 'Selected lights stay on';

  @override
  String get breathSettings => 'Breath Settings';

  @override
  String get activeLights => 'Active Lights';

  @override
  String lightsCount(int count) {
    return '$count lights';
  }

  @override
  String get speedSettings => 'Speed Settings';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms delay';
  }

  @override
  String get durationAndSpeed => 'Duration & Speed';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s duration, ${interval}ms interval';
  }

  @override
  String get cancel => 'Cancel';

  @override
  String get done => 'Done';

  @override
  String get save => 'Save';

  @override
  String get block => 'Block';

  @override
  String get delete => 'Delete';

  @override
  String get recents => 'Recents';

  @override
  String get contacts => 'Contacts';

  @override
  String get hideFavouritesOnRecents => 'Hide favourites on Recents';

  @override
  String get showFavouritesOnRecents => 'Show favourites on Recents';

  @override
  String get ongoingCall => 'Ongoing call';

  @override
  String get setAsDefaultTitle => 'SET AS\nDEFAULT';

  @override
  String get setAsDefaultBody =>
      'To use Nothing Dialer, it must be set as your default phone app. This allows you to manage calls, view history, and use Glyph animations.';

  @override
  String get setAsDefaultButton => 'SET AS DEFAULT';

  @override
  String get nothingDialerBrand => 'NOTHING DIALER 1';

  @override
  String get favourites => 'Favourites';

  @override
  String get addFavourite => 'Add favourite';

  @override
  String get favouritesDrawerHint =>
      'Use the menu to add contacts. Tap outside the drawer or swipe it closed. Star a contact from their details, or long-press a call in Recents.';

  @override
  String get menu => 'Menu';

  @override
  String get noFavouritesYet =>
      'No favourites yet.\nOpen the menu to add one, or star a contact.';

  @override
  String get contactsPermissionNeeded => 'Contacts permission needed';

  @override
  String get chooseContact => 'Choose contact';

  @override
  String get noPhone => 'No phone';

  @override
  String get pickNumber => 'Pick number';

  @override
  String get contactHasNoPhone => 'This contact has no phone number';

  @override
  String get blockNumber => 'Block number';

  @override
  String get enterPhoneNumber => 'Enter phone number';

  @override
  String unblockedDisplay(String display) {
    return 'Unblocked $display';
  }

  @override
  String get couldNotUnblockNumber => 'Could not unblock number';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked blocked • $matched matched';
  }

  @override
  String get contactsPermissionMissing =>
      'Contacts permission missing. Tap to fix.';

  @override
  String get noBlockedNumbers => 'No blocked numbers';

  @override
  String get unknownContact => 'Unknown contact';

  @override
  String get unblock => 'Unblock';

  @override
  String get permissionNeeded => 'Permission needed';

  @override
  String get grantPhonePermission =>
      'Grant phone permission to see your call history.';

  @override
  String get grantContactsPermission =>
      'Grant contacts permission to see your address book.';

  @override
  String get openSettings => 'Open Settings';

  @override
  String get tryAgain => 'Try again';

  @override
  String get couldNotLoadContacts => 'Could not load contacts';

  @override
  String get contactsLoadError =>
      'Something went wrong reading your address book.';

  @override
  String get noContactsFound => 'No contacts found';

  @override
  String get contactsEmptySubtitle =>
      'Contacts from your device will appear here.';

  @override
  String get searchContacts => 'Search contacts…';

  @override
  String get searchRecentCalls => 'Search recent calls';

  @override
  String get fromContacts => 'From contacts';

  @override
  String get recentsSearchSection => 'Recents search';

  @override
  String get recentsSearchShowContacts => 'Show contacts in search';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'While searching Recents, also show matching people from your address book below call history results.';

  @override
  String get voiceSearch => 'Voice search';

  @override
  String get createNewContact => 'Create new contact';

  @override
  String callError(String error) {
    return 'Call error: $error';
  }

  @override
  String get noRecentCalls => 'No recent calls';

  @override
  String get callHistoryEmpty => 'Your call history will appear here.';

  @override
  String get loadMore => 'Load more';

  @override
  String get frequentlyContactedHeader => 'Frequently contacted';

  @override
  String get recentHistory => 'Recent history';

  @override
  String get noFavouritesRecentsHint =>
      'No favourites yet. Star a contact, long-press a call, or use the Favourites tab.';

  @override
  String get copyNumber => 'Copy number';

  @override
  String get editNumberBeforeCall => 'Edit number before call';

  @override
  String get removeFromFavourites => 'Remove from favourites';

  @override
  String get addToFavourites => 'Add to favourites';

  @override
  String get blockNumberQuestion => 'Block number?';

  @override
  String blockNumberConfirm(String number) {
    return 'You will no longer receive calls or texts from $number.';
  }

  @override
  String get blocked => 'Blocked';

  @override
  String get couldNotBlock => 'Could not block';

  @override
  String get contactNotOnDevice => 'Contact not saved on this device';

  @override
  String get unblocked => 'Unblocked';

  @override
  String get numberCopied => 'Number copied';

  @override
  String get showLess => 'Show less';

  @override
  String get showAllTimes => 'Show all times';

  @override
  String mostRecent(String time) {
    return 'Most recent · $time';
  }

  @override
  String get videoCall => 'Video call';

  @override
  String get couldNotPlaceVideoCall => 'Could not place video call';

  @override
  String get message => 'Message';

  @override
  String get couldNotOpenMessaging => 'Could not open messaging app';

  @override
  String get history => 'History';

  @override
  String get viewContact => 'View contact';

  @override
  String get addToContact => 'Add to contact';

  @override
  String get callTypeMissed => 'Missed';

  @override
  String get callTypeRejected => 'Rejected';

  @override
  String get callTypeIncoming => 'Incoming';

  @override
  String get callTypeOutgoing => 'Outgoing';

  @override
  String get today => 'Today';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get justNow => 'Just now';

  @override
  String minutesAgo(int count) {
    return '$count min ago';
  }

  @override
  String hoursAgo(int count) {
    return '$count hr ago';
  }

  @override
  String get filterAll => 'All';

  @override
  String get filterMissed => 'Missed';

  @override
  String get filterContacts => 'Contacts';

  @override
  String get filterNonContacts => 'Non-contacts';

  @override
  String get iconUpdated =>
      'Icon updated. Your home screen may take a moment to refresh.';

  @override
  String get iconSavedRelease =>
      'Choice saved. The home screen icon updates in release builds.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Could not change icon: $error';
  }

  @override
  String get launcherClassicBlack => 'Classic (black)';

  @override
  String get launcherLight => 'Light';

  @override
  String get launcherNothingRed => 'Nothing red';

  @override
  String get launcherDarkGrey => 'Dark grey';

  @override
  String get launcherCream => 'Cream';

  @override
  String get launcherRetroPhone => 'Retro phone';

  @override
  String get launcherRetroPhoneLight => 'Retro phone (light)';

  @override
  String get voiceSearchUnavailable =>
      'Voice search is not available on this device.';

  @override
  String voiceSearchFailed(String error) {
    return 'Voice search failed: $error';
  }

  @override
  String get customColor => 'Custom';

  @override
  String get selectColor => 'Select color';

  @override
  String get reset => 'Reset';

  @override
  String get simPickerTitle => 'Choose SIM';

  @override
  String get simChooseForCall => 'Choose SIM for this call';

  @override
  String get defaultSimAsk => 'Ask every time';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Contact details';

  @override
  String get call => 'Call';

  @override
  String get share => 'Share';

  @override
  String get favourite => 'Favourite';

  @override
  String get unfavourite => 'Unfavourite';

  @override
  String get blockContact => 'Block contact';

  @override
  String get unblockContact => 'Unblock contact';

  @override
  String get deleteContact => 'Delete contact';

  @override
  String get phone => 'Phone';

  @override
  String get email => 'Email';

  @override
  String get ringtone => 'Ringtone';

  @override
  String get defaultRingtone => 'Default';

  @override
  String get simForContact => 'SIM for this contact';

  @override
  String get callHistoryTitle => 'Call history';

  @override
  String get noCallsWithNumber => 'No calls with this number';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Glyph animation';

  @override
  String get inCallGlyphAnimationStyle => 'In-call Glyph animation';

  @override
  String get recordsOff => 'Off';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Default SIM';

  @override
  String get nothingPhoneOnly => 'Nothing Phone only';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Glyph features require a Nothing Phone';

  @override
  String get custom => 'Custom';

  @override
  String presetColorHex(String hex) {
    return 'Preset · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Custom · $hex';
  }

  @override
  String get oneContact => '1 contact';

  @override
  String upToContacts(int count) {
    return 'Up to $count contacts';
  }

  @override
  String get answerButtonTapSubtitle => 'Button tap to answer';

  @override
  String get filterCalls => 'Filter calls';

  @override
  String get filterTooltip => 'Filter';

  @override
  String get settingsTooltip => 'Settings';

  @override
  String get filterAllSubtitle => 'Entire call log';

  @override
  String get filterMissedSubtitle => 'Missed and rejected';

  @override
  String get filterContactsSubtitle => 'Calls matched to a saved contact';

  @override
  String get filterNonContactsSubtitle => 'Numbers not in your address book';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Ongoing call: $detail';
  }

  @override
  String get defaultSimForCalls => 'Default SIM for calls';

  @override
  String get blinkInterval => 'Blink interval';

  @override
  String get close => 'Close';

  @override
  String get frequentlyContactedInfoBody =>
      'Shows your most-called phone numbers at the top of the Recents tab, based on how many incoming, outgoing, missed, or rejected calls you had with each number in the time period you choose.\n\nNumber of records: set to 0 to turn this off. Use 1–20 to show that many top contacts.\n\nTime period applies only when at least one contact is shown.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count lights, ${ms}ms speed';
  }

  @override
  String get deleteContactQuestion => 'Delete contact?';

  @override
  String get deleteContactBody =>
      'This contact will be permanently deleted from your device.';

  @override
  String get blockContactQuestion => 'Block contact?';

  @override
  String get unblockContactQuestion => 'Unblock contact?';

  @override
  String get blockContactBody =>
      'You will no longer receive calls or texts from this contact.';

  @override
  String get unblockContactBody =>
      'You will start receiving calls and texts from this contact.';

  @override
  String get contactBlocked => 'Contact blocked';

  @override
  String get contactUnblocked => 'Contact unblocked';

  @override
  String get noPhoneNumbersToBlock => 'No phone numbers to block';

  @override
  String get simSameAsSystem => 'Same as system';

  @override
  String get simSameAsSystemSubtitle => 'Follows Default SIM in Settings';

  @override
  String get simAskEveryTimeForContact =>
      'Always show SIM picker for this contact';

  @override
  String get ringtoneSetForContact => 'Ringtone set globally for this contact';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Failed to pick ringtone: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Error: $error';
  }

  @override
  String get noCallHistoryFound => 'No call history found';

  @override
  String get speedDialVoicemail => 'Speed dial: Voicemail';

  @override
  String shareContactSubject(String name) {
    return 'Contact: $name';
  }

  @override
  String get contactInfo => 'Contact info';

  @override
  String get dontAskAgainSim => 'Don\'t ask again';

  @override
  String get simDontAskAgainSubtitle =>
      'Use this SIM as default (change in Settings)';

  @override
  String get addContact => 'Add contact';

  @override
  String get createContact => 'Create contact';

  @override
  String get paste => 'Paste';

  @override
  String get clear => 'Clear';

  @override
  String get returnToCall => 'Return to call';

  @override
  String get numberOfRecordsTitle => 'Number of records';

  @override
  String get recordsPickerSubtitle =>
      'How many frequently contacted entries to show (0 = off)';

  @override
  String get torchInfoTitle => 'Torch blink';

  @override
  String get torchInfoBody =>
      'Blinks the camera flash during incoming, outgoing, or ongoing calls. Independent of Glyph lights.';

  @override
  String get glyphMapTitle => 'Glyph layout';

  @override
  String get glyphMapBody =>
      'Nothing Phone 1 Glyph LED zones. Outgoing and in-call animations use these channels.';

  @override
  String get answerMethodTitle => 'Answer method';

  @override
  String get glyphOutgoingCallStyleTitle => 'Outgoing call style';

  @override
  String get glyphInCallAnimationTitle => 'Glyph in-call animation';

  @override
  String get themePickerTitle => 'Theme';

  @override
  String get torchIncomingTitle => 'Incoming call torch';

  @override
  String get torchOutgoingTitle => 'Outgoing call torch';

  @override
  String get torchOngoingTitle => 'Ongoing call torch';

  @override
  String get timePeriodTitle => 'Time period';

  @override
  String get ok => 'OK';

  @override
  String get confirmDeleteCall => 'Delete this call from history?';

  @override
  String get confirmDeleteAllCalls => 'Delete all calls with this number?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Send a message';

  @override
  String get addToExistingContactAction => 'Add to a contact';

  @override
  String get mobileLabel => 'Mobile';

  @override
  String get callingSimForContactTitle => 'Calling SIM for this contact';

  @override
  String get contactSettings => 'Contact settings';

  @override
  String get setCallingSim => 'Set calling SIM';

  @override
  String get contactRingtone => 'Contact ringtone';

  @override
  String get shareContact => 'Share contact';

  @override
  String get blockNumbers => 'Block numbers';

  @override
  String get unblockNumbers => 'Unblock numbers';

  @override
  String get connectedApps => 'Connected apps';

  @override
  String get simNotSet => 'Not set';

  @override
  String get ringtoneDefault => 'Default';

  @override
  String get customRingtone => 'Custom';

  @override
  String get aboutSection => 'About';

  @override
  String get aboutFeedbackSection => 'About & feedback';

  @override
  String get aboutDescription =>
      'Nothing Dialer is open source. If you are a developer, you are welcome to explore the code and contribute.';

  @override
  String get aboutViewSource => 'View on GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Could not open link';

  @override
  String get reviewSection => 'Review';

  @override
  String get reviewDescription =>
      'Enjoying Nothing Dialer? Your rating on Google Play helps others find the app.';

  @override
  String get reviewRateOnPlay => 'Rate on Google Play';

  @override
  String get reviewRateOnPlaySubtitle =>
      'Leave a rating without leaving the app';

  @override
  String get reviewCouldNotOpen => 'Could not open Google Play';

  @override
  String get breathSpeed => 'Breath Speed';

  @override
  String get breathSpeedBlinkHint => 'Lower = Blink, Higher = Slow Breath';

  @override
  String get speedSliderHint => 'Lower = Faster, Higher = Slower';

  @override
  String get swatchDefault => 'Default';

  @override
  String get customAccentColorPicker => 'Custom accent color';

  @override
  String get customLightBackgroundPicker => 'Custom light background';

  @override
  String get customDarkBackgroundPicker => 'Custom dark background';

  @override
  String get customCallBackgroundPicker => 'Custom call background';

  @override
  String get ongoingCallStyleTitle => 'Ongoing call style';

  @override
  String get glyphMapUnavailable => 'Glyph map unavailable';

  @override
  String get animationDelayRange => 'Animation Delay (1s - 10s)';

  @override
  String get animationDelayRangeSingle => 'Animation Delay (0.1s - 10s)';

  @override
  String get inCallMute => 'Mute';

  @override
  String get inCallKeypad => 'Keypad';

  @override
  String get inCallSpeaker => 'Speaker';

  @override
  String get inCallMore => 'More';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Phone';

  @override
  String get inCallAddCall => 'Add call';

  @override
  String get inCallChangeSim => 'Change SIM';

  @override
  String get inCallDecline => 'Decline';

  @override
  String get inCallAnswer => 'Answer';

  @override
  String get inCallMessage => 'Message';

  @override
  String get inCallCalling => 'Calling…';

  @override
  String get inCallIncoming => 'Incoming call';

  @override
  String get inCallSelectSim => 'Select SIM…';

  @override
  String get inCallSwitchingSim => 'Switching SIM…';

  @override
  String get inCallCallEnded => 'Call ended';

  @override
  String inCallCallingVia(String sim) {
    return 'Calling via $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Calling via <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Choose SIM for this call';

  @override
  String get inCallDragAnswerDecline =>
      'Drag right to answer · Drag left to decline';

  @override
  String inCallMobileNumber(String number) {
    return 'Mobile $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label  (Current)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Call via <b>$sim</b> from';
  }

  @override
  String get inCallCallFrom => 'Call from';

  @override
  String get inCallUnknown => 'Unknown';

  @override
  String get selectContactRingtone => 'Select contact ringtone';

  @override
  String get speakToSearchPrompt => 'Speak to search';

  @override
  String get phonePermissionRequired => 'Phone permission required';

  @override
  String callFailed(String error) {
    return 'Call failed: $error';
  }

  @override
  String get callPermissionDenied => 'Call permission denied';

  @override
  String get alreadyDefaultDialer => 'Already set as default dialer';

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

/// The translations for English, as used in Canada (`en_CA`).
class AppLocalizationsEnCa extends AppLocalizationsEn {
  AppLocalizationsEnCa() : super('en_CA');

  @override
  String get appTitle => 'Nothing Dialer';

  @override
  String get settings => 'Settings';

  @override
  String get settingsSearchHint => 'Search settings';

  @override
  String get settingsSearchNoResults => 'No settings found';

  @override
  String get general => 'General';

  @override
  String get theme => 'Theme';

  @override
  String get themeSystemDefault => 'System Default';

  @override
  String get themeLight => 'Light';

  @override
  String get themeDark => 'Dark';

  @override
  String get themeFollowSystem => 'Follow system settings';

  @override
  String get themeAlwaysLight => 'Always use light theme';

  @override
  String get themeAlwaysDark => 'Always use dark theme';

  @override
  String get language => 'Language';

  @override
  String get languageDeviceDefault => 'Device default';

  @override
  String get languagePickerTitle => 'Language';

  @override
  String get languageSearchHint => 'Search languages';

  @override
  String get font => 'Font';

  @override
  String get fontSystem => 'System default';

  @override
  String get fontNdot => 'Nothing (NDot)';

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
      'Font download failed. Check your connection and try again.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Font';

  @override
  String get fontPreviewSample => 'Nothing Dialer';

  @override
  String get fontAppWide => 'App font';

  @override
  String get fontApplyTo => 'Apply to';

  @override
  String get fontApplyEntireApp => 'Entire app';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Same font everywhere, including in-call';

  @override
  String get fontApplyTitlesOnly => 'Titles & headers';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Large titles and section headers only';

  @override
  String get fontApplyCustomize => 'Customize';

  @override
  String get fontApplyCustomizeSubtitle => 'Pick font per screen and text type';

  @override
  String get fontCustomizeSection => 'Customize by screen';

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
  String get fontRolePageTitle => 'Page title';

  @override
  String get fontRoleSectionHeader => 'Section header';

  @override
  String get fontRolePrimary => 'Primary text';

  @override
  String get fontRoleSecondary => 'Secondary text';

  @override
  String get fontRoleButton => 'Buttons';

  @override
  String get fontRoleDialKey => 'Dialpad keys';

  @override
  String get fontSurfaceRecents => 'Recents';

  @override
  String get fontSurfaceContacts => 'Contacts';

  @override
  String get fontSurfaceSettings => 'Settings';

  @override
  String get fontSurfaceDialpad => 'Dialpad';

  @override
  String get fontSurfaceShell => 'Navigation';

  @override
  String get fontSurfaceDefaultDialer => 'Default dialer prompt';

  @override
  String get fontSurfaceFavourites => 'Favourites';

  @override
  String get fontSurfaceBlocked => 'Blocked numbers';

  @override
  String get fontSurfaceContactDetail => 'Contact detail';

  @override
  String get fontSurfaceCallHistory => 'Call history';

  @override
  String get fontSurfaceSheets => 'Sheets & pickers';

  @override
  String get fontSurfaceInCall => 'In-call screen';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — entire app';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — titles only';
  }

  @override
  String get fontSubtitleCustomize => 'Custom per screen';

  @override
  String get background => 'Background';

  @override
  String get accent => 'Accent';

  @override
  String get lightBackground => 'Light background';

  @override
  String get lightAccent => 'Light accent';

  @override
  String get darkBackground => 'Dark background';

  @override
  String get darkAccent => 'Dark accent';

  @override
  String get callBackground => 'Call background';

  @override
  String get appIcon => 'App icon';

  @override
  String get answerMethod => 'Answer method';

  @override
  String get answerSlide => 'Slide to answer';

  @override
  String get answerSlideSubtitle =>
      'Swipe left/right on the bar, like Google Phone';

  @override
  String get answerButton => 'Button tap';

  @override
  String get answerButtonSubtitle => 'Tap answer or decline buttons';

  @override
  String get answerHuawei => 'Huawei style';

  @override
  String get answerHuaweiSubtitle =>
      'Drag the circle to the green phone to answer';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — drag to green / red';

  @override
  String get calling => 'Calling';

  @override
  String get defaultSim => 'Default SIM';

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
  String get askEveryTime => 'Ask every time';

  @override
  String get askEveryTimeSubtitle => 'Show SIM picker before each call';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'No SIM cards found';

  @override
  String couldNotLoadSims(String error) {
    return 'Could not load SIMs: $error';
  }

  @override
  String get allFavourites => 'All favourites';

  @override
  String get allFavouritesSubtitle => 'Reorder, remove, and add from contacts';

  @override
  String get blockedNumbers => 'Blocked numbers';

  @override
  String get blockedNumbersSubtitle => 'View and unblock numbers';

  @override
  String get soundsAndVibration => 'Sounds and vibration';

  @override
  String get soundsAndVibrationSubtitle =>
      'Ringtone, vibration, dial pad tones';

  @override
  String couldNotOpenSettings(String error) {
    return 'Could not open settings: $error';
  }

  @override
  String get frequentlyContacted => 'Frequently Contacted';

  @override
  String get numberOfRecords => 'Number of records';

  @override
  String get timePeriod => 'Time period';

  @override
  String get periodLast24Hours => 'Last 24 hours';

  @override
  String get periodLast24HoursSubtitle => 'Calls from the past day';

  @override
  String get periodLast7Days => 'Last 7 days';

  @override
  String get periodLast7DaysSubtitle => 'Calls from the past week';

  @override
  String get periodLast30Days => 'Last 30 days';

  @override
  String get periodLast30DaysSubtitle => 'Calls from the past month';

  @override
  String get periodLast12Months => 'Last 12 months';

  @override
  String get periodLast12MonthsSubtitle => 'Calls from the past year';

  @override
  String get periodAllTime => 'All time';

  @override
  String get periodAllTimeSubtitle => 'Entire call history';

  @override
  String get frequentMaxOff => 'Off';

  @override
  String frequentMaxCount(int count) {
    return '$count contacts';
  }

  @override
  String get torchBlink => 'Torch Blink';

  @override
  String get torchIncomingCall => 'Incoming call torch';

  @override
  String get torchOutgoingCall => 'Outgoing call torch';

  @override
  String get torchOngoingCall => 'Ongoing call torch';

  @override
  String get torchIncomingInterval => 'Incoming blink interval';

  @override
  String get torchOutgoingInterval => 'Outgoing blink interval';

  @override
  String get torchOngoingInterval => 'Ongoing blink interval';

  @override
  String get torchOff => 'Off';

  @override
  String get torchOffIncomingSubtitle => 'No torch while ringing';

  @override
  String get torchOffOutgoingSubtitle => 'No torch while dialing';

  @override
  String get torchOffOngoingSubtitle => 'No torch during active call';

  @override
  String get torchFixedInterval => 'Fixed interval';

  @override
  String get torchFixedIntervalSubtitle => 'Blink at a set speed';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds blink';
  }

  @override
  String get flashlightUnavailable => 'Flashlight not available on this device';

  @override
  String get glyphLights => 'Glyph Lights';

  @override
  String get glyphCallingAnimation => 'Glyph calling animation';

  @override
  String get glyphOngoingAnimation => 'Glyph ongoing call animation';

  @override
  String get glyphNone => 'None';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Disable Glyph lights for outgoing calls';

  @override
  String get glyphNoneInCallSubtitle =>
      'Disable Glyph lights while actively on call';

  @override
  String get glyphBreathProgress => 'Breath & Progress';

  @override
  String get glyphBreathProgressSubtitle =>
      'Lights breathe while line fills up over 65s';

  @override
  String get glyphAccumulate => 'Accumulate';

  @override
  String get glyphAccumulateSubtitle =>
      'Accumulating animation on lights C1-C4';

  @override
  String get glyphSingle => 'Single';

  @override
  String get glyphSingleSubtitle => 'Single light moving across C1-C4';

  @override
  String get glyphBreath => 'Breath';

  @override
  String get glyphBreathSubtitle => 'Pick lights and speed';

  @override
  String get glyphSteady => 'Steady';

  @override
  String get glyphSteadySubtitle => 'Selected lights stay on';

  @override
  String get breathSettings => 'Breath Settings';

  @override
  String get activeLights => 'Active Lights';

  @override
  String lightsCount(int count) {
    return '$count lights';
  }

  @override
  String get speedSettings => 'Speed Settings';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms delay';
  }

  @override
  String get durationAndSpeed => 'Duration & Speed';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s duration, ${interval}ms interval';
  }

  @override
  String get cancel => 'Cancel';

  @override
  String get done => 'Done';

  @override
  String get save => 'Save';

  @override
  String get block => 'Block';

  @override
  String get delete => 'Delete';

  @override
  String get recents => 'Recents';

  @override
  String get contacts => 'Contacts';

  @override
  String get hideFavouritesOnRecents => 'Hide favourites on Recents';

  @override
  String get showFavouritesOnRecents => 'Show favourites on Recents';

  @override
  String get ongoingCall => 'Ongoing call';

  @override
  String get setAsDefaultTitle => 'SET AS\nDEFAULT';

  @override
  String get setAsDefaultBody =>
      'To use Nothing Dialer, it must be set as your default phone app. This allows you to manage calls, view history, and use Glyph animations.';

  @override
  String get setAsDefaultButton => 'SET AS DEFAULT';

  @override
  String get nothingDialerBrand => 'NOTHING DIALER 1';

  @override
  String get favourites => 'Favourites';

  @override
  String get addFavourite => 'Add favourite';

  @override
  String get favouritesDrawerHint =>
      'Use the menu to add contacts. Tap outside the drawer or swipe it closed. Star a contact from their details, or long-press a call in Recents.';

  @override
  String get menu => 'Menu';

  @override
  String get noFavouritesYet =>
      'No favourites yet.\nOpen the menu to add one, or star a contact.';

  @override
  String get contactsPermissionNeeded => 'Contacts permission needed';

  @override
  String get chooseContact => 'Choose contact';

  @override
  String get noPhone => 'No phone';

  @override
  String get pickNumber => 'Pick number';

  @override
  String get contactHasNoPhone => 'This contact has no phone number';

  @override
  String get blockNumber => 'Block number';

  @override
  String get enterPhoneNumber => 'Enter phone number';

  @override
  String unblockedDisplay(String display) {
    return 'Unblocked $display';
  }

  @override
  String get couldNotUnblockNumber => 'Could not unblock number';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked blocked • $matched matched';
  }

  @override
  String get contactsPermissionMissing =>
      'Contacts permission missing. Tap to fix.';

  @override
  String get noBlockedNumbers => 'No blocked numbers';

  @override
  String get unknownContact => 'Unknown contact';

  @override
  String get unblock => 'Unblock';

  @override
  String get permissionNeeded => 'Permission needed';

  @override
  String get grantPhonePermission =>
      'Grant phone permission to see your call history.';

  @override
  String get grantContactsPermission =>
      'Grant contacts permission to see your address book.';

  @override
  String get openSettings => 'Open Settings';

  @override
  String get tryAgain => 'Try again';

  @override
  String get couldNotLoadContacts => 'Could not load contacts';

  @override
  String get contactsLoadError =>
      'Something went wrong reading your address book.';

  @override
  String get noContactsFound => 'No contacts found';

  @override
  String get contactsEmptySubtitle =>
      'Contacts from your device will appear here.';

  @override
  String get searchContacts => 'Search contacts…';

  @override
  String get searchRecentCalls => 'Search recent calls';

  @override
  String get fromContacts => 'From contacts';

  @override
  String get recentsSearchSection => 'Recents search';

  @override
  String get recentsSearchShowContacts => 'Show contacts in search';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'While searching Recents, also show matching people from your address book below call history results.';

  @override
  String get voiceSearch => 'Voice search';

  @override
  String get createNewContact => 'Create new contact';

  @override
  String callError(String error) {
    return 'Call error: $error';
  }

  @override
  String get noRecentCalls => 'No recent calls';

  @override
  String get callHistoryEmpty => 'Your call history will appear here.';

  @override
  String get loadMore => 'Load more';

  @override
  String get frequentlyContactedHeader => 'Frequently contacted';

  @override
  String get recentHistory => 'Recent history';

  @override
  String get noFavouritesRecentsHint =>
      'No favourites yet. Star a contact, long-press a call, or use the Favourites tab.';

  @override
  String get copyNumber => 'Copy number';

  @override
  String get editNumberBeforeCall => 'Edit number before call';

  @override
  String get removeFromFavourites => 'Remove from favourites';

  @override
  String get addToFavourites => 'Add to favourites';

  @override
  String get blockNumberQuestion => 'Block number?';

  @override
  String blockNumberConfirm(String number) {
    return 'You will no longer receive calls or texts from $number.';
  }

  @override
  String get blocked => 'Blocked';

  @override
  String get couldNotBlock => 'Could not block';

  @override
  String get contactNotOnDevice => 'Contact not saved on this device';

  @override
  String get unblocked => 'Unblocked';

  @override
  String get numberCopied => 'Number copied';

  @override
  String get showLess => 'Show less';

  @override
  String get showAllTimes => 'Show all times';

  @override
  String mostRecent(String time) {
    return 'Most recent · $time';
  }

  @override
  String get videoCall => 'Video call';

  @override
  String get couldNotPlaceVideoCall => 'Could not place video call';

  @override
  String get message => 'Message';

  @override
  String get couldNotOpenMessaging => 'Could not open messaging app';

  @override
  String get history => 'History';

  @override
  String get viewContact => 'View contact';

  @override
  String get addToContact => 'Add to contact';

  @override
  String get callTypeMissed => 'Missed';

  @override
  String get callTypeRejected => 'Rejected';

  @override
  String get callTypeIncoming => 'Incoming';

  @override
  String get callTypeOutgoing => 'Outgoing';

  @override
  String get today => 'Today';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get justNow => 'Just now';

  @override
  String minutesAgo(int count) {
    return '$count min ago';
  }

  @override
  String hoursAgo(int count) {
    return '$count hr ago';
  }

  @override
  String get filterAll => 'All';

  @override
  String get filterMissed => 'Missed';

  @override
  String get filterContacts => 'Contacts';

  @override
  String get filterNonContacts => 'Non-contacts';

  @override
  String get iconUpdated =>
      'Icon updated. Your home screen may take a moment to refresh.';

  @override
  String get iconSavedRelease =>
      'Choice saved. The home screen icon updates in release builds.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Could not change icon: $error';
  }

  @override
  String get launcherClassicBlack => 'Classic (black)';

  @override
  String get launcherLight => 'Light';

  @override
  String get launcherNothingRed => 'Nothing red';

  @override
  String get launcherDarkGrey => 'Dark grey';

  @override
  String get launcherCream => 'Cream';

  @override
  String get launcherRetroPhone => 'Retro phone';

  @override
  String get launcherRetroPhoneLight => 'Retro phone (light)';

  @override
  String get voiceSearchUnavailable =>
      'Voice search is not available on this device.';

  @override
  String voiceSearchFailed(String error) {
    return 'Voice search failed: $error';
  }

  @override
  String get customColor => 'Custom';

  @override
  String get selectColor => 'Select color';

  @override
  String get reset => 'Reset';

  @override
  String get simPickerTitle => 'Choose SIM';

  @override
  String get simChooseForCall => 'Choose SIM for this call';

  @override
  String get defaultSimAsk => 'Ask every time';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Contact details';

  @override
  String get call => 'Call';

  @override
  String get share => 'Share';

  @override
  String get favourite => 'Favourite';

  @override
  String get unfavourite => 'Unfavourite';

  @override
  String get blockContact => 'Block contact';

  @override
  String get unblockContact => 'Unblock contact';

  @override
  String get deleteContact => 'Delete contact';

  @override
  String get phone => 'Phone';

  @override
  String get email => 'Email';

  @override
  String get ringtone => 'Ringtone';

  @override
  String get defaultRingtone => 'Default';

  @override
  String get simForContact => 'SIM for this contact';

  @override
  String get callHistoryTitle => 'Call history';

  @override
  String get noCallsWithNumber => 'No calls with this number';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Glyph animation';

  @override
  String get inCallGlyphAnimationStyle => 'In-call Glyph animation';

  @override
  String get recordsOff => 'Off';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Default SIM';

  @override
  String get nothingPhoneOnly => 'Nothing Phone only';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Glyph features require a Nothing Phone';

  @override
  String get custom => 'Custom';

  @override
  String presetColorHex(String hex) {
    return 'Preset · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Custom · $hex';
  }

  @override
  String get oneContact => '1 contact';

  @override
  String upToContacts(int count) {
    return 'Up to $count contacts';
  }

  @override
  String get answerButtonTapSubtitle => 'Button tap to answer';

  @override
  String get filterCalls => 'Filter calls';

  @override
  String get filterTooltip => 'Filter';

  @override
  String get settingsTooltip => 'Settings';

  @override
  String get filterAllSubtitle => 'Entire call log';

  @override
  String get filterMissedSubtitle => 'Missed and rejected';

  @override
  String get filterContactsSubtitle => 'Calls matched to a saved contact';

  @override
  String get filterNonContactsSubtitle => 'Numbers not in your address book';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Ongoing call: $detail';
  }

  @override
  String get defaultSimForCalls => 'Default SIM for calls';

  @override
  String get blinkInterval => 'Blink interval';

  @override
  String get close => 'Close';

  @override
  String get frequentlyContactedInfoBody =>
      'Shows your most-called phone numbers at the top of the Recents tab, based on how many incoming, outgoing, missed, or rejected calls you had with each number in the time period you choose.\n\nNumber of records: set to 0 to turn this off. Use 1–20 to show that many top contacts.\n\nTime period applies only when at least one contact is shown.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count lights, ${ms}ms speed';
  }

  @override
  String get deleteContactQuestion => 'Delete contact?';

  @override
  String get deleteContactBody =>
      'This contact will be permanently deleted from your device.';

  @override
  String get blockContactQuestion => 'Block contact?';

  @override
  String get unblockContactQuestion => 'Unblock contact?';

  @override
  String get blockContactBody =>
      'You will no longer receive calls or texts from this contact.';

  @override
  String get unblockContactBody =>
      'You will start receiving calls and texts from this contact.';

  @override
  String get contactBlocked => 'Contact blocked';

  @override
  String get contactUnblocked => 'Contact unblocked';

  @override
  String get noPhoneNumbersToBlock => 'No phone numbers to block';

  @override
  String get simSameAsSystem => 'Same as system';

  @override
  String get simSameAsSystemSubtitle => 'Follows Default SIM in Settings';

  @override
  String get simAskEveryTimeForContact =>
      'Always show SIM picker for this contact';

  @override
  String get ringtoneSetForContact => 'Ringtone set globally for this contact';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Failed to pick ringtone: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Error: $error';
  }

  @override
  String get noCallHistoryFound => 'No call history found';

  @override
  String get speedDialVoicemail => 'Speed dial: Voicemail';

  @override
  String shareContactSubject(String name) {
    return 'Contact: $name';
  }

  @override
  String get contactInfo => 'Contact info';

  @override
  String get dontAskAgainSim => 'Don\'t ask again';

  @override
  String get simDontAskAgainSubtitle =>
      'Use this SIM as default (change in Settings)';

  @override
  String get addContact => 'Add contact';

  @override
  String get createContact => 'Create contact';

  @override
  String get paste => 'Paste';

  @override
  String get clear => 'Clear';

  @override
  String get returnToCall => 'Return to call';

  @override
  String get numberOfRecordsTitle => 'Number of records';

  @override
  String get recordsPickerSubtitle =>
      'How many frequently contacted entries to show (0 = off)';

  @override
  String get torchInfoTitle => 'Torch blink';

  @override
  String get torchInfoBody =>
      'Blinks the camera flash during incoming, outgoing, or ongoing calls. Independent of Glyph lights.';

  @override
  String get glyphMapTitle => 'Glyph layout';

  @override
  String get glyphMapBody =>
      'Nothing Phone 1 Glyph LED zones. Outgoing and in-call animations use these channels.';

  @override
  String get answerMethodTitle => 'Answer method';

  @override
  String get glyphOutgoingCallStyleTitle => 'Outgoing call style';

  @override
  String get glyphInCallAnimationTitle => 'Glyph in-call animation';

  @override
  String get themePickerTitle => 'Theme';

  @override
  String get torchIncomingTitle => 'Incoming call torch';

  @override
  String get torchOutgoingTitle => 'Outgoing call torch';

  @override
  String get torchOngoingTitle => 'Ongoing call torch';

  @override
  String get timePeriodTitle => 'Time period';

  @override
  String get ok => 'OK';

  @override
  String get confirmDeleteCall => 'Delete this call from history?';

  @override
  String get confirmDeleteAllCalls => 'Delete all calls with this number?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Send a message';

  @override
  String get addToExistingContactAction => 'Add to a contact';

  @override
  String get mobileLabel => 'Mobile';

  @override
  String get callingSimForContactTitle => 'Calling SIM for this contact';

  @override
  String get contactSettings => 'Contact settings';

  @override
  String get setCallingSim => 'Set calling SIM';

  @override
  String get contactRingtone => 'Contact ringtone';

  @override
  String get shareContact => 'Share contact';

  @override
  String get blockNumbers => 'Block numbers';

  @override
  String get unblockNumbers => 'Unblock numbers';

  @override
  String get connectedApps => 'Connected apps';

  @override
  String get simNotSet => 'Not set';

  @override
  String get ringtoneDefault => 'Default';

  @override
  String get customRingtone => 'Custom';

  @override
  String get aboutSection => 'About';

  @override
  String get aboutFeedbackSection => 'About & feedback';

  @override
  String get aboutDescription =>
      'Nothing Dialer is open source. If you are a developer, you are welcome to explore the code and contribute.';

  @override
  String get aboutViewSource => 'View on GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Could not open link';

  @override
  String get reviewSection => 'Review';

  @override
  String get reviewDescription =>
      'Enjoying Nothing Dialer? Your rating on Google Play helps others find the app.';

  @override
  String get reviewRateOnPlay => 'Rate on Google Play';

  @override
  String get reviewRateOnPlaySubtitle =>
      'Leave a rating without leaving the app';

  @override
  String get reviewCouldNotOpen => 'Could not open Google Play';

  @override
  String get breathSpeed => 'Breath Speed';

  @override
  String get breathSpeedBlinkHint => 'Lower = Blink, Higher = Slow Breath';

  @override
  String get speedSliderHint => 'Lower = Faster, Higher = Slower';

  @override
  String get swatchDefault => 'Default';

  @override
  String get customAccentColorPicker => 'Custom accent color';

  @override
  String get customLightBackgroundPicker => 'Custom light background';

  @override
  String get customDarkBackgroundPicker => 'Custom dark background';

  @override
  String get customCallBackgroundPicker => 'Custom call background';

  @override
  String get ongoingCallStyleTitle => 'Ongoing call style';

  @override
  String get glyphMapUnavailable => 'Glyph map unavailable';

  @override
  String get animationDelayRange => 'Animation Delay (1s - 10s)';

  @override
  String get animationDelayRangeSingle => 'Animation Delay (0.1s - 10s)';

  @override
  String get inCallMute => 'Mute';

  @override
  String get inCallKeypad => 'Keypad';

  @override
  String get inCallSpeaker => 'Speaker';

  @override
  String get inCallMore => 'More';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Phone';

  @override
  String get inCallAddCall => 'Add call';

  @override
  String get inCallChangeSim => 'Change SIM';

  @override
  String get inCallDecline => 'Decline';

  @override
  String get inCallAnswer => 'Answer';

  @override
  String get inCallMessage => 'Message';

  @override
  String get inCallCalling => 'Calling…';

  @override
  String get inCallIncoming => 'Incoming call';

  @override
  String get inCallSelectSim => 'Select SIM…';

  @override
  String get inCallSwitchingSim => 'Switching SIM…';

  @override
  String get inCallCallEnded => 'Call ended';

  @override
  String inCallCallingVia(String sim) {
    return 'Calling via $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Calling via <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Choose SIM for this call';

  @override
  String get inCallDragAnswerDecline =>
      'Drag right to answer · Drag left to decline';

  @override
  String inCallMobileNumber(String number) {
    return 'Mobile $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label  (Current)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Call via <b>$sim</b> from';
  }

  @override
  String get inCallCallFrom => 'Call from';

  @override
  String get inCallUnknown => 'Unknown';

  @override
  String get selectContactRingtone => 'Select contact ringtone';

  @override
  String get speakToSearchPrompt => 'Speak to search';

  @override
  String get phonePermissionRequired => 'Phone permission required';

  @override
  String callFailed(String error) {
    return 'Call failed: $error';
  }

  @override
  String get callPermissionDenied => 'Call permission denied';

  @override
  String get alreadyDefaultDialer => 'Already set as default dialer';

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

/// The translations for English, as used in the United Kingdom (`en_GB`).
class AppLocalizationsEnGb extends AppLocalizationsEn {
  AppLocalizationsEnGb() : super('en_GB');

  @override
  String get appTitle => 'Nothing Dialer';

  @override
  String get settings => 'Settings';

  @override
  String get settingsSearchHint => 'Search settings';

  @override
  String get settingsSearchNoResults => 'No settings found';

  @override
  String get general => 'General';

  @override
  String get theme => 'Theme';

  @override
  String get themeSystemDefault => 'System Default';

  @override
  String get themeLight => 'Light';

  @override
  String get themeDark => 'Dark';

  @override
  String get themeFollowSystem => 'Follow system settings';

  @override
  String get themeAlwaysLight => 'Always use light theme';

  @override
  String get themeAlwaysDark => 'Always use dark theme';

  @override
  String get language => 'Language';

  @override
  String get languageDeviceDefault => 'Device default';

  @override
  String get languagePickerTitle => 'Language';

  @override
  String get languageSearchHint => 'Search languages';

  @override
  String get font => 'Font';

  @override
  String get fontSystem => 'System default';

  @override
  String get fontNdot => 'Nothing (NDot)';

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
      'Font download failed. Check your connection and try again.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Font';

  @override
  String get fontPreviewSample => 'Nothing Dialer';

  @override
  String get fontAppWide => 'App font';

  @override
  String get fontApplyTo => 'Apply to';

  @override
  String get fontApplyEntireApp => 'Entire app';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Same font everywhere, including in-call';

  @override
  String get fontApplyTitlesOnly => 'Titles & headers';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Large titles and section headers only';

  @override
  String get fontApplyCustomize => 'Customize';

  @override
  String get fontApplyCustomizeSubtitle => 'Pick font per screen and text type';

  @override
  String get fontCustomizeSection => 'Customize by screen';

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
  String get fontRolePageTitle => 'Page title';

  @override
  String get fontRoleSectionHeader => 'Section header';

  @override
  String get fontRolePrimary => 'Primary text';

  @override
  String get fontRoleSecondary => 'Secondary text';

  @override
  String get fontRoleButton => 'Buttons';

  @override
  String get fontRoleDialKey => 'Dialpad keys';

  @override
  String get fontSurfaceRecents => 'Recents';

  @override
  String get fontSurfaceContacts => 'Contacts';

  @override
  String get fontSurfaceSettings => 'Settings';

  @override
  String get fontSurfaceDialpad => 'Dialpad';

  @override
  String get fontSurfaceShell => 'Navigation';

  @override
  String get fontSurfaceDefaultDialer => 'Default dialer prompt';

  @override
  String get fontSurfaceFavourites => 'Favourites';

  @override
  String get fontSurfaceBlocked => 'Blocked numbers';

  @override
  String get fontSurfaceContactDetail => 'Contact detail';

  @override
  String get fontSurfaceCallHistory => 'Call history';

  @override
  String get fontSurfaceSheets => 'Sheets & pickers';

  @override
  String get fontSurfaceInCall => 'In-call screen';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — entire app';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — titles only';
  }

  @override
  String get fontSubtitleCustomize => 'Custom per screen';

  @override
  String get background => 'Background';

  @override
  String get accent => 'Accent';

  @override
  String get lightBackground => 'Light background';

  @override
  String get lightAccent => 'Light accent';

  @override
  String get darkBackground => 'Dark background';

  @override
  String get darkAccent => 'Dark accent';

  @override
  String get callBackground => 'Call background';

  @override
  String get appIcon => 'App icon';

  @override
  String get answerMethod => 'Answer method';

  @override
  String get answerSlide => 'Slide to answer';

  @override
  String get answerSlideSubtitle =>
      'Swipe left/right on the bar, like Google Phone';

  @override
  String get answerButton => 'Button tap';

  @override
  String get answerButtonSubtitle => 'Tap answer or decline buttons';

  @override
  String get answerHuawei => 'Huawei style';

  @override
  String get answerHuaweiSubtitle =>
      'Drag the circle to the green phone to answer';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — drag to green / red';

  @override
  String get calling => 'Calling';

  @override
  String get defaultSim => 'Default SIM';

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
  String get askEveryTime => 'Ask every time';

  @override
  String get askEveryTimeSubtitle => 'Show SIM picker before each call';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'No SIM cards found';

  @override
  String couldNotLoadSims(String error) {
    return 'Could not load SIMs: $error';
  }

  @override
  String get allFavourites => 'All favourites';

  @override
  String get allFavouritesSubtitle => 'Reorder, remove, and add from contacts';

  @override
  String get blockedNumbers => 'Blocked numbers';

  @override
  String get blockedNumbersSubtitle => 'View and unblock numbers';

  @override
  String get soundsAndVibration => 'Sounds and vibration';

  @override
  String get soundsAndVibrationSubtitle =>
      'Ringtone, vibration, dial pad tones';

  @override
  String couldNotOpenSettings(String error) {
    return 'Could not open settings: $error';
  }

  @override
  String get frequentlyContacted => 'Frequently Contacted';

  @override
  String get numberOfRecords => 'Number of records';

  @override
  String get timePeriod => 'Time period';

  @override
  String get periodLast24Hours => 'Last 24 hours';

  @override
  String get periodLast24HoursSubtitle => 'Calls from the past day';

  @override
  String get periodLast7Days => 'Last 7 days';

  @override
  String get periodLast7DaysSubtitle => 'Calls from the past week';

  @override
  String get periodLast30Days => 'Last 30 days';

  @override
  String get periodLast30DaysSubtitle => 'Calls from the past month';

  @override
  String get periodLast12Months => 'Last 12 months';

  @override
  String get periodLast12MonthsSubtitle => 'Calls from the past year';

  @override
  String get periodAllTime => 'All time';

  @override
  String get periodAllTimeSubtitle => 'Entire call history';

  @override
  String get frequentMaxOff => 'Off';

  @override
  String frequentMaxCount(int count) {
    return '$count contacts';
  }

  @override
  String get torchBlink => 'Torch Blink';

  @override
  String get torchIncomingCall => 'Incoming call torch';

  @override
  String get torchOutgoingCall => 'Outgoing call torch';

  @override
  String get torchOngoingCall => 'Ongoing call torch';

  @override
  String get torchIncomingInterval => 'Incoming blink interval';

  @override
  String get torchOutgoingInterval => 'Outgoing blink interval';

  @override
  String get torchOngoingInterval => 'Ongoing blink interval';

  @override
  String get torchOff => 'Off';

  @override
  String get torchOffIncomingSubtitle => 'No torch while ringing';

  @override
  String get torchOffOutgoingSubtitle => 'No torch while dialing';

  @override
  String get torchOffOngoingSubtitle => 'No torch during active call';

  @override
  String get torchFixedInterval => 'Fixed interval';

  @override
  String get torchFixedIntervalSubtitle => 'Blink at a set speed';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds blink';
  }

  @override
  String get flashlightUnavailable => 'Flashlight not available on this device';

  @override
  String get glyphLights => 'Glyph Lights';

  @override
  String get glyphCallingAnimation => 'Glyph calling animation';

  @override
  String get glyphOngoingAnimation => 'Glyph ongoing call animation';

  @override
  String get glyphNone => 'None';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Disable Glyph lights for outgoing calls';

  @override
  String get glyphNoneInCallSubtitle =>
      'Disable Glyph lights while actively on call';

  @override
  String get glyphBreathProgress => 'Breath & Progress';

  @override
  String get glyphBreathProgressSubtitle =>
      'Lights breathe while line fills up over 65s';

  @override
  String get glyphAccumulate => 'Accumulate';

  @override
  String get glyphAccumulateSubtitle =>
      'Accumulating animation on lights C1-C4';

  @override
  String get glyphSingle => 'Single';

  @override
  String get glyphSingleSubtitle => 'Single light moving across C1-C4';

  @override
  String get glyphBreath => 'Breath';

  @override
  String get glyphBreathSubtitle => 'Pick lights and speed';

  @override
  String get glyphSteady => 'Steady';

  @override
  String get glyphSteadySubtitle => 'Selected lights stay on';

  @override
  String get breathSettings => 'Breath Settings';

  @override
  String get activeLights => 'Active Lights';

  @override
  String lightsCount(int count) {
    return '$count lights';
  }

  @override
  String get speedSettings => 'Speed Settings';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms delay';
  }

  @override
  String get durationAndSpeed => 'Duration & Speed';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s duration, ${interval}ms interval';
  }

  @override
  String get cancel => 'Cancel';

  @override
  String get done => 'Done';

  @override
  String get save => 'Save';

  @override
  String get block => 'Block';

  @override
  String get delete => 'Delete';

  @override
  String get recents => 'Recents';

  @override
  String get contacts => 'Contacts';

  @override
  String get hideFavouritesOnRecents => 'Hide favourites on Recents';

  @override
  String get showFavouritesOnRecents => 'Show favourites on Recents';

  @override
  String get ongoingCall => 'Ongoing call';

  @override
  String get setAsDefaultTitle => 'SET AS\nDEFAULT';

  @override
  String get setAsDefaultBody =>
      'To use Nothing Dialer, it must be set as your default phone app. This allows you to manage calls, view history, and use Glyph animations.';

  @override
  String get setAsDefaultButton => 'SET AS DEFAULT';

  @override
  String get nothingDialerBrand => 'NOTHING DIALER 1';

  @override
  String get favourites => 'Favourites';

  @override
  String get addFavourite => 'Add favourite';

  @override
  String get favouritesDrawerHint =>
      'Use the menu to add contacts. Tap outside the drawer or swipe it closed. Star a contact from their details, or long-press a call in Recents.';

  @override
  String get menu => 'Menu';

  @override
  String get noFavouritesYet =>
      'No favourites yet.\nOpen the menu to add one, or star a contact.';

  @override
  String get contactsPermissionNeeded => 'Contacts permission needed';

  @override
  String get chooseContact => 'Choose contact';

  @override
  String get noPhone => 'No phone';

  @override
  String get pickNumber => 'Pick number';

  @override
  String get contactHasNoPhone => 'This contact has no phone number';

  @override
  String get blockNumber => 'Block number';

  @override
  String get enterPhoneNumber => 'Enter phone number';

  @override
  String unblockedDisplay(String display) {
    return 'Unblocked $display';
  }

  @override
  String get couldNotUnblockNumber => 'Could not unblock number';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked blocked • $matched matched';
  }

  @override
  String get contactsPermissionMissing =>
      'Contacts permission missing. Tap to fix.';

  @override
  String get noBlockedNumbers => 'No blocked numbers';

  @override
  String get unknownContact => 'Unknown contact';

  @override
  String get unblock => 'Unblock';

  @override
  String get permissionNeeded => 'Permission needed';

  @override
  String get grantPhonePermission =>
      'Grant phone permission to see your call history.';

  @override
  String get grantContactsPermission =>
      'Grant contacts permission to see your address book.';

  @override
  String get openSettings => 'Open Settings';

  @override
  String get tryAgain => 'Try again';

  @override
  String get couldNotLoadContacts => 'Could not load contacts';

  @override
  String get contactsLoadError =>
      'Something went wrong reading your address book.';

  @override
  String get noContactsFound => 'No contacts found';

  @override
  String get contactsEmptySubtitle =>
      'Contacts from your device will appear here.';

  @override
  String get searchContacts => 'Search contacts…';

  @override
  String get searchRecentCalls => 'Search recent calls';

  @override
  String get fromContacts => 'From contacts';

  @override
  String get recentsSearchSection => 'Recents search';

  @override
  String get recentsSearchShowContacts => 'Show contacts in search';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'While searching Recents, also show matching people from your address book below call history results.';

  @override
  String get voiceSearch => 'Voice search';

  @override
  String get createNewContact => 'Create new contact';

  @override
  String callError(String error) {
    return 'Call error: $error';
  }

  @override
  String get noRecentCalls => 'No recent calls';

  @override
  String get callHistoryEmpty => 'Your call history will appear here.';

  @override
  String get loadMore => 'Load more';

  @override
  String get frequentlyContactedHeader => 'Frequently contacted';

  @override
  String get recentHistory => 'Recent history';

  @override
  String get noFavouritesRecentsHint =>
      'No favourites yet. Star a contact, long-press a call, or use the Favourites tab.';

  @override
  String get copyNumber => 'Copy number';

  @override
  String get editNumberBeforeCall => 'Edit number before call';

  @override
  String get removeFromFavourites => 'Remove from favourites';

  @override
  String get addToFavourites => 'Add to favourites';

  @override
  String get blockNumberQuestion => 'Block number?';

  @override
  String blockNumberConfirm(String number) {
    return 'You will no longer receive calls or texts from $number.';
  }

  @override
  String get blocked => 'Blocked';

  @override
  String get couldNotBlock => 'Could not block';

  @override
  String get contactNotOnDevice => 'Contact not saved on this device';

  @override
  String get unblocked => 'Unblocked';

  @override
  String get numberCopied => 'Number copied';

  @override
  String get showLess => 'Show less';

  @override
  String get showAllTimes => 'Show all times';

  @override
  String mostRecent(String time) {
    return 'Most recent · $time';
  }

  @override
  String get videoCall => 'Video call';

  @override
  String get couldNotPlaceVideoCall => 'Could not place video call';

  @override
  String get message => 'Message';

  @override
  String get couldNotOpenMessaging => 'Could not open messaging app';

  @override
  String get history => 'History';

  @override
  String get viewContact => 'View contact';

  @override
  String get addToContact => 'Add to contact';

  @override
  String get callTypeMissed => 'Missed';

  @override
  String get callTypeRejected => 'Rejected';

  @override
  String get callTypeIncoming => 'Incoming';

  @override
  String get callTypeOutgoing => 'Outgoing';

  @override
  String get today => 'Today';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get justNow => 'Just now';

  @override
  String minutesAgo(int count) {
    return '$count min ago';
  }

  @override
  String hoursAgo(int count) {
    return '$count hr ago';
  }

  @override
  String get filterAll => 'All';

  @override
  String get filterMissed => 'Missed';

  @override
  String get filterContacts => 'Contacts';

  @override
  String get filterNonContacts => 'Non-contacts';

  @override
  String get iconUpdated =>
      'Icon updated. Your home screen may take a moment to refresh.';

  @override
  String get iconSavedRelease =>
      'Choice saved. The home screen icon updates in release builds.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Could not change icon: $error';
  }

  @override
  String get launcherClassicBlack => 'Classic (black)';

  @override
  String get launcherLight => 'Light';

  @override
  String get launcherNothingRed => 'Nothing red';

  @override
  String get launcherDarkGrey => 'Dark grey';

  @override
  String get launcherCream => 'Cream';

  @override
  String get launcherRetroPhone => 'Retro phone';

  @override
  String get launcherRetroPhoneLight => 'Retro phone (light)';

  @override
  String get voiceSearchUnavailable =>
      'Voice search is not available on this device.';

  @override
  String voiceSearchFailed(String error) {
    return 'Voice search failed: $error';
  }

  @override
  String get customColor => 'Custom';

  @override
  String get selectColor => 'Select color';

  @override
  String get reset => 'Reset';

  @override
  String get simPickerTitle => 'Choose SIM';

  @override
  String get simChooseForCall => 'Choose SIM for this call';

  @override
  String get defaultSimAsk => 'Ask every time';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Contact details';

  @override
  String get call => 'Call';

  @override
  String get share => 'Share';

  @override
  String get favourite => 'Favourite';

  @override
  String get unfavourite => 'Unfavourite';

  @override
  String get blockContact => 'Block contact';

  @override
  String get unblockContact => 'Unblock contact';

  @override
  String get deleteContact => 'Delete contact';

  @override
  String get phone => 'Phone';

  @override
  String get email => 'Email';

  @override
  String get ringtone => 'Ringtone';

  @override
  String get defaultRingtone => 'Default';

  @override
  String get simForContact => 'SIM for this contact';

  @override
  String get callHistoryTitle => 'Call history';

  @override
  String get noCallsWithNumber => 'No calls with this number';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Glyph animation';

  @override
  String get inCallGlyphAnimationStyle => 'In-call Glyph animation';

  @override
  String get recordsOff => 'Off';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Default SIM';

  @override
  String get nothingPhoneOnly => 'Nothing Phone only';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Glyph features require a Nothing Phone';

  @override
  String get custom => 'Custom';

  @override
  String presetColorHex(String hex) {
    return 'Preset · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Custom · $hex';
  }

  @override
  String get oneContact => '1 contact';

  @override
  String upToContacts(int count) {
    return 'Up to $count contacts';
  }

  @override
  String get answerButtonTapSubtitle => 'Button tap to answer';

  @override
  String get filterCalls => 'Filter calls';

  @override
  String get filterTooltip => 'Filter';

  @override
  String get settingsTooltip => 'Settings';

  @override
  String get filterAllSubtitle => 'Entire call log';

  @override
  String get filterMissedSubtitle => 'Missed and rejected';

  @override
  String get filterContactsSubtitle => 'Calls matched to a saved contact';

  @override
  String get filterNonContactsSubtitle => 'Numbers not in your address book';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Ongoing call: $detail';
  }

  @override
  String get defaultSimForCalls => 'Default SIM for calls';

  @override
  String get blinkInterval => 'Blink interval';

  @override
  String get close => 'Close';

  @override
  String get frequentlyContactedInfoBody =>
      'Shows your most-called phone numbers at the top of the Recents tab, based on how many incoming, outgoing, missed, or rejected calls you had with each number in the time period you choose.\n\nNumber of records: set to 0 to turn this off. Use 1–20 to show that many top contacts.\n\nTime period applies only when at least one contact is shown.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count lights, ${ms}ms speed';
  }

  @override
  String get deleteContactQuestion => 'Delete contact?';

  @override
  String get deleteContactBody =>
      'This contact will be permanently deleted from your device.';

  @override
  String get blockContactQuestion => 'Block contact?';

  @override
  String get unblockContactQuestion => 'Unblock contact?';

  @override
  String get blockContactBody =>
      'You will no longer receive calls or texts from this contact.';

  @override
  String get unblockContactBody =>
      'You will start receiving calls and texts from this contact.';

  @override
  String get contactBlocked => 'Contact blocked';

  @override
  String get contactUnblocked => 'Contact unblocked';

  @override
  String get noPhoneNumbersToBlock => 'No phone numbers to block';

  @override
  String get simSameAsSystem => 'Same as system';

  @override
  String get simSameAsSystemSubtitle => 'Follows Default SIM in Settings';

  @override
  String get simAskEveryTimeForContact =>
      'Always show SIM picker for this contact';

  @override
  String get ringtoneSetForContact => 'Ringtone set globally for this contact';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Failed to pick ringtone: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Error: $error';
  }

  @override
  String get noCallHistoryFound => 'No call history found';

  @override
  String get speedDialVoicemail => 'Speed dial: Voicemail';

  @override
  String shareContactSubject(String name) {
    return 'Contact: $name';
  }

  @override
  String get contactInfo => 'Contact info';

  @override
  String get dontAskAgainSim => 'Don\'t ask again';

  @override
  String get simDontAskAgainSubtitle =>
      'Use this SIM as default (change in Settings)';

  @override
  String get addContact => 'Add contact';

  @override
  String get createContact => 'Create contact';

  @override
  String get paste => 'Paste';

  @override
  String get clear => 'Clear';

  @override
  String get returnToCall => 'Return to call';

  @override
  String get numberOfRecordsTitle => 'Number of records';

  @override
  String get recordsPickerSubtitle =>
      'How many frequently contacted entries to show (0 = off)';

  @override
  String get torchInfoTitle => 'Torch blink';

  @override
  String get torchInfoBody =>
      'Blinks the camera flash during incoming, outgoing, or ongoing calls. Independent of Glyph lights.';

  @override
  String get glyphMapTitle => 'Glyph layout';

  @override
  String get glyphMapBody =>
      'Nothing Phone 1 Glyph LED zones. Outgoing and in-call animations use these channels.';

  @override
  String get answerMethodTitle => 'Answer method';

  @override
  String get glyphOutgoingCallStyleTitle => 'Outgoing call style';

  @override
  String get glyphInCallAnimationTitle => 'Glyph in-call animation';

  @override
  String get themePickerTitle => 'Theme';

  @override
  String get torchIncomingTitle => 'Incoming call torch';

  @override
  String get torchOutgoingTitle => 'Outgoing call torch';

  @override
  String get torchOngoingTitle => 'Ongoing call torch';

  @override
  String get timePeriodTitle => 'Time period';

  @override
  String get ok => 'OK';

  @override
  String get confirmDeleteCall => 'Delete this call from history?';

  @override
  String get confirmDeleteAllCalls => 'Delete all calls with this number?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Send a message';

  @override
  String get addToExistingContactAction => 'Add to a contact';

  @override
  String get mobileLabel => 'Mobile';

  @override
  String get callingSimForContactTitle => 'Calling SIM for this contact';

  @override
  String get contactSettings => 'Contact settings';

  @override
  String get setCallingSim => 'Set calling SIM';

  @override
  String get contactRingtone => 'Contact ringtone';

  @override
  String get shareContact => 'Share contact';

  @override
  String get blockNumbers => 'Block numbers';

  @override
  String get unblockNumbers => 'Unblock numbers';

  @override
  String get connectedApps => 'Connected apps';

  @override
  String get simNotSet => 'Not set';

  @override
  String get ringtoneDefault => 'Default';

  @override
  String get customRingtone => 'Custom';

  @override
  String get aboutSection => 'About';

  @override
  String get aboutFeedbackSection => 'About & feedback';

  @override
  String get aboutDescription =>
      'Nothing Dialer is open source. If you are a developer, you are welcome to explore the code and contribute.';

  @override
  String get aboutViewSource => 'View on GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Could not open link';

  @override
  String get reviewSection => 'Review';

  @override
  String get reviewDescription =>
      'Enjoying Nothing Dialer? Your rating on Google Play helps others find the app.';

  @override
  String get reviewRateOnPlay => 'Rate on Google Play';

  @override
  String get reviewRateOnPlaySubtitle =>
      'Leave a rating without leaving the app';

  @override
  String get reviewCouldNotOpen => 'Could not open Google Play';

  @override
  String get breathSpeed => 'Breath Speed';

  @override
  String get breathSpeedBlinkHint => 'Lower = Blink, Higher = Slow Breath';

  @override
  String get speedSliderHint => 'Lower = Faster, Higher = Slower';

  @override
  String get swatchDefault => 'Default';

  @override
  String get customAccentColorPicker => 'Custom accent color';

  @override
  String get customLightBackgroundPicker => 'Custom light background';

  @override
  String get customDarkBackgroundPicker => 'Custom dark background';

  @override
  String get customCallBackgroundPicker => 'Custom call background';

  @override
  String get ongoingCallStyleTitle => 'Ongoing call style';

  @override
  String get glyphMapUnavailable => 'Glyph map unavailable';

  @override
  String get animationDelayRange => 'Animation Delay (1s - 10s)';

  @override
  String get animationDelayRangeSingle => 'Animation Delay (0.1s - 10s)';

  @override
  String get inCallMute => 'Mute';

  @override
  String get inCallKeypad => 'Keypad';

  @override
  String get inCallSpeaker => 'Speaker';

  @override
  String get inCallMore => 'More';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Phone';

  @override
  String get inCallAddCall => 'Add call';

  @override
  String get inCallChangeSim => 'Change SIM';

  @override
  String get inCallDecline => 'Decline';

  @override
  String get inCallAnswer => 'Answer';

  @override
  String get inCallMessage => 'Message';

  @override
  String get inCallCalling => 'Calling…';

  @override
  String get inCallIncoming => 'Incoming call';

  @override
  String get inCallSelectSim => 'Select SIM…';

  @override
  String get inCallSwitchingSim => 'Switching SIM…';

  @override
  String get inCallCallEnded => 'Call ended';

  @override
  String inCallCallingVia(String sim) {
    return 'Calling via $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Calling via <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Choose SIM for this call';

  @override
  String get inCallDragAnswerDecline =>
      'Drag right to answer · Drag left to decline';

  @override
  String inCallMobileNumber(String number) {
    return 'Mobile $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label  (Current)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Call via <b>$sim</b> from';
  }

  @override
  String get inCallCallFrom => 'Call from';

  @override
  String get inCallUnknown => 'Unknown';

  @override
  String get selectContactRingtone => 'Select contact ringtone';

  @override
  String get speakToSearchPrompt => 'Speak to search';

  @override
  String get phonePermissionRequired => 'Phone permission required';

  @override
  String callFailed(String error) {
    return 'Call failed: $error';
  }

  @override
  String get callPermissionDenied => 'Call permission denied';

  @override
  String get alreadyDefaultDialer => 'Already set as default dialer';

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

/// The translations for English, as used in India (`en_IN`).
class AppLocalizationsEnIn extends AppLocalizationsEn {
  AppLocalizationsEnIn() : super('en_IN');

  @override
  String get appTitle => 'Nothing Dialer';

  @override
  String get settings => 'Settings';

  @override
  String get settingsSearchHint => 'Search settings';

  @override
  String get settingsSearchNoResults => 'No settings found';

  @override
  String get general => 'General';

  @override
  String get theme => 'Theme';

  @override
  String get themeSystemDefault => 'System Default';

  @override
  String get themeLight => 'Light';

  @override
  String get themeDark => 'Dark';

  @override
  String get themeFollowSystem => 'Follow system settings';

  @override
  String get themeAlwaysLight => 'Always use light theme';

  @override
  String get themeAlwaysDark => 'Always use dark theme';

  @override
  String get language => 'Language';

  @override
  String get languageDeviceDefault => 'Device default';

  @override
  String get languagePickerTitle => 'Language';

  @override
  String get languageSearchHint => 'Search languages';

  @override
  String get font => 'Font';

  @override
  String get fontSystem => 'System default';

  @override
  String get fontNdot => 'Nothing (NDot)';

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
      'Font download failed. Check your connection and try again.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Font';

  @override
  String get fontPreviewSample => 'Nothing Dialer';

  @override
  String get fontAppWide => 'App font';

  @override
  String get fontApplyTo => 'Apply to';

  @override
  String get fontApplyEntireApp => 'Entire app';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Same font everywhere, including in-call';

  @override
  String get fontApplyTitlesOnly => 'Titles & headers';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Large titles and section headers only';

  @override
  String get fontApplyCustomize => 'Customize';

  @override
  String get fontApplyCustomizeSubtitle => 'Pick font per screen and text type';

  @override
  String get fontCustomizeSection => 'Customize by screen';

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
  String get fontRolePageTitle => 'Page title';

  @override
  String get fontRoleSectionHeader => 'Section header';

  @override
  String get fontRolePrimary => 'Primary text';

  @override
  String get fontRoleSecondary => 'Secondary text';

  @override
  String get fontRoleButton => 'Buttons';

  @override
  String get fontRoleDialKey => 'Dialpad keys';

  @override
  String get fontSurfaceRecents => 'Recents';

  @override
  String get fontSurfaceContacts => 'Contacts';

  @override
  String get fontSurfaceSettings => 'Settings';

  @override
  String get fontSurfaceDialpad => 'Dialpad';

  @override
  String get fontSurfaceShell => 'Navigation';

  @override
  String get fontSurfaceDefaultDialer => 'Default dialer prompt';

  @override
  String get fontSurfaceFavourites => 'Favourites';

  @override
  String get fontSurfaceBlocked => 'Blocked numbers';

  @override
  String get fontSurfaceContactDetail => 'Contact detail';

  @override
  String get fontSurfaceCallHistory => 'Call history';

  @override
  String get fontSurfaceSheets => 'Sheets & pickers';

  @override
  String get fontSurfaceInCall => 'In-call screen';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — entire app';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — titles only';
  }

  @override
  String get fontSubtitleCustomize => 'Custom per screen';

  @override
  String get background => 'Background';

  @override
  String get accent => 'Accent';

  @override
  String get lightBackground => 'Light background';

  @override
  String get lightAccent => 'Light accent';

  @override
  String get darkBackground => 'Dark background';

  @override
  String get darkAccent => 'Dark accent';

  @override
  String get callBackground => 'Call background';

  @override
  String get appIcon => 'App icon';

  @override
  String get answerMethod => 'Answer method';

  @override
  String get answerSlide => 'Slide to answer';

  @override
  String get answerSlideSubtitle =>
      'Swipe left/right on the bar, like Google Phone';

  @override
  String get answerButton => 'Button tap';

  @override
  String get answerButtonSubtitle => 'Tap answer or decline buttons';

  @override
  String get answerHuawei => 'Huawei style';

  @override
  String get answerHuaweiSubtitle =>
      'Drag the circle to the green phone to answer';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — drag to green / red';

  @override
  String get calling => 'Calling';

  @override
  String get defaultSim => 'Default SIM';

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
  String get askEveryTime => 'Ask every time';

  @override
  String get askEveryTimeSubtitle => 'Show SIM picker before each call';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'No SIM cards found';

  @override
  String couldNotLoadSims(String error) {
    return 'Could not load SIMs: $error';
  }

  @override
  String get allFavourites => 'All favourites';

  @override
  String get allFavouritesSubtitle => 'Reorder, remove, and add from contacts';

  @override
  String get blockedNumbers => 'Blocked numbers';

  @override
  String get blockedNumbersSubtitle => 'View and unblock numbers';

  @override
  String get soundsAndVibration => 'Sounds and vibration';

  @override
  String get soundsAndVibrationSubtitle =>
      'Ringtone, vibration, dial pad tones';

  @override
  String couldNotOpenSettings(String error) {
    return 'Could not open settings: $error';
  }

  @override
  String get frequentlyContacted => 'Frequently Contacted';

  @override
  String get numberOfRecords => 'Number of records';

  @override
  String get timePeriod => 'Time period';

  @override
  String get periodLast24Hours => 'Last 24 hours';

  @override
  String get periodLast24HoursSubtitle => 'Calls from the past day';

  @override
  String get periodLast7Days => 'Last 7 days';

  @override
  String get periodLast7DaysSubtitle => 'Calls from the past week';

  @override
  String get periodLast30Days => 'Last 30 days';

  @override
  String get periodLast30DaysSubtitle => 'Calls from the past month';

  @override
  String get periodLast12Months => 'Last 12 months';

  @override
  String get periodLast12MonthsSubtitle => 'Calls from the past year';

  @override
  String get periodAllTime => 'All time';

  @override
  String get periodAllTimeSubtitle => 'Entire call history';

  @override
  String get frequentMaxOff => 'Off';

  @override
  String frequentMaxCount(int count) {
    return '$count contacts';
  }

  @override
  String get torchBlink => 'Torch Blink';

  @override
  String get torchIncomingCall => 'Incoming call torch';

  @override
  String get torchOutgoingCall => 'Outgoing call torch';

  @override
  String get torchOngoingCall => 'Ongoing call torch';

  @override
  String get torchIncomingInterval => 'Incoming blink interval';

  @override
  String get torchOutgoingInterval => 'Outgoing blink interval';

  @override
  String get torchOngoingInterval => 'Ongoing blink interval';

  @override
  String get torchOff => 'Off';

  @override
  String get torchOffIncomingSubtitle => 'No torch while ringing';

  @override
  String get torchOffOutgoingSubtitle => 'No torch while dialing';

  @override
  String get torchOffOngoingSubtitle => 'No torch during active call';

  @override
  String get torchFixedInterval => 'Fixed interval';

  @override
  String get torchFixedIntervalSubtitle => 'Blink at a set speed';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds blink';
  }

  @override
  String get flashlightUnavailable => 'Flashlight not available on this device';

  @override
  String get glyphLights => 'Glyph Lights';

  @override
  String get glyphCallingAnimation => 'Glyph calling animation';

  @override
  String get glyphOngoingAnimation => 'Glyph ongoing call animation';

  @override
  String get glyphNone => 'None';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Disable Glyph lights for outgoing calls';

  @override
  String get glyphNoneInCallSubtitle =>
      'Disable Glyph lights while actively on call';

  @override
  String get glyphBreathProgress => 'Breath & Progress';

  @override
  String get glyphBreathProgressSubtitle =>
      'Lights breathe while line fills up over 65s';

  @override
  String get glyphAccumulate => 'Accumulate';

  @override
  String get glyphAccumulateSubtitle =>
      'Accumulating animation on lights C1-C4';

  @override
  String get glyphSingle => 'Single';

  @override
  String get glyphSingleSubtitle => 'Single light moving across C1-C4';

  @override
  String get glyphBreath => 'Breath';

  @override
  String get glyphBreathSubtitle => 'Pick lights and speed';

  @override
  String get glyphSteady => 'Steady';

  @override
  String get glyphSteadySubtitle => 'Selected lights stay on';

  @override
  String get breathSettings => 'Breath Settings';

  @override
  String get activeLights => 'Active Lights';

  @override
  String lightsCount(int count) {
    return '$count lights';
  }

  @override
  String get speedSettings => 'Speed Settings';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms delay';
  }

  @override
  String get durationAndSpeed => 'Duration & Speed';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s duration, ${interval}ms interval';
  }

  @override
  String get cancel => 'Cancel';

  @override
  String get done => 'Done';

  @override
  String get save => 'Save';

  @override
  String get block => 'Block';

  @override
  String get delete => 'Delete';

  @override
  String get recents => 'Recents';

  @override
  String get contacts => 'Contacts';

  @override
  String get hideFavouritesOnRecents => 'Hide favourites on Recents';

  @override
  String get showFavouritesOnRecents => 'Show favourites on Recents';

  @override
  String get ongoingCall => 'Ongoing call';

  @override
  String get setAsDefaultTitle => 'SET AS\nDEFAULT';

  @override
  String get setAsDefaultBody =>
      'To use Nothing Dialer, it must be set as your default phone app. This allows you to manage calls, view history, and use Glyph animations.';

  @override
  String get setAsDefaultButton => 'SET AS DEFAULT';

  @override
  String get nothingDialerBrand => 'NOTHING DIALER 1';

  @override
  String get favourites => 'Favourites';

  @override
  String get addFavourite => 'Add favourite';

  @override
  String get favouritesDrawerHint =>
      'Use the menu to add contacts. Tap outside the drawer or swipe it closed. Star a contact from their details, or long-press a call in Recents.';

  @override
  String get menu => 'Menu';

  @override
  String get noFavouritesYet =>
      'No favourites yet.\nOpen the menu to add one, or star a contact.';

  @override
  String get contactsPermissionNeeded => 'Contacts permission needed';

  @override
  String get chooseContact => 'Choose contact';

  @override
  String get noPhone => 'No phone';

  @override
  String get pickNumber => 'Pick number';

  @override
  String get contactHasNoPhone => 'This contact has no phone number';

  @override
  String get blockNumber => 'Block number';

  @override
  String get enterPhoneNumber => 'Enter phone number';

  @override
  String unblockedDisplay(String display) {
    return 'Unblocked $display';
  }

  @override
  String get couldNotUnblockNumber => 'Could not unblock number';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked blocked • $matched matched';
  }

  @override
  String get contactsPermissionMissing =>
      'Contacts permission missing. Tap to fix.';

  @override
  String get noBlockedNumbers => 'No blocked numbers';

  @override
  String get unknownContact => 'Unknown contact';

  @override
  String get unblock => 'Unblock';

  @override
  String get permissionNeeded => 'Permission needed';

  @override
  String get grantPhonePermission =>
      'Grant phone permission to see your call history.';

  @override
  String get grantContactsPermission =>
      'Grant contacts permission to see your address book.';

  @override
  String get openSettings => 'Open Settings';

  @override
  String get tryAgain => 'Try again';

  @override
  String get couldNotLoadContacts => 'Could not load contacts';

  @override
  String get contactsLoadError =>
      'Something went wrong reading your address book.';

  @override
  String get noContactsFound => 'No contacts found';

  @override
  String get contactsEmptySubtitle =>
      'Contacts from your device will appear here.';

  @override
  String get searchContacts => 'Search contacts…';

  @override
  String get searchRecentCalls => 'Search recent calls';

  @override
  String get fromContacts => 'From contacts';

  @override
  String get recentsSearchSection => 'Recents search';

  @override
  String get recentsSearchShowContacts => 'Show contacts in search';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'While searching Recents, also show matching people from your address book below call history results.';

  @override
  String get voiceSearch => 'Voice search';

  @override
  String get createNewContact => 'Create new contact';

  @override
  String callError(String error) {
    return 'Call error: $error';
  }

  @override
  String get noRecentCalls => 'No recent calls';

  @override
  String get callHistoryEmpty => 'Your call history will appear here.';

  @override
  String get loadMore => 'Load more';

  @override
  String get frequentlyContactedHeader => 'Frequently contacted';

  @override
  String get recentHistory => 'Recent history';

  @override
  String get noFavouritesRecentsHint =>
      'No favourites yet. Star a contact, long-press a call, or use the Favourites tab.';

  @override
  String get copyNumber => 'Copy number';

  @override
  String get editNumberBeforeCall => 'Edit number before call';

  @override
  String get removeFromFavourites => 'Remove from favourites';

  @override
  String get addToFavourites => 'Add to favourites';

  @override
  String get blockNumberQuestion => 'Block number?';

  @override
  String blockNumberConfirm(String number) {
    return 'You will no longer receive calls or texts from $number.';
  }

  @override
  String get blocked => 'Blocked';

  @override
  String get couldNotBlock => 'Could not block';

  @override
  String get contactNotOnDevice => 'Contact not saved on this device';

  @override
  String get unblocked => 'Unblocked';

  @override
  String get numberCopied => 'Number copied';

  @override
  String get showLess => 'Show less';

  @override
  String get showAllTimes => 'Show all times';

  @override
  String mostRecent(String time) {
    return 'Most recent · $time';
  }

  @override
  String get videoCall => 'Video call';

  @override
  String get couldNotPlaceVideoCall => 'Could not place video call';

  @override
  String get message => 'Message';

  @override
  String get couldNotOpenMessaging => 'Could not open messaging app';

  @override
  String get history => 'History';

  @override
  String get viewContact => 'View contact';

  @override
  String get addToContact => 'Add to contact';

  @override
  String get callTypeMissed => 'Missed';

  @override
  String get callTypeRejected => 'Rejected';

  @override
  String get callTypeIncoming => 'Incoming';

  @override
  String get callTypeOutgoing => 'Outgoing';

  @override
  String get today => 'Today';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get justNow => 'Just now';

  @override
  String minutesAgo(int count) {
    return '$count min ago';
  }

  @override
  String hoursAgo(int count) {
    return '$count hr ago';
  }

  @override
  String get filterAll => 'All';

  @override
  String get filterMissed => 'Missed';

  @override
  String get filterContacts => 'Contacts';

  @override
  String get filterNonContacts => 'Non-contacts';

  @override
  String get iconUpdated =>
      'Icon updated. Your home screen may take a moment to refresh.';

  @override
  String get iconSavedRelease =>
      'Choice saved. The home screen icon updates in release builds.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Could not change icon: $error';
  }

  @override
  String get launcherClassicBlack => 'Classic (black)';

  @override
  String get launcherLight => 'Light';

  @override
  String get launcherNothingRed => 'Nothing red';

  @override
  String get launcherDarkGrey => 'Dark grey';

  @override
  String get launcherCream => 'Cream';

  @override
  String get launcherRetroPhone => 'Retro phone';

  @override
  String get launcherRetroPhoneLight => 'Retro phone (light)';

  @override
  String get voiceSearchUnavailable =>
      'Voice search is not available on this device.';

  @override
  String voiceSearchFailed(String error) {
    return 'Voice search failed: $error';
  }

  @override
  String get customColor => 'Custom';

  @override
  String get selectColor => 'Select color';

  @override
  String get reset => 'Reset';

  @override
  String get simPickerTitle => 'Choose SIM';

  @override
  String get simChooseForCall => 'Choose SIM for this call';

  @override
  String get defaultSimAsk => 'Ask every time';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Contact details';

  @override
  String get call => 'Call';

  @override
  String get share => 'Share';

  @override
  String get favourite => 'Favourite';

  @override
  String get unfavourite => 'Unfavourite';

  @override
  String get blockContact => 'Block contact';

  @override
  String get unblockContact => 'Unblock contact';

  @override
  String get deleteContact => 'Delete contact';

  @override
  String get phone => 'Phone';

  @override
  String get email => 'Email';

  @override
  String get ringtone => 'Ringtone';

  @override
  String get defaultRingtone => 'Default';

  @override
  String get simForContact => 'SIM for this contact';

  @override
  String get callHistoryTitle => 'Call history';

  @override
  String get noCallsWithNumber => 'No calls with this number';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Glyph animation';

  @override
  String get inCallGlyphAnimationStyle => 'In-call Glyph animation';

  @override
  String get recordsOff => 'Off';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Default SIM';

  @override
  String get nothingPhoneOnly => 'Nothing Phone only';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Glyph features require a Nothing Phone';

  @override
  String get custom => 'Custom';

  @override
  String presetColorHex(String hex) {
    return 'Preset · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Custom · $hex';
  }

  @override
  String get oneContact => '1 contact';

  @override
  String upToContacts(int count) {
    return 'Up to $count contacts';
  }

  @override
  String get answerButtonTapSubtitle => 'Button tap to answer';

  @override
  String get filterCalls => 'Filter calls';

  @override
  String get filterTooltip => 'Filter';

  @override
  String get settingsTooltip => 'Settings';

  @override
  String get filterAllSubtitle => 'Entire call log';

  @override
  String get filterMissedSubtitle => 'Missed and rejected';

  @override
  String get filterContactsSubtitle => 'Calls matched to a saved contact';

  @override
  String get filterNonContactsSubtitle => 'Numbers not in your address book';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Ongoing call: $detail';
  }

  @override
  String get defaultSimForCalls => 'Default SIM for calls';

  @override
  String get blinkInterval => 'Blink interval';

  @override
  String get close => 'Close';

  @override
  String get frequentlyContactedInfoBody =>
      'Shows your most-called phone numbers at the top of the Recents tab, based on how many incoming, outgoing, missed, or rejected calls you had with each number in the time period you choose.\n\nNumber of records: set to 0 to turn this off. Use 1–20 to show that many top contacts.\n\nTime period applies only when at least one contact is shown.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count lights, ${ms}ms speed';
  }

  @override
  String get deleteContactQuestion => 'Delete contact?';

  @override
  String get deleteContactBody =>
      'This contact will be permanently deleted from your device.';

  @override
  String get blockContactQuestion => 'Block contact?';

  @override
  String get unblockContactQuestion => 'Unblock contact?';

  @override
  String get blockContactBody =>
      'You will no longer receive calls or texts from this contact.';

  @override
  String get unblockContactBody =>
      'You will start receiving calls and texts from this contact.';

  @override
  String get contactBlocked => 'Contact blocked';

  @override
  String get contactUnblocked => 'Contact unblocked';

  @override
  String get noPhoneNumbersToBlock => 'No phone numbers to block';

  @override
  String get simSameAsSystem => 'Same as system';

  @override
  String get simSameAsSystemSubtitle => 'Follows Default SIM in Settings';

  @override
  String get simAskEveryTimeForContact =>
      'Always show SIM picker for this contact';

  @override
  String get ringtoneSetForContact => 'Ringtone set globally for this contact';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Failed to pick ringtone: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Error: $error';
  }

  @override
  String get noCallHistoryFound => 'No call history found';

  @override
  String get speedDialVoicemail => 'Speed dial: Voicemail';

  @override
  String shareContactSubject(String name) {
    return 'Contact: $name';
  }

  @override
  String get contactInfo => 'Contact info';

  @override
  String get dontAskAgainSim => 'Don\'t ask again';

  @override
  String get simDontAskAgainSubtitle =>
      'Use this SIM as default (change in Settings)';

  @override
  String get addContact => 'Add contact';

  @override
  String get createContact => 'Create contact';

  @override
  String get paste => 'Paste';

  @override
  String get clear => 'Clear';

  @override
  String get returnToCall => 'Return to call';

  @override
  String get numberOfRecordsTitle => 'Number of records';

  @override
  String get recordsPickerSubtitle =>
      'How many frequently contacted entries to show (0 = off)';

  @override
  String get torchInfoTitle => 'Torch blink';

  @override
  String get torchInfoBody =>
      'Blinks the camera flash during incoming, outgoing, or ongoing calls. Independent of Glyph lights.';

  @override
  String get glyphMapTitle => 'Glyph layout';

  @override
  String get glyphMapBody =>
      'Nothing Phone 1 Glyph LED zones. Outgoing and in-call animations use these channels.';

  @override
  String get answerMethodTitle => 'Answer method';

  @override
  String get glyphOutgoingCallStyleTitle => 'Outgoing call style';

  @override
  String get glyphInCallAnimationTitle => 'Glyph in-call animation';

  @override
  String get themePickerTitle => 'Theme';

  @override
  String get torchIncomingTitle => 'Incoming call torch';

  @override
  String get torchOutgoingTitle => 'Outgoing call torch';

  @override
  String get torchOngoingTitle => 'Ongoing call torch';

  @override
  String get timePeriodTitle => 'Time period';

  @override
  String get ok => 'OK';

  @override
  String get confirmDeleteCall => 'Delete this call from history?';

  @override
  String get confirmDeleteAllCalls => 'Delete all calls with this number?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Send a message';

  @override
  String get addToExistingContactAction => 'Add to a contact';

  @override
  String get mobileLabel => 'Mobile';

  @override
  String get callingSimForContactTitle => 'Calling SIM for this contact';

  @override
  String get contactSettings => 'Contact settings';

  @override
  String get setCallingSim => 'Set calling SIM';

  @override
  String get contactRingtone => 'Contact ringtone';

  @override
  String get shareContact => 'Share contact';

  @override
  String get blockNumbers => 'Block numbers';

  @override
  String get unblockNumbers => 'Unblock numbers';

  @override
  String get connectedApps => 'Connected apps';

  @override
  String get simNotSet => 'Not set';

  @override
  String get ringtoneDefault => 'Default';

  @override
  String get customRingtone => 'Custom';

  @override
  String get aboutSection => 'About';

  @override
  String get aboutFeedbackSection => 'About & feedback';

  @override
  String get aboutDescription =>
      'Nothing Dialer is open source. If you are a developer, you are welcome to explore the code and contribute.';

  @override
  String get aboutViewSource => 'View on GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Could not open link';

  @override
  String get reviewSection => 'Review';

  @override
  String get reviewDescription =>
      'Enjoying Nothing Dialer? Your rating on Google Play helps others find the app.';

  @override
  String get reviewRateOnPlay => 'Rate on Google Play';

  @override
  String get reviewRateOnPlaySubtitle =>
      'Leave a rating without leaving the app';

  @override
  String get reviewCouldNotOpen => 'Could not open Google Play';

  @override
  String get breathSpeed => 'Breath Speed';

  @override
  String get breathSpeedBlinkHint => 'Lower = Blink, Higher = Slow Breath';

  @override
  String get speedSliderHint => 'Lower = Faster, Higher = Slower';

  @override
  String get swatchDefault => 'Default';

  @override
  String get customAccentColorPicker => 'Custom accent color';

  @override
  String get customLightBackgroundPicker => 'Custom light background';

  @override
  String get customDarkBackgroundPicker => 'Custom dark background';

  @override
  String get customCallBackgroundPicker => 'Custom call background';

  @override
  String get ongoingCallStyleTitle => 'Ongoing call style';

  @override
  String get glyphMapUnavailable => 'Glyph map unavailable';

  @override
  String get animationDelayRange => 'Animation Delay (1s - 10s)';

  @override
  String get animationDelayRangeSingle => 'Animation Delay (0.1s - 10s)';

  @override
  String get inCallMute => 'Mute';

  @override
  String get inCallKeypad => 'Keypad';

  @override
  String get inCallSpeaker => 'Speaker';

  @override
  String get inCallMore => 'More';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Phone';

  @override
  String get inCallAddCall => 'Add call';

  @override
  String get inCallChangeSim => 'Change SIM';

  @override
  String get inCallDecline => 'Decline';

  @override
  String get inCallAnswer => 'Answer';

  @override
  String get inCallMessage => 'Message';

  @override
  String get inCallCalling => 'Calling…';

  @override
  String get inCallIncoming => 'Incoming call';

  @override
  String get inCallSelectSim => 'Select SIM…';

  @override
  String get inCallSwitchingSim => 'Switching SIM…';

  @override
  String get inCallCallEnded => 'Call ended';

  @override
  String inCallCallingVia(String sim) {
    return 'Calling via $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Calling via <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Choose SIM for this call';

  @override
  String get inCallDragAnswerDecline =>
      'Drag right to answer · Drag left to decline';

  @override
  String inCallMobileNumber(String number) {
    return 'Mobile $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label  (Current)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Call via <b>$sim</b> from';
  }

  @override
  String get inCallCallFrom => 'Call from';

  @override
  String get inCallUnknown => 'Unknown';

  @override
  String get selectContactRingtone => 'Select contact ringtone';

  @override
  String get speakToSearchPrompt => 'Speak to search';

  @override
  String get phonePermissionRequired => 'Phone permission required';

  @override
  String callFailed(String error) {
    return 'Call failed: $error';
  }

  @override
  String get callPermissionDenied => 'Call permission denied';

  @override
  String get alreadyDefaultDialer => 'Already set as default dialer';

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
