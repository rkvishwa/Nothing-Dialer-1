// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => '无拨号器';

  @override
  String get settings => '设置';

  @override
  String get settingsSearchHint => '搜索设置';

  @override
  String get settingsSearchNoResults => '没有找到设置';

  @override
  String get general => '一般的';

  @override
  String get theme => '主题';

  @override
  String get themeSystemDefault => '系统默认值';

  @override
  String get themeLight => '光';

  @override
  String get themeDark => '黑暗的';

  @override
  String get themeFollowSystem => '遵循系统设置';

  @override
  String get themeAlwaysLight => '始终使用浅色主题';

  @override
  String get themeAlwaysDark => '始终使用深色主题';

  @override
  String get language => '语言';

  @override
  String get languageDeviceDefault => '设备默认值';

  @override
  String get languagePickerTitle => '语言';

  @override
  String get languageSearchHint => '搜索语言';

  @override
  String get font => '字体';

  @override
  String get fontSystem => '系统默认';

  @override
  String get fontNdot => '什么都没有（ND点）';

  @override
  String get fontSerif => '机器人衬线';

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
  String get fontNotoDownloadFailed => '字体下载失败。检查您的连接并重试。';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => '字体';

  @override
  String get fontPreviewSample => '无拨号器';

  @override
  String get fontAppWide => '应用程序字体';

  @override
  String get fontApplyTo => '适用于';

  @override
  String get fontApplyEntireApp => '整个应用程序';

  @override
  String get fontApplyEntireAppSubtitle => '到处都使用相同的字体，包括通话中';

  @override
  String get fontApplyTitlesOnly => '标题和标头';

  @override
  String get fontApplyTitlesOnlySubtitle => '仅大标题和章节标题';

  @override
  String get fontApplyCustomize => '定制';

  @override
  String get fontApplyCustomizeSubtitle => '选择每个屏幕的字体和文本类型';

  @override
  String get fontCustomizeSection => '按屏幕定制';

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
  String get fontRolePageTitle => '页面标题';

  @override
  String get fontRoleSectionHeader => '节标题';

  @override
  String get fontRolePrimary => '主要文本';

  @override
  String get fontRoleSecondary => '次要文本';

  @override
  String get fontRoleButton => '按钮';

  @override
  String get fontRoleDialKey => '拨号盘按键';

  @override
  String get fontSurfaceRecents => '最近的内容';

  @override
  String get fontSurfaceContacts => '联系方式';

  @override
  String get fontSurfaceSettings => '设置';

  @override
  String get fontSurfaceDialpad => '拨号盘';

  @override
  String get fontSurfaceShell => '导航';

  @override
  String get fontSurfaceDefaultDialer => '默认拨号提示';

  @override
  String get fontSurfaceFavourites => '收藏夹';

  @override
  String get fontSurfaceBlocked => '被屏蔽的号码';

  @override
  String get fontSurfaceContactDetail => '联系方式';

  @override
  String get fontSurfaceCallHistory => '通话记录';

  @override
  String get fontSurfaceSheets => '床单和拾取器';

  @override
  String get fontSurfaceInCall => '通话中屏幕';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — 整个应用程序';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — 仅标题';
  }

  @override
  String get fontSubtitleCustomize => '每个屏幕自定义';

  @override
  String get background => '背景';

  @override
  String get accent => '口音';

  @override
  String get lightBackground => '浅色背景';

  @override
  String get lightAccent => '浅色口音';

  @override
  String get darkBackground => '深色背景';

  @override
  String get darkAccent => '深色口音';

  @override
  String get callBackground => '来电背景';

  @override
  String get appIcon => '应用程序图标';

  @override
  String get answerMethod => '回答方法';

  @override
  String get answerSlide => '滑动即可回答';

  @override
  String get answerSlideSubtitle => '在栏上向左/向右滑动，就像 Google Phone 一样';

  @override
  String get answerButton => '按钮点击';

  @override
  String get answerButtonSubtitle => '点击接听或拒绝按钮';

  @override
  String get answerHuawei => '华为风格';

  @override
  String get answerHuaweiSubtitle => '将圆圈拖至绿色电话即可接听';

  @override
  String get answerHuaweiTileSubtitle => '华为 — 拖动至绿色/红色';

  @override
  String get calling => '呼唤';

  @override
  String get defaultSim => '默认SIM卡';

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
  String get askEveryTime => '每次都问';

  @override
  String get askEveryTimeSubtitle => '每次通话前显示 SIM 卡选择器';

  @override
  String simSlot(int slot) {
    return '卡$slot';
  }

  @override
  String get noSimCardsFound => '未找到 SIM 卡';

  @override
  String couldNotLoadSims(String error) {
    return '无法加载 SIM 卡：$error';
  }

  @override
  String get allFavourites => '所有收藏夹';

  @override
  String get allFavouritesSubtitle => '对联系人重新排序、删除和添加';

  @override
  String get blockedNumbers => '被屏蔽的号码';

  @override
  String get blockedNumbersSubtitle => '查看和解锁号码';

  @override
  String get soundsAndVibration => '声音和振动';

  @override
  String get soundsAndVibrationSubtitle => '铃声、振动、拨号盘音';

  @override
  String couldNotOpenSettings(String error) {
    return '无法打开设置：$error';
  }

  @override
  String get frequentlyContacted => '经常联系';

  @override
  String get numberOfRecords => '记录数';

  @override
  String get timePeriod => '时间段';

  @override
  String get periodLast24Hours => '过去 24 小时';

  @override
  String get periodLast24HoursSubtitle => '过去一天的来电';

  @override
  String get periodLast7Days => '过去 7 天';

  @override
  String get periodLast7DaysSubtitle => '过去一周的来电';

  @override
  String get periodLast30Days => '过去 30 天';

  @override
  String get periodLast30DaysSubtitle => '过去一个月的来电';

  @override
  String get periodLast12Months => '过去 12 个月';

  @override
  String get periodLast12MonthsSubtitle => '去年的来电';

  @override
  String get periodAllTime => '所有时间';

  @override
  String get periodAllTimeSubtitle => '完整通话记录';

  @override
  String get frequentMaxOff => '离开';

  @override
  String frequentMaxCount(int count) {
    return '$count 联系人';
  }

  @override
  String get torchBlink => '火炬闪烁';

  @override
  String get torchIncomingCall => '来电火炬';

  @override
  String get torchOutgoingCall => '去电火炬';

  @override
  String get torchOngoingCall => '持续通话火炬';

  @override
  String get torchIncomingInterval => '传入眨眼间隔';

  @override
  String get torchOutgoingInterval => '传出眨眼间隔';

  @override
  String get torchOngoingInterval => '持续眨眼间隔';

  @override
  String get torchOff => '离开';

  @override
  String get torchOffIncomingSubtitle => '响铃时没有手电筒';

  @override
  String get torchOffOutgoingSubtitle => '拨号时没有手电筒';

  @override
  String get torchOffOngoingSubtitle => '通话期间没有手电筒';

  @override
  String get torchFixedInterval => '固定间隔';

  @override
  String get torchFixedIntervalSubtitle => '以设定的速度闪烁';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds秒';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds 眨眼';
  }

  @override
  String get flashlightUnavailable => '手电筒在此设备上不可用';

  @override
  String get glyphLights => '字形灯';

  @override
  String get glyphCallingAnimation => '字形调用动画';

  @override
  String get glyphOngoingAnimation => 'Glyph 正在进行的通话动画';

  @override
  String get glyphNone => '没有任何';

  @override
  String get glyphNoneOutgoingSubtitle => '禁用拨出呼叫的字形指示灯';

  @override
  String get glyphNoneInCallSubtitle => '在通话时禁用字形灯';

  @override
  String get glyphBreathProgress => '呼吸与进步';

  @override
  String get glyphBreathProgressSubtitle => '当线路充满时灯光会呼吸超过 65 秒';

  @override
  String get glyphAccumulate => '积累';

  @override
  String get glyphAccumulateSubtitle => '在灯光 C1-C4 上累积动画';

  @override
  String get glyphSingle => '单身的';

  @override
  String get glyphSingleSubtitle => '单灯穿过 C1-C4';

  @override
  String get glyphBreath => '气息';

  @override
  String get glyphBreathSubtitle => '选择灯光和速度';

  @override
  String get glyphSteady => '稳定的';

  @override
  String get glyphSteadySubtitle => '选定的灯保持亮起';

  @override
  String get breathSettings => '呼吸设置';

  @override
  String get activeLights => '主动灯';

  @override
  String lightsCount(int count) {
    return '$count灯';
  }

  @override
  String get speedSettings => '速度设置';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms 延迟';
  }

  @override
  String get durationAndSpeed => '持续时间和速度';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s 持续时间，${interval}ms 间隔';
  }

  @override
  String get cancel => '取消';

  @override
  String get done => '完毕';

  @override
  String get save => '节省';

  @override
  String get block => '堵塞';

  @override
  String get delete => '删除';

  @override
  String get recents => '最近的内容';

  @override
  String get contacts => '联系方式';

  @override
  String get hideFavouritesOnRecents => '隐藏最近的收藏夹';

  @override
  String get showFavouritesOnRecents => '在最近的内容中显示收藏夹';

  @override
  String get ongoingCall => '正在进行的通话';

  @override
  String get setAsDefaultTitle => '设置为\n默认值';

  @override
  String get setAsDefaultBody =>
      '要使用 Nothing Dialer，必须将其设置为您的默认手机应用程序。这允许您管理呼叫、查看历史记录和使用字形动画。';

  @override
  String get setAsDefaultButton => '设置为默认值';

  @override
  String get nothingDialerBrand => '没有拨号器 1';

  @override
  String get favourites => '收藏夹';

  @override
  String get addFavourite => '添加收藏夹';

  @override
  String get favouritesDrawerHint =>
      '使用菜单添加联系人。点击抽屉外部或将其关闭。从联系人的详细信息中为联系人加注星标，或长按“最近通话”中的呼叫。';

  @override
  String get menu => '菜单';

  @override
  String get noFavouritesYet => '还没有收藏夹。\n打开菜单添加联系人或给联系人加注星标。';

  @override
  String get contactsPermissionNeeded => '需要联系人权限';

  @override
  String get chooseContact => '选择联系人';

  @override
  String get noPhone => '没有电话';

  @override
  String get pickNumber => '选号';

  @override
  String get contactHasNoPhone => '该联系人没有电话号码';

  @override
  String get blockNumber => '区块编号';

  @override
  String get enterPhoneNumber => '输入电话号码';

  @override
  String unblockedDisplay(String display) {
    return '畅通无阻$display';
  }

  @override
  String get couldNotUnblockNumber => '无法解锁号码';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked 被阻止 • $matched 匹配';
  }

  @override
  String get contactsPermissionMissing => '缺少联系人权限。点击即可修复。';

  @override
  String get noBlockedNumbers => '没有被屏蔽的号码';

  @override
  String get unknownContact => '未知联系人';

  @override
  String get unblock => '解锁';

  @override
  String get permissionNeeded => '需要许可';

  @override
  String get grantPhonePermission => '授予手机查看您的通话记录的权限。';

  @override
  String get grantContactsPermission => '授予联系人查看您的地址簿的权限。';

  @override
  String get openSettings => '打开设置';

  @override
  String get tryAgain => '再试一次';

  @override
  String get couldNotLoadContacts => '无法加载联系人';

  @override
  String get contactsLoadError => '读取您的地址簿时出现问题。';

  @override
  String get noContactsFound => '未找到联系人';

  @override
  String get contactsEmptySubtitle => '您设备上的联系人将显示在此处。';

  @override
  String get searchContacts => '搜索联系人...';

  @override
  String get searchRecentCalls => '搜索最近通话';

  @override
  String get fromContacts => '来自联系人';

  @override
  String get recentsSearchSection => '最近搜索';

  @override
  String get recentsSearchShowContacts => '在搜索中显示联系人';

  @override
  String get recentsSearchShowContactsSubtitle =>
      '搜索“最近通话”时，还会在通话记录结果下方显示地址簿中的匹配人员。';

  @override
  String get voiceSearch => '语音搜索';

  @override
  String get createNewContact => '创建新联系人';

  @override
  String callError(String error) {
    return '调用错误：$error';
  }

  @override
  String get noRecentCalls => '最近没有通话';

  @override
  String get callHistoryEmpty => '您的通话记录将显示在这里。';

  @override
  String get loadMore => '加载更多';

  @override
  String get frequentlyContactedHeader => '经常联系';

  @override
  String get recentHistory => '最近的历史';

  @override
  String get noFavouritesRecentsHint => '还没有收藏夹。为联系人加注星标、长按呼叫或使用“收藏夹”选项卡。';

  @override
  String get copyNumber => '拷贝数';

  @override
  String get editNumberBeforeCall => '通话前编辑号码';

  @override
  String get removeFromFavourites => '从收藏夹中删除';

  @override
  String get addToFavourites => '添加到收藏夹';

  @override
  String get blockNumberQuestion => '区块号？';

  @override
  String blockNumberConfirm(String number) {
    return '您将不会再收到来自$number的电话或短信。';
  }

  @override
  String get blocked => '被阻止';

  @override
  String get couldNotBlock => '无法阻止';

  @override
  String get contactNotOnDevice => '此设备上未保存联系人信息';

  @override
  String get unblocked => '畅通';

  @override
  String get numberCopied => '复制数量';

  @override
  String get showLess => '显示较少';

  @override
  String get showAllTimes => '显示所有时间';

  @override
  String mostRecent(String time) {
    return '最近·$time';
  }

  @override
  String get videoCall => '视频电话';

  @override
  String get couldNotPlaceVideoCall => '无法发起视频通话';

  @override
  String get message => '信息';

  @override
  String get couldNotOpenMessaging => '无法打开消息应用程序';

  @override
  String get history => '历史';

  @override
  String get viewContact => '查看联系方式';

  @override
  String get addToContact => '添加联系人';

  @override
  String get callTypeMissed => '错过了';

  @override
  String get callTypeRejected => '被拒绝';

  @override
  String get callTypeIncoming => '传入';

  @override
  String get callTypeOutgoing => '传出';

  @override
  String get today => '今天';

  @override
  String get yesterday => '昨天';

  @override
  String get justNow => '现在';

  @override
  String minutesAgo(int count) {
    return '$count 分钟前';
  }

  @override
  String hoursAgo(int count) {
    return '$count 小时前';
  }

  @override
  String get filterAll => '全部';

  @override
  String get filterMissed => '错过了';

  @override
  String get filterContacts => '联系方式';

  @override
  String get filterNonContacts => '非接触式';

  @override
  String get iconUpdated => '图标已更新。您的主屏幕可能需要一些时间才能刷新。';

  @override
  String get iconSavedRelease => '选择已保存。主屏幕图标在发布版本中更新。';

  @override
  String couldNotChangeIcon(String error) {
    return '无法更改图标：$error';
  }

  @override
  String get launcherClassicBlack => '经典款（黑色）';

  @override
  String get launcherLight => '光';

  @override
  String get launcherNothingRed => '没有什么红色的';

  @override
  String get launcherDarkGrey => '深灰色';

  @override
  String get launcherCream => '奶油';

  @override
  String get launcherRetroPhone => '复古手机';

  @override
  String get launcherRetroPhoneLight => '复古手机（浅色）';

  @override
  String get voiceSearchUnavailable => '此设备不支持语音搜索。';

  @override
  String voiceSearchFailed(String error) {
    return '语音搜索失败：$error';
  }

  @override
  String get customColor => '风俗';

  @override
  String get selectColor => '选择颜色';

  @override
  String get reset => '重置';

  @override
  String get simPickerTitle => '选择SIM卡';

  @override
  String get simChooseForCall => '选择用于此通话的 SIM 卡';

  @override
  String get defaultSimAsk => '每次都问';

  @override
  String defaultSimFixed(int slot) {
    return '卡$slot';
  }

  @override
  String get contactDetails => '联系方式';

  @override
  String get call => '称呼';

  @override
  String get share => '分享';

  @override
  String get favourite => '最喜欢的';

  @override
  String get unfavourite => '不喜欢';

  @override
  String get blockContact => '块接触';

  @override
  String get unblockContact => '取消阻止联系人';

  @override
  String get deleteContact => '删除联系人';

  @override
  String get phone => '电话';

  @override
  String get email => '电子邮件';

  @override
  String get ringtone => '铃声';

  @override
  String get defaultRingtone => '默认';

  @override
  String get simForContact => '此联系人的 SIM 卡';

  @override
  String get callHistoryTitle => '通话记录';

  @override
  String get noCallsWithNumber => '没有拨打此号码的电话';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '$minutes米$seconds秒';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => '字形动画';

  @override
  String get inCallGlyphAnimationStyle => '通话中字形动画';

  @override
  String get recordsOff => '离开';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => '默认SIM卡';

  @override
  String get nothingPhoneOnly => '没有什么只有电话';

  @override
  String get nothingPhoneOnlySubtitle => 'Glyph 功能需要 Nothing Phone';

  @override
  String get custom => '风俗';

  @override
  String presetColorHex(String hex) {
    return '预设·$hex';
  }

  @override
  String customColorHex(String hex) {
    return '定制 · $hex';
  }

  @override
  String get oneContact => '1 个联系人';

  @override
  String upToContacts(int count) {
    return '最多 $count 个联系人';
  }

  @override
  String get answerButtonTapSubtitle => '点击按钮即可接听';

  @override
  String get filterCalls => '过滤来电';

  @override
  String get filterTooltip => '筛选';

  @override
  String get settingsTooltip => '设置';

  @override
  String get filterAllSubtitle => '完整通话记录';

  @override
  String get filterMissedSubtitle => '错过并被拒绝';

  @override
  String get filterContactsSubtitle => '与已保存联系人匹配的通话';

  @override
  String get filterNonContactsSubtitle => '地址簿中没有的号码';

  @override
  String ongoingCallWithDetail(String detail) {
    return '通话中：$detail';
  }

  @override
  String get defaultSimForCalls => '用于通话的默认 SIM 卡';

  @override
  String get blinkInterval => '眨眼间隔';

  @override
  String get close => '关闭';

  @override
  String get frequentlyContactedInfoBody =>
      '根据您选择的时间段内每个号码的来电、去电、未接或拒绝来电数量，在“最近通话”选项卡顶部显示您最常拨打的电话号码。\n\n记录数：设置为 0 以关闭此功能。使用 1–20 来显示许多重要联系人。\n\n仅当至少显示一名联系人时，时间段才适用。';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count灯，${ms}ms速度';
  }

  @override
  String get deleteContactQuestion => '删除联系方式？';

  @override
  String get deleteContactBody => '该联系人将从您的设备中永久删除。';

  @override
  String get blockContactQuestion => '阻止联系？';

  @override
  String get unblockContactQuestion => '解除封锁联系方式？';

  @override
  String get blockContactBody => '您将不再收到该联系人的电话或短信。';

  @override
  String get unblockContactBody => '您将开始接收来自该联系人的电话和短信。';

  @override
  String get contactBlocked => '联系方式被屏蔽';

  @override
  String get contactUnblocked => '联系方式畅通无阻';

  @override
  String get noPhoneNumbersToBlock => '没有要阻止的电话号码';

  @override
  String get simSameAsSystem => '与系统相同';

  @override
  String get simSameAsSystemSubtitle => '遵循设置中的默认 SIM 卡';

  @override
  String get simAskEveryTimeForContact => '始终显示该联系人的 SIM 卡选择器';

  @override
  String get ringtoneSetForContact => '为此联系人全局设置的铃声';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return '选择铃声失败：$error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return '错误：$error';
  }

  @override
  String get noCallHistoryFound => '未找到通话记录';

  @override
  String get speedDialVoicemail => '快速拨号：语音信箱';

  @override
  String shareContactSubject(String name) {
    return '联系方式：$name';
  }

  @override
  String get contactInfo => '联系方式';

  @override
  String get dontAskAgainSim => '不要再问';

  @override
  String get simDontAskAgainSubtitle => '使用此 SIM 卡作为默认值（在“设置”中进行更改）';

  @override
  String get addContact => '添加联系人';

  @override
  String get createContact => '创建联系人';

  @override
  String get paste => '粘贴';

  @override
  String get clear => '清除';

  @override
  String get returnToCall => '返回通话';

  @override
  String get numberOfRecordsTitle => '记录数';

  @override
  String get recordsPickerSubtitle => '显示多少个经常联系的条目（0 = 关闭）';

  @override
  String get torchInfoTitle => '火炬闪烁';

  @override
  String get torchInfoBody => '在来电、去电或正在进行的通话期间闪烁相机闪光灯。独立于字形灯。';

  @override
  String get glyphMapTitle => '字形布局';

  @override
  String get glyphMapBody => '无 电话 1 字形 LED 区域。传出和通话动画使用这些通道。';

  @override
  String get answerMethodTitle => '回答方法';

  @override
  String get glyphOutgoingCallStyleTitle => '拨出电话风格';

  @override
  String get glyphInCallAnimationTitle => '字形通话动画';

  @override
  String get themePickerTitle => '主题';

  @override
  String get torchIncomingTitle => '来电火炬';

  @override
  String get torchOutgoingTitle => '去电火炬';

  @override
  String get torchOngoingTitle => '持续通话火炬';

  @override
  String get timePeriodTitle => '时间段';

  @override
  String get ok => '好的';

  @override
  String get confirmDeleteCall => '从历史记录中删除此通话吗？';

  @override
  String get confirmDeleteAllCalls => '删除该号码的所有通话？';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => '发送消息';

  @override
  String get addToExistingContactAction => '添加至联系人';

  @override
  String get mobileLabel => '移动的';

  @override
  String get callingSimForContactTitle => '拨打此联系人的 SIM 卡';

  @override
  String get contactSettings => '联系人设置';

  @override
  String get setCallingSim => '设置通话 SIM 卡';

  @override
  String get contactRingtone => '联系铃声';

  @override
  String get shareContact => '分享联系方式';

  @override
  String get blockNumbers => '区块编号';

  @override
  String get unblockNumbers => '解锁号码';

  @override
  String get connectedApps => '连接的应用程序';

  @override
  String get simNotSet => '未设置';

  @override
  String get ringtoneDefault => '默认';

  @override
  String get customRingtone => '风俗';

  @override
  String get aboutSection => '关于';

  @override
  String get aboutFeedbackSection => '关于和反馈';

  @override
  String get aboutDescription => '没有什么 Dialer 是开源的。如果您是开发人员，欢迎您探索代码并做出贡献。';

  @override
  String get aboutViewSource => '在 GitHub 上查看';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => '无法打开链接';

  @override
  String get reviewSection => '审查';

  @override
  String get reviewDescription => '不喜欢拨号器吗？您在 Google Play 上的评分可以帮助其他人找到该应用。';

  @override
  String get reviewRateOnPlay => '在 Google Play 上评分';

  @override
  String get reviewRateOnPlaySubtitle => '无需离开应用程序即可留下评分';

  @override
  String get reviewCouldNotOpen => '无法打开 Google Play';

  @override
  String get breathSpeed => '呼吸速度';

  @override
  String get breathSpeedBlinkHint => '较低=眨眼，较高=缓慢呼吸';

  @override
  String get speedSliderHint => '较低=较快，较高=较慢';

  @override
  String get swatchDefault => '默认';

  @override
  String get customAccentColorPicker => '自定义强调色';

  @override
  String get customLightBackgroundPicker => '自定义浅色背景';

  @override
  String get customDarkBackgroundPicker => '自定义深色背景';

  @override
  String get customCallBackgroundPicker => '自定义通话背景';

  @override
  String get ongoingCallStyleTitle => '持续通话风格';

  @override
  String get glyphMapUnavailable => '字形图不可用';

  @override
  String get animationDelayRange => '动画延迟（1 秒 - 10 秒）';

  @override
  String get animationDelayRangeSingle => '动画延迟（0.1s - 10s）';

  @override
  String get inCallMute => '沉默的';

  @override
  String get inCallKeypad => '键盘';

  @override
  String get inCallSpeaker => '扬声器';

  @override
  String get inCallMore => '更多的';

  @override
  String get inCallBluetooth => '蓝牙';

  @override
  String get inCallPhone => '电话';

  @override
  String get inCallAddCall => '添加通话';

  @override
  String get inCallChangeSim => '更换SIM卡';

  @override
  String get inCallDecline => '衰退';

  @override
  String get inCallAnswer => '回答';

  @override
  String get inCallMessage => '信息';

  @override
  String get inCallCalling => '呼叫…';

  @override
  String get inCallIncoming => '来电';

  @override
  String get inCallSelectSim => '选择SIM卡...';

  @override
  String get inCallSwitchingSim => '切换 SIM 卡...';

  @override
  String get inCallCallEnded => '通话结束';

  @override
  String inCallCallingVia(String sim) {
    return '通过 $sim 拨打';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return '通过 <b>$sim</b> 拨打';
  }

  @override
  String get inCallChooseSim => '选择用于此通话的 SIM 卡';

  @override
  String get inCallDragAnswerDecline => '向右拖动接听·向左拖动拒绝';

  @override
  String inCallMobileNumber(String number) {
    return '手机$number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label（当前）';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return '通过 <b>$sim</b> 拨打';
  }

  @override
  String get inCallCallFrom => '来电来自';

  @override
  String get inCallUnknown => '未知';

  @override
  String get selectContactRingtone => '选择联系人铃声';

  @override
  String get speakToSearchPrompt => '说话进行搜索';

  @override
  String get phonePermissionRequired => '需要电话许可';

  @override
  String callFailed(String error) {
    return '通话失败：$error';
  }

  @override
  String get callPermissionDenied => '呼叫权限被拒绝';

  @override
  String get alreadyDefaultDialer => '已设置为默认拨号器';

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

