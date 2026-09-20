# AMARILLOU Live Control v0.9 — Site + Executável

Edição de testes antes da v1.0.

- Captura automática de Análises com botão destacado Ativar/Desativar.
- Exclusão em lote de macros e presets, com uma confirmação por lote.
- Histórico de presentes com coleta automática e reset independente dos recordes.
- Controles manuais recolhidos para separar lives quando faltarem sinais da origem.
- Executável Windows 10/11 x64 sem instalador, com Node incluído.
- Pastas separadas para executável, atualização do site e código-fonte.

## Limites conhecidos

A automação usa os eventos observados, roomId e streamEnd quando fornecidos.
Não há garantia de identificar todo início/fim real, nem recuperar tempo anterior
à conexão. Silêncio e desconexão preservam o histórico. O gatilho de entrada no
clube de fãs ficou de fora por falta de confirmação confiável do evento.

## Atualização

Feche a ponte anterior antes de abrir o novo .exe. Dados locais mantidos no mesmo
formato e pasta. Para o site, envie o conteúdo de SITE-GITHUB-PAGES à raiz publicada.
Não mova a aplicação para outro endereço se quiser continuar usando o mesmo
armazenamento do navegador. Recomenda-se exportar backup antes de atualizar.

112 testes automatizados passaram; interface conferida no navegador em modos web
e local. Execução nativa Windows e macros reais precisam de validação do usuário.
Executável sem assinatura digital. Publicar como pré-release durante os testes.

Criado por xAMARILLOUx — https://amarillou.com.br/
