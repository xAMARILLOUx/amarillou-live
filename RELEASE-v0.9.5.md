# AMARILLOU Live Control v0.9.5 — Overlays e Presets

Edição de testes antes do lançamento 1.0.

## Overlays
- Rankings de moedas e likes/taps com nome e valor próximos, sem o espaço excessivo.
- Nomes longos limitados a duas linhas, sem sobreposição com os valores.
- Novos overlays: Top 10 de Combos históricos e Top 10 de Presentes Mais Caros.
- Links e dimensões recomendadas disponíveis no painel. Recomendamos copiar novamente
  os links e conferir largura/altura da fonte de navegador no OBS após atualizar.

## Presets e macros
- Uso do teclado físico deixa de desativar o preset.
- Pausar mantém a coleta de gatilhos e a fila; Retomar executa em ordem.
- A tecla em andamento termina antes da pausa; Parar interrompe e limpa a fila.
- Limite: 1.000 pressionamentos ou 10 minutos estimados de ações pendentes.
  Ao exceder, somente o novo lote é descartado, com aviso; o preset e a fila anterior permanecem.
- Reconexão automática ao TikFinity mantém o preset. Desconectar manualmente para os macros.
- Duplicação de presets e macros, busca por nome/tecla/gatilho e filtro por tipo.
- Avisos de teclas repetidas e possíveis gatilhos sobrepostos, respeitando presentes ignorados.
  O usuário pode manter a configuração intencionalmente.
- Estado Ativo/Pausado também aparece no topo do painel.

Erros reais do executor e a parada de emergência ainda interrompem as ações. Editar/excluir
configurações de presets continua interrompendo a execução para não misturar a configuração
antiga com a nova. Teclas físicas podem combinar com as simuladas: escolha atalhos adequados.

## Histórico de presentes
Nova opção em Conexão e Dados: “Iniciar novo histórico de presentes ao conectar manualmente”.
Desativada por padrão. Após uma conexão manual bem-sucedida, arquiva/limpa a lista recente,
preservando os recordes históricos e todos os registros de Análises. Reconexão automática
não reinicia o histórico. A captura de Análises mantém o comportamento anterior.

## Pacote
- EXECUTAVEL-WINDOWS: .exe para usar e anexar ao Release.
- CODIGO-FONTE: projeto completo, já com o site atualizado, para enviar ao repositório.
- LEIA-PRIMEIRO.txt: instruções. Sem uma terceira pasta duplicando as páginas do site.

Windows 10/11 x64. Não requer instalação de Node.js; TikFinity continua necessário.
Feche a ponte anterior antes de abrir a nova. Dados preservados no mesmo formato/pasta.
O executável ainda usa terminal. Ícone perto do relógio fica planejado para a v1.1.

## Validação
119 testes automatizados passaram. Interface web/local, fila, duplicação, avisos, busca,
isolamento do histórico e geometria dos overlays conferidos em Chromium com eventos simulados.
O executável foi compilado e seu conteúdo conferido. Execução nativa Windows e teclas reais
precisam do teste no PC. Arquivo sem assinatura digital. Publicar como pré-release.

Criado por xAMARILLOUx — https://amarillou.com.br/
