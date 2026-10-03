# v1.6.0

Veja [notas e limites](RELEASE-v1.6.0.md). Cronômetro multigatilhos/Subathon, tops com posição opcional, otimizações medidas e diagnóstico de execução ampliado.

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


# v1.5.1 — oficial

Promove a correção NUMPAD validada pelo usuário na prévia. O executor de teclado permanece idêntico ao testado; identificação, documentação e empacotamento atualizados. Presets e dados preservados.

# v1.5.1-test.1

NUM0–NUM9 e NUMDECIMAL usam scan codes no executor Windows. Comparação opcional com o modo virtual anterior pela variável AMARILLOU_NUMPAD_MODE=virtual. Serviço/launcher identificam a versão e o modo para evitar reutilizar um processo diferente. Sem alteração de fila, combos, presets ou dados. Compatibilidade com Roblox pendente de teste real.

# v1.5.0

Top 3 personalizável, placar negativo e hotkeys configuráveis, alertas visuais com áudio e enquadramento, comando X1 editável, duplas manuais e empate 0 × 0 com prazo. Consulte RELEASE-v1.5.0.md e docs/V1.5.md.

# v1.4.0

Consulte [as notas da versão](RELEASE-v1.4.0.md) e [o guia](docs/V1.4.md).

# Histórico de versões

## 1.3.0

[Notas desta versão](RELEASE-v1.3.0.md): filas simultâneas opcionais, teste em quantidade, diagnóstico do X1, overlays contextuais, automação de papéis e Batalha da Comunidade.

## Versões anteriores

- [0.4.0](RELEASE-v0.4.0.md)
- [0.5.0](RELEASE-v0.5.0.md)
- [0.6.0](RELEASE-v0.6.0.md)
- [0.7.0](RELEASE-v0.7.0.md)
- [0.7.1](RELEASE-v0.7.1.md)
- [0.8.0](RELEASE-v0.8.0.md)
- [0.9.0](RELEASE-v0.9.0.md)
- [0.9.5](RELEASE-v0.9.5.md)
- [1.0.0](RELEASE-v1.0.0.md)
- [1.1.0](RELEASE-v1.1.0.md)
- [1.2.0](RELEASE-v1.2.0.md)
- [1.2.5](RELEASE-v1.2.5.md)