/// The translations for Chinese, as used in China (`zh_CN`).
class AppLocalizationsZhCn extends AppLocalizationsZh {
  AppLocalizationsZhCn() : super('zh_CN');

  @override
  String get appTitle => '无拨号器';

  @override
  String get settings => '设置';

  @override
  String get settingsSearchHint => '搜索设置';

  @override
  String get settingsSearchNoResults => '没有找到设置';

  @override
  String get general => '通用';

  @override
  String get theme => '主题';

  @override
  String get themeSystemDefault => '系统默认';

  @override
  String get themeLight => '光';

  @override
  String get themeDark => '黑暗的';

  @override
  String get themeFollowSystem => '遵循系统设置';

  @override
  String get themeAlwaysLight => '始终使用浅色主题';

  @override
  String get themeAlwaysDark => '始终使用深色主题';

  @override
  String get language => '语言';

  @override
  String get languageDeviceDefault => '跟随系统';

  @override
  String get languagePickerTitle => '语言';

  @override
  String get languageSearchHint => '搜索语言';

  @override
  String get font => '字体';

  @override
  String get fontSystem => '系统默认';

  @override
  String get fontNdot => '什么都没有（ND点）';

  @override
  String get fontSerif => '机器人衬线';

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
  String get fontNotoDownloadFailed => '字体下载失败。检查您的连接并重试。';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => '字体';

