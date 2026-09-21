# AMARILLOU Live Control v1.0.0 — Retomada com espera e overlays 800 × 600

- Retomar aguarda 5 segundos antes de voltar a executar a fila. A contagem aparece no painel, com a opção Cancelar retomada para continuar pausado.
- Durante a espera, os pendentes são preservados e novos gatilhos entram na fila, respeitando os limites existentes. Parar cancela a contagem e limpa a fila.
- Todos os overlays agora recomendam 800 × 600 no OBS. A composição é centralizada e ajustada para caber; rankings com mais de cinco entradas usam duas colunas, em ordem de cima para baixo na primeira coluna e depois na segunda.
- Mantidos nomes, valores, níveis, Top Combo, dados salvos e regras dos gatilhos/combos.
- Ajuda dos Presets corrigida para descrever o comportamento real da fila, sem alterar sua lógica.

## Atualização
Feche a ponte antiga antes de abrir o novo executável. No OBS, configure todas as fontes de navegador com largura 800 e altura 600 e atualize a fonte. Os links existentes continuam válidos na mesma instalação; se necessário, copie-os novamente.

EXECUTAVEL-WINDOWS contém o .exe portátil, sem instalar Node.js.
CODIGO-FONTE contém o projeto completo e as páginas já compiladas: envie seu conteúdo à raiz publicada do repositório para atualizar o site. O .exe é anexado ao Release, não precisa ir ao repositório do site.

## Validação
126 testes automatizados passaram. Interface online/local verificada em Chromium com eventos e teclado simulados, incluindo espera real de 5 segundos. Conferidas 90 combinações de overlays em 800 × 600. Executável recompilado e conteúdo extraído conferido. A execução do .exe e das teclas reais no Windows/OBS precisa ser validada no PC do usuário.

Base: última entrega disponível neste projeto, v0.9.5. Esta atualização está identificada como v1.0.0. O terminal permanece; ícone junto ao relógio não foi incluído.

Criado por xAMARILLOUx · https://amarillou.com.br/
