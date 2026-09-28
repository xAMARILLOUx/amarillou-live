# v1.4.0 — Batalhas X1, overlays em alta resolução e correção do baú

## Novidades
- Batalhas entre dois viewers por comandos de chat: `@usuario desafiar`, `@usuario !desafiar`, `!desafiar @usuario` e `desafiar @usuario`.
- Convites com prazo/cooldown, aceitação autorizada, fila FIFO, preparação de 3 segundos e uma batalha ativa por vez.
- Modos Moedas, Manual e Híbrido; empate com morte súbita, tempo extra ou decisão manual.
- Classificação própria (+1 vitória / −1 derrota), histórico, desfazer, ajustes administrativos, resets confirmados e backup integrado.
- Pausa ao perder conexão; restauração segura de luta em PAUSADA após reinício do servidor ou recarga do painel web.
- Overlays independentes de batalha, classificação, fila e tutorial controlável. Demo interativo com seis participantes.
- Coroa opcional no primeiro lugar, animação de posições, controles independentes de nome/@ e cor personalizada dos textos.
- Fontes em 1600 × 1200 (alta resolução), 1080 × 1920 (vertical) ou 800 × 600. Links antigos preservam o canvas anterior.

## Correção
- Prévia da Meta de Baú: redimensionamento corrigido para não causar “ResizeObserver loop completed with undelivered notifications”.
- Preservadas as opções vertical/horizontal e o alinhamento das fotos sem container dos rankings.

## Atualizar
Feche a ponte antiga antes de abrir o novo EXE. A pasta `EXECUTAVEL-WINDOWS` contém o portátil Windows x64. A pasta `CODIGO-FONTE` contém o projeto e o site compilado: envie **o conteúdo dela para a raiz do repositório** para atualizar o GitHub Pages. Não envie o EXE ao Pages; publique-o como anexo do Release.

O X1 vem desativado. Abra Batalhas / X1, configure e ative. A aplicação não cria baús no TikTok nem envia mensagens de resposta ao chat. Ela interpreta os eventos que o TikFinity efetivamente entregar.

Este X1 substitui a proposta anterior de disputa geral com sniper. Não inclui melhor de 3, torneios, apostas ou prorrogação por troca do top global.

Validação e limitações: consulte `docs/VALIDACAO-v1.4.0.md`. O EXE precisa ser testado no Windows com sua live e OBS antes do uso em produção.