  @override
  String get fontPreviewSample => '无拨号器';

  @override
  String get fontAppWide => '应用程序字体';

  @override
  String get fontApplyTo => '适用于';

  @override
  String get fontApplyEntireApp => '整个应用程序';

  @override
  String get fontApplyEntireAppSubtitle => '到处都使用相同的字体，包括通话中';

  @override
  String get fontApplyTitlesOnly => '标题和标头';

  @override
  String get fontApplyTitlesOnlySubtitle => '仅大标题和章节标题';

  @override
  String get fontApplyCustomize => '定制';

  @override
  String get fontApplyCustomizeSubtitle => '选择每个屏幕的字体和文本类型';

  @override
  String get fontCustomizeSection => '按屏幕定制';

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
  String get fontRolePageTitle => '页面标题';

  @override
  String get fontRoleSectionHeader => '节标题';

  @override
  String get fontRolePrimary => '主要文本';

  @override
  String get fontRoleSecondary => '次要文本';

  @override
  String get fontRoleButton => '按钮';

  @override
  String get fontRoleDialKey => '拨号盘按键';

  @override
  String get fontSurfaceRecents => '最近的内容';

  @override
  String get fontSurfaceContacts => '联系方式';

  @override
  String get fontSurfaceSettings => '设置';

  @override
  String get fontSurfaceDialpad => '拨号盘';

  @override
  String get fontSurfaceShell => '导航';

  @override
  String get fontSurfaceDefaultDialer => '默认拨号提示';

  @override
  String get fontSurfaceFavourites => '收藏夹';

  @override
  String get fontSurfaceBlocked => '被屏蔽的号码';

  @override
  String get fontSurfaceContactDetail => '联系方式';

  @override
  String get fontSurfaceCallHistory => '通话记录';

  @override
  String get fontSurfaceSheets => '床单和拾取器';

