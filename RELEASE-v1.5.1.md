# v1.5.1 — Correção do teclado numérico nos macros

Versão oficial do AMARILLOU Live Control.

## Correção
NUM0–NUM9 e NUMDECIMAL passam a ser enviados por scan code no executor Windows. Isso corrige o caso relatado em que outros programas reconheciam NUM1, mas um jogo do Roblox não reagia ao macro.

O funcionamento foi confirmado pelo usuário na edição de teste, inclusive com Num Lock desligado. A versão oficial mantém exatamente a mesma implementação de teclado validada. Outros jogos podem interpretar Num Lock de maneira diferente.

## Preservado
- Fila, pausa, retomada e gatilhos dos macros.
- Presets existentes, rankings, recordes e demais dados.
- Funcionalidades da v1.5.0.

O launcher agora identifica a versão e o modo numérico para evitar abrir silenciosamente uma ponte anterior.

## Atualização
Feche o terminal da versão anterior e abra o novo EXE. Não é necessário recriar os presets. Exporte backup antes de atualizar.

- EXECUTAVEL-WINDOWS: EXE portátil para anexar ao release.
- SITE-GITHUB-PAGES: conteúdo para publicar na raiz do site.
- CODIGO-FONTE: projeto completo, incluindo as páginas compiladas; alternativa à pasta do site.

O ajuste do teclado funciona no modo local. Atualizar apenas o site não corrige um EXE antigo.

## Validação
211 testes aprovados; 1 teste nativo adicional exige Windows e ficou ignorado no ambiente Linux. EXE compilado e integridade conferida. O comportamento do teclado foi confirmado pelo usuário na prévia; o executor nativo é idêntico nesta versão oficial.

Não é necessário marcar este release como pré-lançamento. Alertas e atalhos globais mantêm seus rótulos Beta próprios; esta correção não altera o estágio desses recursos.
