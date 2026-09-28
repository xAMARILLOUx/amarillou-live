# AMARILLOU Live Control v1.4.0 — Duelo, placar e alertas Beta

- X1 simplificado: `!duelo` forma duplas por ordem de chegada, sem @. `!cancelarduelo` cancela a espera.
- Placar de vitórias com meta, controles, overlay e atalhos globais locais (Beta).
- Ctrl, Alt, Shift e teclas do teclado numérico. Presets com modificadores usam fila sequencial.
- Macros simultâneos movidos para Opções avançadas e identificados como Beta.
- Semana configurável nos rankings de likes/moedas; ícones opcionais ao lado dos valores.
- Inclusão/correção manual de recordes de combos e presentes mais caros, sem alterar outras contagens.
- Texto personalizável de baús disponíveis e temporizador com acréscimo por moeda.
- Alertas Beta: som, vídeo e GIF por presente/seguidor, upload local ou URL HTTPS, fila independente.
- Logs persistentes do serviço local e gravações de save agrupadas.

## Antes de atualizar
Exporte um backup em Conexão & dados e encerre o EXE anterior. A atualização não reseta os recordes. O save local permanece em `%USERPROFILE%\.amarillou-live`.

## Arquivos
- EXECUTAVEL-WINDOWS: EXE portátil para Windows x64, com Node incluído.
- SITE-GITHUB-PAGES: envie o conteúdo para a raiz publicada do site.
- CODIGO-FONTE: projeto completo para desenvolvimento; também contém as páginas compiladas.

## Limites e validação
A causa do erro 134 ainda não foi reproduzida nem confirmada. Os novos logs ajudam a investigar uma nova ocorrência. Atalhos globais, teclas nativas, Num Lock e reprodução no OBS/Live Studio precisam de teste real no Windows. Macros simultâneos e alertas permanecem Beta.

A troca do início da semana é bloqueada durante uma competição semanal resetada, evitando reintroduzir pontos anteriores. Mídias de alertas não são incorporadas ao backup JSON; copie também a pasta `media` ao trocar de computador. Não foi incluído catálogo externo de sons.

Criado por xAMARILLOUx — https://amarillou.com.br/
