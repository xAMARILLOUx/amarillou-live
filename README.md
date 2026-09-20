# AMARILLOU Live Control — v0.9

[Abrir ferramenta online](https://xamarilloux.github.io/amarillou-live/) · [Baixar modo local](https://github.com/xAMARILLOUx/amarillou-live/releases)

## Novidades da v0.9

- Botão destacado para ativar/desativar a captura automática em Análises.
- Seleção de vários macros ou presets para excluir com uma confirmação.
- Histórico de presentes com coleta automática, reset independente e controles
  manuais recolhidos para quando os sinais da origem forem insuficientes.
- Reset de recentes preserva recordes, rankings, pontos, Análises e combos em curso.
- Executável Windows x64 sem instalador e Node incluído.
- Pacote separado em EXECUTAVEL-WINDOWS, SITE-GITHUB-PAGES e CODIGO-FONTE.

A identificação automática depende dos sinais recebidos: primeiro evento,
roomId diferente e streamEnd quando disponíveis. Conectar, ficar em silêncio
ou desconectar não comprova o início/fim real de uma live. As Análises medem
atividade observada. O gatilho de entrada no clube de fãs não foi incluído:
não foi possível confirmar um evento específico confiável do TikFinity.

## Atualizar

Para GitHub Pages, envie o CONTEÚDO de SITE-GITHUB-PAGES à raiz publicada do
repositório. Para Releases, anexe o .exe de EXECUTAVEL-WINDOWS. CODIGO-FONTE
contém o projeto completo para manutenção; não é necessário para executar o .exe.
Feche a ponte antiga antes de abrir o novo executável.

## Documentação das versões anteriores

# AMARILLOU Live Control — v0.9.0

**[Abrir o painel](https://xamarilloux.github.io/amarillou-live/)** · [Guia de uso](GUIA.html) · [Novidades desta versão](RELEASE-v0.8.0.md)

Painel modular de TikTok LIVE em português, com conexão ao WebSocket local do TikFinity. HTML/CSS/JavaScript nativos, sem dependências de produção. Os HTMLs entregues já incluem o código, os estilos e o avatar do criador; não é necessário compilar para publicar.

## Atualizar

Leia [ATUALIZAR-v0.8.txt](ATUALIZAR-v0.8.txt). No GitHub Pages, substitua **index.html**, **overlay.html** e **GUIA.html** no mesmo local. Atualize também este README e as notas de release para deixar o repositório organizado. No modo local, substitua o projeto inteiro e reinicie a ponte.

A atualização migra dados das versões anteriores, sem reset automático. Para começar do zero: **Conexão & dados → Resetar toda a plataforma → digite ZERAR**. Isso desconecta a coleta e apaga os dados desta instalação. Não apaga dados de outro navegador, do TikFinity ou backups exportados.

## Novidades da v0.8

- Faixa de moedas com vários presentes ignorados por regra.
- Meta de Presentes em moedas, com reset e overlay próprio.
- Presentes recentes por transmissão e Top 10 permanentes de combos e presentes mais caros, uma posição por pessoa.
- Captura opcional de **atividade observada**, desativada por padrão. Não garante a duração real: silêncio não conta, e separar lives depende dos sinais recebidos ou dos controles manuais em Presentes.
- INICIAR-LOCAL.bat abre a ponte e o navegador. ABRIR-PAINEL.url reabre apenas o painel. Atalho para o BAT permite iniciar pela área de trabalho.

Leia as [regras e limitações da v0.8](RELEASE-v0.8.0.md) antes de ativar a captura automática.

## Novidades da v0.7.1

Links de download no menu lateral, nas instruções de Presets, em Conexão & dados e no guia:

- [Baixar modo local — releases do GitHub](https://github.com/xAMARILLOUx/amarillou-live/releases)
- [Baixar Node.js](https://nodejs.org/en/download)

Nas releases, abra **Assets** e baixe o ZIP da ferramenta. Extraia tudo e execute **INICIAR-LOCAL.bat**. Esta atualização adiciona atalhos e instruções; não altera macros, contagens nem dados salvos.

## Novidades da v0.7

- Gatilhos por curtidas individuais, curtidas totais, novo seguidor e faixa de moedas, além de presentes específicos.
- Proteção opcional de follow por 24 horas, persistente por canal e participante.
- Campos específicos para cada gatilho e importação dos presets antigos.
- Curtidas dos macros começam ao ativar o preset; reativar zera esse progresso, sem alterar rankings. F5 mantém a ponte funcionando.
- [Regras, exemplos e detalhes da atualização](RELEASE-v0.8.0.md).

## Recursos mantidos da v0.6

- **Macros no Windows local:** um preset ativo por vez, execução por presente, repetições/intervalos/duração, F1–F24 e Ctrl/Alt/Shift. O online continua como editor.
- **Teste com 5 segundos** para focar o jogo ou Bloco de Notas; botão de parada e atalho global **Ctrl + Alt + Pause/Break**.
- **Selecionar presente recebido:** pop-up estável com busca por nome/ID, imagens disponíveis e atualização manual da lista. ID manual em seção avançada.
- **Tamanho do OBS junto ao link:** largura e altura recomendadas por overlay, considerando layout, container, níveis e posições.

No Windows, o Node inicia automaticamente um componente de teclado pelo PowerShell. Não precisa instalar pacotes, Python ou compilar manualmente. Baixe o projeto completo para atualizar a ponte. A execução real no seu Windows/jogo precisa do primeiro teste descrito em ATUALIZAR-v0.8.txt; neste ambiente, a integração foi exercitada com um driver de teclado simulado e o componente C# foi compilado, sem chamadas ao Windows.

## Recursos de pontos e duração (v0.5)

- **Pontos → Ajustar pontos:** adicione ou remova pontos de um participante; o nível acompanha o saldo. Remova do saldo geral ou de uma origem específica, sem saldo negativo.
- **Conexão & dados → Reset dos Pontos da Comunidade:** zere todos os pontos ou apenas os de moedas/likes, sempre com confirmação. Rankings e contagens recebidas não mudam.
- **Análises:** duração HH:MM:SS, incluindo 24:00:00 ou 48:30:00. Limite de duração: 8760 horas. USD e calibração preservados.
- **Presets:** editor com importação/exportação JSON. O 31º macro e cada adição posterior pedem Continuar/Cancelar. Não existe bloqueio em 30. Editar um macro já salvo não aumenta a contagem. Presets são salvos junto aos demais dados.

**Pontos antigos:** versões anteriores não registravam a origem do XP. O saldo anterior permanece como “origem não identificada”. Resets por origem preservam esses pontos; “Todos os pontos” também apaga pontos antigos e manuais. A separação entre moedas e likes começa na v0.5, usando o peso vigente em cada evento. Remoções do saldo geral descontam primeiro manuais, depois origem não identificada, likes e moedas.

**Presets:** o modo online prepara e salva configurações. A execução ocorre na ponte local Windows com um preset ativado explicitamente. Compartilhe por JSON; não existe servidor de IDs curtos. Online e local são bases separadas.

## Funcionalidades

- Identificação do streamer por @ no topo, salva no histórico e nos backups. Não autentica nem troca o canal monitorado no TikFinity. Uma base por instalação; alterar o @ não cria contas separadas.
- Rankings separados de Likes/Taps e Moedas: dia, semana, mês, consulta por datas, competições arquivadas e resets hierárquicos.
- **Pontos**: visão geral com foto, nome, @, nível, pontos/progresso, moedas e likes. Busca e ordenação crescente/decrescente, independente de períodos e resets de rankings.
- Presentes: último, combo recente, maior combo e mais caro por unidade. Layout lado a lado ou foto maior com presente/contador sobrepostos, com ou sem container.
- Reset de Presentes de hoje: apaga destaques e unidades de presentes de hoje, preserva moedas/likes/pontos e os dados de dias anteriores. Combo em andamento mostra apenas unidades posteriores ao reset.
- Herói/Vilão, escolha manual, lista de participantes congelada durante a seleção, layout clássico ou faixa dinâmica.
- Meta de curtidas, últimos seguidores, timer com presentes que acrescentam tempo.
- **Análises**: cadastro/exclusão de transmissões encerradas com título, data/hora, duração, moedas e recebimento real opcional. Totais por período, médias e calibração de USD por moeda.
- USD por moeda manual. USD→BRL automático via Frankfurter, com data/fonte e modo manual alternativo. A cotação é diária, não em tempo real.
- Containers opcionais, cor personalizável e níveis opcionais nos overlays. Copie novo link depois de mudar o visual.
- Pop-up do criador uma vez por carregamento, com avatar, TikTok, site e Live Pix; nunca aparece nos overlays.
- Coleta única por instalação, reconexão e deduplicação de eventos/combos. Demo isolada do histórico real.

## Publicar no GitHub Pages

1. Extraia o ZIP e envie os arquivos para a raiz do repositório (sem uma pasta intermediária).
2. Configure **Settings → Pages → Deploy from a branch → main → / (root)**, se necessário.
3. Abra o site publicado e informe seu @ no topo. Clique em **Salvar**.
4. Abra o TikFinity Desktop no mesmo PC e conecte-o à live desejada.
5. Clique em **Conectar TikFinity** no painel. Se o navegador pedir acesso local, autorize para esse site.

O endereço padrão é `ws://localhost:21213/`. Quem acessa o localhost é o navegador do usuário; o GitHub apenas hospeda os arquivos. Não é necessário instalar Node para usar o modo web. Não abra index.html por duplo clique para coletar eventos.

Para deixar o atalho na lateral do repositório, use **About → engrenagem → Website** e informe o endereço do Pages. Releases registra as versões, mas anexar um ZIP em Releases não substitui os arquivos publicados pelo Pages.

## OBS e Live Studio

Chrome/Edge e OBS têm contextos separados. O modo web sincroniza abas no mesmo site e perfil de navegador. Para compartilhar os dados e escolhas com uma fonte de navegador do OBS, use a ponte local incluída:

1. Instale Node.js 22.15 ou superior.
2. Abra **INICIAR-LOCAL.bat**; ou execute `npm start` na pasta.
3. Acesse `http://127.0.0.1:8787/` e conecte ao TikFinity.
4. Copie o link do overlay desse painel local e cole na fonte de navegador.
5. Mantenha a ponte aberta. A página do painel pode ser fechada; a ponte continua coletando.

O save local fica em `%USERPROFILE%\.amarillou-live\state.json`. O modo web usa IndexedDB no mesmo domínio/caminho/perfil. São bases separadas; exporte/importe JSON para transferir. Links locais contêm uma chave somente de leitura: não publique esses links nem backups no GitHub.

## Macros locais

1. Abra INICIAR-LOCAL.bat no Windows e entre no painel local.
2. Na aba Presets, crie um conjunto e salve suas regras de presente → tecla.
3. Use **Testar**: confirme e volte ao Bloco de Notas/jogo nos 5 segundos de contagem. O teste funciona sem TikFinity conectado, desativa o preset e cancela a fila anterior.
4. Para presentes reais, conecte ao TikFinity, clique **Ativar preset selecionado** e volte ao jogo.
5. Pare pelo botão ou **Ctrl + Alt + Pause/Break**. Se esse atalho estiver ocupado, o executor não habilita até o conflito ser resolvido.

As teclas vão para a janela em primeiro plano. Ctrl/Alt/Shift físicos ou uma tecla-alvo já pressionada podem interromper o executor; solte e reative. O jogo pode recusar entradas simuladas. Aplicativos elevados podem exigir que a ponte também seja iniciada como administrador. O programa não eleva permissões nem altera políticas do Windows automaticamente.

A fila é sequencial. Cada nova unidade do presente aplica as repetições configuradas; combos não repetem unidades já recebidas. Regras para o mesmo presente executam na ordem da lista. O cadastro permite mais de 30 macros, mediante aviso; a fila tem limite operacional separado de 1.000 pressionamentos ou 10 minutos estimados. Ao exceder, cancela e avisa, sem executar uma fila indefinida.

Troca de preset, edição de configurações, desconexão, importação de backup e reset geral param a execução. A ponte inicia sempre desativada e não reativa automaticamente após uma desconexão. **Recarregar/fechar apenas a página não encerra a ponte:** use Parar antes de sair, ou o atalho global. Um monitor nativo cancela as teclas se a ponte ficar sem responder por mais de 3 segundos.

## Dimensões no OBS

As caixas junto aos botões de copiar indicam **Largura × Altura em pixels** para as propriedades da Fonte de navegador. Depois ajuste a escala da fonte na cena. As recomendações reservam espaço para o conteúdo e status; não incluem o fundo quadriculado da prévia. Alterou layout, container, nível ou posições? Copie o novo link e aplique as dimensões exibidas.

## Dados, resets e migração

- **Diário**: reinicia só a competição diária da métrica escolhida.
- **Semanal**: reinicia só a competição semanal; preserva diário e mensal. A semana continua seguindo o calendário de segunda a domingo.
- **Mensal**: reinicia diário, semanal e mensal da métrica escolhida.
- Esses resets preservam histórico original, níveis e pontos. Consulta por datas mostra o histórico original; Pontos mostra o acumulado geral.
- **Reset de Presentes**: limpa destaques/unidades do dia, não as moedas.
- **Reset geral**: apaga participantes, dados coletados, rankings, níveis, pontos, metas, timer, seguidores, Herói/Vilão, transmissões, canal, presets e preferências; desliga a conexão. Exige digitar ZERAR.
- “Solicitar proteção do armazenamento” pede persistência ao navegador; ele pode recusar. Não é backup, nem impede limpeza manual dos dados do site.
- Sessões v0.3 são convertidas uma vez em registros com suas moedas e seu tempo realmente monitorado. Uma sessão que estava aberta é encerrada no último trecho salvo, sem inventar tempo. Exclua e cadastre novamente se desejar a duração real completa.
- Eventos antigos sem sessão continuam preservados nos rankings/histórico/backup. Não são automaticamente tratados como transmissões nem somados aos registros manuais de Análises.
- Não use uma versão antiga do painel sobre a mesma base após migrar. Feche abas antigas e atualize também as fontes de navegador.

## Análises e câmbio

Registre uma live encerrada: início (fuso do computador), duração em HH:MM:SS (horas podem ultrapassar 24), moedas, nome opcional e USD recebido opcional. O filtro considera a data/hora de início da live e inclui seu valor/duração completos. “Mês específico” usa o fuso configurado no painel. Os períodos de 24h/7d/30d são janelas móveis.

Os registros de Análises não adicionam pontos nem moedas aos participantes. Moedas recebidas pela conexão também não duplicam Análises. Excluir uma transmissão altera somente esses totais; não muda rankings, pontos ou a taxa já calibrada. Não há edição direta: exclua e cadastre novamente.

A estimativa usa moedas × USD por moeda; para reais, multiplica também por BRL por USD. O valor real informado permanece registrado em USD. Médias usam somente duração e moedas das transmissões selecionadas. Valores não representam saldo oficial nem cotação de compra de moedas do TikTok.

Fonte automática: [Frankfurter](https://frankfurter.dev/), endpoint público `/v2/rate/USD/BRL`. Consulta ao abrir e renovação quando a referência local tem mais de 6 horas; botão para atualizar imediatamente. A consulta pode retornar a última data útil. Em falha, mantém a referência salva e informa o problema. Use o seletor Manual para informar uma taxa. O @ e os registros das lives não são enviados à API de câmbio. A referência atual reavalia todas as estimativas; não é um histórico de taxas por live.

## Níveis

Padrão: 1 ponto por moeda + 1 por like. Pesos configuráveis em Conexão & dados valem para novos eventos. Nível 13 = 730; nível 300 = 11.829.139. Fórmula inferida dos valores fornecidos, não oficialmente confirmada pelo TikFinity:

`floor(50 × 1.03 × (1.03^(nível − 1) − 1) / 0.03)`

Resets de ranking ou ocultar o nível no overlay não apagam XP. O reset de pontos correspondente e o reset geral apagam XP. O painel não lê o saldo interno de pontos do TikFinity.

## Desenvolvimento e validação

`npm run build` gera os três HTMLs independentes a partir de `src/`, `ui/`, `styles.css` e `docs/`. `npm test` executa os testes com módulos nativos de Node. Não há npm install necessário para a aplicação.

81 testes automatizados aprovados, além de interface real em Chromium desktop/mobile nos modos web/local, com eventos e respostas de câmbio simulados. Detalhes em [docs/VALIDACAO.md](docs/VALIDACAO.md). TikFinity real, Windows/Edge, OBS e Live Studio ainda precisam de validação no PC do usuário.

Identidade roxa/amarela baseada no avatar AMARILLOU fornecido pelo criador. Avatar embutido; ícones TikTok/globo vetoriais e marca Live Pix carregada da fonte oficial, com texto de apoio preservado se a imagem estiver indisponível.

Criado por **xAMARILLOUx** · [TikTok](https://www.tiktok.com/@xamarilloux) · [Site](https://amarillou.com.br/) · [Apoiar](https://livepix.gg/xamarilloux)
