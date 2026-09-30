# AMARILLOU Live Control v1.5.2 — Diagnóstico dos macros e rankings compactos

- Diagnóstico opcional dos macros no modo local: tabela de tempos, média recente, maior demora e exportação. Desativado ao abrir a ponte; preserva somente as duas últimas coletas.
- X1 sem pontuação negativa: vitória +1, derrota −1 até o mínimo zero. Correção dos negativos antigos e do Desfazer, com histórico preservado.
- Rankings com pontuação abaixo de nome ou @, e nível opcional junto à foto.
- Batalha da comunidade mais legível, colunas próximas, destaque Top 3 e grade opcional.
- Nomes do confronto X1 maiores e com contraste reforçado sobre fundo transparente.
- Correção do NUMPAD da v1.5.1 preservada; tempos e gatilhos dos macros mantidos.

## Download e atualização
- **EXECUTAVEL-WINDOWS:** EXE portátil Windows x64, Node incluído.
- **SITE-GITHUB-PAGES:** arquivos para atualizar somente o site.
- **CODIGO-FONTE:** projeto completo, incluindo o site compilado. Publique esta pasta OU o conteúdo de SITE-GITHUB-PAGES.

Feche a ponte anterior antes de abrir o novo EXE. Os dados continuam na pasta do usuário; não é necessário resetar ou recriar presets. Por haver migração da pontuação negativa do X1, exporte um backup antes de atualizar caso queira conservar uma cópia exata dos valores anteriores.

## Diagnóstico
Presets → Últimas ações → Ativar diagnóstico detalhado. Depois do uso, desative e clique em Exportar diagnósticos. O diagnóstico não comprova reconhecimento da tecla pelo jogo. A causa da lentidão reportada ainda está em investigação; esta versão fornece medições, sem prometer que o atraso já foi corrigido.

Os testes automatizados e de navegador estão documentados em `docs/VALIDACAO-v1.5.2.md`. Execução real no Windows/OBS/jogo ainda requer teste do usuário.
