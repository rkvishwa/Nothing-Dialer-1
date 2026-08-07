// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Nada discador';

  @override
  String get settings => 'Configurações';

  @override
  String get settingsSearchHint => 'Configurações de pesquisa';

  @override
  String get settingsSearchNoResults => 'Nenhuma configuração encontrada';

  @override
  String get general => 'Em geral';

  @override
  String get theme => 'Tema';

  @override
  String get themeSystemDefault => 'Padrão do sistema';

  @override
  String get themeLight => 'Luz';

  @override
  String get themeDark => 'Escuro';

  @override
  String get themeFollowSystem => 'Siga as configurações do sistema';

  @override
  String get themeAlwaysLight => 'Sempre use tema claro';

  @override
  String get themeAlwaysDark => 'Sempre use tema escuro';

  @override
  String get language => 'Linguagem';

  @override
  String get languageDeviceDefault => 'Padrão do dispositivo';

  @override
  String get languagePickerTitle => 'Linguagem';

  @override
  String get languageSearchHint => 'Idiomas de pesquisa';

  @override
  String get font => 'Fonte';

  @override
  String get fontSystem => 'Padrão do sistema';

  @override
  String get fontNdot => 'Nada (NDot)';

  @override
  String get fontSerif => 'Robô Serif';

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
      'Falha no download da fonte. Verifique sua conexão e tente novamente.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Fonte';

  @override
  String get fontPreviewSample => 'Nada discador';

  @override
  String get fontAppWide => 'Fonte do aplicativo';

  @override
  String get fontApplyTo => 'Candidatar-se a';

  @override
  String get fontApplyEntireApp => 'Aplicativo inteiro';

  @override
  String get fontApplyEntireAppSubtitle =>
      'A mesma fonte em todos os lugares, inclusive na chamada';

  @override
  String get fontApplyTitlesOnly => 'Títulos e cabeçalhos';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Somente títulos grandes e cabeçalhos de seção';

  @override
  String get fontApplyCustomize => 'Personalizar';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Escolha a fonte por tela e tipo de texto';

  @override
  String get fontCustomizeSection => 'Personalizar por tela';

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
  String get fontRolePageTitle => 'Título da página';

  @override
  String get fontRoleSectionHeader => 'Cabeçalho da seção';

  @override
  String get fontRolePrimary => 'Texto principal';

  @override
  String get fontRoleSecondary => 'Texto secundário';

  @override
  String get fontRoleButton => 'Botões';

  @override
  String get fontRoleDialKey => 'Teclas do teclado';

  @override
  String get fontSurfaceRecents => 'Recentes';

  @override
  String get fontSurfaceContacts => 'Contatos';

  @override
  String get fontSurfaceSettings => 'Configurações';

  @override
  String get fontSurfaceDialpad => 'Teclado de discagem';

  @override
  String get fontSurfaceShell => 'Navegação';

  @override
  String get fontSurfaceDefaultDialer => 'Prompt de discador padrão';

  @override
  String get fontSurfaceFavourites => 'Favoritos';

  @override
  String get fontSurfaceBlocked => 'Números bloqueados';

  @override
  String get fontSurfaceContactDetail => 'Detalhes de contato';

  @override
  String get fontSurfaceCallHistory => 'Histórico de chamadas';

  @override
  String get fontSurfaceSheets => 'Planilhas e seletores';

  @override
  String get fontSurfaceInCall => 'Tela de chamada';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — aplicativo inteiro';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — apenas títulos';
  }

  @override
  String get fontSubtitleCustomize => 'Personalizado por tela';

  @override
  String get background => 'Fundo';

  @override
  String get accent => 'Sotaque';

  @override
  String get lightBackground => 'Fundo claro';

  @override
  String get lightAccent => 'Sotaque leve';

  @override
  String get darkBackground => 'Fundo escuro';

  @override
  String get darkAccent => 'Sotaque escuro';

  @override
  String get callBackground => 'Plano de fundo da chamada';

  @override
  String get appIcon => 'Ícone do aplicativo';

  @override
  String get answerMethod => 'Método de resposta';

  @override
  String get answerSlide => 'Deslize para responder';

  @override
  String get answerSlideSubtitle =>
      'Deslize para a esquerda/direita na barra, como o Google Phone';

  @override
  String get answerButton => 'Toque no botão';

  @override
  String get answerButtonSubtitle => 'Toque nos botões atender ou recusar';

  @override
  String get answerHuawei => 'Estilo Huawei';

  @override
  String get answerHuaweiSubtitle =>
      'Arraste o círculo até o telefone verde para atender';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei – arraste para verde/vermelho';

  @override
  String get calling => 'Chamando';

  @override
  String get defaultSim => 'SIM padrão';

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
  String get askEveryTime => 'Pergunte sempre';

  @override
  String get askEveryTimeSubtitle =>
      'Mostrar seletor de SIM antes de cada chamada';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Nenhum cartão SIM encontrado';

  @override
  String couldNotLoadSims(String error) {
    return 'Não foi possível carregar os SIMs: $error';
  }

  @override
  String get allFavourites => 'Todos os favoritos';

  @override
  String get allFavouritesSubtitle => 'Reordenar, remover e adicionar contatos';

  @override
  String get blockedNumbers => 'Números bloqueados';

  @override
  String get blockedNumbersSubtitle => 'Ver e desbloquear números';

  @override
  String get soundsAndVibration => 'Sons e vibração';

  @override
  String get soundsAndVibrationSubtitle =>
      'Toque, vibração, tons do teclado de discagem';

  @override
  String couldNotOpenSettings(String error) {
    return 'Não foi possível abrir as configurações: $error';
  }

  @override
  String get frequentlyContacted => 'Contactado com frequência';

  @override
  String get numberOfRecords => 'Número de registros';

  @override
  String get timePeriod => 'Período de tempo';

  @override
  String get periodLast24Hours => 'Últimas 24 horas';

  @override
  String get periodLast24HoursSubtitle => 'Chamadas do dia anterior';

  @override
  String get periodLast7Days => 'Últimos 7 dias';

  @override
  String get periodLast7DaysSubtitle => 'Chamadas da semana passada';

  @override
  String get periodLast30Days => 'Últimos 30 dias';

  @override
  String get periodLast30DaysSubtitle => 'Chamadas do mês passado';

  @override
  String get periodLast12Months => 'Últimos 12 meses';

  @override
  String get periodLast12MonthsSubtitle => 'Chamadas do ano passado';

  @override
  String get periodAllTime => 'Todo o tempo';

  @override
  String get periodAllTimeSubtitle => 'Todo o histórico de chamadas';

  @override
  String get frequentMaxOff => 'Desligado';

  @override
  String frequentMaxCount(int count) {
    return '$count contatos';
  }

  @override
  String get torchBlink => 'Piscar da tocha';

  @override
  String get torchIncomingCall => 'Lanterna de chamada recebida';

  @override
  String get torchOutgoingCall => 'Tocha de chamada de saída';

  @override
  String get torchOngoingCall => 'Tocha de chamada em andamento';

  @override
  String get torchIncomingInterval => 'Intervalo de intermitência de entrada';

  @override
  String get torchOutgoingInterval => 'Intervalo de intermitência de saída';

  @override
  String get torchOngoingInterval => 'Intervalo de intermitência contínuo';

  @override
  String get torchOff => 'Desligado';

  @override
  String get torchOffIncomingSubtitle => 'Nenhuma tocha enquanto toca';

  @override
  String get torchOffOutgoingSubtitle => 'Sem tocha durante a discagem';

  @override
  String get torchOffOngoingSubtitle => 'Nenhuma tocha durante a chamada ativa';

  @override
  String get torchFixedInterval => 'Intervalo fixo';

  @override
  String get torchFixedIntervalSubtitle => 'Pisque a uma velocidade definida';

  @override
  String torchIntervalSeconds(String seconds) {
    return '${seconds}s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds pisca';
  }

  @override
  String get flashlightUnavailable =>
      'Lanterna não disponível neste dispositivo';

  @override
  String get glyphLights => 'Luzes de glifo';

  @override
  String get glyphCallingAnimation => 'Animação de chamada de glifo';

  @override
  String get glyphOngoingAnimation => 'Animação de chamada contínua de glifo';

  @override
  String get glyphNone => 'Nenhum';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Desative as luzes Glyph para chamadas efetuadas';

  @override
  String get glyphNoneInCallSubtitle =>
      'Desative as luzes Glyph enquanto estiver de plantão';

  @override
  String get glyphBreathProgress => 'Respiração e Progresso';

  @override
  String get glyphBreathProgressSubtitle =>
      'As luzes respiram enquanto a linha enche ao longo dos 65s';

  @override
  String get glyphAccumulate => 'Acumular';

  @override
  String get glyphAccumulateSubtitle => 'Acumulando animação nas luzes C1-C4';

  @override
  String get glyphSingle => 'Solteiro';

  @override
  String get glyphSingleSubtitle => 'Luz única movendo-se através de C1-C4';

  @override
  String get glyphBreath => 'Respiração';

  @override
  String get glyphBreathSubtitle => 'Escolha luzes e velocidade';

  @override
  String get glyphSteady => 'Estável';

  @override
  String get glyphSteadySubtitle => 'As luzes selecionadas permanecem acesas';

  @override
  String get breathSettings => 'Configurações de respiração';

  @override
  String get activeLights => 'Luzes ativas';

  @override
  String lightsCount(int count) {
    return '$count luzes';
  }

  @override
  String get speedSettings => 'Configurações de velocidade';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms de atraso';
  }

  @override
  String get durationAndSpeed => 'Duração e velocidade';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return 'Duração de ${duration}s, intervalo de ${interval}ms';
  }

  @override
  String get cancel => 'Cancelar';

  @override
  String get done => 'Feito';

  @override
  String get save => 'Salvar';

  @override
  String get block => 'Bloquear';

  @override
  String get delete => 'Excluir';

  @override
  String get recents => 'Recentes';

  @override
  String get contacts => 'Contatos';

  @override
  String get hideFavouritesOnRecents => 'Ocultar favoritos em Recentes';

  @override
  String get showFavouritesOnRecents => 'Mostrar favoritos em Recentes';

  @override
  String get ongoingCall => 'Chamada em andamento';

  @override
  String get setAsDefaultTitle => 'DEFINIR COMO\nPADRÃO';

  @override
  String get setAsDefaultBody =>
      'Para usar o Nothing Dialer, ele deve ser definido como seu aplicativo de telefone padrão. Isso permite que você gerencie chamadas, visualize o histórico e use animações Glyph.';

  @override
  String get setAsDefaultButton => 'DEFINIR COMO PADRÃO';

  @override
  String get nothingDialerBrand => 'NADA DISCADOR 1';

  @override
  String get favourites => 'Favoritos';

  @override
  String get addFavourite => 'Adicionar favorito';

  @override
  String get favouritesDrawerHint =>
      'Use o menu para adicionar contatos. Toque fora da gaveta ou deslize-a para fechá-la. Marque um contato a partir de seus detalhes ou mantenha uma chamada pressionada em Recentes.';

  @override
  String get menu => 'Menu';

  @override
  String get noFavouritesYet =>
      'Ainda não há favoritos.\nAbra o menu para adicionar um ou marcar um contato com estrela.';

  @override
  String get contactsPermissionNeeded => 'Permissão de contatos necessária';

  @override
  String get chooseContact => 'Escolha o contato';

  @override
  String get noPhone => 'Sem telefone';

  @override
  String get pickNumber => 'Escolha o número';

  @override
  String get contactHasNoPhone => 'Este contato não tem número de telefone';

  @override
  String get blockNumber => 'Número do bloco';

  @override
  String get enterPhoneNumber => 'Digite o número de telefone';

  @override
  String unblockedDisplay(String display) {
    return 'Desbloqueado $display';
  }

  @override
  String get couldNotUnblockNumber => 'Não foi possível desbloquear o número';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked bloqueado • $matched correspondido';
  }

  @override
  String get contactsPermissionMissing =>
      'Permissão de contatos ausente. Toque para corrigir.';

  @override
  String get noBlockedNumbers => 'Nenhum número bloqueado';

  @override
  String get unknownContact => 'Contato desconhecido';

  @override
  String get unblock => 'Desbloquear';

  @override
  String get permissionNeeded => 'Permissão necessária';

  @override
  String get grantPhonePermission =>
      'Conceda permissão ao telefone para ver seu histórico de chamadas.';

  @override
  String get grantContactsPermission =>
      'Conceda permissão aos contatos para ver seu catálogo de endereços.';

  @override
  String get openSettings => 'Abra Configurações';

  @override
  String get tryAgain => 'Tente novamente';

  @override
  String get couldNotLoadContacts => 'Não foi possível carregar os contatos';

  @override
  String get contactsLoadError => 'Algo deu errado ao ler sua agenda.';

  @override
  String get noContactsFound => 'Nenhum contato encontrado';

  @override
  String get contactsEmptySubtitle =>
      'Os contatos do seu dispositivo aparecerão aqui.';

  @override
  String get searchContacts => 'Pesquisar contatos…';

  @override
  String get searchRecentCalls => 'Pesquisar chamadas recentes';

  @override
  String get fromContacts => 'Dos contatos';

  @override
  String get recentsSearchSection => 'Pesquisa recente';

  @override
  String get recentsSearchShowContacts => 'Mostrar contatos na pesquisa';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Ao pesquisar Recentes, mostre também as pessoas correspondentes do seu catálogo de endereços abaixo dos resultados do histórico de chamadas.';

  @override
  String get voiceSearch => 'Pesquisa por voz';

  @override
  String get createNewContact => 'Criar novo contato';

  @override
  String callError(String error) {
    return 'Erro de chamada: $error';
  }

  @override
  String get noRecentCalls => 'Nenhuma chamada recente';

  @override
  String get callHistoryEmpty => 'Seu histórico de chamadas aparecerá aqui.';

  @override
  String get loadMore => 'Carregar mais';

  @override
  String get frequentlyContactedHeader => 'Contactado com frequência';

  @override
  String get recentHistory => 'História recente';

  @override
  String get noFavouritesRecentsHint =>
      'Ainda não há favoritos. Marque um contato com estrela, mantenha uma chamada pressionada ou use a guia Favoritos.';

  @override
  String get copyNumber => 'Copiar número';

  @override
  String get editNumberBeforeCall => 'Editar número antes de ligar';

  @override
  String get removeFromFavourites => 'Remover dos favoritos';

  @override
  String get addToFavourites => 'Adicionar aos favoritos';

  @override
  String get blockNumberQuestion => 'Número do bloco?';

  @override
  String blockNumberConfirm(String number) {
    return 'Você não receberá mais chamadas ou mensagens de texto de $number.';
  }

  @override
  String get blocked => 'Bloqueado';

  @override
  String get couldNotBlock => 'Não foi possível bloquear';

  @override
  String get contactNotOnDevice => 'Contato não salvo neste dispositivo';

  @override
  String get unblocked => 'Desbloqueado';

  @override
  String get numberCopied => 'Número copiado';

  @override
  String get showLess => 'Mostrar menos';

  @override
  String get showAllTimes => 'Mostrar todos os horários';

  @override
  String mostRecent(String time) {
    return 'Mais recentes · $time';
  }

  @override
  String get videoCall => 'Videochamada';

  @override
  String get couldNotPlaceVideoCall => 'Não foi possível fazer videochamada';

  @override
  String get message => 'Mensagem';

  @override
  String get couldNotOpenMessaging =>
      'Não foi possível abrir o aplicativo de mensagens';

  @override
  String get history => 'História';

  @override
  String get viewContact => 'Ver contato';

  @override
  String get addToContact => 'Adicionar ao contato';

  @override
  String get callTypeMissed => 'Perdido';

  @override
  String get callTypeRejected => 'Rejeitado';

  @override
  String get callTypeIncoming => 'Entrada';

  @override
  String get callTypeOutgoing => 'Extrovertido';

  @override
  String get today => 'Hoje';

  @override
  String get yesterday => 'Ontem';

  @override
  String get justNow => 'Agora mesmo';

  @override
  String minutesAgo(int count) {
    return '$count minutos atrás';
  }

  @override
  String hoursAgo(int count) {
    return '$count horas atrás';
  }

  @override
  String get filterAll => 'Todos';

  @override
  String get filterMissed => 'Perdido';

  @override
  String get filterContacts => 'Contatos';

  @override
  String get filterNonContacts => 'Não-contatos';

  @override
  String get iconUpdated =>
      'Ícone atualizado. Sua tela inicial pode demorar um pouco para atualizar.';

  @override
  String get iconSavedRelease =>
      'Escolha salva. O ícone da tela inicial é atualizado nas versões de lançamento.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Não foi possível alterar o ícone: $error';
  }

  @override
  String get launcherClassicBlack => 'Clássico (preto)';

  @override
  String get launcherLight => 'Luz';

  @override
  String get launcherNothingRed => 'Nada vermelho';

  @override
  String get launcherDarkGrey => 'Cinza escuro';

  @override
  String get launcherCream => 'Creme';

  @override
  String get launcherRetroPhone => 'Telefone retrô';

  @override
  String get launcherRetroPhoneLight => 'Telefone retrô (leve)';

  @override
  String get voiceSearchUnavailable =>
      'A pesquisa por voz não está disponível neste dispositivo.';

  @override
  String voiceSearchFailed(String error) {
    return 'Falha na pesquisa por voz: $error';
  }

  @override
  String get customColor => 'Personalizado';

  @override
  String get selectColor => 'Selecione a cor';

  @override
  String get reset => 'Reiniciar';

  @override
  String get simPickerTitle => 'Escolha o SIM';

  @override
  String get simChooseForCall => 'Escolha SIM para esta chamada';

  @override
  String get defaultSimAsk => 'Pergunte sempre';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Detalhes de contato';

  @override
  String get call => 'Chamar';

  @override
  String get share => 'Compartilhar';

  @override
  String get favourite => 'Favorito';

  @override
  String get unfavourite => 'Não favorito';

  @override
  String get blockContact => 'Bloquear contato';

  @override
  String get unblockContact => 'Desbloquear contato';

  @override
  String get deleteContact => 'Excluir contato';

  @override
  String get phone => 'Telefone';

  @override
  String get email => 'E-mail';

  @override
  String get ringtone => 'Toque';

  @override
  String get defaultRingtone => 'Padrão';

  @override
  String get simForContact => 'SIM para este contato';

  @override
  String get callHistoryTitle => 'Histórico de chamadas';

  @override
  String get noCallsWithNumber => 'Não há chamadas com este número';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Animação de glifo';

  @override
  String get inCallGlyphAnimationStyle => 'Animação de glifo na chamada';

  @override
  String get recordsOff => 'Desligado';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'SIM padrão';

  @override
  String get nothingPhoneOnly => 'Nada Somente telefone';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Os recursos do Glyph requerem um Nothing Phone';

  @override
  String get custom => 'Personalizado';

  @override
  String presetColorHex(String hex) {
    return 'Predefinido · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Personalizado · $hex';
  }

  @override
  String get oneContact => '1 contato';

  @override
  String upToContacts(int count) {
    return 'Até $count contatos';
  }

  @override
  String get answerButtonTapSubtitle => 'Toque no botão para responder';

  @override
  String get filterCalls => 'Filtrar chamadas';

  @override
  String get filterTooltip => 'Filtro';

  @override
  String get settingsTooltip => 'Configurações';

  @override
  String get filterAllSubtitle => 'Registro de chamadas inteiro';

  @override
  String get filterMissedSubtitle => 'Perdido e rejeitado';

  @override
  String get filterContactsSubtitle =>
      'Chamadas correspondentes a um contato salvo';

  @override
  String get filterNonContactsSubtitle => 'Números que não estão na sua agenda';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Chamada em andamento: $detail';
  }

  @override
  String get defaultSimForCalls => 'SIM padrão para chamadas';

  @override
  String get blinkInterval => 'Intervalo de piscada';

  @override
  String get close => 'Fechar';

  @override
  String get frequentlyContactedInfoBody =>
      'Mostra os números de telefone mais chamados na parte superior da guia Recentes, com base em quantas chamadas recebidas, efetuadas, perdidas ou rejeitadas você recebeu com cada número no período escolhido.\n\nNúmero de registros: defina como 0 para desligar. Use de 1 a 20 para mostrar esse número de contatos principais.\n\nO período de tempo se aplica somente quando pelo menos um contato é mostrado.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count luzes, ${ms}ms velocidade';
  }

  @override
  String get deleteContactQuestion => 'Excluir contato?';

  @override
  String get deleteContactBody =>
      'Este contato será excluído permanentemente do seu dispositivo.';

  @override
  String get blockContactQuestion => 'Bloquear contato?';

  @override
  String get unblockContactQuestion => 'Desbloquear contato?';

  @override
  String get blockContactBody =>
      'Você não receberá mais chamadas ou mensagens de texto deste contato.';

  @override
  String get unblockContactBody =>
      'Você começará a receber ligações e mensagens de texto deste contato.';

  @override
  String get contactBlocked => 'Contato bloqueado';

  @override
  String get contactUnblocked => 'Contato desbloqueado';

  @override
  String get noPhoneNumbersToBlock => 'Nenhum número de telefone para bloquear';

  @override
  String get simSameAsSystem => 'Igual ao sistema';

  @override
  String get simSameAsSystemSubtitle => 'Segue SIM padrão nas configurações';

  @override
  String get simAskEveryTimeForContact =>
      'Sempre mostrar o seletor de SIM para este contato';

  @override
  String get ringtoneSetForContact =>
      'Toque definido globalmente para este contato';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Falha ao escolher o toque: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Erro: $error';
  }

  @override
  String get noCallHistoryFound => 'Nenhum histórico de chamadas encontrado';

  @override
  String get speedDialVoicemail => 'Discagem rápida: correio de voz';

  @override
  String shareContactSubject(String name) {
    return 'Contato: $name';
  }

  @override
  String get contactInfo => 'Informações de contato';

  @override
  String get dontAskAgainSim => 'Não pergunte novamente';

  @override
  String get simDontAskAgainSubtitle =>
      'Use este SIM como padrão (alteração nas configurações)';

  @override
  String get addContact => 'Adicionar contato';

  @override
  String get createContact => 'Criar contato';

  @override
  String get paste => 'Colar';

  @override
  String get clear => 'Claro';

  @override
  String get returnToCall => 'Voltar para ligar';

  @override
  String get numberOfRecordsTitle => 'Número de registros';

  @override
  String get recordsPickerSubtitle =>
      'Quantas entradas de contato frequente mostrar (0 = desativado)';

  @override
  String get torchInfoTitle => 'Tocha piscando';

  @override
  String get torchInfoBody =>
      'Pisca o flash da câmera durante chamadas recebidas, efetuadas ou em andamento. Independente de luzes Glyph.';

  @override
  String get glyphMapTitle => 'Layout de glifo';

  @override
  String get glyphMapBody =>
      'Nada de zonas de LED Glyph do Phone 1. As animações de saída e de chamada usam esses canais.';

  @override
  String get answerMethodTitle => 'Método de resposta';

  @override
  String get glyphOutgoingCallStyleTitle => 'Estilo de chamada de saída';

  @override
  String get glyphInCallAnimationTitle => 'Animação de glifo na chamada';

  @override
  String get themePickerTitle => 'Tema';

  @override
  String get torchIncomingTitle => 'Lanterna de chamada recebida';

  @override
  String get torchOutgoingTitle => 'Tocha de chamada de saída';

  @override
  String get torchOngoingTitle => 'Tocha de chamada em andamento';

  @override
  String get timePeriodTitle => 'Período de tempo';

  @override
  String get ok => 'OK';

  @override
  String get confirmDeleteCall => 'Excluir esta chamada do histórico?';

  @override
  String get confirmDeleteAllCalls =>
      'Excluir todas as chamadas com este número?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Envie uma mensagem';

  @override
  String get addToExistingContactAction => 'Adicionar a um contato';

  @override
  String get mobileLabel => 'Móvel';

  @override
  String get callingSimForContactTitle => 'Chamando SIM para este contato';

  @override
  String get contactSettings => 'Configurações de contato';

  @override
  String get setCallingSim => 'Definir chamada do SIM';

  @override
  String get contactRingtone => 'Toque de contato';

  @override
  String get shareContact => 'Compartilhar contato';

  @override
  String get blockNumbers => 'Bloquear números';

  @override
  String get unblockNumbers => 'Desbloquear números';

  @override
  String get connectedApps => 'Aplicativos conectados';

  @override
  String get simNotSet => 'Não definido';

  @override
  String get ringtoneDefault => 'Padrão';

  @override
  String get customRingtone => 'Personalizado';

  @override
  String get aboutSection => 'Sobre';

  @override
  String get aboutFeedbackSection => 'Sobre e comentários';

  @override
  String get aboutDescription =>
      'Nada Dialer é de código aberto. Se você é um desenvolvedor, pode explorar o código e contribuir.';

  @override
  String get aboutViewSource => 'Ver no GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Não foi possível abrir o link';

  @override
  String get reviewSection => 'Análise';

  @override
  String get reviewDescription =>
      'Gostando do Nada Dialer? Sua classificação no Google Play ajuda outras pessoas a encontrar o aplicativo.';

  @override
  String get reviewRateOnPlay => 'Avalie no Google Play';

  @override
  String get reviewRateOnPlaySubtitle =>
      'Deixe uma avaliação sem sair do aplicativo';

  @override
  String get reviewCouldNotOpen => 'Não foi possível abrir o Google Play';

  @override
  String get breathSpeed => 'Velocidade da respiração';

  @override
  String get breathSpeedBlinkHint =>
      'Inferior = Piscar, Superior = Respiração Lenta';

  @override
  String get speedSliderHint => 'Inferior = mais rápido, superior = mais lento';

  @override
  String get swatchDefault => 'Padrão';

  @override
  String get customAccentColorPicker => 'Cor de destaque personalizada';

  @override
  String get customLightBackgroundPicker => 'Fundo claro personalizado';

  @override
  String get customDarkBackgroundPicker => 'Fundo escuro personalizado';

  @override
  String get customCallBackgroundPicker =>
      'Plano de fundo de chamada personalizado';

  @override
  String get ongoingCallStyleTitle => 'Estilo de chamada contínua';

  @override
  String get glyphMapUnavailable => 'Mapa de glifos indisponível';

  @override
  String get animationDelayRange => 'Atraso de animação (1s - 10s)';

  @override
  String get animationDelayRangeSingle => 'Atraso de animação (0,1s - 10s)';

  @override
  String get inCallMute => 'Mudo';

  @override
  String get inCallKeypad => 'Teclado';

  @override
  String get inCallSpeaker => 'Palestrante';

  @override
  String get inCallMore => 'Mais';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Telefone';

  @override
  String get inCallAddCall => 'Adicionar chamada';

  @override
  String get inCallChangeSim => 'Alterar cartão SIM';

  @override
  String get inCallDecline => 'Declínio';

  @override
  String get inCallAnswer => 'Responder';

  @override
  String get inCallMessage => 'Mensagem';

  @override
  String get inCallCalling => 'Chamando…';

  @override
  String get inCallIncoming => 'Chamada recebida';

  @override
  String get inCallSelectSim => 'Selecione SIM…';

  @override
  String get inCallSwitchingSim => 'Trocando SIM…';

  @override
  String get inCallCallEnded => 'Chamada encerrada';

  @override
  String inCallCallingVia(String sim) {
    return 'Ligando via $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Ligando via <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Escolha SIM para esta chamada';

  @override
  String get inCallDragAnswerDecline =>
      'Arraste para a direita para responder · Arraste para a esquerda para recusar';

  @override
  String inCallMobileNumber(String number) {
    return 'Celular $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (atual)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Ligue via <b>$sim</b> de';
  }

  @override
  String get inCallCallFrom => 'Ligar de';

  @override
  String get inCallUnknown => 'Desconhecido';

  @override
  String get selectContactRingtone => 'Selecione o toque do contato';

  @override
  String get speakToSearchPrompt => 'Fale para pesquisar';

  @override
  String get phonePermissionRequired => 'É necessária permissão de telefone';

  @override
  String callFailed(String error) {
    return 'Falha na chamada: $error';
  }

  @override
  String get callPermissionDenied => 'Permissão de chamada negada';

  @override
  String get alreadyDefaultDialer => 'Já definido como discador padrão';

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

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class AppLocalizationsPtBr extends AppLocalizationsPt {
  AppLocalizationsPtBr() : super('pt_BR');

  @override
  String get appTitle => 'Nada discador';

  @override
  String get settings => 'Configurações';

  @override
  String get settingsSearchHint => 'Configurações de pesquisa';

  @override
  String get settingsSearchNoResults => 'Nenhuma configuração encontrada';

  @override
  String get general => 'Geral';

  @override
  String get theme => 'Tema';

  @override
  String get themeSystemDefault => 'Padrão do sistema';

  @override
  String get themeLight => 'Luz';

  @override
  String get themeDark => 'Escuro';

  @override
  String get themeFollowSystem => 'Siga as configurações do sistema';

  @override
  String get themeAlwaysLight => 'Sempre use tema claro';

  @override
  String get themeAlwaysDark => 'Sempre use tema escuro';

  @override
  String get language => 'Idioma';

  @override
  String get languageDeviceDefault => 'Padrão do dispositivo';

  @override
  String get languagePickerTitle => 'Linguagem';

  @override
  String get languageSearchHint => 'Idiomas de pesquisa';

  @override
  String get font => 'Fonte';

  @override
  String get fontSystem => 'Padrão do sistema';

  @override
  String get fontNdot => 'Nada (NDot)';

  @override
  String get fontSerif => 'Robô Serif';

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
      'Falha no download da fonte. Verifique sua conexão e tente novamente.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Fonte';

  @override
  String get fontPreviewSample => 'Nada discador';

  @override
  String get fontAppWide => 'Fonte do aplicativo';

  @override
  String get fontApplyTo => 'Candidatar-se a';

  @override
  String get fontApplyEntireApp => 'Aplicativo inteiro';

  @override
  String get fontApplyEntireAppSubtitle =>
      'A mesma fonte em todos os lugares, inclusive na chamada';

  @override
  String get fontApplyTitlesOnly => 'Títulos e cabeçalhos';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Somente títulos grandes e cabeçalhos de seção';

  @override
  String get fontApplyCustomize => 'Personalizar';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Escolha a fonte por tela e tipo de texto';

  @override
  String get fontCustomizeSection => 'Personalizar por tela';

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
  String get fontRolePageTitle => 'Título da página';

  @override
  String get fontRoleSectionHeader => 'Cabeçalho da seção';

  @override
  String get fontRolePrimary => 'Texto principal';

  @override
  String get fontRoleSecondary => 'Texto secundário';

  @override
  String get fontRoleButton => 'Botões';

  @override
  String get fontRoleDialKey => 'Teclas do teclado';

  @override
  String get fontSurfaceRecents => 'Recentes';

  @override
  String get fontSurfaceContacts => 'Contatos';

  @override
  String get fontSurfaceSettings => 'Configurações';

  @override
  String get fontSurfaceDialpad => 'Teclado de discagem';

  @override
  String get fontSurfaceShell => 'Navegação';

  @override
  String get fontSurfaceDefaultDialer => 'Prompt de discador padrão';

  @override
  String get fontSurfaceFavourites => 'Favoritos';

  @override
  String get fontSurfaceBlocked => 'Números bloqueados';

  @override
  String get fontSurfaceContactDetail => 'Detalhes de contato';

  @override
  String get fontSurfaceCallHistory => 'Histórico de chamadas';

  @override
  String get fontSurfaceSheets => 'Planilhas e seletores';

  @override
  String get fontSurfaceInCall => 'Tela de chamada';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — aplicativo inteiro';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — apenas títulos';
  }

  @override
  String get fontSubtitleCustomize => 'Personalizado por tela';

  @override
  String get background => 'Fundo';

  @override
  String get accent => 'Sotaque';

  @override
  String get lightBackground => 'Fundo claro';

  @override
  String get lightAccent => 'Sotaque leve';

  @override
  String get darkBackground => 'Fundo escuro';

  @override
  String get darkAccent => 'Sotaque escuro';

  @override
  String get callBackground => 'Plano de fundo da chamada';

  @override
  String get appIcon => 'Ícone do aplicativo';

  @override
  String get answerMethod => 'Método de resposta';

  @override
  String get answerSlide => 'Deslize para responder';

  @override
  String get answerSlideSubtitle =>
      'Deslize para a esquerda/direita na barra, como o Google Phone';

  @override
  String get answerButton => 'Toque de botão';

  @override
  String get answerButtonSubtitle => 'Toque nos botões atender ou recusar';

  @override
  String get answerHuawei => 'Estilo Huawei';

  @override
  String get answerHuaweiSubtitle =>
      'Arraste o círculo até o telefone verde para atender';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei – arraste para verde/vermelho';

  @override
  String get calling => 'Chamando';

  @override
  String get defaultSim => 'SIM padrão';

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
  String get askEveryTime => 'Pergunte sempre';

  @override
  String get askEveryTimeSubtitle =>
      'Mostrar seletor de SIM antes de cada chamada';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Nenhum cartão SIM encontrado';

  @override
  String couldNotLoadSims(String error) {
    return 'Não foi possível carregar os SIMs: $error';
  }

  @override
  String get allFavourites => 'Todos os favoritos';

  @override
  String get allFavouritesSubtitle => 'Reordenar, remover e adicionar contatos';

  @override
  String get blockedNumbers => 'Números bloqueados';

  @override
  String get blockedNumbersSubtitle => 'Ver e desbloquear números';

  @override
  String get soundsAndVibration => 'Sons e vibração';

  @override
  String get soundsAndVibrationSubtitle =>
      'Toque, vibração, tons do teclado de discagem';

  @override
  String couldNotOpenSettings(String error) {
    return 'Não foi possível abrir as configurações: $error';
  }

  @override
  String get frequentlyContacted => 'Contactado com frequência';

  @override
  String get numberOfRecords => 'Número de registros';

  @override
  String get timePeriod => 'Período de tempo';

  @override
  String get periodLast24Hours => 'Últimas 24 horas';

  @override
  String get periodLast24HoursSubtitle => 'Chamadas do dia anterior';

  @override
  String get periodLast7Days => 'Últimos 7 dias';

  @override
  String get periodLast7DaysSubtitle => 'Chamadas da semana passada';

  @override
  String get periodLast30Days => 'Últimos 30 dias';

  @override
  String get periodLast30DaysSubtitle => 'Chamadas do mês passado';

  @override
  String get periodLast12Months => 'Últimos 12 meses';

  @override
  String get periodLast12MonthsSubtitle => 'Chamadas do ano passado';

  @override
  String get periodAllTime => 'Todo o tempo';

  @override
  String get periodAllTimeSubtitle => 'Todo o histórico de chamadas';

  @override
  String get frequentMaxOff => 'Desligado';

  @override
  String frequentMaxCount(int count) {
    return '$count contatos';
  }

  @override
  String get torchBlink => 'Piscar da tocha';

  @override
  String get torchIncomingCall => 'Lanterna de chamada recebida';

  @override
  String get torchOutgoingCall => 'Tocha de chamada de saída';

  @override
  String get torchOngoingCall => 'Tocha de chamada em andamento';

  @override
  String get torchIncomingInterval => 'Intervalo de intermitência de entrada';

  @override
  String get torchOutgoingInterval => 'Intervalo de intermitência de saída';

  @override
  String get torchOngoingInterval => 'Intervalo de intermitência contínuo';

  @override
  String get torchOff => 'Desligado';

  @override
  String get torchOffIncomingSubtitle => 'Nenhuma tocha enquanto toca';

  @override
  String get torchOffOutgoingSubtitle => 'Sem tocha durante a discagem';

  @override
  String get torchOffOngoingSubtitle => 'Nenhuma tocha durante a chamada ativa';

  @override
  String get torchFixedInterval => 'Intervalo fixo';

  @override
  String get torchFixedIntervalSubtitle => 'Pisque a uma velocidade definida';

  @override
  String torchIntervalSeconds(String seconds) {
    return '${seconds}s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds pisca';
  }

  @override
  String get flashlightUnavailable =>
      'Lanterna não disponível neste dispositivo';

  @override
  String get glyphLights => 'Luzes de glifo';

  @override
  String get glyphCallingAnimation => 'Animação de chamada de glifo';

  @override
  String get glyphOngoingAnimation => 'Animação de chamada contínua de glifo';

  @override
  String get glyphNone => 'Nenhum';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Desative as luzes Glyph para chamadas efetuadas';

  @override
  String get glyphNoneInCallSubtitle =>
      'Desative as luzes Glyph enquanto estiver de plantão';

  @override
  String get glyphBreathProgress => 'Respiração e Progresso';

  @override
  String get glyphBreathProgressSubtitle =>
      'As luzes respiram enquanto a linha enche ao longo dos 65s';

  @override
  String get glyphAccumulate => 'Acumular';

  @override
  String get glyphAccumulateSubtitle => 'Acumulando animação nas luzes C1-C4';

  @override
  String get glyphSingle => 'Solteiro';

  @override
  String get glyphSingleSubtitle => 'Luz única movendo-se através de C1-C4';

  @override
  String get glyphBreath => 'Respiração';

  @override
  String get glyphBreathSubtitle => 'Escolha luzes e velocidade';

  @override
  String get glyphSteady => 'Estável';

  @override
  String get glyphSteadySubtitle => 'As luzes selecionadas permanecem acesas';

  @override
  String get breathSettings => 'Configurações de respiração';

  @override
  String get activeLights => 'Luzes ativas';

  @override
  String lightsCount(int count) {
    return '$count luzes';
  }

  @override
  String get speedSettings => 'Configurações de velocidade';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms de atraso';
  }

  @override
  String get durationAndSpeed => 'Duração e velocidade';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return 'Duração de ${duration}s, intervalo de ${interval}ms';
  }

  @override
  String get cancel => 'Cancelar';

  @override
  String get done => 'Feito';

  @override
  String get save => 'Salvar';

  @override
  String get block => 'Bloquear';

  @override
  String get delete => 'Excluir';

  @override
  String get recents => 'Recentes';

  @override
  String get contacts => 'Contatos';

  @override
  String get hideFavouritesOnRecents => 'Ocultar favoritos em Recentes';

  @override
  String get showFavouritesOnRecents => 'Mostrar favoritos em Recentes';

  @override
  String get ongoingCall => 'Chamada em andamento';

  @override
  String get setAsDefaultTitle => 'DEFINIR COMO\nPADRÃO';

  @override
  String get setAsDefaultBody =>
      'Para usar o Nothing Dialer, ele deve ser definido como seu aplicativo de telefone padrão. Isso permite que você gerencie chamadas, visualize o histórico e use animações Glyph.';

  @override
  String get setAsDefaultButton => 'DEFINIR COMO PADRÃO';

  @override
  String get nothingDialerBrand => 'NADA DISCADOR 1';

  @override
  String get favourites => 'Favoritos';

  @override
  String get addFavourite => 'Adicionar favorito';

  @override
  String get favouritesDrawerHint =>
      'Use o menu para adicionar contatos. Toque fora da gaveta ou deslize-a para fechá-la. Marque um contato a partir de seus detalhes ou mantenha uma chamada pressionada em Recentes.';

  @override
  String get menu => 'Menu';

  @override
  String get noFavouritesYet =>
      'Ainda não há favoritos.\nAbra o menu para adicionar um ou marcar um contato com estrela.';

  @override
  String get contactsPermissionNeeded => 'Permissão de contatos necessária';

  @override
  String get chooseContact => 'Escolha o contato';

  @override
  String get noPhone => 'Sem telefone';

  @override
  String get pickNumber => 'Escolha o número';

  @override
  String get contactHasNoPhone => 'Este contato não tem número de telefone';

  @override
  String get blockNumber => 'Número do bloco';

  @override
  String get enterPhoneNumber => 'Digite o número de telefone';

  @override
  String unblockedDisplay(String display) {
    return 'Desbloqueado $display';
  }

  @override
  String get couldNotUnblockNumber => 'Não foi possível desbloquear o número';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked bloqueado • $matched correspondido';
  }

  @override
  String get contactsPermissionMissing =>
      'Permissão de contatos ausente. Toque para corrigir.';

  @override
  String get noBlockedNumbers => 'Nenhum número bloqueado';

  @override
  String get unknownContact => 'Contato desconhecido';

  @override
  String get unblock => 'Desbloquear';

  @override
  String get permissionNeeded => 'Permissão necessária';

  @override
  String get grantPhonePermission =>
      'Conceda permissão ao telefone para ver seu histórico de chamadas.';

  @override
  String get grantContactsPermission =>
      'Conceda permissão aos contatos para ver seu catálogo de endereços.';

  @override
  String get openSettings => 'Abra Configurações';

  @override
  String get tryAgain => 'Tente novamente';

  @override
  String get couldNotLoadContacts => 'Não foi possível carregar os contatos';

  @override
  String get contactsLoadError => 'Algo deu errado ao ler sua agenda.';

  @override
  String get noContactsFound => 'Nenhum contato encontrado';

  @override
  String get contactsEmptySubtitle =>
      'Os contatos do seu dispositivo aparecerão aqui.';

  @override
  String get searchContacts => 'Pesquisar contatos…';

  @override
  String get searchRecentCalls => 'Pesquisar chamadas recentes';

  @override
  String get fromContacts => 'Dos contatos';

  @override
  String get recentsSearchSection => 'Pesquisa recente';

  @override
  String get recentsSearchShowContacts => 'Mostrar contatos na pesquisa';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Ao pesquisar Recentes, mostre também as pessoas correspondentes do seu catálogo de endereços abaixo dos resultados do histórico de chamadas.';

  @override
  String get voiceSearch => 'Pesquisa por voz';

  @override
  String get createNewContact => 'Criar novo contato';

  @override
  String callError(String error) {
    return 'Erro de chamada: $error';
  }

  @override
  String get noRecentCalls => 'Nenhuma chamada recente';

  @override
  String get callHistoryEmpty => 'Seu histórico de chamadas aparecerá aqui.';

  @override
  String get loadMore => 'Carregar mais';

  @override
  String get frequentlyContactedHeader => 'Contactado com frequência';

  @override
  String get recentHistory => 'História recente';

  @override
  String get noFavouritesRecentsHint =>
      'Ainda não há favoritos. Marque um contato com estrela, mantenha uma chamada pressionada ou use a guia Favoritos.';

  @override
  String get copyNumber => 'Copiar número';

  @override
  String get editNumberBeforeCall => 'Editar número antes de ligar';

  @override
  String get removeFromFavourites => 'Remover dos favoritos';

  @override
  String get addToFavourites => 'Adicionar aos favoritos';

  @override
  String get blockNumberQuestion => 'Número do bloco?';

  @override
  String blockNumberConfirm(String number) {
    return 'Você não receberá mais chamadas ou mensagens de texto de $number.';
  }

  @override
  String get blocked => 'Bloqueado';

  @override
  String get couldNotBlock => 'Não foi possível bloquear';

  @override
  String get contactNotOnDevice => 'Contato não salvo neste dispositivo';

  @override
  String get unblocked => 'Desbloqueado';

  @override
  String get numberCopied => 'Número copiado';

  @override
  String get showLess => 'Mostrar menos';

  @override
  String get showAllTimes => 'Mostrar todos os horários';

  @override
  String mostRecent(String time) {
    return 'Mais recentes · $time';
  }

  @override
  String get videoCall => 'Videochamada';

  @override
  String get couldNotPlaceVideoCall => 'Não foi possível fazer videochamada';

  @override
  String get message => 'Mensagem';

  @override
  String get couldNotOpenMessaging =>
      'Não foi possível abrir o aplicativo de mensagens';

  @override
  String get history => 'História';

  @override
  String get viewContact => 'Ver contato';

  @override
  String get addToContact => 'Adicionar ao contato';

  @override
  String get callTypeMissed => 'Perdido';

  @override
  String get callTypeRejected => 'Rejeitado';

  @override
  String get callTypeIncoming => 'Entrada';

  @override
  String get callTypeOutgoing => 'Extrovertido';

  @override
  String get today => 'Hoje';

  @override
  String get yesterday => 'Ontem';

  @override
  String get justNow => 'Agora mesmo';

  @override
  String minutesAgo(int count) {
    return '$count minutos atrás';
  }

  @override
  String hoursAgo(int count) {
    return '$count horas atrás';
  }

  @override
  String get filterAll => 'Todos';

  @override
  String get filterMissed => 'Perdido';

  @override
  String get filterContacts => 'Contatos';

  @override
  String get filterNonContacts => 'Não-contatos';

  @override
  String get iconUpdated =>
      'Ícone atualizado. Sua tela inicial pode demorar um pouco para atualizar.';

  @override
  String get iconSavedRelease =>
      'Escolha salva. O ícone da tela inicial é atualizado nas versões de lançamento.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Não foi possível alterar o ícone: $error';
  }

  @override
  String get launcherClassicBlack => 'Clássico (preto)';

  @override
  String get launcherLight => 'Luz';

  @override
  String get launcherNothingRed => 'Nada vermelho';

  @override
  String get launcherDarkGrey => 'Cinza escuro';

  @override
  String get launcherCream => 'Creme';

  @override
  String get launcherRetroPhone => 'Telefone retrô';

  @override
  String get launcherRetroPhoneLight => 'Telefone retrô (leve)';

  @override
  String get voiceSearchUnavailable =>
      'A pesquisa por voz não está disponível neste dispositivo.';

  @override
  String voiceSearchFailed(String error) {
    return 'Falha na pesquisa por voz: $error';
  }

  @override
  String get customColor => 'Personalizado';

  @override
  String get selectColor => 'Selecione a cor';

  @override
  String get reset => 'Reiniciar';

  @override
  String get simPickerTitle => 'Escolha o SIM';

  @override
  String get simChooseForCall => 'Escolha SIM para esta chamada';

  @override
  String get defaultSimAsk => 'Pergunte sempre';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Detalhes de contato';

  @override
  String get call => 'Chamar';

  @override
  String get share => 'Compartilhar';

  @override
  String get favourite => 'Favorito';

  @override
  String get unfavourite => 'Não favorito';

  @override
  String get blockContact => 'Bloquear contato';

  @override
  String get unblockContact => 'Desbloquear contato';

  @override
  String get deleteContact => 'Excluir contato';

  @override
  String get phone => 'Telefone';

  @override
  String get email => 'E-mail';

  @override
  String get ringtone => 'Toque';

  @override
  String get defaultRingtone => 'Padrão';

  @override
  String get simForContact => 'SIM para este contato';

  @override
  String get callHistoryTitle => 'Histórico de chamadas';

  @override
  String get noCallsWithNumber => 'Não há chamadas com este número';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Animação de glifo';

  @override
  String get inCallGlyphAnimationStyle => 'Animação de glifo na chamada';

  @override
  String get recordsOff => 'Desligado';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'SIM padrão';

  @override
  String get nothingPhoneOnly => 'Nada Somente telefone';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Os recursos do Glyph requerem um Nothing Phone';

  @override
  String get custom => 'Personalizado';

  @override
  String presetColorHex(String hex) {
    return 'Predefinido · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Personalizado · $hex';
  }

  @override
  String get oneContact => '1 contato';

  @override
  String upToContacts(int count) {
    return 'Até $count contatos';
  }

  @override
  String get answerButtonTapSubtitle => 'Toque no botão para responder';

  @override
  String get filterCalls => 'Filtrar chamadas';

  @override
  String get filterTooltip => 'Filtro';

  @override
  String get settingsTooltip => 'Configurações';

  @override
  String get filterAllSubtitle => 'Registro de chamadas inteiro';

  @override
  String get filterMissedSubtitle => 'Perdido e rejeitado';

  @override
  String get filterContactsSubtitle =>
      'Chamadas correspondentes a um contato salvo';

  @override
  String get filterNonContactsSubtitle => 'Números que não estão na sua agenda';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Chamada em andamento: $detail';
  }

  @override
  String get defaultSimForCalls => 'SIM padrão para chamadas';

  @override
  String get blinkInterval => 'Intervalo de piscada';

  @override
  String get close => 'Fechar';

  @override
  String get frequentlyContactedInfoBody =>
      'Mostra os números de telefone mais chamados na parte superior da guia Recentes, com base em quantas chamadas recebidas, efetuadas, perdidas ou rejeitadas você recebeu com cada número no período escolhido.\n\nNúmero de registros: defina como 0 para desligar. Use de 1 a 20 para mostrar esse número de contatos principais.\n\nO período de tempo se aplica somente quando pelo menos um contato é mostrado.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count luzes, ${ms}ms velocidade';
  }

  @override
  String get deleteContactQuestion => 'Excluir contato?';

  @override
  String get deleteContactBody =>
      'Este contato será excluído permanentemente do seu dispositivo.';

  @override
  String get blockContactQuestion => 'Bloquear contato?';

  @override
  String get unblockContactQuestion => 'Desbloquear contato?';

  @override
  String get blockContactBody =>
      'Você não receberá mais chamadas ou mensagens de texto deste contato.';

  @override
  String get unblockContactBody =>
      'Você começará a receber ligações e mensagens de texto deste contato.';

  @override
  String get contactBlocked => 'Contato bloqueado';

  @override
  String get contactUnblocked => 'Contato desbloqueado';

  @override
  String get noPhoneNumbersToBlock => 'Nenhum número de telefone para bloquear';

  @override
  String get simSameAsSystem => 'Igual ao sistema';

  @override
  String get simSameAsSystemSubtitle => 'Segue SIM padrão nas configurações';

  @override
  String get simAskEveryTimeForContact =>
      'Sempre mostrar o seletor de SIM para este contato';

  @override
  String get ringtoneSetForContact =>
      'Toque definido globalmente para este contato';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Falha ao escolher o toque: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Erro: $error';
  }

  @override
  String get noCallHistoryFound => 'Nenhum histórico de chamadas encontrado';

  @override
  String get speedDialVoicemail => 'Discagem rápida: correio de voz';

  @override
  String shareContactSubject(String name) {
    return 'Contato: $name';
  }

  @override
  String get contactInfo => 'Informações de contato';

  @override
  String get dontAskAgainSim => 'Não pergunte novamente';

  @override
  String get simDontAskAgainSubtitle =>
      'Use este SIM como padrão (alteração nas configurações)';

  @override
  String get addContact => 'Adicionar contato';

  @override
  String get createContact => 'Criar contato';

  @override
  String get paste => 'Colar';

  @override
  String get clear => 'Claro';

  @override
  String get returnToCall => 'Voltar para ligar';

  @override
  String get numberOfRecordsTitle => 'Número de registros';

  @override
  String get recordsPickerSubtitle =>
      'Quantas entradas de contato frequente mostrar (0 = desativado)';

  @override
  String get torchInfoTitle => 'Tocha piscando';

  @override
  String get torchInfoBody =>
      'Pisca o flash da câmera durante chamadas recebidas, efetuadas ou em andamento. Independente de luzes Glyph.';

  @override
  String get glyphMapTitle => 'Layout de glifo';

  @override
  String get glyphMapBody =>
      'Nada de zonas de LED Glyph do Phone 1. As animações de saída e de chamada usam esses canais.';

  @override
  String get answerMethodTitle => 'Método de resposta';

  @override
  String get glyphOutgoingCallStyleTitle => 'Estilo de chamada de saída';

  @override
  String get glyphInCallAnimationTitle => 'Animação de glifo na chamada';

  @override
  String get themePickerTitle => 'Tema';

  @override
  String get torchIncomingTitle => 'Lanterna de chamada recebida';

  @override
  String get torchOutgoingTitle => 'Tocha de chamada de saída';

  @override
  String get torchOngoingTitle => 'Tocha de chamada em andamento';

  @override
  String get timePeriodTitle => 'Período de tempo';

  @override
  String get ok => 'OK';

  @override
  String get confirmDeleteCall => 'Excluir esta chamada do histórico?';

  @override
  String get confirmDeleteAllCalls =>
      'Excluir todas as chamadas com este número?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Envie uma mensagem';

  @override
  String get addToExistingContactAction => 'Adicionar a um contato';

  @override
  String get mobileLabel => 'Móvel';

  @override
  String get callingSimForContactTitle => 'Chamando SIM para este contato';

  @override
  String get contactSettings => 'Configurações de contato';

  @override
  String get setCallingSim => 'Definir chamada do SIM';

  @override
  String get contactRingtone => 'Toque de contato';

  @override
  String get shareContact => 'Compartilhar contato';

  @override
  String get blockNumbers => 'Bloquear números';

  @override
  String get unblockNumbers => 'Desbloquear números';

  @override
  String get connectedApps => 'Aplicativos conectados';

  @override
  String get simNotSet => 'Não definido';

  @override
  String get ringtoneDefault => 'Padrão';

  @override
  String get customRingtone => 'Personalizado';

  @override
  String get aboutSection => 'Sobre';

  @override
  String get aboutFeedbackSection => 'Sobre e comentários';

  @override
  String get aboutDescription =>
      'Nothing Dialer é código aberto. Se você é desenvolvedor, explore o código e contribua.';

  @override
  String get aboutViewSource => 'Ver no GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Não foi possível abrir o link';

  @override
  String get reviewSection => 'Avaliação';

  @override
  String get reviewDescription =>
      'Gostando do Nothing Dialer? Sua avaliação no Google Play ajuda outras pessoas a encontrar o app.';

  @override
  String get reviewRateOnPlay => 'Avaliar no Google Play';

  @override
  String get reviewRateOnPlaySubtitle => 'Avalie sem sair do app';

  @override
  String get reviewCouldNotOpen => 'Não foi possível abrir o Google Play';

  @override
  String get breathSpeed => 'Velocidade da respiração';

  @override
  String get breathSpeedBlinkHint =>
      'Inferior = Piscar, Superior = Respiração Lenta';

  @override
  String get speedSliderHint => 'Inferior = mais rápido, superior = mais lento';

  @override
  String get swatchDefault => 'Padrão';

  @override
  String get customAccentColorPicker => 'Cor de destaque personalizada';

  @override
  String get customLightBackgroundPicker => 'Fundo claro personalizado';

  @override
  String get customDarkBackgroundPicker => 'Fundo escuro personalizado';

  @override
  String get customCallBackgroundPicker =>
      'Plano de fundo de chamada personalizado';

  @override
  String get ongoingCallStyleTitle => 'Estilo de chamada contínua';

  @override
  String get glyphMapUnavailable => 'Mapa de glifos indisponível';

  @override
  String get animationDelayRange => 'Atraso de animação (1s - 10s)';

  @override
  String get animationDelayRangeSingle => 'Atraso de animação (0,1s - 10s)';

  @override
  String get inCallMute => 'Mudo';

  @override
  String get inCallKeypad => 'Teclado';

  @override
  String get inCallSpeaker => 'Alto-falante';

  @override
  String get inCallMore => 'Mais';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Telefone';

  @override
  String get inCallAddCall => 'Adicionar chamada';

  @override
  String get inCallChangeSim => 'Trocar SIM';

  @override
  String get inCallDecline => 'Recusar';

  @override
  String get inCallAnswer => 'Atender';

  @override
  String get inCallMessage => 'Mensagem';

  @override
  String get inCallCalling => 'Chamando…';

  @override
  String get inCallIncoming => 'Chamada recebida';

  @override
  String get inCallSelectSim => 'Selecionar SIM…';

  @override
  String get inCallSwitchingSim => 'Trocando SIM…';

  @override
  String get inCallCallEnded => 'Chamada encerrada';

  @override
  String inCallCallingVia(String sim) {
    return 'Chamando via $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Chamando via <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Escolher SIM para esta chamada';

  @override
  String get inCallDragAnswerDecline =>
      'Deslize para a direita para atender · esquerda para recusar';

  @override
  String inCallMobileNumber(String number) {
    return 'Celular $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label  (Atual)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Chamada via <b>$sim</b> de';
  }

  @override
  String get inCallCallFrom => 'Chamada de';

  @override
  String get inCallUnknown => 'Desconhecido';

  @override
  String get selectContactRingtone => 'Selecionar toque do contato';

  @override
  String get speakToSearchPrompt => 'Fale para pesquisar';

  @override
  String get phonePermissionRequired => 'Permissão de telefone necessária';

  @override
  String callFailed(String error) {
    return 'Falha na chamada: $error';
  }

  @override
  String get callPermissionDenied => 'Permissão de chamada negada';

  @override
  String get alreadyDefaultDialer => 'Já é o discador padrão';

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

/// The translations for Portuguese, as used in Portugal (`pt_PT`).
class AppLocalizationsPtPt extends AppLocalizationsPt {
  AppLocalizationsPtPt() : super('pt_PT');

  @override
  String get appTitle => 'Nada discador';

  @override
  String get settings => 'Configurações';

  @override
  String get settingsSearchHint => 'Configurações de pesquisa';

  @override
  String get settingsSearchNoResults => 'Nenhuma configuração encontrada';

  @override
  String get general => 'Em geral';

  @override
  String get theme => 'Tema';

  @override
  String get themeSystemDefault => 'Padrão do sistema';

  @override
  String get themeLight => 'Luz';

  @override
  String get themeDark => 'Escuro';

  @override
  String get themeFollowSystem => 'Siga as configurações do sistema';

  @override
  String get themeAlwaysLight => 'Sempre use tema claro';

  @override
  String get themeAlwaysDark => 'Sempre use tema escuro';

  @override
  String get language => 'Linguagem';

  @override
  String get languageDeviceDefault => 'Padrão do dispositivo';

  @override
  String get languagePickerTitle => 'Linguagem';

  @override
  String get languageSearchHint => 'Idiomas de pesquisa';

  @override
  String get font => 'Fonte';

  @override
  String get fontSystem => 'Padrão do sistema';

  @override
  String get fontNdot => 'Nada (NDot)';

  @override
  String get fontSerif => 'Robô Serif';

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
      'Falha no download da fonte. Verifique sua conexão e tente novamente.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Fonte';

  @override
  String get fontPreviewSample => 'Nada discador';

  @override
  String get fontAppWide => 'Fonte do aplicativo';

  @override
  String get fontApplyTo => 'Candidatar-se a';

  @override
  String get fontApplyEntireApp => 'Aplicativo inteiro';

  @override
  String get fontApplyEntireAppSubtitle =>
      'A mesma fonte em todos os lugares, inclusive na chamada';

  @override
  String get fontApplyTitlesOnly => 'Títulos e cabeçalhos';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Somente títulos grandes e cabeçalhos de seção';

  @override
  String get fontApplyCustomize => 'Personalizar';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Escolha a fonte por tela e tipo de texto';

  @override
  String get fontCustomizeSection => 'Personalizar por tela';

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
  String get fontRolePageTitle => 'Título da página';

  @override
  String get fontRoleSectionHeader => 'Cabeçalho da seção';

  @override
  String get fontRolePrimary => 'Texto principal';

  @override
  String get fontRoleSecondary => 'Texto secundário';

  @override
  String get fontRoleButton => 'Botões';

  @override
  String get fontRoleDialKey => 'Teclas do teclado';

  @override
  String get fontSurfaceRecents => 'Recentes';

  @override
  String get fontSurfaceContacts => 'Contatos';

  @override
  String get fontSurfaceSettings => 'Configurações';

  @override
  String get fontSurfaceDialpad => 'Teclado de discagem';

  @override
  String get fontSurfaceShell => 'Navegação';

  @override
  String get fontSurfaceDefaultDialer => 'Prompt de discador padrão';

  @override
  String get fontSurfaceFavourites => 'Favoritos';

  @override
  String get fontSurfaceBlocked => 'Números bloqueados';

  @override
  String get fontSurfaceContactDetail => 'Detalhes de contato';

  @override
  String get fontSurfaceCallHistory => 'Histórico de chamadas';

  @override
  String get fontSurfaceSheets => 'Planilhas e seletores';

  @override
  String get fontSurfaceInCall => 'Tela de chamada';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — aplicativo inteiro';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — apenas títulos';
  }

  @override
  String get fontSubtitleCustomize => 'Personalizado por tela';

  @override
  String get background => 'Fundo';

  @override
  String get accent => 'Sotaque';

  @override
  String get lightBackground => 'Fundo claro';

  @override
  String get lightAccent => 'Sotaque leve';

  @override
  String get darkBackground => 'Fundo escuro';

  @override
  String get darkAccent => 'Sotaque escuro';

  @override
  String get callBackground => 'Plano de fundo da chamada';

  @override
  String get appIcon => 'Ícone do aplicativo';

  @override
  String get answerMethod => 'Método de resposta';

  @override
  String get answerSlide => 'Deslize para responder';

  @override
  String get answerSlideSubtitle =>
      'Deslize para a esquerda/direita na barra, como o Google Phone';

  @override
  String get answerButton => 'Toque no botão';

  @override
  String get answerButtonSubtitle => 'Toque nos botões atender ou recusar';

  @override
  String get answerHuawei => 'Estilo Huawei';

  @override
  String get answerHuaweiSubtitle =>
      'Arraste o círculo até o telefone verde para atender';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei – arraste para verde/vermelho';

  @override
  String get calling => 'Chamando';

  @override
  String get defaultSim => 'SIM padrão';

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
  String get askEveryTime => 'Pergunte sempre';

  @override
  String get askEveryTimeSubtitle =>
      'Mostrar seletor de SIM antes de cada chamada';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Nenhum cartão SIM encontrado';

  @override
  String couldNotLoadSims(String error) {
    return 'Não foi possível carregar os SIMs: $error';
  }

  @override
  String get allFavourites => 'Todos os favoritos';

  @override
  String get allFavouritesSubtitle => 'Reordenar, remover e adicionar contatos';

  @override
  String get blockedNumbers => 'Números bloqueados';

  @override
  String get blockedNumbersSubtitle => 'Ver e desbloquear números';

  @override
  String get soundsAndVibration => 'Sons e vibração';

  @override
  String get soundsAndVibrationSubtitle =>
      'Toque, vibração, tons do teclado de discagem';

  @override
  String couldNotOpenSettings(String error) {
    return 'Não foi possível abrir as configurações: $error';
  }

  @override
  String get frequentlyContacted => 'Contactado com frequência';

  @override
  String get numberOfRecords => 'Número de registros';

  @override
  String get timePeriod => 'Período de tempo';

  @override
  String get periodLast24Hours => 'Últimas 24 horas';

  @override
  String get periodLast24HoursSubtitle => 'Chamadas do dia anterior';

  @override
  String get periodLast7Days => 'Últimos 7 dias';

  @override
  String get periodLast7DaysSubtitle => 'Chamadas da semana passada';

  @override
  String get periodLast30Days => 'Últimos 30 dias';

  @override
  String get periodLast30DaysSubtitle => 'Chamadas do mês passado';

  @override
  String get periodLast12Months => 'Últimos 12 meses';

  @override
  String get periodLast12MonthsSubtitle => 'Chamadas do ano passado';

  @override
  String get periodAllTime => 'Todo o tempo';

  @override
  String get periodAllTimeSubtitle => 'Todo o histórico de chamadas';

  @override
  String get frequentMaxOff => 'Desligado';

  @override
  String frequentMaxCount(int count) {
    return '$count contatos';
  }

  @override
  String get torchBlink => 'Piscar da tocha';

  @override
  String get torchIncomingCall => 'Lanterna de chamada recebida';

  @override
  String get torchOutgoingCall => 'Tocha de chamada de saída';

  @override
  String get torchOngoingCall => 'Tocha de chamada em andamento';

  @override
  String get torchIncomingInterval => 'Intervalo de intermitência de entrada';

  @override
  String get torchOutgoingInterval => 'Intervalo de intermitência de saída';

  @override
  String get torchOngoingInterval => 'Intervalo de intermitência contínuo';

  @override
  String get torchOff => 'Desligado';

  @override
  String get torchOffIncomingSubtitle => 'Nenhuma tocha enquanto toca';

  @override
  String get torchOffOutgoingSubtitle => 'Sem tocha durante a discagem';

  @override
  String get torchOffOngoingSubtitle => 'Nenhuma tocha durante a chamada ativa';

  @override
  String get torchFixedInterval => 'Intervalo fixo';

  @override
  String get torchFixedIntervalSubtitle => 'Pisque a uma velocidade definida';

  @override
  String torchIntervalSeconds(String seconds) {
    return '${seconds}s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds pisca';
  }

  @override
  String get flashlightUnavailable =>
      'Lanterna não disponível neste dispositivo';

  @override
  String get glyphLights => 'Luzes de glifo';

  @override
  String get glyphCallingAnimation => 'Animação de chamada de glifo';

  @override
  String get glyphOngoingAnimation => 'Animação de chamada contínua de glifo';

  @override
  String get glyphNone => 'Nenhum';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Desative as luzes Glyph para chamadas efetuadas';

  @override
  String get glyphNoneInCallSubtitle =>
      'Desative as luzes Glyph enquanto estiver de plantão';

  @override
  String get glyphBreathProgress => 'Respiração e Progresso';

  @override
  String get glyphBreathProgressSubtitle =>
      'As luzes respiram enquanto a linha enche ao longo dos 65s';

  @override
  String get glyphAccumulate => 'Acumular';

  @override
  String get glyphAccumulateSubtitle => 'Acumulando animação nas luzes C1-C4';

  @override
  String get glyphSingle => 'Solteiro';

  @override
  String get glyphSingleSubtitle => 'Luz única movendo-se através de C1-C4';

  @override
  String get glyphBreath => 'Respiração';

  @override
  String get glyphBreathSubtitle => 'Escolha luzes e velocidade';

  @override
  String get glyphSteady => 'Estável';

  @override
  String get glyphSteadySubtitle => 'As luzes selecionadas permanecem acesas';

  @override
  String get breathSettings => 'Configurações de respiração';

  @override
  String get activeLights => 'Luzes ativas';

  @override
  String lightsCount(int count) {
    return '$count luzes';
  }

  @override
  String get speedSettings => 'Configurações de velocidade';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms de atraso';
  }

  @override
  String get durationAndSpeed => 'Duração e velocidade';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return 'Duração de ${duration}s, intervalo de ${interval}ms';
  }

  @override
  String get cancel => 'Cancelar';

  @override
  String get done => 'Feito';

  @override
  String get save => 'Salvar';

  @override
  String get block => 'Bloquear';

  @override
  String get delete => 'Excluir';

  @override
  String get recents => 'Recentes';

  @override
  String get contacts => 'Contatos';

  @override
  String get hideFavouritesOnRecents => 'Ocultar favoritos em Recentes';

  @override
  String get showFavouritesOnRecents => 'Mostrar favoritos em Recentes';

  @override
  String get ongoingCall => 'Chamada em andamento';

  @override
  String get setAsDefaultTitle => 'DEFINIR COMO\nPADRÃO';

  @override
  String get setAsDefaultBody =>
      'Para usar o Nothing Dialer, ele deve ser definido como seu aplicativo de telefone padrão. Isso permite que você gerencie chamadas, visualize o histórico e use animações Glyph.';

  @override
  String get setAsDefaultButton => 'DEFINIR COMO PADRÃO';

  @override
  String get nothingDialerBrand => 'NADA DISCADOR 1';

  @override
  String get favourites => 'Favoritos';

  @override
  String get addFavourite => 'Adicionar favorito';

  @override
  String get favouritesDrawerHint =>
      'Use o menu para adicionar contatos. Toque fora da gaveta ou deslize-a para fechá-la. Marque um contato a partir de seus detalhes ou mantenha uma chamada pressionada em Recentes.';

  @override
  String get menu => 'Menu';

  @override
  String get noFavouritesYet =>
      'Ainda não há favoritos.\nAbra o menu para adicionar um ou marcar um contato com estrela.';

  @override
  String get contactsPermissionNeeded => 'Permissão de contatos necessária';

  @override
  String get chooseContact => 'Escolha o contato';

  @override
  String get noPhone => 'Sem telefone';

  @override
  String get pickNumber => 'Escolha o número';

  @override
  String get contactHasNoPhone => 'Este contato não tem número de telefone';

  @override
  String get blockNumber => 'Número do bloco';

  @override
  String get enterPhoneNumber => 'Digite o número de telefone';

  @override
  String unblockedDisplay(String display) {
    return 'Desbloqueado $display';
  }

  @override
  String get couldNotUnblockNumber => 'Não foi possível desbloquear o número';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked bloqueado • $matched correspondido';
  }

  @override
  String get contactsPermissionMissing =>
      'Permissão de contatos ausente. Toque para corrigir.';

  @override
  String get noBlockedNumbers => 'Nenhum número bloqueado';

  @override
  String get unknownContact => 'Contato desconhecido';

  @override
  String get unblock => 'Desbloquear';

  @override
  String get permissionNeeded => 'Permissão necessária';

  @override
  String get grantPhonePermission =>
      'Conceda permissão ao telefone para ver seu histórico de chamadas.';

  @override
  String get grantContactsPermission =>
      'Conceda permissão aos contatos para ver seu catálogo de endereços.';

  @override
  String get openSettings => 'Abra Configurações';

  @override
  String get tryAgain => 'Tente novamente';

  @override
  String get couldNotLoadContacts => 'Não foi possível carregar os contatos';

  @override
  String get contactsLoadError => 'Algo deu errado ao ler sua agenda.';

  @override
  String get noContactsFound => 'Nenhum contato encontrado';

  @override
  String get contactsEmptySubtitle =>
      'Os contatos do seu dispositivo aparecerão aqui.';

  @override
  String get searchContacts => 'Pesquisar contatos…';

  @override
  String get searchRecentCalls => 'Pesquisar chamadas recentes';

  @override
  String get fromContacts => 'Dos contatos';

  @override
  String get recentsSearchSection => 'Pesquisa recente';

  @override
  String get recentsSearchShowContacts => 'Mostrar contatos na pesquisa';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Ao pesquisar Recentes, mostre também as pessoas correspondentes do seu catálogo de endereços abaixo dos resultados do histórico de chamadas.';

  @override
  String get voiceSearch => 'Pesquisa por voz';

  @override
  String get createNewContact => 'Criar novo contato';

  @override
  String callError(String error) {
    return 'Erro de chamada: $error';
  }

  @override
  String get noRecentCalls => 'Nenhuma chamada recente';

  @override
  String get callHistoryEmpty => 'Seu histórico de chamadas aparecerá aqui.';

  @override
  String get loadMore => 'Carregar mais';

  @override
  String get frequentlyContactedHeader => 'Contactado com frequência';

  @override
  String get recentHistory => 'História recente';

  @override
  String get noFavouritesRecentsHint =>
      'Ainda não há favoritos. Marque um contato com estrela, mantenha uma chamada pressionada ou use a guia Favoritos.';

  @override
  String get copyNumber => 'Copiar número';

  @override
  String get editNumberBeforeCall => 'Editar número antes de ligar';

  @override
  String get removeFromFavourites => 'Remover dos favoritos';

  @override
  String get addToFavourites => 'Adicionar aos favoritos';

  @override
  String get blockNumberQuestion => 'Número do bloco?';

  @override
  String blockNumberConfirm(String number) {
    return 'Você não receberá mais chamadas ou mensagens de texto de $number.';
  }

  @override
  String get blocked => 'Bloqueado';

  @override
  String get couldNotBlock => 'Não foi possível bloquear';

  @override
  String get contactNotOnDevice => 'Contato não salvo neste dispositivo';

  @override
  String get unblocked => 'Desbloqueado';

  @override
  String get numberCopied => 'Número copiado';

  @override
  String get showLess => 'Mostrar menos';

  @override
  String get showAllTimes => 'Mostrar todos os horários';

  @override
  String mostRecent(String time) {
    return 'Mais recentes · $time';
  }

  @override
  String get videoCall => 'Videochamada';

  @override
  String get couldNotPlaceVideoCall => 'Não foi possível fazer videochamada';

  @override
  String get message => 'Mensagem';

  @override
  String get couldNotOpenMessaging =>
      'Não foi possível abrir o aplicativo de mensagens';

  @override
  String get history => 'História';

  @override
  String get viewContact => 'Ver contato';

  @override
  String get addToContact => 'Adicionar ao contato';

  @override
  String get callTypeMissed => 'Perdido';

  @override
  String get callTypeRejected => 'Rejeitado';

  @override
  String get callTypeIncoming => 'Entrada';

  @override
  String get callTypeOutgoing => 'Extrovertido';

  @override
  String get today => 'Hoje';

  @override
  String get yesterday => 'Ontem';

  @override
  String get justNow => 'Agora mesmo';

  @override
  String minutesAgo(int count) {
    return '$count minutos atrás';
  }

  @override
  String hoursAgo(int count) {
    return '$count horas atrás';
  }

  @override
  String get filterAll => 'Todos';

  @override
  String get filterMissed => 'Perdido';

  @override
  String get filterContacts => 'Contatos';

  @override
  String get filterNonContacts => 'Não-contatos';

  @override
  String get iconUpdated =>
      'Ícone atualizado. Sua tela inicial pode demorar um pouco para atualizar.';

  @override
  String get iconSavedRelease =>
      'Escolha salva. O ícone da tela inicial é atualizado nas versões de lançamento.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Não foi possível alterar o ícone: $error';
  }

  @override
  String get launcherClassicBlack => 'Clássico (preto)';

  @override
  String get launcherLight => 'Luz';

  @override
  String get launcherNothingRed => 'Nada vermelho';

  @override
  String get launcherDarkGrey => 'Cinza escuro';

  @override
  String get launcherCream => 'Creme';

  @override
  String get launcherRetroPhone => 'Telefone retrô';

  @override
  String get launcherRetroPhoneLight => 'Telefone retrô (leve)';

  @override
  String get voiceSearchUnavailable =>
      'A pesquisa por voz não está disponível neste dispositivo.';

  @override
  String voiceSearchFailed(String error) {
    return 'Falha na pesquisa por voz: $error';
  }

  @override
  String get customColor => 'Personalizado';

  @override
  String get selectColor => 'Selecione a cor';

  @override
  String get reset => 'Reiniciar';

  @override
  String get simPickerTitle => 'Escolha o SIM';

  @override
  String get simChooseForCall => 'Escolha SIM para esta chamada';

  @override
  String get defaultSimAsk => 'Pergunte sempre';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Detalhes de contato';

  @override
  String get call => 'Chamar';

  @override
  String get share => 'Compartilhar';

  @override
  String get favourite => 'Favorito';

  @override
  String get unfavourite => 'Não favorito';

  @override
  String get blockContact => 'Bloquear contato';

  @override
  String get unblockContact => 'Desbloquear contato';

  @override
  String get deleteContact => 'Excluir contato';

  @override
  String get phone => 'Telefone';

  @override
  String get email => 'E-mail';

  @override
  String get ringtone => 'Toque';

  @override
  String get defaultRingtone => 'Padrão';

  @override
  String get simForContact => 'SIM para este contato';

  @override
  String get callHistoryTitle => 'Histórico de chamadas';

  @override
  String get noCallsWithNumber => 'Não há chamadas com este número';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Animação de glifo';

  @override
  String get inCallGlyphAnimationStyle => 'Animação de glifo na chamada';

  @override
  String get recordsOff => 'Desligado';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'SIM padrão';

  @override
  String get nothingPhoneOnly => 'Nada Somente telefone';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Os recursos do Glyph requerem um Nothing Phone';

  @override
  String get custom => 'Personalizado';

  @override
  String presetColorHex(String hex) {
    return 'Predefinido · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Personalizado · $hex';
  }

  @override
  String get oneContact => '1 contato';

  @override
  String upToContacts(int count) {
    return 'Até $count contatos';
  }

  @override
  String get answerButtonTapSubtitle => 'Toque no botão para responder';

  @override
  String get filterCalls => 'Filtrar chamadas';

  @override
  String get filterTooltip => 'Filtro';

  @override
  String get settingsTooltip => 'Configurações';

  @override
  String get filterAllSubtitle => 'Registro de chamadas inteiro';

  @override
  String get filterMissedSubtitle => 'Perdido e rejeitado';

  @override
  String get filterContactsSubtitle =>
      'Chamadas correspondentes a um contato salvo';

  @override
  String get filterNonContactsSubtitle => 'Números que não estão na sua agenda';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Chamada em andamento: $detail';
  }

  @override
  String get defaultSimForCalls => 'SIM padrão para chamadas';

  @override
  String get blinkInterval => 'Intervalo de piscada';

  @override
  String get close => 'Fechar';

  @override
  String get frequentlyContactedInfoBody =>
      'Mostra os números de telefone mais chamados na parte superior da guia Recentes, com base em quantas chamadas recebidas, efetuadas, perdidas ou rejeitadas você recebeu com cada número no período escolhido.\n\nNúmero de registros: defina como 0 para desligar. Use de 1 a 20 para mostrar esse número de contatos principais.\n\nO período de tempo se aplica somente quando pelo menos um contato é mostrado.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count luzes, ${ms}ms velocidade';
  }

  @override
  String get deleteContactQuestion => 'Excluir contato?';

  @override
  String get deleteContactBody =>
      'Este contato será excluído permanentemente do seu dispositivo.';

  @override
  String get blockContactQuestion => 'Bloquear contato?';

  @override
  String get unblockContactQuestion => 'Desbloquear contato?';

  @override
  String get blockContactBody =>
      'Você não receberá mais chamadas ou mensagens de texto deste contato.';

  @override
  String get unblockContactBody =>
      'Você começará a receber ligações e mensagens de texto deste contato.';

  @override
  String get contactBlocked => 'Contato bloqueado';

  @override
  String get contactUnblocked => 'Contato desbloqueado';

  @override
  String get noPhoneNumbersToBlock => 'Nenhum número de telefone para bloquear';

  @override
  String get simSameAsSystem => 'Igual ao sistema';

  @override
  String get simSameAsSystemSubtitle => 'Segue SIM padrão nas configurações';

  @override
  String get simAskEveryTimeForContact =>
      'Sempre mostrar o seletor de SIM para este contato';

  @override
  String get ringtoneSetForContact =>
      'Toque definido globalmente para este contato';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Falha ao escolher o toque: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Erro: $error';
  }

  @override
  String get noCallHistoryFound => 'Nenhum histórico de chamadas encontrado';

  @override
  String get speedDialVoicemail => 'Discagem rápida: correio de voz';

  @override
  String shareContactSubject(String name) {
    return 'Contato: $name';
  }

  @override
  String get contactInfo => 'Informações de contato';

  @override
  String get dontAskAgainSim => 'Não pergunte novamente';

  @override
  String get simDontAskAgainSubtitle =>
      'Use este SIM como padrão (alteração nas configurações)';

  @override
  String get addContact => 'Adicionar contato';

  @override
  String get createContact => 'Criar contato';

  @override
  String get paste => 'Colar';

  @override
  String get clear => 'Claro';

  @override
  String get returnToCall => 'Voltar para ligar';

  @override
  String get numberOfRecordsTitle => 'Número de registros';

  @override
  String get recordsPickerSubtitle =>
      'Quantas entradas de contato frequente mostrar (0 = desativado)';

  @override
  String get torchInfoTitle => 'Tocha piscando';

  @override
  String get torchInfoBody =>
      'Pisca o flash da câmera durante chamadas recebidas, efetuadas ou em andamento. Independente de luzes Glyph.';

  @override
  String get glyphMapTitle => 'Layout de glifo';

  @override
  String get glyphMapBody =>
      'Nada de zonas de LED Glyph do Phone 1. As animações de saída e de chamada usam esses canais.';

  @override
  String get answerMethodTitle => 'Método de resposta';

  @override
  String get glyphOutgoingCallStyleTitle => 'Estilo de chamada de saída';

  @override
  String get glyphInCallAnimationTitle => 'Animação de glifo na chamada';

  @override
  String get themePickerTitle => 'Tema';

  @override
  String get torchIncomingTitle => 'Lanterna de chamada recebida';

  @override
  String get torchOutgoingTitle => 'Tocha de chamada de saída';

  @override
  String get torchOngoingTitle => 'Tocha de chamada em andamento';

  @override
  String get timePeriodTitle => 'Período de tempo';

  @override
  String get ok => 'OK';

  @override
  String get confirmDeleteCall => 'Excluir esta chamada do histórico?';

  @override
  String get confirmDeleteAllCalls =>
      'Excluir todas as chamadas com este número?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Envie uma mensagem';

  @override
  String get addToExistingContactAction => 'Adicionar a um contato';

  @override
  String get mobileLabel => 'Móvel';

  @override
  String get callingSimForContactTitle => 'Chamando SIM para este contato';

  @override
  String get contactSettings => 'Configurações de contato';

  @override
  String get setCallingSim => 'Definir chamada do SIM';

  @override
  String get contactRingtone => 'Toque de contato';

  @override
  String get shareContact => 'Compartilhar contato';

  @override
  String get blockNumbers => 'Bloquear números';

  @override
  String get unblockNumbers => 'Desbloquear números';

  @override
  String get connectedApps => 'Aplicativos conectados';

  @override
  String get simNotSet => 'Não definido';

  @override
  String get ringtoneDefault => 'Padrão';

  @override
  String get customRingtone => 'Personalizado';

  @override
  String get aboutSection => 'Sobre';

  @override
  String get aboutFeedbackSection => 'Sobre e comentários';

  @override
  String get aboutDescription =>
      'Nada Dialer é de código aberto. Se você é um desenvolvedor, pode explorar o código e contribuir.';

  @override
  String get aboutViewSource => 'Ver no GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Não foi possível abrir o link';

  @override
  String get reviewSection => 'Análise';

  @override
  String get reviewDescription =>
      'Gostando do Nada Dialer? Sua classificação no Google Play ajuda outras pessoas a encontrar o aplicativo.';

  @override
  String get reviewRateOnPlay => 'Avalie no Google Play';

  @override
  String get reviewRateOnPlaySubtitle =>
      'Deixe uma avaliação sem sair do aplicativo';

  @override
  String get reviewCouldNotOpen => 'Não foi possível abrir o Google Play';

  @override
  String get breathSpeed => 'Velocidade da respiração';

  @override
  String get breathSpeedBlinkHint =>
      'Inferior = Piscar, Superior = Respiração Lenta';

  @override
  String get speedSliderHint => 'Inferior = mais rápido, superior = mais lento';

  @override
  String get swatchDefault => 'Padrão';

  @override
  String get customAccentColorPicker => 'Cor de destaque personalizada';

  @override
  String get customLightBackgroundPicker => 'Fundo claro personalizado';

  @override
  String get customDarkBackgroundPicker => 'Fundo escuro personalizado';

  @override
  String get customCallBackgroundPicker =>
      'Plano de fundo de chamada personalizado';

  @override
  String get ongoingCallStyleTitle => 'Estilo de chamada contínua';

  @override
  String get glyphMapUnavailable => 'Mapa de glifos indisponível';

  @override
  String get animationDelayRange => 'Atraso de animação (1s - 10s)';

  @override
  String get animationDelayRangeSingle => 'Atraso de animação (0,1s - 10s)';

  @override
  String get inCallMute => 'Mudo';

  @override
  String get inCallKeypad => 'Teclado';

  @override
  String get inCallSpeaker => 'Palestrante';

  @override
  String get inCallMore => 'Mais';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Telefone';

  @override
  String get inCallAddCall => 'Adicionar chamada';

  @override
  String get inCallChangeSim => 'Alterar cartão SIM';

  @override
  String get inCallDecline => 'Declínio';

  @override
  String get inCallAnswer => 'Responder';

  @override
  String get inCallMessage => 'Mensagem';

  @override
  String get inCallCalling => 'Chamando…';

  @override
  String get inCallIncoming => 'Chamada recebida';

  @override
  String get inCallSelectSim => 'Selecione SIM…';

  @override
  String get inCallSwitchingSim => 'Trocando SIM…';

  @override
  String get inCallCallEnded => 'Chamada encerrada';

  @override
  String inCallCallingVia(String sim) {
    return 'Ligando via $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Ligando via <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Escolha SIM para esta chamada';

  @override
  String get inCallDragAnswerDecline =>
      'Arraste para a direita para responder · Arraste para a esquerda para recusar';

  @override
  String inCallMobileNumber(String number) {
    return 'Celular $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (atual)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Ligue via <b>$sim</b> de';
  }

  @override
  String get inCallCallFrom => 'Ligar de';

  @override
  String get inCallUnknown => 'Desconhecido';

  @override
  String get selectContactRingtone => 'Selecione o toque do contato';

  @override
  String get speakToSearchPrompt => 'Fale para pesquisar';

  @override
  String get phonePermissionRequired => 'É necessária permissão de telefone';

  @override
  String callFailed(String error) {
    return 'Falha na chamada: $error';
  }

  @override
  String get callPermissionDenied => 'Permissão de chamada negada';

  @override
  String get alreadyDefaultDialer => 'Já definido como discador padrão';

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