  @override
  String get fontSurfaceInCall => '通话中屏幕';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — 整个应用程序';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — 仅标题';
  }

  @override
  String get fontSubtitleCustomize => '每个屏幕自定义';

  @override
  String get background => '背景';

  @override
  String get accent => '口音';

  @override
  String get lightBackground => '浅色背景';

  @override
  String get lightAccent => '浅色口音';

  @override
  String get darkBackground => '深色背景';

  @override
  String get darkAccent => '深色口音';

  @override
  String get callBackground => '来电背景';

  @override
  String get appIcon => '应用程序图标';

  @override
  String get answerMethod => '回答方法';

  @override
  String get answerSlide => '滑动即可回答';

  @override
  String get answerSlideSubtitle => '在栏上向左/向右滑动，就像 Google Phone 一样';

  @override
  String get answerButton => '按钮点击';

  @override
  String get answerButtonSubtitle => '点击接听或拒绝按钮';

  @override
  String get answerHuawei => '华为风格';

  @override
  String get answerHuaweiSubtitle => '将圆圈拖至绿色电话即可接听';

  @override
  String get answerHuaweiTileSubtitle => '华为 — 拖动至绿色/红色';

  @override
  String get calling => '呼唤';

  @override
  String get defaultSim => '默认SIM卡';

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
  String get askEveryTime => '每次都问';

  @override
  String get askEveryTimeSubtitle => '每次通话前显示 SIM 卡选择器';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => '未找到 SIM 卡';

  @override
  String couldNotLoadSims(String error) {
    return '无法加载 SIM 卡：$error';
  }

  @override
  String get allFavourites => '所有收藏夹';

  @override
  String get allFavouritesSubtitle => '对联系人重新排序、删除和添加';

  @override
  String get blockedNumbers => '被屏蔽的号码';

  @override
  String get blockedNumbersSubtitle => '查看和解锁号码';

  @override
  String get soundsAndVibration => '声音和振动';

  @override
  String get soundsAndVibrationSubtitle => '铃声、振动、拨号盘音';

  @override
  String couldNotOpenSettings(String error) {
    return '无法打开设置：$error';
  }

  @override
  String get frequentlyContacted => '经常联系';

  @override
  String get numberOfRecords => '记录数';

  @override
  String get timePeriod => '时间段';

  @override
  String get periodLast24Hours => '过去 24 小时';

  @override
  String get periodLast24HoursSubtitle => '过去一天的来电';

  @override
  String get periodLast7Days => '过去 7 天';

  @override
  String get periodLast7DaysSubtitle => '过去一周的来电';

  @override
  String get periodLast30Days => '过去 30 天';

  @override
  String get periodLast30DaysSubtitle => '过去一个月的来电';

  @override
  String get periodLast12Months => '过去 12 个月';

  @override
  String get periodLast12MonthsSubtitle => '去年的来电';

  @override
  String get periodAllTime => '所有时间';

  @override
  String get periodAllTimeSubtitle => '完整通话记录';

  @override
  String get frequentMaxOff => '离开';

  @override
  String frequentMaxCount(int count) {
    return '$count 联系人';
  }

  @override
  String get torchBlink => '火炬闪烁';

  @override
  String get torchIncomingCall => '来电火炬';

  @override
  String get torchOutgoingCall => '去电火炬';

  @override
  String get torchOngoingCall => '持续通话火炬';

  @override
  String get torchIncomingInterval => '传入眨眼间隔';

  @override
  String get torchOutgoingInterval => '传出眨眼间隔';

  @override
  String get torchOngoingInterval => '持续眨眼间隔';

  @override
  String get torchOff => '离开';

  @override
  String get torchOffIncomingSubtitle => '响铃时没有手电筒';

  @override
  String get torchOffOutgoingSubtitle => '拨号时没有手电筒';

  @override
  String get torchOffOngoingSubtitle => '通话期间没有手电筒';

  @override
  String get torchFixedInterval => '固定间隔';

  @override
  String get torchFixedIntervalSubtitle => '以设定的速度闪烁';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds秒';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds 眨眼';
  }

  @override
  String get flashlightUnavailable => '手电筒在此设备上不可用';

  @override
  String get glyphLights => '字形灯';

  @override
  String get glyphCallingAnimation => '字形调用动画';

  @override
  String get glyphOngoingAnimation => 'Glyph 正在进行的通话动画';

  @override
  String get glyphNone => '没有任何';

  @override
  String get glyphNoneOutgoingSubtitle => '禁用拨出呼叫的字形指示灯';

  @override
  String get glyphNoneInCallSubtitle => '在通话时禁用字形灯';

  @override
  String get glyphBreathProgress => '呼吸与进步';

  @override
  String get glyphBreathProgressSubtitle => '当线路充满时灯光会呼吸超过 65 秒';

  @override
  String get glyphAccumulate => '积累';

  @override
  String get glyphAccumulateSubtitle => '在灯光 C1-C4 上累积动画';

  @override
  String get glyphSingle => '单身的';

  @override
  String get glyphSingleSubtitle => '单灯穿过 C1-C4';

  @override
  String get glyphBreath => '气息';

  @override
  String get glyphBreathSubtitle => '选择灯光和速度';

  @override
  String get glyphSteady => '稳定的';

  @override
  String get glyphSteadySubtitle => '选定的灯保持亮起';

  @override
  String get breathSettings => '呼吸设置';

  @override
  String get activeLights => '主动灯';

  @override
  String lightsCount(int count) {
    return '$count灯';
  }

  @override
  String get speedSettings => '速度设置';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms 延迟';
  }

  @override
  String get durationAndSpeed => '持续时间和速度';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s 持续时间，${interval}ms 间隔';
  }

  @override
  String get cancel => '取消';

  @override
  String get done => '完毕';

  @override
  String get save => '节省';

  @override
  String get block => '堵塞';

  @override
  String get delete => '删除';

  @override
  String get recents => '最近';

  @override
  String get contacts => '联系人';

  @override
  String get hideFavouritesOnRecents => '隐藏最近的收藏夹';

  @override
  String get showFavouritesOnRecents => '在最近的内容中显示收藏夹';

  @override
  String get ongoingCall => '正在进行的通话';

  @override
  String get setAsDefaultTitle => '设置为\n默认值';

  @override
  String get setAsDefaultBody =>
      '要使用 Nothing Dialer，必须将其设置为您的默认手机应用程序。这允许您管理呼叫、查看历史记录和使用字形动画。';

  @override
  String get setAsDefaultButton => '设置为默认值';

  @override
  String get nothingDialerBrand => '没有拨号器 1';

  @override
  String get favourites => '收藏夹';

  @override
  String get addFavourite => '添加收藏夹';

  @override
  String get favouritesDrawerHint =>
      '使用菜单添加联系人。点击抽屉外部或将其关闭。从联系人的详细信息中为联系人加注星标，或长按“最近通话”中的呼叫。';

  @override
  String get menu => '菜单';

  @override
  String get noFavouritesYet => '还没有收藏夹。\n打开菜单添加联系人或给联系人加注星标。';

  @override
  String get contactsPermissionNeeded => '需要联系人权限';

  @override
  String get chooseContact => '选择联系人';

  @override
  String get noPhone => '没有电话';

  @override
  String get pickNumber => '选号';

  @override
  String get contactHasNoPhone => '该联系人没有电话号码';

  @override
  String get blockNumber => '区块编号';

  @override
  String get enterPhoneNumber => '输入电话号码';

  @override
  String unblockedDisplay(String display) {
    return '畅通无阻$display';
  }

  @override
  String get couldNotUnblockNumber => '无法解锁号码';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked 被阻止 • $matched 匹配';
  }

  @override
  String get contactsPermissionMissing => '缺少联系人权限。点击即可修复。';

  @override
  String get noBlockedNumbers => '没有被屏蔽的号码';

  @override
  String get unknownContact => '未知联系人';

  @override
  String get unblock => '解锁';

  @override
  String get permissionNeeded => '需要许可';

  @override
  String get grantPhonePermission => '授予手机查看您的通话记录的权限。';

  @override
  String get grantContactsPermission => '授予联系人查看您的地址簿的权限。';

  @override
  String get openSettings => '打开设置';

  @override
  String get tryAgain => '再试一次';

  @override
  String get couldNotLoadContacts => '无法加载联系人';

  @override
  String get contactsLoadError => '读取您的地址簿时出现问题。';

  @override
  String get noContactsFound => '未找到联系人';

  @override
  String get contactsEmptySubtitle => '您设备上的联系人将显示在此处。';

  @override
  String get searchContacts => '搜索联系人...';

  @override
  String get searchRecentCalls => '搜索最近通话';

  @override
  String get fromContacts => '来自联系人';

  @override
  String get recentsSearchSection => '最近搜索';

  @override
  String get recentsSearchShowContacts => '在搜索中显示联系人';

  @override
  String get recentsSearchShowContactsSubtitle =>
      '搜索“最近通话”时，还会在通话记录结果下方显示地址簿中的匹配人员。';

  @override
  String get voiceSearch => '语音搜索';

  @override
  String get createNewContact => '创建新联系人';

  @override
  String callError(String error) {
    return '调用错误：$error';
  }

  @override
  String get noRecentCalls => '最近没有通话';

  @override
  String get callHistoryEmpty => '您的通话记录将显示在这里。';

  @override
  String get loadMore => '加载更多';

  @override
  String get frequentlyContactedHeader => '经常联系';

  @override
  String get recentHistory => '最近的历史';

  @override
  String get noFavouritesRecentsHint => '还没有收藏夹。为联系人加注星标、长按呼叫或使用“收藏夹”选项卡。';

  @override
  String get copyNumber => '拷贝数';

  @override
  String get editNumberBeforeCall => '通话前编辑号码';

  @override
  String get removeFromFavourites => '从收藏夹中删除';

  @override
  String get addToFavourites => '添加到收藏夹';

  @override
  String get blockNumberQuestion => '区块号？';

  @override
  String blockNumberConfirm(String number) {
    return '您将不会再收到来自$number的电话或短信。';
  }

  @override
  String get blocked => '被阻止';

  @override
  String get couldNotBlock => '无法阻止';

  @override
  String get contactNotOnDevice => '此设备上未保存联系人信息';

  @override
  String get unblocked => '畅通';

  @override
  String get numberCopied => '复制数量';

  @override
  String get showLess => '显示较少';

  @override
  String get showAllTimes => '显示所有时间';

  @override
  String mostRecent(String time) {
    return '最近·$time';
  }

  @override
  String get videoCall => '视频电话';

  @override
  String get couldNotPlaceVideoCall => '无法发起视频通话';

  @override
  String get message => '信息';

  @override
  String get couldNotOpenMessaging => '无法打开消息应用程序';

  @override
  String get history => '历史';

  @override
  String get viewContact => '查看联系方式';

  @override
  String get addToContact => '添加联系人';

  @override
  String get callTypeMissed => '错过了';

  @override
  String get callTypeRejected => '被拒绝';

  @override
  String get callTypeIncoming => '传入';

  @override
  String get callTypeOutgoing => '传出';

  @override
  String get today => '今天';

  @override
  String get yesterday => '昨天';

  @override
  String get justNow => '刚刚';

  @override
  String minutesAgo(int count) {
    return '$count 分钟前';
  }

  @override
  String hoursAgo(int count) {
    return '$count 小时前';
  }

  @override
  String get filterAll => '全部';

  @override
  String get filterMissed => '错过了';

  @override
  String get filterContacts => '联系方式';

  @override
  String get filterNonContacts => '非接触式';

  @override
  String get iconUpdated => '图标已更新。您的主屏幕可能需要一些时间才能刷新。';

  @override
  String get iconSavedRelease => '选择已保存。主屏幕图标在发布版本中更新。';

  @override
  String couldNotChangeIcon(String error) {
    return '无法更改图标：$error';
  }

  @override
  String get launcherClassicBlack => '经典款（黑色）';

  @override
  String get launcherLight => '光';

  @override
  String get launcherNothingRed => '没有什么红色的';

  @override
  String get launcherDarkGrey => '深灰色';

  @override
  String get launcherCream => '奶油';

  @override
  String get launcherRetroPhone => '复古手机';

  @override
  String get launcherRetroPhoneLight => '复古手机（浅色）';

  @override
  String get voiceSearchUnavailable => '此设备不支持语音搜索。';

  @override
  String voiceSearchFailed(String error) {
    return '语音搜索失败：$error';
  }

  @override
  String get customColor => '风俗';

  @override
  String get selectColor => '选择颜色';

  @override
  String get reset => '重置';

  @override
  String get simPickerTitle => '选择SIM卡';

  @override
  String get simChooseForCall => '选择用于此通话的 SIM 卡';

  @override
  String get defaultSimAsk => '每次都问';

  @override
  String defaultSimFixed(int slot) {
    return '卡$slot';
  }

  @override
  String get contactDetails => '联系方式';

  @override
  String get call => '称呼';

  @override
  String get share => '分享';

  @override
  String get favourite => '最喜欢的';

  @override
  String get unfavourite => '不喜欢';

  @override
  String get blockContact => '块接触';

  @override
  String get unblockContact => '取消阻止联系人';

  @override
  String get deleteContact => '删除联系人';

  @override
  String get phone => '电话';

  @override
  String get email => '电子邮件';

  @override
  String get ringtone => '铃声';

  @override
  String get defaultRingtone => '默认';

  @override
  String get simForContact => '此联系人的 SIM 卡';

  @override
  String get callHistoryTitle => '通话记录';

  @override
  String get noCallsWithNumber => '没有拨打此号码的电话';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '$minutes米$seconds秒';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => '字形动画';

  @override
  String get inCallGlyphAnimationStyle => '通话中字形动画';

  @override
  String get recordsOff => '离开';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => '默认SIM卡';

  @override
  String get nothingPhoneOnly => '没有什么只有电话';

  @override
  String get nothingPhoneOnlySubtitle => 'Glyph 功能需要 Nothing Phone';

  @override
  String get custom => '自定义';

  @override
  String presetColorHex(String hex) {
    return '预设·$hex';
  }

  @override
  String customColorHex(String hex) {
    return '定制 · $hex';
  }

  @override
  String get oneContact => '1 个联系人';

  @override
  String upToContacts(int count) {
    return '最多 $count 个联系人';
  }

  @override
  String get answerButtonTapSubtitle => '点击按钮即可接听';

  @override
  String get filterCalls => '过滤来电';

  @override
  String get filterTooltip => '筛选';

  @override
  String get settingsTooltip => '设置';

  @override
  String get filterAllSubtitle => '完整通话记录';

  @override
  String get filterMissedSubtitle => '错过并被拒绝';

  @override
  String get filterContactsSubtitle => '与已保存联系人匹配的通话';

  @override
  String get filterNonContactsSubtitle => '地址簿中没有的号码';

  @override
  String ongoingCallWithDetail(String detail) {
    return '通话中：$detail';
  }

  @override
  String get defaultSimForCalls => '用于通话的默认 SIM 卡';

  @override
  String get blinkInterval => '眨眼间隔';

  @override
  String get close => '关闭';

  @override
  String get frequentlyContactedInfoBody =>
      '根据您选择的时间段内每个号码的来电、去电、未接或拒绝来电数量，在“最近通话”选项卡顶部显示您最常拨打的电话号码。\n\n记录数：设置为 0 以关闭此功能。使用 1–20 来显示许多重要联系人。\n\n仅当至少显示一名联系人时，时间段才适用。';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count灯，${ms}ms速度';
  }

  @override
  String get deleteContactQuestion => '删除联系方式？';

  @override
  String get deleteContactBody => '该联系人将从您的设备中永久删除。';

  @override
  String get blockContactQuestion => '阻止联系？';

  @override
  String get unblockContactQuestion => '解除封锁联系方式？';

  @override
  String get blockContactBody => '您将不再收到该联系人的电话或短信。';

  @override
  String get unblockContactBody => '您将开始接收来自该联系人的电话和短信。';

  @override
  String get contactBlocked => '联系方式被屏蔽';

  @override
  String get contactUnblocked => '联系方式畅通无阻';

  @override
  String get noPhoneNumbersToBlock => '没有要阻止的电话号码';

  @override
  String get simSameAsSystem => '与系统相同';

  @override
  String get simSameAsSystemSubtitle => '遵循设置中的默认 SIM 卡';

  @override
  String get simAskEveryTimeForContact => '始终显示该联系人的 SIM 卡选择器';

  @override
  String get ringtoneSetForContact => '为此联系人全局设置的铃声';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return '选择铃声失败：$error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return '错误：$error';
  }

  @override
  String get noCallHistoryFound => '未找到通话记录';

  @override
  String get speedDialVoicemail => '快速拨号：语音信箱';

  @override
  String shareContactSubject(String name) {
    return '联系方式：$name';
  }

  @override
  String get contactInfo => '联系方式';

  @override
  String get dontAskAgainSim => '不要再问';

  @override
  String get simDontAskAgainSubtitle => '使用此 SIM 卡作为默认值（在“设置”中进行更改）';

  @override
  String get addContact => '添加联系人';

  @override
  String get createContact => '创建联系人';

  @override
  String get paste => '粘贴';

  @override
  String get clear => '清除';

  @override
  String get returnToCall => '返回通话';

  @override
  String get numberOfRecordsTitle => '记录数';

  @override
  String get recordsPickerSubtitle => '显示多少个经常联系的条目（0 = 关闭）';

  @override
  String get torchInfoTitle => '火炬闪烁';

  @override
  String get torchInfoBody => '在来电、去电或正在进行的通话期间闪烁相机闪光灯。独立于字形灯。';

  @override
  String get glyphMapTitle => '字形布局';

  @override
  String get glyphMapBody => '无 电话 1 字形 LED 区域。传出和通话动画使用这些通道。';

  @override
  String get answerMethodTitle => '回答方法';

  @override
  String get glyphOutgoingCallStyleTitle => '拨出电话风格';

  @override
  String get glyphInCallAnimationTitle => '字形通话动画';

  @override
  String get themePickerTitle => '主题';

  @override
  String get torchIncomingTitle => '来电火炬';

  @override
  String get torchOutgoingTitle => '去电火炬';

  @override
  String get torchOngoingTitle => '持续通话火炬';

  @override
  String get timePeriodTitle => '时间段';

  @override
  String get ok => '好的';

  @override
  String get confirmDeleteCall => '从历史记录中删除此通话吗？';

  @override
  String get confirmDeleteAllCalls => '删除该号码的所有通话？';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => '发送消息';

  @override
  String get addToExistingContactAction => '添加至联系人';

  @override
  String get mobileLabel => '移动的';

  @override
  String get callingSimForContactTitle => '拨打此联系人的 SIM 卡';

  @override
  String get contactSettings => '联系人设置';

  @override
  String get setCallingSim => '设置通话 SIM 卡';

  @override
  String get contactRingtone => '联系铃声';

  @override
  String get shareContact => '分享联系方式';

  @override
  String get blockNumbers => '区块编号';

  @override
  String get unblockNumbers => '解锁号码';

  @override
  String get connectedApps => '连接的应用程序';

  @override
  String get simNotSet => '未设置';

  @override
  String get ringtoneDefault => '默认';

  @override
  String get customRingtone => '风俗';

  @override
  String get aboutSection => '关于';

  @override
  String get aboutFeedbackSection => '关于和反馈';

  @override
  String get aboutDescription => 'Nothing Dialer 是开源项目。欢迎开发者查看代码并参与贡献。';

  @override
  String get aboutViewSource => '在 GitHub 上查看';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => '无法打开链接';

  @override
  String get reviewSection => '评价';

  @override
  String get reviewDescription =>
      '喜欢 Nothing Dialer 吗？在 Google Play 上的评分可以帮助其他人发现这款应用。';

  @override
  String get reviewRateOnPlay => '在 Google Play 上评分';

  @override
  String get reviewRateOnPlaySubtitle => '无需离开应用即可评分';

  @override
  String get reviewCouldNotOpen => '无法打开 Google Play';

  @override
  String get breathSpeed => '呼吸速度';

  @override
  String get breathSpeedBlinkHint => '较低=眨眼，较高=缓慢呼吸';

  @override
  String get speedSliderHint => '较低=较快，较高=较慢';

  @override
  String get swatchDefault => '默认';

  @override
  String get customAccentColorPicker => '自定义强调色';

  @override
  String get customLightBackgroundPicker => '自定义浅色背景';

  @override
  String get customDarkBackgroundPicker => '自定义深色背景';

  @override
  String get customCallBackgroundPicker => '自定义通话背景';

  @override
  String get ongoingCallStyleTitle => '持续通话风格';

  @override
  String get glyphMapUnavailable => '字形图不可用';

  @override
  String get animationDelayRange => '动画延迟（1 秒 - 10 秒）';

  @override
  String get animationDelayRangeSingle => '动画延迟（0.1s - 10s）';

  @override
  String get inCallMute => '静音';

  @override
  String get inCallKeypad => '键盘';

  @override
  String get inCallSpeaker => '扬声器';

  @override
  String get inCallMore => '更多';

  @override
  String get inCallBluetooth => '蓝牙';

  @override
  String get inCallPhone => '电话';

  @override
  String get inCallAddCall => '添加通话';

  @override
  String get inCallChangeSim => '更换 SIM';

  @override
  String get inCallDecline => '拒绝';

  @override
  String get inCallAnswer => '接听';

  @override
  String get inCallMessage => '信息';

  @override
  String get inCallCalling => '正在呼叫…';

  @override
  String get inCallIncoming => '来电';

  @override
  String get inCallSelectSim => '选择 SIM…';

  @override
  String get inCallSwitchingSim => '正在切换 SIM…';

  @override
  String get inCallCallEnded => '通话已结束';

  @override
  String inCallCallingVia(String sim) {
    return '正在通过 $sim 呼叫';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return '正在通过 <b>$sim</b> 呼叫';
  }

  @override
  String get inCallChooseSim => '选择本次通话的 SIM';

  @override
  String get inCallDragAnswerDecline => '向右滑动接听 · 向左滑动拒绝';

  @override
  String inCallMobileNumber(String number) {
    return '手机 $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label（当前）';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return '通过 <b>$sim</b> 来电';
  }

  @override
  String get inCallCallFrom => '来电';

  @override
  String get inCallUnknown => '未知';

  @override
  String get selectContactRingtone => '选择联系人铃声';

  @override
  String get speakToSearchPrompt => '说话搜索';

  @override
  String get phonePermissionRequired => '需要电话权限';

  @override
  String callFailed(String error) {
    return '呼叫失败：$error';
  }

  @override
  String get callPermissionDenied => '已拒绝通话权限';

  @override
  String get alreadyDefaultDialer => '已是默认拨号应用';

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

/// The translations for Chinese, as used in Hong Kong (`zh_HK`).
class AppLocalizationsZhHk extends AppLocalizationsZh {
  AppLocalizationsZhHk() : super('zh_HK');

  @override
  String get appTitle => '無撥號器';

  @override
  String get settings => '設定';

  @override
  String get settingsSearchHint => '搜尋設定';

  @override
  String get settingsSearchNoResults => '沒有找到設定';

  @override
  String get general => '一般的';

  @override
  String get theme => '主題';

  @override
  String get themeSystemDefault => '系統預設值';

  @override
  String get themeLight => '光';

  @override
  String get themeDark => '黑暗的';

  @override
  String get themeFollowSystem => '遵循系統設定';

  @override
  String get themeAlwaysLight => '始終使用淺色主題';

  @override
  String get themeAlwaysDark => '始終使用深色主題';

  @override
  String get language => '語言';

  @override
  String get languageDeviceDefault => '設備預設值';

