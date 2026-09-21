# AMARILLOU Live Control v1.1 — Nova identidade e controles no topo

- Tema preto, grafite e amarelo #FFD100, com avatar, logo e símbolo XX da marca xAMARILLOUx.
- Títulos em Bebas Neue e textos em Montserrat. Fontes e imagens incluídas no pacote.
- Interface, cards, botões, pop-up e guia atualizados para desktop e celular.
- Iniciar nova coleta e Encerrar coleta no topo, disponíveis em qualquer aba.
- Pausar/Retomar preset no topo, ao lado de Parar. Retomar espera 5 segundos. Cancelar retomada preserva a fila; Parar limpa os pendentes.
- Análises: verde para atividade em coleta; amarelo para espera por eventos ou conexão interrompida. Registros encerrados sem marcação. Indicadores acompanhados de texto.
- Instruções principais atualizadas para abrir pelo .EXE, que já inclui Node.js. O .bat permanece como alternativa para executar o código-fonte.

## Comportamento da coleta
Os controles não iniciam nem encerram a live no TikTok. Encerrar coleta fecha o registro observado; novos eventos podem abrir outra coleta automaticamente. A captura de Análises continua opcional. Uma conexão aberta sozinha não comprova atividade: após 60 segundos sem evento contabilizado, o indicador fica amarelo. Isso não encerra a transmissão nem altera os valores.

Mantidos dados, rankings, pontos, presets, regras dos combos, fila e overlays 800 × 600. O formato dos dados permanece igual. O executável continua com a janela do serviço; ícone na bandeja não faz parte desta entrega.

## Arquivos e atualização
EXECUTAVEL-WINDOWS: .EXE portátil para usar/anexar ao Release.
CODIGO-FONTE: projeto completo com site compilado; envie seu conteúdo à raiz publicada no GitHub Pages.
PREVIAS: imagens da interface.

Feche o serviço antigo antes de abrir a nova versão. Atualize as fontes do OBS após atualizar a ferramenta.

## Verificação
127 testes automatizados. Interface online/local conferida em Chromium em 1440, 768, 390 e 360 px, incluindo controles globais e indicadores. Windows nativo, teclas reais e OBS precisam do teste no PC.

Criado por xAMARILLOUx · https://amarillou.com.br/
