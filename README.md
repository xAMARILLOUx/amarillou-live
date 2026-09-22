# AMARILLOU Live Control v1.2.0

[Usar online](https://xamarilloux.github.io/amarillou-live/) · [Baixar executável](https://github.com/xAMARILLOUx/amarillou-live/releases)

Painel para TikTok LIVE com TikFinity, rankings, presentes, pontos, análises e macros locais. Criado por **xAMARILLOUx**.

## Novidades
- **Meta de Baú:** calculadora, contador por moedas de presentes, baús disponíveis e liberação manual, simulador, comparação de metas e histórico diário.
- **Overlay do baú:** barra, título, valores, porcentagem, baús disponíveis, fundo e largura configuráveis, preview e sincronização com o painel.
- **Macros individuais:** caixa Ativo em cada linha. Desmarcar remove somente as ações pendentes daquele macro; os outros continuam.
- **Rankings verticais ou horizontais:** escolha uma coluna ou duas colunas em likes, moedas e rankings históricos de presentes. Top de presentes com 1, 3, 5 ou 10 participantes.
- **Fotos alinhadas sem fundo:** todas as linhas têm o mesmo ponto de início, independentemente do comprimento dos nomes.

## Arquivos do pacote
- `EXECUTAVEL-WINDOWS/`: .EXE portátil, Node.js incluído. Abra-o e mantenha o serviço aberto. Não é instalador.
- `CODIGO-FONTE/`: projeto completo **e site já compilado**. Para GitHub Pages, envie o conteúdo desta pasta à raiz publicada do repositório, substituindo os arquivos antigos. Não envie a pasta do executável para o site.
- `PREVIAS/`: imagens dos layouts.
- `RELEASE.md`: título e descrição para o GitHub Release.

Feche o serviço antigo antes de abrir o novo .EXE. O navegador abre em http://127.0.0.1:8787/. A janela do terminal continua necessária; não há ícone de bandeja nesta entrega.

## Usar a Meta de Baú
1. Conecte ao TikFinity e abra **Meta de Baú**, abaixo de Overlays.
2. Confira as seis configurações financeiras e salve. Os valores iniciais são exemplos, não tarifas oficiais.
3. Presentes aceitos alimentam o contador. Com a configuração inicial, 1.000 moedas geram 2 baús disponíveis e deixam 200/400 para o próximo.
4. Crie o baú no TikTok e clique **Baú liberado**. A ferramenta apenas registra a liberação: não compra nem cria baús.
5. Copie o overlay pelo modo local para OBS/Live Studio, com fonte de navegador **800 × 600**. O preview usa a mesma página da fonte.

Veja [as regras completas dos baús](docs/META-DE-BAU.md). A Meta de Baú utiliza a conexão existente e apenas moedas novas dos combos. Presentes sem valor conhecido não contribuem. Não há recuperação de eventos anteriores ou perdidos durante desconexões.

## Macros: Ativo versus Pausar
**Ativo em cada linha:** desmarcar ignora gatilhos futuros e remove pendentes apenas daquele macro. A tecla já pressionada termina e é liberada. Contagens parciais de curtidas daquele macro são descartadas. Reativar só considera eventos novos. Isso também fica salvo ao reabrir, duplicar, exportar e importar.

**Pausar preset:** guarda a fila e aceita novos gatilhos de macros marcados. **Retomar:** espera 5 segundos. **Parar:** limpa a fila. Continuam os limites de 1.000 pressionamentos ou 10 minutos pendentes. [Combos e fila](docs/COMBOS-E-FILA.md).

Editar teclas/gatilhos continua parando o preset. A caixa Ativo é a exceção, feita para uso durante a live. Nenhum preset inicia automaticamente ao abrir o programa.

Exportações de presets agora usam formato **4**; versões antigas são aceitas na importação. Não importe o novo formato em versões anteriores: elas não conhecem os macros desmarcados.

## Layout dos rankings
Em Rank → Likes/Taps ou Moedas, escolha **Disposição do ranking** e aplique. A mesma configuração vale para os períodos diário, semanal e mensal daquela métrica. Em Presentes, a disposição e a quantidade afetam Top Combos e Presentes Mais Caros, que continuam históricos.

Depois de mudar disposição/quantidade, **copie novamente o link** para o OBS. O canvas continua 800 × 600; uma lista vertical de dez pessoas reduz proporcionalmente a composição para caber. Os nomes e valores continuam próximos. A remoção do fundo não muda mais o alinhamento das fotos.

## Dados e atualização
Web: IndexedDB deste site/perfil. Local: `%USERPROFILE%\.amarillou-live`, fora do executável. Os históricos web e local são separados; backup permite transferi-los. O formato atual aceita backups antigos, iniciando o módulo de baús vazio e os macros antigos marcados.

Não utilize a mesma base de dados alternando com versões antigas, que desconhecem os novos campos. Preserve um backup antes de voltar a uma versão anterior.

## Desenvolvimento
Node.js ≥22.15: `npm start` inicia a ponte; `npm run build` gera `index.html`, `overlay.html` e `GUIA.html`; `npm test` executa testes. `INICIAR-LOCAL.bat` permanece como alternativa para desenvolvedores que executam o código-fonte. Para uso normal, prefira o .EXE.

[Validação e limitações](docs/VALIDACAO.md) · [Construção do portátil](portable/BUILD.md)

TikTok, TikFinity e OBS são produtos de terceiros. Windows nativo e compatibilidade com cada jogo precisam ser testados no computador do streamer.

Criador: [TikTok](https://www.tiktok.com/@xamarilloux) · [Site](https://amarillou.com.br/) · [Apoiar](https://livepix.gg/xamarilloux)