  @override
  String get languagePickerTitle => '語言';

  @override
  String get languageSearchHint => '搜尋語言';

  @override
  String get font => '字體';

  @override
  String get fontSystem => '系統預設';

  @override
  String get fontNdot => '什麼都沒有（ND點）';

  @override
  String get fontSerif => '機器人襯線';

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
  String get fontNotoDownloadFailed => '字型下載失敗。檢查您的連線並重試。';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => '字體';

  @override
  String get fontPreviewSample => '無撥號器';

  @override
  String get fontAppWide => '應用程式字體';

  @override
  String get fontApplyTo => '適用於';

  @override
  String get fontApplyEntireApp => '整個應用程式';

  @override
  String get fontApplyEntireAppSubtitle => '到處都使用相同的字體，包括通話中';

  @override
  String get fontApplyTitlesOnly => '標題和標頭';

  @override
  String get fontApplyTitlesOnlySubtitle => '僅大標題和章節標題';

  @override
  String get fontApplyCustomize => '客製化';

  @override
  String get fontApplyCustomizeSubtitle => '選擇每個螢幕的字體和文字類型';

  @override
  String get fontCustomizeSection => '按螢幕定制';

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
  String get fontRolePageTitle => '頁面標題';

  @override
  String get fontRoleSectionHeader => '節標題';

  @override
  String get fontRolePrimary => '主要文本';

  @override
  String get fontRoleSecondary => '次要文本';

  @override
  String get fontRoleButton => '按鈕';

  @override
  String get fontRoleDialKey => '撥號盤按鍵';

  @override
  String get fontSurfaceRecents => '最近的內容';

  @override
  String get fontSurfaceContacts => '聯絡方式';

  @override
  String get fontSurfaceSettings => '設定';

  @override
  String get fontSurfaceDialpad => '撥號盤';

  @override
  String get fontSurfaceShell => '導航';

  @override
  String get fontSurfaceDefaultDialer => '預設撥號提示';

  @override
  String get fontSurfaceFavourites => '收藏夾';

  @override
  String get fontSurfaceBlocked => '封鎖的號碼';

  @override
  String get fontSurfaceContactDetail => '聯絡方式';

  @override
  String get fontSurfaceCallHistory => '通話記錄';

  @override
  String get fontSurfaceSheets => '床單和拾取器';

