# v1.5.0 — Top 3, alertas combinados e X1 configurável

Atualização do AMARILLOU Live Control para web e Windows portátil.

## Novidades
- Rankings de Likes/Taps e Moedas: Top 3 com ouro, prata e bronze e destaque progressivo de tamanho. Duas opções independentes na personalização das overlays.
- Placar de vitórias: valores negativos e atalhos globais personalizáveis. Alt + Shift + = / - continuam os padrões.
- Alertas: imagem/GIF com áudio separado, vídeo com som ativado/desativado e opções de encaixar, preencher ou esticar na dimensão real da fonte.
- X1: comando de entrada editável, com `!batalha` como padrão. Tutorial e instruções acompanham a configuração.
- X1: streamer pode selecionar dois participantes e adicionar uma batalha à fila sem exigir comando do chat.
- X1: tratamento de 0 × 0 com prazo de morte súbita/tempo extra, decisão manual ou empate imediato. Sem vencedor, a batalha é registrada sem alterar pontos e a fila avança.
- Controle manual **Empatar / anular**, com confirmação.

## Instalação e atualização
- **Windows:** baixe o EXE portátil em `EXECUTAVEL-WINDOWS`. Não precisa instalar Node.js. Feche a versão anterior antes de abrir.
- **GitHub Pages:** publique o conteúdo de `SITE-GITHUB-PAGES` na raiz publicada.
- **Código completo:** use `CODIGO-FONTE`, que também contém as páginas compiladas. Não precisa publicar as duas pastas.
- Exporte backup antes de atualizar. Os dados locais permanecem na mesma pasta e os recordes não são resetados. Preserve também a pasta `media` ao transferir mídias locais para outro PC.

## Como usar
- **Rankings:** ajuste Ouro/prata/bronze e Destaque de tamanho; copie novo link.
- **Overlays → Placar:** marque Personalizar atalhos, configure e salve. Atalhos globais precisam estar ativados.
- **Overlays → Alertas:** mídia principal + Áudio adicional; para vídeo, escolha som e enquadramento.
- **Batalhas / X1:** configure o comando e o comportamento do empate; use Selecionar participantes para montar uma dupla manual.

## Validação e limites
210 testes automatizados passaram. Painel web/local e overlays verificados em Chromium, incluindo GIF com áudio, vídeo mudo, fontes 1080 × 1920 e 800 × 600, fila e empate automático. Sem erros de JavaScript nos cenários exercitados.

O EXE foi compilado e sua integridade conferida. Não foi executado neste ambiente Linux. Atalhos globais, teclado físico, OBS/Live Studio e live real ainda precisam de teste no Windows. Alertas e atalhos permanecem Beta. Arquivos de mídia precisam de codecs compatíveis; a ferramenta não garante a entrega de comandos filtrados pelo TikTok.

A fila de macros não foi reestruturada. A causa do encerramento código 134 relatado anteriormente continua não confirmada; logs persistentes foram mantidos.

Criado por **xAMARILLOUx** · https://amarillou.com.br/ · https://livepix.gg/xamarilloux
