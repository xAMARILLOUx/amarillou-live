# AMARILLOU Live Control v0.8.0

## Presentes ignorados nas regras de moedas

Ao criar/editar um macro com gatilho **Faixa de moedas**, selecione vários presentes recebidos ou informe os IDs separados por vírgula. Um ID ignorado nunca dispara aquela regra, mesmo dentro da faixa. A exclusão não interfere nos rankings, metas, outros macros nem no recebimento do evento. Continua existindo apenas um preset ativo por vez; para tratar Rosa separadamente, crie a regra específica e a regra de faixa no mesmo preset, ignorando Rosa na faixa.

## Análises: captura opcional de atividade

A opção começa **desativada**. O formulário manual continua disponível e funciona como antes.

**Limitação: esta versão não garante detectar o início e o fim reais da live em todas as versões do TikFinity.** Não foi possível confirmar uma sinalização universal de ciclo da transmissão. A captura implementada registra a atividade observada: inicia no primeiro evento aceito e soma somente intervalos de até 60 segundos entre eventos. Não conta tempo por manter o WebSocket conectado. Silêncio, desconexão ou reinício não acrescentam tempo não observado. Portanto, transmissões com pouca interação terão duração estimada menor que a duração real.

Quando houver `streamEnd`, a coleta é encerrada. Quando os eventos trouxerem uma `roomId` diferente da sala anterior conhecida, uma nova coleta é aberta. Isso depende dos dados efetivamente enviados pelo TikFinity. Se esses sinais não chegarem, use **Presentes → Encerrar transmissão / Nova transmissão**. Não tratamos queda de conexão como fim de live e não usamos silêncio para apagar o histórico.

Os registros aparecem como **automática / tempo observado**, com moedas recebidas durante a captura. Ativar/desativar não recupera atividade anterior. Ao reativar, começa outro trecho automático na próxima interação. F5 preserva a identificação, mas não soma o tempo sem observação. Registros manuais e automáticos entram nas análises; não cadastre a mesma transmissão duas vezes. Para corrigir a duração, encerre a coleta, exclua o registro automático e cadastre a transmissão manualmente.

## Meta de Presentes

Em Overlays, configure a meta em **moedas**. Um presente de 5 moedas soma 5; um de 100 soma 100. Combos somam somente as unidades novas. Preço ausente não é inventado. Tem reset com confirmação, personalização do container e link próprio de overlay, com tamanho recomendado de 640 × 260 px com container (640 × 220 sem).

## Histórico e recordes de presentes

Em Presentes, escolha:

- **Presentes recentes:** eventos da coleta atual, agrupados por combo. Rolagem e carregamento de mais registros. Nova transmissão arquiva a lista anterior e abre outra vazia. O seletor permite consultar transmissões anteriores.
- **Top 10 — Combos históricos:** uma posição por participante, representada pelo maior combo observado. Recordes menores fora do Top 10 também são guardados para futuras classificações.
- **Top 10 — Presentes mais caros:** uma posição por participante, pelo maior preço unitário de presente, sem somar o combo ou pontos. Preços ausentes não entram nesse ranking.

Os dois recordes são independentes dos resets de likes, moedas, pontos e destaques do dia. Somente o reset geral ou a restauração de outro backup substitui esses dados. A coleta detalhada começa na v0.8; dados antigos agregados não são usados para inventar combos ou transmissões anteriores. O limite prático continua sendo o armazenamento disponível.

## Modo local com um clique

- **INICIAR-LOCAL.bat** inicia a ponte e abre o painel no navegador padrão após o servidor estar pronto.
- Se uma ponte compatível já estiver aberta, outro clique abre apenas o painel.
- **ABRIR-PAINEL.url** abre somente o endereço; use quando a ponte já estiver rodando.
- Para um ícone na área de trabalho, crie um atalho para INICIAR-LOCAL.bat, mantendo a pasta completa extraída.
- Se uma versão antiga estiver usando a porta 8787, feche a janela antiga antes de iniciar a v0.8. Não encerramos processos automaticamente.

## Atualização

Online: substitua index.html, overlay.html e GUIA.html. Local: feche a ponte antiga e extraia o pacote completo. Histórico e configurações são migrados automaticamente, sem reset. Esquema de dados 7 (aceita versões 1–7); presets exportados usam formato 3 (importa também 1 e 2). Não abra backups/presets novos em versões antigas: elas não conhecem as exclusões e os novos registros.

## Verificação

103 testes automatizados aprovados. Interface online/local verificada no Chromium com WebSocket e teclado simulado, incluindo exclusões, captura, arquivos de transmissão, recordes, meta, overlay, persistência e tela mobile. Inicializador testado com servidor HTTP real e abertura de navegador simulada. O clique em .bat/.url e a execução real de teclado no Windows precisam de teste no computador do usuário; este ambiente é Linux.