  @override
  String get fontSurfaceInCall => '通話中螢幕';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — 整個應用程式';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — 僅標題';
  }

  @override
  String get fontSubtitleCustomize => '每個螢幕自訂';

  @override
  String get background => '背景';

  @override
  String get accent => '口音';

  @override
  String get lightBackground => '淺色背景';

  @override
  String get lightAccent => '淺色口音';

  @override
  String get darkBackground => '深色背景';

  @override
  String get darkAccent => '深色口音';

  @override
  String get callBackground => '來電背景';

  @override
  String get appIcon => '應用程式圖標';

  @override
  String get answerMethod => '回答方法';

  @override
  String get answerSlide => '滑動即可回答';

  @override
  String get answerSlideSubtitle => '在欄上向左/向右滑動，就像 Google Phone 一樣';

  @override
  String get answerButton => '按鈕點擊';

  @override
  String get answerButtonSubtitle => '點擊接聽或拒絕按鈕';

  @override
  String get answerHuawei => '華為風格';

  @override
  String get answerHuaweiSubtitle => '將圓圈拖至綠色電話即可接聽';

  @override
  String get answerHuaweiTileSubtitle => '華為 — 拖曳至綠色/紅色';

  @override
  String get calling => '呼喚';

  @override
  String get defaultSim => '預設SIM卡';

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
  String get askEveryTime => '每次都問';

  @override
  String get askEveryTimeSubtitle => '每次通話前顯示 SIM 卡選擇器';

  @override
  String simSlot(int slot) {
    return '卡$slot';
  }

  @override
  String get noSimCardsFound => '找不到 SIM 卡';

  @override
  String couldNotLoadSims(String error) {
    return '無法加載 SIM 卡：$error';
  }

  @override
  String get allFavourites => '所有收藏夾';

  @override
  String get allFavouritesSubtitle => '對聯絡人重新排序、刪除和新增';

  @override
  String get blockedNumbers => '封鎖的號碼';

  @override
  String get blockedNumbersSubtitle => '查看和解鎖號碼';

  @override
  String get soundsAndVibration => '聲音和振動';

  @override
  String get soundsAndVibrationSubtitle => '鈴聲、震動、撥號盤音';

  @override
  String couldNotOpenSettings(String error) {
    return '無法開啟設定：$error';
  }

  @override
  String get frequentlyContacted => '經常聯繫';

  @override
  String get numberOfRecords => '記錄數';

  @override
  String get timePeriod => '時段';

  @override
  String get periodLast24Hours => '過去 24 小時';

  @override
  String get periodLast24HoursSubtitle => '過去一天的來電';

  @override
  String get periodLast7Days => '過去 7 天';

  @override
  String get periodLast7DaysSubtitle => '過去一週的來電';

  @override
  String get periodLast30Days => '過去 30 天';

  @override
  String get periodLast30DaysSubtitle => '過去一個月的來電';

  @override
  String get periodLast12Months => '過去 12 個月';

  @override
  String get periodLast12MonthsSubtitle => '去年的來電';

  @override
  String get periodAllTime => '所有時間';

  @override
  String get periodAllTimeSubtitle => '完整通話記錄';

  @override
  String get frequentMaxOff => '離開';

  @override
  String frequentMaxCount(int count) {
    return '$count 聯絡人';
  }

  @override
  String get torchBlink => '火炬閃爍';

  @override
  String get torchIncomingCall => '來電火炬';

  @override
  String get torchOutgoingCall => '去電火炬';

  @override
  String get torchOngoingCall => '持續通話火炬';

  @override
  String get torchIncomingInterval => '傳入眨眼間隔';

  @override
  String get torchOutgoingInterval => '傳出眨眼間隔';

  @override
  String get torchOngoingInterval => '持續眨眼間隔';

  @override
  String get torchOff => '離開';

  @override
  String get torchOffIncomingSubtitle => '響鈴時沒有手電筒';

  @override
  String get torchOffOutgoingSubtitle => '撥號時沒有手電筒';

  @override
  String get torchOffOngoingSubtitle => '通話期間沒有手電筒';

  @override
  String get torchFixedInterval => '固定間隔';

  @override
  String get torchFixedIntervalSubtitle => '以設定的速度閃爍';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds秒';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds 眨眼';
  }

  @override
  String get flashlightUnavailable => '手電筒在此設備上不可用';

  @override
  String get glyphLights => '字形燈';

  @override
  String get glyphCallingAnimation => '字形呼叫動畫';

  @override
  String get glyphOngoingAnimation => 'Glyph 正在進行的通話動畫';

  @override
  String get glyphNone => '沒有任何';

  @override
  String get glyphNoneOutgoingSubtitle => '停用撥出呼叫的字形指示燈';

  @override
  String get glyphNoneInCallSubtitle => '通話時停用字形燈';

  @override
  String get glyphBreathProgress => '呼吸與進步';

  @override
  String get glyphBreathProgressSubtitle => '當線路充滿時燈光會呼吸超過 65 秒';

  @override
  String get glyphAccumulate => '累積';

  @override
  String get glyphAccumulateSubtitle => '在燈光 C1-C4 上累積動畫';

  @override
  String get glyphSingle => '單身的';

  @override
  String get glyphSingleSubtitle => '單燈穿過 C1-C4';

  @override
  String get glyphBreath => '氣息';

  @override
  String get glyphBreathSubtitle => '選擇燈光和速度';

  @override
  String get glyphSteady => '穩定的';

  @override
  String get glyphSteadySubtitle => '選定的燈保持亮起';

  @override
  String get breathSettings => '呼吸設定';

  @override
  String get activeLights => '主動燈光';

  @override
  String lightsCount(int count) {
    return '$count燈';
  }

  @override
  String get speedSettings => '速度設定';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms 延遲';
  }

  @override
  String get durationAndSpeed => '持續時間和速度';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s 持續時間，${interval}ms 間隔';
  }

  @override
  String get cancel => '取消';

  @override
  String get done => '完畢';

  @override
  String get save => '節省';

  @override
  String get block => '堵塞';

  @override
  String get delete => '刪除';

  @override
  String get recents => '最近的內容';

  @override
  String get contacts => '聯絡方式';

  @override
  String get hideFavouritesOnRecents => '隱藏最近的收藏夾';

  @override
  String get showFavouritesOnRecents => '在最近的內容中顯示收藏夾';

  @override
  String get ongoingCall => '正在進行的通話';

  @override
  String get setAsDefaultTitle => '設定為\n預設值';

  @override
  String get setAsDefaultBody =>
      '要使用 Nothing Dialer，必須將其設定為您的預設手機應用程式。這允許您管理呼叫、查看歷史記錄和使用字形動畫。';

  @override
  String get setAsDefaultButton => '設定為預設值';

  @override
  String get nothingDialerBrand => '沒有撥號器 1';

  @override
  String get favourites => '收藏夾';

  @override
  String get addFavourite => '新增收藏夾';

  @override
  String get favouritesDrawerHint =>
      '使用選單新增聯絡人。點擊抽屜外部或將其關閉。從聯絡人的詳細資料中為聯絡人加註星標，或長按「最近通話」中的通話。';

  @override
  String get menu => '選單';

  @override
  String get noFavouritesYet => '還沒有收藏。\n開啟選單新增聯絡人或給聯絡人加註星標。';

  @override
  String get contactsPermissionNeeded => '需要聯絡人權限';

  @override
  String get chooseContact => '選擇聯絡人';

  @override
  String get noPhone => '沒有電話';

  @override
  String get pickNumber => '選號';

  @override
  String get contactHasNoPhone => '該聯絡人沒有電話號碼';

  @override
  String get blockNumber => '區塊編號';

  @override
  String get enterPhoneNumber => '輸入電話號碼';

  @override
  String unblockedDisplay(String display) {
    return '暢通無阻$display';
  }

  @override
  String get couldNotUnblockNumber => '無法解鎖號碼';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked 被阻止 • $matched 匹配';
  }

  @override
  String get contactsPermissionMissing => '缺少聯絡人權限。點擊即可修復。';

  @override
  String get noBlockedNumbers => '沒有被封鎖的號碼';

  @override
  String get unknownContact => '未知聯繫人';

  @override
  String get unblock => '解鎖';

  @override
  String get permissionNeeded => '需要許可';

  @override
  String get grantPhonePermission => '授予手機查看您的通話記錄的權限。';

  @override
  String get grantContactsPermission => '授予聯絡人查看您的通訊錄的權限。';

  @override
  String get openSettings => '開啟設定';

  @override
  String get tryAgain => '再試一次';

  @override
  String get couldNotLoadContacts => '無法載入聯絡人';

  @override
  String get contactsLoadError => '讀取您的通訊錄時出現問題。';

  @override
  String get noContactsFound => '未找到聯絡人';

  @override
  String get contactsEmptySubtitle => '您裝置上的聯絡人將顯示在此。';

  @override
  String get searchContacts => '搜尋聯絡人...';

  @override
  String get searchRecentCalls => '搜尋最近通話';

  @override
  String get fromContacts => '來自聯絡人';

  @override
  String get recentsSearchSection => '最近搜尋';

  @override
  String get recentsSearchShowContacts => '在搜尋中顯示聯絡人';

  @override
  String get recentsSearchShowContactsSubtitle =>
      '搜尋「最近通話」時，也會在通話記錄結果下方顯示通訊錄中的符合人員。';

  @override
  String get voiceSearch => '語音搜尋';

  @override
  String get createNewContact => '建立新聯絡人';

  @override
  String callError(String error) {
    return '呼叫錯誤：$error';
  }

  @override
  String get noRecentCalls => '最近沒有通話';

  @override
  String get callHistoryEmpty => '您的通話記錄將會顯示在這裡。';

  @override
  String get loadMore => '加載更多';

  @override
  String get frequentlyContactedHeader => '經常聯繫';

  @override
  String get recentHistory => '最近的歷史';

  @override
  String get noFavouritesRecentsHint => '還沒有收藏。為聯絡人加註星標、長按呼叫或使用「收藏夾」標籤。';

  @override
  String get copyNumber => '拷貝數';

  @override
  String get editNumberBeforeCall => '通話前編輯號碼';

  @override
  String get removeFromFavourites => '從收藏夾中刪除';

  @override
  String get addToFavourites => '加入收藏夾';

  @override
  String get blockNumberQuestion => '區塊號？';

  @override
  String blockNumberConfirm(String number) {
    return '您將不會再收到來自$number的電話或簡訊。';
  }

  @override
  String get blocked => '被阻止';

  @override
  String get couldNotBlock => '無法阻止';

  @override
  String get contactNotOnDevice => '此設備上未儲存聯絡人資訊';

  @override
  String get unblocked => '暢通';

  @override
  String get numberCopied => '複製數量';

  @override
  String get showLess => '顯示較少';

  @override
  String get showAllTimes => '顯示所有時間';

  @override
  String mostRecent(String time) {
    return '最近·$time';
  }

  @override
  String get videoCall => '視訊通話';

  @override
  String get couldNotPlaceVideoCall => '無法發起視訊通話';

  @override
  String get message => '訊息';

  @override
  String get couldNotOpenMessaging => '無法打開訊息應用程式';

  @override
  String get history => '歷史';

  @override
  String get viewContact => '查看聯絡方式';

  @override
  String get addToContact => '新增聯絡人';

  @override
  String get callTypeMissed => '錯過了';

  @override
  String get callTypeRejected => '被拒絕';

  @override
  String get callTypeIncoming => '傳入';

  @override
  String get callTypeOutgoing => '傳出';

  @override
  String get today => '今天';

  @override
  String get yesterday => '昨天';

  @override
  String get justNow => '現在';

  @override
  String minutesAgo(int count) {
    return '$count 分鐘前';
  }

  @override
  String hoursAgo(int count) {
    return '$count 小時前';
  }

  @override
  String get filterAll => '全部';

  @override
  String get filterMissed => '錯過了';

  @override
  String get filterContacts => '聯絡方式';

  @override
  String get filterNonContacts => '非接觸式';

  @override
  String get iconUpdated => '圖標已更新。您的主螢幕可能需要一些時間才能刷新。';

  @override
  String get iconSavedRelease => '選擇已儲存。主畫面圖示在發布版本中更新。';

  @override
  String couldNotChangeIcon(String error) {
    return '無法更改圖示：$error';
  }

  @override
  String get launcherClassicBlack => '經典款（黑色）';

  @override
  String get launcherLight => '光';

  @override
  String get launcherNothingRed => '沒有什麼紅色的';

  @override
  String get launcherDarkGrey => '深灰色';

  @override
  String get launcherCream => '奶油';

  @override
  String get launcherRetroPhone => '復古手機';

  @override
  String get launcherRetroPhoneLight => '復古手機（淺色）';

  @override
  String get voiceSearchUnavailable => '此設備不支援語音搜尋。';

  @override
  String voiceSearchFailed(String error) {
    return '語音搜尋失敗：$error';
  }

  @override
  String get customColor => '風俗';

  @override
  String get selectColor => '選擇顏色';

  @override
  String get reset => '重置';

  @override
  String get simPickerTitle => '選擇SIM卡';

  @override
  String get simChooseForCall => '選擇用於此通話的 SIM 卡';

  @override
  String get defaultSimAsk => '每次都問';

  @override
  String defaultSimFixed(int slot) {
    return '卡$slot';
  }

  @override
  String get contactDetails => '聯絡方式';

  @override
  String get call => '稱呼';

  @override
  String get share => '分享';

  @override
  String get favourite => '最喜歡的';

  @override
  String get unfavourite => '不喜歡';

  @override
  String get blockContact => '塊接觸';

  @override
  String get unblockContact => '取消阻止聯絡人';

  @override
  String get deleteContact => '刪除聯絡人';

  @override
  String get phone => '電話';

  @override
  String get email => '電子郵件';

  @override
  String get ringtone => '鈴聲';

  @override
  String get defaultRingtone => '預設';

  @override
  String get simForContact => '此聯絡人的 SIM 卡';

  @override
  String get callHistoryTitle => '通話記錄';

  @override
  String get noCallsWithNumber => '沒有撥打此號碼的電話';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '$minutes米$seconds秒';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => '字形動畫';

  @override
  String get inCallGlyphAnimationStyle => '通話中字形動畫';

  @override
  String get recordsOff => '離開';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => '預設SIM卡';

  @override
  String get nothingPhoneOnly => '沒有什麼只有電話';

  @override
  String get nothingPhoneOnlySubtitle => 'Glyph 功能需要 Nothing Phone';

  @override
  String get custom => '風俗';

  @override
  String presetColorHex(String hex) {
    return '預設·$hex';
  }

  @override
  String customColorHex(String hex) {
    return '客製化 · $hex';
  }

  @override
  String get oneContact => '1 個聯絡人';

  @override
  String upToContacts(int count) {
    return '最多 $count 個聯絡人';
  }

  @override
  String get answerButtonTapSubtitle => '點擊按鈕即可接聽';

  @override
  String get filterCalls => '過濾來電';

  @override
  String get filterTooltip => '篩選';

  @override
  String get settingsTooltip => '設定';

  @override
  String get filterAllSubtitle => '完整通話記錄';

  @override
  String get filterMissedSubtitle => '錯過並被拒絕';

  @override
  String get filterContactsSubtitle => '與已儲存聯絡人相符的通話';

  @override
  String get filterNonContactsSubtitle => '地址簿中沒有的號碼';

  @override
  String ongoingCallWithDetail(String detail) {
    return '通話中：$detail';
  }

  @override
  String get defaultSimForCalls => '用於通話的預設 SIM 卡';

  @override
  String get blinkInterval => '眨眼間隔';

  @override
  String get close => '關閉';

  @override
  String get frequentlyContactedInfoBody =>
      '根據您選擇的時間段內每個號碼的來電、去電、未接或拒絕來電數量，在「最近通話」標籤頂部顯示您最常撥打的電話號碼。\n\n記錄數：設定為 0 以關閉此功能。使用 1–20 來顯示許多重要聯絡人。\n\n僅當至少顯示一名聯絡人時，時段才適用。';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count燈，${ms}ms速度';
  }

  @override
  String get deleteContactQuestion => '刪除聯絡方式？';

  @override
  String get deleteContactBody => '該聯絡人將從您的裝置中永久刪除。';

  @override
  String get blockContactQuestion => '阻止聯繫？';

  @override
  String get unblockContactQuestion => '解除封鎖聯絡方式？';

  @override
  String get blockContactBody => '您將不再收到該聯絡人的電話或簡訊。';

  @override
  String get unblockContactBody => '您將開始接收來自該聯絡人的電話和簡訊。';

  @override
  String get contactBlocked => '聯絡方式被封鎖';

  @override
  String get contactUnblocked => '聯絡方式暢通無阻';

  @override
  String get noPhoneNumbersToBlock => '沒有要封鎖的電話號碼';

  @override
  String get simSameAsSystem => '與系統相同';

  @override
  String get simSameAsSystemSubtitle => '遵循設定中的預設 SIM 卡';

  @override
  String get simAskEveryTimeForContact => '始終顯示該聯絡人的 SIM 卡選擇器';

  @override
  String get ringtoneSetForContact => '為此聯絡人全域設定的鈴聲';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return '選擇鈴聲失敗：$error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return '錯誤：$error';
  }

  @override
  String get noCallHistoryFound => '未找到通話記錄';

  @override
  String get speedDialVoicemail => '快速撥號：語音信箱';

  @override
  String shareContactSubject(String name) {
    return '聯絡方式：$name';
  }

  @override
  String get contactInfo => '聯絡方式';

  @override
  String get dontAskAgainSim => '不要再問';

  @override
  String get simDontAskAgainSubtitle => '使用此 SIM 卡作為預設值（在「設定」中進行更改）';

  @override
  String get addContact => '新增聯絡人';

  @override
  String get createContact => '創建聯絡人';

  @override
  String get paste => '貼上';

  @override
  String get clear => '清除';

  @override
  String get returnToCall => '返回通話';

  @override
  String get numberOfRecordsTitle => '記錄數';

  @override
  String get recordsPickerSubtitle => '顯示多少個經常聯繫的條目（0 = 關閉）';

  @override
  String get torchInfoTitle => '火炬閃爍';

  @override
  String get torchInfoBody => '在來電、去電或正在進行的通話期間閃爍相機閃光燈。獨立於字形燈。';

  @override
  String get glyphMapTitle => '字形佈局';

  @override
  String get glyphMapBody => '無 電話 1 字形 LED 區域。傳出和通話動畫使用這些通道。';

  @override
  String get answerMethodTitle => '回答方法';

  @override
  String get glyphOutgoingCallStyleTitle => '撥出電話風格';

  @override
  String get glyphInCallAnimationTitle => '字形通話動畫';

  @override
  String get themePickerTitle => '主題';

  @override
  String get torchIncomingTitle => '來電火炬';

  @override
  String get torchOutgoingTitle => '去電火炬';

  @override
  String get torchOngoingTitle => '持續通話火炬';

  @override
  String get timePeriodTitle => '時段';

  @override
  String get ok => '好的';

  @override
  String get confirmDeleteCall => '從歷史記錄中刪除此通話嗎？';

  @override
  String get confirmDeleteAllCalls => '刪除該號碼的所有通話？';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => '發送訊息';

  @override
  String get addToExistingContactAction => '新增至聯絡人';

  @override
  String get mobileLabel => '移動的';

  @override
  String get callingSimForContactTitle => '撥打此聯絡人的 SIM 卡';

  @override
  String get contactSettings => '聯絡人設定';

  @override
  String get setCallingSim => '設定通話 SIM 卡';

  @override
  String get contactRingtone => '聯絡鈴聲';

  @override
  String get shareContact => '分享聯絡方式';

  @override
  String get blockNumbers => '區塊編號';

  @override
  String get unblockNumbers => '解鎖號碼';

  @override
  String get connectedApps => '連接的應用程式';

  @override
  String get simNotSet => '未設定';

  @override
  String get ringtoneDefault => '預設';

  @override
  String get customRingtone => '風俗';

  @override
  String get aboutSection => '關於';

  @override
  String get aboutFeedbackSection => '關於和回饋';

  @override
  String get aboutDescription => '沒有什麼 Dialer 是開源的。如果您是開發人員，歡迎您探索程式碼並做出貢獻。';

  @override
  String get aboutViewSource => '在 GitHub 上查看';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => '無法開啟連結';

  @override
  String get reviewSection => '審查';

  @override
  String get reviewDescription => '不喜歡撥號器嗎？您在 Google Play 上的評分可以幫助其他人找到該應用程式。';

  @override
  String get reviewRateOnPlay => '在 Google Play 上評分';

  @override
  String get reviewRateOnPlaySubtitle => '無需離開應用程式即可留下評分';

  @override
  String get reviewCouldNotOpen => '無法開啟 Google Play';

  @override
  String get breathSpeed => '呼吸速度';

  @override
  String get breathSpeedBlinkHint => '較低=眨眼，較高=緩慢呼吸';

  @override
  String get speedSliderHint => '較低=較快，較高=較慢';

  @override
  String get swatchDefault => '預設';

  @override
  String get customAccentColorPicker => '自訂強調色';

  @override
  String get customLightBackgroundPicker => '自訂淺色背景';

  @override
  String get customDarkBackgroundPicker => '自訂深色背景';

  @override
  String get customCallBackgroundPicker => '自訂通話背景';

  @override
  String get ongoingCallStyleTitle => '持續通話風格';

  @override
  String get glyphMapUnavailable => '字形圖不可用';

  @override
  String get animationDelayRange => '動畫延遲（1 秒 - 10 秒）';

  @override
  String get animationDelayRangeSingle => '動畫延遲（0.1s - 10s）';

  @override
  String get inCallMute => '沉默的';

  @override
  String get inCallKeypad => '鍵盤';

  @override
  String get inCallSpeaker => '揚聲器';

  @override
  String get inCallMore => '更多的';

  @override
  String get inCallBluetooth => '藍牙';

  @override
  String get inCallPhone => '電話';

  @override
  String get inCallAddCall => '新增通話';

  @override
  String get inCallChangeSim => '更換SIM卡';

  @override
  String get inCallDecline => '衰退';

  @override
  String get inCallAnswer => '回答';

  @override
  String get inCallMessage => '訊息';

  @override
  String get inCallCalling => '呼叫…';

  @override
  String get inCallIncoming => '來電';

  @override
  String get inCallSelectSim => '選擇SIM卡...';

  @override
  String get inCallSwitchingSim => '切換 SIM 卡...';

  @override
  String get inCallCallEnded => '通話結束';

  @override
  String inCallCallingVia(String sim) {
    return '透過 $sim 撥打';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return '透過 <b>$sim</b> 撥打';
  }

  @override
  String get inCallChooseSim => '選擇用於此通話的 SIM 卡';

  @override
  String get inCallDragAnswerDecline => '向右拖曳接聽·向左拖曳拒絕';

  @override
  String inCallMobileNumber(String number) {
    return '手機$number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label（當前）';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return '透過 <b>$sim</b> 撥打';
  }

  @override
  String get inCallCallFrom => '來電來自';

  @override
  String get inCallUnknown => '未知';

  @override
  String get selectContactRingtone => '選擇聯絡人鈴聲';

  @override
  String get speakToSearchPrompt => '說話進行搜索';

  @override
  String get phonePermissionRequired => '需要電話許可';

  @override
  String callFailed(String error) {
    return '通話失敗：$error';
  }

  @override
  String get callPermissionDenied => '呼叫權限被拒絕';

  @override
  String get alreadyDefaultDialer => '已設定為預設撥號器';

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

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class AppLocalizationsZhTw extends AppLocalizationsZh {
  AppLocalizationsZhTw() : super('zh_TW');

  @override
  String get appTitle => '無撥號器';

  @override
  String get settings => '設定';

  @override
  String get settingsSearchHint => '搜尋設定';

  @override
  String get settingsSearchNoResults => '沒有找到設定';

  @override
  String get general => '一般的';

  @override
  String get theme => '主題';

  @override
  String get themeSystemDefault => '系統預設值';

  @override
  String get themeLight => '光';

  @override
  String get themeDark => '黑暗的';

  @override
  String get themeFollowSystem => '遵循系統設定';

  @override
  String get themeAlwaysLight => '始終使用淺色主題';

  @override
  String get themeAlwaysDark => '始終使用深色主題';

  @override
  String get language => '語言';

  @override
  String get languageDeviceDefault => '設備預設值';

  @override
  String get languagePickerTitle => '語言';

  @override
  String get languageSearchHint => '搜尋語言';

  @override
  String get font => '字體';

  @override
  String get fontSystem => '系統預設';

  @override
  String get fontNdot => '什麼都沒有（ND點）';

  @override
  String get fontSerif => '機器人襯線';

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
  String get fontNotoDownloadFailed => '字型下載失敗。檢查您的連線並重試。';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => '字體';

  @override
  String get fontPreviewSample => '無撥號器';

  @override
  String get fontAppWide => '應用程式字體';

  @override
  String get fontApplyTo => '適用於';

  @override
  String get fontApplyEntireApp => '整個應用程式';

  @override
  String get fontApplyEntireAppSubtitle => '到處都使用相同的字體，包括通話中';

  @override
  String get fontApplyTitlesOnly => '標題和標頭';

  @override
  String get fontApplyTitlesOnlySubtitle => '僅大標題和章節標題';

  @override
  String get fontApplyCustomize => '客製化';

  @override
  String get fontApplyCustomizeSubtitle => '選擇每個螢幕的字體和文字類型';

  @override
  String get fontCustomizeSection => '按螢幕定制';

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
  String get fontRolePageTitle => '頁面標題';

  @override
  String get fontRoleSectionHeader => '節標題';

  @override
  String get fontRolePrimary => '主要文本';

  @override
  String get fontRoleSecondary => '次要文本';

  @override
  String get fontRoleButton => '按鈕';

  @override
  String get fontRoleDialKey => '撥號盤按鍵';

  @override
  String get fontSurfaceRecents => '最近的內容';

  @override
  String get fontSurfaceContacts => '聯絡方式';

  @override
  String get fontSurfaceSettings => '設定';

  @override
  String get fontSurfaceDialpad => '撥號盤';

  @override
  String get fontSurfaceShell => '導航';

  @override
  String get fontSurfaceDefaultDialer => '預設撥號提示';

  @override
  String get fontSurfaceFavourites => '收藏夾';

  @override
  String get fontSurfaceBlocked => '封鎖的號碼';

  @override
  String get fontSurfaceContactDetail => '聯絡方式';

  @override
  String get fontSurfaceCallHistory => '通話記錄';

  @override
  String get fontSurfaceSheets => '床單和拾取器';

  @override
  String get fontSurfaceInCall => '通話中螢幕';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — 整個應用程式';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — 僅標題';
  }

  @override
  String get fontSubtitleCustomize => '每個螢幕自訂';

  @override
  String get background => '背景';

  @override
  String get accent => '口音';

  @override
  String get lightBackground => '淺色背景';

  @override
  String get lightAccent => '淺色口音';

  @override
  String get darkBackground => '深色背景';

  @override
  String get darkAccent => '深色口音';

  @override
  String get callBackground => '來電背景';

  @override
  String get appIcon => '應用程式圖標';

  @override
  String get answerMethod => '回答方法';

  @override
  String get answerSlide => '滑動即可回答';

  @override
  String get answerSlideSubtitle => '在欄上向左/向右滑動，就像 Google Phone 一樣';

  @override
  String get answerButton => '按鈕點擊';

  @override
  String get answerButtonSubtitle => '點擊接聽或拒絕按鈕';

  @override
  String get answerHuawei => '華為風格';

  @override
  String get answerHuaweiSubtitle => '將圓圈拖至綠色電話即可接聽';

  @override
  String get answerHuaweiTileSubtitle => '華為 — 拖曳至綠色/紅色';

  @override
  String get calling => '呼喚';

  @override
  String get defaultSim => '預設SIM卡';

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
  String get askEveryTime => '每次都問';

  @override
  String get askEveryTimeSubtitle => '每次通話前顯示 SIM 卡選擇器';

  @override
  String simSlot(int slot) {
    return '卡$slot';
  }

  @override
  String get noSimCardsFound => '找不到 SIM 卡';

  @override
  String couldNotLoadSims(String error) {
    return '無法加載 SIM 卡：$error';
  }

  @override
  String get allFavourites => '所有收藏夾';

  @override
  String get allFavouritesSubtitle => '對聯絡人重新排序、刪除和新增';

  @override
  String get blockedNumbers => '封鎖的號碼';

  @override
  String get blockedNumbersSubtitle => '查看和解鎖號碼';

  @override
  String get soundsAndVibration => '聲音和振動';

  @override
  String get soundsAndVibrationSubtitle => '鈴聲、震動、撥號盤音';

  @override
  String couldNotOpenSettings(String error) {
    return '無法開啟設定：$error';
  }

  @override
  String get frequentlyContacted => '經常聯繫';

  @override
  String get numberOfRecords => '記錄數';

  @override
  String get timePeriod => '時段';

  @override
  String get periodLast24Hours => '過去 24 小時';

  @override
  String get periodLast24HoursSubtitle => '過去一天的來電';

  @override
  String get periodLast7Days => '過去 7 天';

  @override
  String get periodLast7DaysSubtitle => '過去一週的來電';

  @override
  String get periodLast30Days => '過去 30 天';

  @override
  String get periodLast30DaysSubtitle => '過去一個月的來電';

  @override
  String get periodLast12Months => '過去 12 個月';

  @override
  String get periodLast12MonthsSubtitle => '去年的來電';

  @override
  String get periodAllTime => '所有時間';

  @override
  String get periodAllTimeSubtitle => '完整通話記錄';

  @override
  String get frequentMaxOff => '離開';

  @override
  String frequentMaxCount(int count) {
    return '$count 聯絡人';
  }

  @override
  String get torchBlink => '火炬閃爍';

  @override
  String get torchIncomingCall => '來電火炬';

  @override
  String get torchOutgoingCall => '去電火炬';

  @override
  String get torchOngoingCall => '持續通話火炬';

  @override
  String get torchIncomingInterval => '傳入眨眼間隔';

  @override
  String get torchOutgoingInterval => '傳出眨眼間隔';

  @override
  String get torchOngoingInterval => '持續眨眼間隔';

  @override
  String get torchOff => '離開';

  @override
  String get torchOffIncomingSubtitle => '響鈴時沒有手電筒';

  @override
  String get torchOffOutgoingSubtitle => '撥號時沒有手電筒';

  @override
  String get torchOffOngoingSubtitle => '通話期間沒有手電筒';

  @override
  String get torchFixedInterval => '固定間隔';

  @override
  String get torchFixedIntervalSubtitle => '以設定的速度閃爍';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds秒';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds 眨眼';
  }

  @override
  String get flashlightUnavailable => '手電筒在此設備上不可用';

  @override
  String get glyphLights => '字形燈';

  @override
  String get glyphCallingAnimation => '字形呼叫動畫';

  @override
  String get glyphOngoingAnimation => 'Glyph 正在進行的通話動畫';

  @override
  String get glyphNone => '沒有任何';

  @override
  String get glyphNoneOutgoingSubtitle => '停用撥出呼叫的字形指示燈';

  @override
  String get glyphNoneInCallSubtitle => '通話時停用字形燈';

  @override
  String get glyphBreathProgress => '呼吸與進步';

  @override
  String get glyphBreathProgressSubtitle => '當線路充滿時燈光會呼吸超過 65 秒';

  @override
  String get glyphAccumulate => '累積';

  @override
  String get glyphAccumulateSubtitle => '在燈光 C1-C4 上累積動畫';

  @override
  String get glyphSingle => '單身的';

  @override
  String get glyphSingleSubtitle => '單燈穿過 C1-C4';

  @override
  String get glyphBreath => '氣息';

  @override
  String get glyphBreathSubtitle => '選擇燈光和速度';

  @override
  String get glyphSteady => '穩定的';

  @override
  String get glyphSteadySubtitle => '選定的燈保持亮起';

  @override
  String get breathSettings => '呼吸設定';

  @override
  String get activeLights => '主動燈光';

  @override
  String lightsCount(int count) {
    return '$count燈';
  }

  @override
  String get speedSettings => '速度設定';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms 延遲';
  }

  @override
  String get durationAndSpeed => '持續時間和速度';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s 持續時間，${interval}ms 間隔';
  }

  @override
  String get cancel => '取消';

  @override
  String get done => '完畢';

  @override
  String get save => '節省';

  @override
  String get block => '堵塞';

  @override
  String get delete => '刪除';

  @override
  String get recents => '最近的內容';

  @override
  String get contacts => '聯絡方式';

  @override
  String get hideFavouritesOnRecents => '隱藏最近的收藏夾';

  @override
  String get showFavouritesOnRecents => '在最近的內容中顯示收藏夾';

  @override
  String get ongoingCall => '正在進行的通話';

  @override
  String get setAsDefaultTitle => '設定為\n預設值';

  @override
  String get setAsDefaultBody =>
      '要使用 Nothing Dialer，必須將其設定為您的預設手機應用程式。這允許您管理呼叫、查看歷史記錄和使用字形動畫。';

  @override
  String get setAsDefaultButton => '設定為預設值';

  @override
  String get nothingDialerBrand => '沒有撥號器 1';

  @override
  String get favourites => '收藏夾';

  @override
  String get addFavourite => '新增收藏夾';

  @override
  String get favouritesDrawerHint =>
      '使用選單新增聯絡人。點擊抽屜外部或將其關閉。從聯絡人的詳細資料中為聯絡人加註星標，或長按「最近通話」中的通話。';

  @override
  String get menu => '選單';

  @override
  String get noFavouritesYet => '還沒有收藏。\n開啟選單新增聯絡人或給聯絡人加註星標。';

  @override
  String get contactsPermissionNeeded => '需要聯絡人權限';

  @override
  String get chooseContact => '選擇聯絡人';

  @override
  String get noPhone => '沒有電話';

  @override
  String get pickNumber => '選號';

  @override
  String get contactHasNoPhone => '該聯絡人沒有電話號碼';

  @override
  String get blockNumber => '區塊編號';

  @override
  String get enterPhoneNumber => '輸入電話號碼';

  @override
  String unblockedDisplay(String display) {
    return '暢通無阻$display';
  }

  @override
  String get couldNotUnblockNumber => '無法解鎖號碼';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked 被阻止 • $matched 匹配';
  }

  @override
  String get contactsPermissionMissing => '缺少聯絡人權限。點擊即可修復。';

  @override
  String get noBlockedNumbers => '沒有被封鎖的號碼';

  @override
  String get unknownContact => '未知聯繫人';

  @override
  String get unblock => '解鎖';

  @override
  String get permissionNeeded => '需要許可';

  @override
  String get grantPhonePermission => '授予手機查看您的通話記錄的權限。';

  @override
  String get grantContactsPermission => '授予聯絡人查看您的通訊錄的權限。';

  @override
  String get openSettings => '開啟設定';

  @override
  String get tryAgain => '再試一次';

  @override
  String get couldNotLoadContacts => '無法載入聯絡人';

  @override
  String get contactsLoadError => '讀取您的通訊錄時出現問題。';

  @override
  String get noContactsFound => '未找到聯絡人';

  @override
  String get contactsEmptySubtitle => '您裝置上的聯絡人將顯示在此。';

  @override
  String get searchContacts => '搜尋聯絡人...';

  @override
  String get searchRecentCalls => '搜尋最近通話';

  @override
  String get fromContacts => '來自聯絡人';

  @override
  String get recentsSearchSection => '最近搜尋';

  @override
  String get recentsSearchShowContacts => '在搜尋中顯示聯絡人';

  @override
  String get recentsSearchShowContactsSubtitle =>
      '搜尋「最近通話」時，也會在通話記錄結果下方顯示通訊錄中的符合人員。';

  @override
  String get voiceSearch => '語音搜尋';

  @override
  String get createNewContact => '建立新聯絡人';

  @override
  String callError(String error) {
    return '呼叫錯誤：$error';
  }

  @override
  String get noRecentCalls => '最近沒有通話';

  @override
  String get callHistoryEmpty => '您的通話記錄將會顯示在這裡。';

  @override
  String get loadMore => '加載更多';

  @override
  String get frequentlyContactedHeader => '經常聯繫';

  @override
  String get recentHistory => '最近的歷史';

  @override
  String get noFavouritesRecentsHint => '還沒有收藏。為聯絡人加註星標、長按呼叫或使用「收藏夾」標籤。';

  @override
  String get copyNumber => '拷貝數';

  @override
  String get editNumberBeforeCall => '通話前編輯號碼';

  @override
  String get removeFromFavourites => '從收藏夾中刪除';

  @override
  String get addToFavourites => '加入收藏夾';

  @override
  String get blockNumberQuestion => '區塊號？';

  @override
  String blockNumberConfirm(String number) {
    return '您將不會再收到來自$number的電話或簡訊。';
  }

  @override
  String get blocked => '被阻止';

  @override
  String get couldNotBlock => '無法阻止';

  @override
  String get contactNotOnDevice => '此設備上未儲存聯絡人資訊';

  @override
  String get unblocked => '暢通';

  @override
  String get numberCopied => '複製數量';

  @override
  String get showLess => '顯示較少';

  @override
  String get showAllTimes => '顯示所有時間';

  @override
  String mostRecent(String time) {
    return '最近·$time';
  }

  @override
  String get videoCall => '視訊通話';

  @override
  String get couldNotPlaceVideoCall => '無法發起視訊通話';

  @override
  String get message => '訊息';

  @override
  String get couldNotOpenMessaging => '無法打開訊息應用程式';

  @override
  String get history => '歷史';

  @override
  String get viewContact => '查看聯絡方式';

  @override
  String get addToContact => '新增聯絡人';

  @override
  String get callTypeMissed => '錯過了';

  @override
  String get callTypeRejected => '被拒絕';

  @override
  String get callTypeIncoming => '傳入';

  @override
  String get callTypeOutgoing => '傳出';

  @override
  String get today => '今天';

  @override
  String get yesterday => '昨天';

  @override
  String get justNow => '現在';

  @override
  String minutesAgo(int count) {
    return '$count 分鐘前';
  }

  @override
  String hoursAgo(int count) {
    return '$count 小時前';
  }

  @override
  String get filterAll => '全部';

  @override
  String get filterMissed => '錯過了';

  @override
  String get filterContacts => '聯絡方式';

  @override
  String get filterNonContacts => '非接觸式';

  @override
  String get iconUpdated => '圖標已更新。您的主螢幕可能需要一些時間才能刷新。';

  @override
  String get iconSavedRelease => '選擇已儲存。主畫面圖示在發布版本中更新。';

  @override
  String couldNotChangeIcon(String error) {
    return '無法更改圖示：$error';
  }

  @override
  String get launcherClassicBlack => '經典款（黑色）';

  @override
  String get launcherLight => '光';

  @override
  String get launcherNothingRed => '沒有什麼紅色的';

  @override
  String get launcherDarkGrey => '深灰色';

  @override
  String get launcherCream => '奶油';

  @override
  String get launcherRetroPhone => '復古手機';

  @override
  String get launcherRetroPhoneLight => '復古手機（淺色）';

  @override
  String get voiceSearchUnavailable => '此設備不支援語音搜尋。';

  @override
  String voiceSearchFailed(String error) {
    return '語音搜尋失敗：$error';
  }

  @override
  String get customColor => '風俗';

  @override
  String get selectColor => '選擇顏色';

  @override
  String get reset => '重置';

  @override
  String get simPickerTitle => '選擇SIM卡';

  @override
  String get simChooseForCall => '選擇用於此通話的 SIM 卡';

  @override
  String get defaultSimAsk => '每次都問';

  @override
  String defaultSimFixed(int slot) {
    return '卡$slot';
  }

  @override
  String get contactDetails => '聯絡方式';

  @override
  String get call => '稱呼';

  @override
  String get share => '分享';

  @override
  String get favourite => '最喜歡的';

  @override
  String get unfavourite => '不喜歡';

  @override
  String get blockContact => '塊接觸';

  @override
  String get unblockContact => '取消阻止聯絡人';

  @override
  String get deleteContact => '刪除聯絡人';

  @override
  String get phone => '電話';

  @override
  String get email => '電子郵件';

  @override
  String get ringtone => '鈴聲';

  @override
  String get defaultRingtone => '預設';

  @override
  String get simForContact => '此聯絡人的 SIM 卡';

  @override
  String get callHistoryTitle => '通話記錄';

  @override
  String get noCallsWithNumber => '沒有撥打此號碼的電話';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '$minutes米$seconds秒';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => '字形動畫';

  @override
  String get inCallGlyphAnimationStyle => '通話中字形動畫';

  @override
  String get recordsOff => '離開';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => '預設SIM卡';

  @override
  String get nothingPhoneOnly => '沒有什麼只有電話';

  @override
  String get nothingPhoneOnlySubtitle => 'Glyph 功能需要 Nothing Phone';

  @override
  String get custom => '風俗';

  @override
  String presetColorHex(String hex) {
    return '預設·$hex';
  }

  @override
  String customColorHex(String hex) {
    return '客製化 · $hex';
  }

  @override
  String get oneContact => '1 個聯絡人';

  @override
  String upToContacts(int count) {
    return '最多 $count 個聯絡人';
  }

  @override
  String get answerButtonTapSubtitle => '點擊按鈕即可接聽';

  @override
  String get filterCalls => '過濾來電';

  @override
  String get filterTooltip => '篩選';

  @override
  String get settingsTooltip => '設定';

  @override
  String get filterAllSubtitle => '完整通話記錄';

  @override
  String get filterMissedSubtitle => '錯過並被拒絕';

  @override
  String get filterContactsSubtitle => '與已儲存聯絡人相符的通話';

  @override
  String get filterNonContactsSubtitle => '地址簿中沒有的號碼';

  @override
  String ongoingCallWithDetail(String detail) {
    return '通話中：$detail';
  }

  @override
  String get defaultSimForCalls => '用於通話的預設 SIM 卡';

  @override
  String get blinkInterval => '眨眼間隔';

  @override
  String get close => '關閉';

  @override
  String get frequentlyContactedInfoBody =>
      '根據您選擇的時間段內每個號碼的來電、去電、未接或拒絕來電數量，在「最近通話」標籤頂部顯示您最常撥打的電話號碼。\n\n記錄數：設定為 0 以關閉此功能。使用 1–20 來顯示許多重要聯絡人。\n\n僅當至少顯示一名聯絡人時，時段才適用。';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count燈，${ms}ms速度';
  }

  @override
  String get deleteContactQuestion => '刪除聯絡方式？';

  @override
  String get deleteContactBody => '該聯絡人將從您的裝置中永久刪除。';

  @override
  String get blockContactQuestion => '阻止聯繫？';

  @override
  String get unblockContactQuestion => '解除封鎖聯絡方式？';

  @override
  String get blockContactBody => '您將不再收到該聯絡人的電話或簡訊。';

  @override
  String get unblockContactBody => '您將開始接收來自該聯絡人的電話和簡訊。';

  @override
  String get contactBlocked => '聯絡方式被封鎖';

  @override
  String get contactUnblocked => '聯絡方式暢通無阻';

  @override
  String get noPhoneNumbersToBlock => '沒有要封鎖的電話號碼';

  @override
  String get simSameAsSystem => '與系統相同';

  @override
  String get simSameAsSystemSubtitle => '遵循設定中的預設 SIM 卡';

  @override
  String get simAskEveryTimeForContact => '始終顯示該聯絡人的 SIM 卡選擇器';

  @override
  String get ringtoneSetForContact => '為此聯絡人全域設定的鈴聲';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return '選擇鈴聲失敗：$error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return '錯誤：$error';
  }

  @override
  String get noCallHistoryFound => '未找到通話記錄';

  @override
  String get speedDialVoicemail => '快速撥號：語音信箱';

  @override
  String shareContactSubject(String name) {
    return '聯絡方式：$name';
  }

  @override
  String get contactInfo => '聯絡方式';

  @override
  String get dontAskAgainSim => '不要再問';

  @override
  String get simDontAskAgainSubtitle => '使用此 SIM 卡作為預設值（在「設定」中進行更改）';

  @override
  String get addContact => '新增聯絡人';

  @override
  String get createContact => '創建聯絡人';

  @override
  String get paste => '貼上';

  @override
  String get clear => '清除';

  @override
  String get returnToCall => '返回通話';

  @override
  String get numberOfRecordsTitle => '記錄數';

  @override
  String get recordsPickerSubtitle => '顯示多少個經常聯繫的條目（0 = 關閉）';

  @override
  String get torchInfoTitle => '火炬閃爍';

  @override
  String get torchInfoBody => '在來電、去電或正在進行的通話期間閃爍相機閃光燈。獨立於字形燈。';

  @override
  String get glyphMapTitle => '字形佈局';

  @override
  String get glyphMapBody => '無 電話 1 字形 LED 區域。傳出和通話動畫使用這些通道。';

  @override
  String get answerMethodTitle => '回答方法';

  @override
  String get glyphOutgoingCallStyleTitle => '撥出電話風格';

  @override
  String get glyphInCallAnimationTitle => '字形通話動畫';

  @override
  String get themePickerTitle => '主題';

  @override
  String get torchIncomingTitle => '來電火炬';

  @override
  String get torchOutgoingTitle => '去電火炬';

  @override
  String get torchOngoingTitle => '持續通話火炬';

  @override
  String get timePeriodTitle => '時段';

  @override
  String get ok => '好的';

  @override
  String get confirmDeleteCall => '從歷史記錄中刪除此通話嗎？';

  @override
  String get confirmDeleteAllCalls => '刪除該號碼的所有通話？';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => '發送訊息';

  @override
  String get addToExistingContactAction => '新增至聯絡人';

  @override
  String get mobileLabel => '移動的';

  @override
  String get callingSimForContactTitle => '撥打此聯絡人的 SIM 卡';

  @override
  String get contactSettings => '聯絡人設定';

  @override
  String get setCallingSim => '設定通話 SIM 卡';

  @override
  String get contactRingtone => '聯絡鈴聲';

  @override
  String get shareContact => '分享聯絡方式';

  @override
  String get blockNumbers => '區塊編號';

  @override
  String get unblockNumbers => '解鎖號碼';

  @override
  String get connectedApps => '連接的應用程式';

  @override
  String get simNotSet => '未設定';

  @override
  String get ringtoneDefault => '預設';

  @override
  String get customRingtone => '風俗';

  @override
  String get aboutSection => '關於';

  @override
  String get aboutFeedbackSection => '關於和回饋';

  @override
  String get aboutDescription => '沒有什麼 Dialer 是開源的。如果您是開發人員，歡迎您探索程式碼並做出貢獻。';

  @override
  String get aboutViewSource => '在 GitHub 上查看';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => '無法開啟連結';

  @override
  String get reviewSection => '審查';

  @override
  String get reviewDescription => '不喜歡撥號器嗎？您在 Google Play 上的評分可以幫助其他人找到該應用程式。';

  @override
  String get reviewRateOnPlay => '在 Google Play 上評分';

  @override
  String get reviewRateOnPlaySubtitle => '無需離開應用程式即可留下評分';

  @override
  String get reviewCouldNotOpen => '無法開啟 Google Play';

  @override
  String get breathSpeed => '呼吸速度';

  @override
  String get breathSpeedBlinkHint => '較低=眨眼，較高=緩慢呼吸';

  @override
  String get speedSliderHint => '較低=較快，較高=較慢';

  @override
  String get swatchDefault => '預設';

  @override
  String get customAccentColorPicker => '自訂強調色';

  @override
  String get customLightBackgroundPicker => '自訂淺色背景';

  @override
  String get customDarkBackgroundPicker => '自訂深色背景';

  @override
  String get customCallBackgroundPicker => '自訂通話背景';

  @override
  String get ongoingCallStyleTitle => '持續通話風格';

  @override
  String get glyphMapUnavailable => '字形圖不可用';

  @override
  String get animationDelayRange => '動畫延遲（1 秒 - 10 秒）';

  @override
  String get animationDelayRangeSingle => '動畫延遲（0.1s - 10s）';

  @override
  String get inCallMute => '沉默的';

  @override
  String get inCallKeypad => '鍵盤';

  @override
  String get inCallSpeaker => '揚聲器';

  @override
  String get inCallMore => '更多的';

  @override
  String get inCallBluetooth => '藍牙';

  @override
  String get inCallPhone => '電話';

  @override
  String get inCallAddCall => '新增通話';

  @override
  String get inCallChangeSim => '更換SIM卡';

  @override
  String get inCallDecline => '衰退';

  @override
  String get inCallAnswer => '回答';

  @override
  String get inCallMessage => '訊息';

  @override
  String get inCallCalling => '呼叫…';

  @override
  String get inCallIncoming => '來電';

  @override
  String get inCallSelectSim => '選擇SIM卡...';

  @override
  String get inCallSwitchingSim => '切換 SIM 卡...';

  @override
  String get inCallCallEnded => '通話結束';

  @override
  String inCallCallingVia(String sim) {
    return '透過 $sim 撥打';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return '透過 <b>$sim</b> 撥打';
  }

  @override
  String get inCallChooseSim => '選擇用於此通話的 SIM 卡';

  @override
  String get inCallDragAnswerDecline => '向右拖曳接聽·向左拖曳拒絕';

  @override
  String inCallMobileNumber(String number) {
    return '手機$number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label（當前）';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return '透過 <b>$sim</b> 撥打';
  }

  @override
  String get inCallCallFrom => '來電來自';

  @override
  String get inCallUnknown => '未知';

  @override
  String get selectContactRingtone => '選擇聯絡人鈴聲';

  @override
  String get speakToSearchPrompt => '說話進行搜索';

  @override
  String get phonePermissionRequired => '需要電話許可';

  @override
  String callFailed(String error) {
    return '通話失敗：$error';
  }

  @override
  String get callPermissionDenied => '呼叫權限被拒絕';

  @override
  String get alreadyDefaultDialer => '已設定為預設撥號器';

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
