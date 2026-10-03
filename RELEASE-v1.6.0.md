# AMARILLOU Live Control v1.6.0 — Cronômetro e desempenho

## Novidades
- Cronômetro com gatilhos combináveis: moedas, presentes específicos e seguidores. Valores positivos acrescentam tempo; negativos reduzem.
- Regra específica de presente tem prioridade sobre a regra por moeda. Combos continuam contabilizando somente unidades novas.
- Proteção de seguidores no timer: uma contribuição por pessoa a cada 24 horas.
- Subathon com reposição automática opcional (Beta), limites e incrementos configuráveis. Identificado como automático na overlay, sem simular doações.
- Pausar interrompe a contagem e a reposição, mas acumula contribuições reais. Encerrar suspende os gatilhos até iniciar novamente.
- Tops de Combos e Presentes Mais Caros voltam ao valor ao lado do nome por padrão, com opção Abaixo. Recordes preservados.

## Desempenho e diagnóstico
- Menos trabalho por evento: reaproveitamento de formatadores de data e controle incremental da retenção de eventos.
- Compartilhamento de estado serializado entre consultas próximas (até 100 ms); overlays dispensam o status detalhado dos macros.
- Rankings, pontos, análises e histórico de presentes não são recalculados no painel enquanto suas abas estão ocultas. Navegação atualiza imediatamente.
- Diagnóstico opcional ampliado: processamento do evento, evento até fila/conclusão, agendamento do processo, serialização e gravação do estado. Duas coletas limitadas, sem texto de chat.
- Teste sintético de 12 mil eventos: 8.133 ms na 1.5.2 e 305 ms na 1.6.0, com os mesmos totais (uma execução em ambiente Linux de desenvolvimento). Não representa latência garantida no Windows nem comprova a resolução do atraso observado em live.

## Executável
- Encerramento de console 0xC000013A não gera mais a janela genérica de falha.
- Outros erros continuam visíveis e registrados. A mensagem não sugere conflito de porta sem diagnóstico.
- Preservado o executor nativo de teclas da 1.5.2, incluindo a correção do NUMPAD.

## Arquivos
- EXECUTAVEL-WINDOWS: EXE portátil para Windows 10/11 x64, sem instalador.
- SITE-GITHUB-PAGES: conteúdo pronto para atualizar o site.
- CODIGO-FONTE: projeto completo, testes e site compilado.

Feche a ponte anterior antes de abrir o novo EXE. Os dados continuam em %USERPROFILE%\.amarillou-live. Para usar o layout opcional dos tops, copie um novo link da overlay. Links antigos sem a opção voltam ao padrão ao lado.

O modo Subathon é restaurado pausado ao reabrir a ponte ou recarregar o painel web; não repõe tempo enquanto o serviço está fechado. F5 no painel local mantém o timer no servidor.

## Validação e limites
230 testes: 229 aprovados, 1 teste nativo Windows ignorado neste ambiente. Chromium: controles do timer, persistência, oito layouts de tops, responsividade e regressões; nenhum erro JavaScript. Teste integrado de WebSocket simulado, presentes/likes, macros simulados, quatro consumidores de overlay e persistência preservou todas as contagens esperadas.

O teclado real, OBS e Roblox precisam ser validados no Windows durante uma live. O código 1 de encerramento ainda depende do log do usuário para identificar a causa. Não foi adicionada integração Streamer.bot nem um novo processo de fila: as otimizações medidas foram priorizadas sem mudar a arquitetura do executor.
