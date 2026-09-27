# AMARILLOU Live Control v1.3.0 — Macros simultâneos e Batalha da Comunidade

## Novidades
- **Macros simultâneos opcionais por preset:** teclas diferentes executam em paralelo; macros com a mesma tecla compartilham uma fila. A fila única continua sendo o padrão.
- **Somente teclas individuais:** retirada das opções Ctrl, Alt e Shift. Importações com modificadores são recusadas com explicação, sem conversão silenciosa.
- **Teste com quantidade:** informe de 1 a 1.000 pressionamentos, aguarde 5 segundos e teste pela fila real. Pausar e Parar funcionam no teste; presentes e pontos não são simulados.
- **Diagnóstico da execução:** último lote recebido, ações por tecla e média do executor. Intervalos e duração das teclas continuam respeitando sua configuração.
- **Rankings à esquerda ou à direita:** fotos e nomes podem ficar no lado direito sem espelhar o texto.
- **X1 mais claro:** botões Ativar/Desativar, diagnóstico dos comandos recebidos e comando único `!desafiar @usuario`.
- **Overlay X1 integrada:** próximas batalhas abaixo da luta; tela transparente quando ociosa. Ranking separado com opção de aparecer somente durante as batalhas. Links de fila e tutorial preservados.
- **Herói/Vilão automáticos:** último doador, presentes aceitos/ignorados e seleção por catálogo. Seleção manual continua disponível; em sobreposição, o vilão tem prioridade.
- **Destaques alternados:** um overlay alterna Último Presente, Combo Recente, Maior Combo e Presente Mais Caro; intervalo configurável, padrão 10 segundos.
- **Batalha da comunidade:** rodada aberta a todos, moedas e likes lado a lado, Top 3/5, timer e prorrogação por virada na liderança das moedas nos segundos finais. Classificações independentes dos rankings permanentes e do X1.

## Atualização
1. Feche a ponte antiga antes de abrir o novo EXE.
2. Para Windows: use `EXECUTAVEL-WINDOWS/AMARILLOU-Live-Control-v1.3.0-Portable.exe`.
3. Para o site: envie o **conteúdo de CODIGO-FONTE** à raiz publicada pelo GitHub Pages. Essa pasta já contém o site compilado; não precisa executar npm para publicar.
4. Depois de alterar visual, copie novamente o link da overlay pelo painel local para usar no OBS.

Os dados ficam no mesmo local. Nenhum preset inicia automaticamente. A fila de teclado não é restaurada após fechar o programa. Batalhas em andamento restauram pausadas.

## Validação e limites
Testes automatizados e de navegador documentados em `docs/VALIDACAO.md`. Teclado real, aceitação do EXE pelo Windows, OBS/Live Studio e compatibilidade com cada jogo precisam de validação no PC. O executável é portátil, sem instalador, inclui Node.js e continua usando a janela do terminal.

Criado por **xAMARILLOUx** · https://amarillou.com.br/ · https://livepix.gg/xamarilloux
