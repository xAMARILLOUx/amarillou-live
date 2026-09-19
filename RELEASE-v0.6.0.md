# AMARILLOU Live Control v0.6.0

[Abrir o painel](https://xamarilloux.github.io/amarillou-live/)

## Macros funcionais no modo local Windows

- Ative um preset por vez. Os presentes recebidos acionam suas teclas, combinações, repetições, intervalos e duração configurados.
- Suporte a letras, números, teclas de navegação e F1–F24, com Ctrl/Alt/Shift opcionais.
- Combos usam somente unidades novas: de 3 para 5 presentes, executam as 2 unidades adicionais.
- Testar macro com 5 segundos para voltar ao jogo ou Bloco de Notas. O teste cancela o preset/fila anteriores e não ativa resposta automática a presentes.
- Botão Parar todos os macros, atalho global **Ctrl + Alt + Pause/Break**, fila e histórico recente de execução.
- Trocar preset, editar configurações, desconectar, restaurar backup ou resetar a plataforma cancela a execução anterior. A ponte sempre inicia sem preset ativo; F5 no painel não reinicia a ponte nem desativa um preset já ativo.
- O executor local usa o PowerShell e as APIs do Windows automaticamente. Não exige Python, instalação de pacotes ou compilação manual. O modo online continua permitindo preparar e compartilhar presets, sem enviar teclas.

## Seleção de presentes corrigida

- Selecionar presente recebido abre um pop-up com busca por nome/ID, foto quando disponível e valor em moedas.
- A lista permanece fixa enquanto você escolhe. Use Atualizar lista para incluir novos presentes recebidos.
- Campos de edição não são reconstruídos a cada evento. O autocomplete de presentes foi substituído pelo seletor.
- ID manual continua disponível em uma seção avançada. Digitar um ID não consulta o catálogo do TikTok nem garante que ele seja válido.

## Dimensões dos overlays para OBS

Cada botão de copiar overlay agora mostra a largura e a altura recomendadas para a Fonte de navegador do OBS. O tamanho acompanha o tipo, layout, container, exibição do nível e quantidade de posições. Após configurar a fonte, ajuste a escala na cena. Ao mudar o visual ou quantidade de posições, copie o novo link e use as novas dimensões indicadas.

## Uso e limites

As teclas são enviadas à janela em primeiro plano. Se o jogo ou Live Studio estiver elevado como administrador, o executor poderá precisar do mesmo nível. Alguns jogos recusam entradas simuladas. Teclas físicas já pressionadas podem interromper a execução para evitar combinações involuntárias; solte as teclas e reative.

A fila tem proteção de 1.000 pressionamentos ou 10 minutos estimados: exceder interrompe o preset e mostra o motivo. Isso não é um limite de cadastro de macros. A recomendação de 30 por preset continua com Continuar/Cancelar e sem bloqueio obrigatório.

Não há recuperação de eventos perdidos durante desconexão. A ausência de resposta da ponte por mais de 3 segundos interrompe as teclas pelo monitor nativo. Se o atalho global estiver ocupado ou o PowerShell for bloqueado por uma política do computador, o painel informa a falha e não habilita a execução.

## Atualização

**Web:** substitua index.html, overlay.html e GUIA.html na mesma pasta do GitHub Pages. Atualize também README.md e estas notas. Feche abas antigas e use Ctrl+F5 após a publicação.

**Local:** pare os macros, encerre a ponte, extraia o projeto completo em uma pasta nova e execute INICIAR-LOCAL.bat. O save permanece em `%USERPROFILE%\.amarillou-live`. Não basta copiar apenas o HTML para atualizar o executor. Dados e presets anteriores são migrados sem reset automático.

Para transferir um preset do online para o local, exporte o JSON na aba Presets e importe-o no painel local. Para transferir a base inteira, use Conexão & dados → backup.

## Validação

81 testes Node aprovados, incluindo motor, fila, cancelamentos, protocolo nativo e integração WebSocket simulada. Interface online/local verificada em Chromium com driver de teclado simulado; 52 combinações de overlays medidas nas dimensões recomendadas. Compilação do componente C# verificada com linguagem C# 5 e estrutura de entrada Win64. A execução das APIs de teclado e do atalho global em Windows real não pôde ser validada neste ambiente; use primeiro Testar macro com o Bloco de Notas, depois valide no jogo. Não há garantia de compatibilidade universal com jogos, OBS ou Live Studio.

Criado por **xAMARILLOUx** · [TikTok](https://www.tiktok.com/@xamarilloux) · [Site](https://amarillou.com.br/) · [Live Pix](https://livepix.gg/xamarilloux)
