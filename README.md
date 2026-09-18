# AMARILLOU Live Control — v0.3.0

Painel modular de TikTok LIVE em português. HTML, CSS e JavaScript nativos, sem dependências de produção. Os HTMLs entregues já incluem o código e o estilo; não exigem build para publicar. Hospedagem estática no GitHub Pages; ponte local opcional para compartilhar estado com OBS/Live Studio.

**Comece por [ATUALIZAR-v0.3.txt](ATUALIZAR-v0.3.txt) e [GUIA.html](GUIA.html)**, que pode ser aberto diretamente no navegador, ou pelo guia abaixo.

## Incluído

- Rankings independentes de likes/taps e moedas: dia, semana, mês, histórico por datas, competições arquivadas e resets hierárquicos com confirmação.
- Último presente, combo recente, maior combo e presente de maior valor unitário do dia.
- Herói e vilão escolhidos por @, identificação pelos eventos da live e imagem/nome manuais opcionais.
- Overlays individuais ou dupla; Top 1, 3, 5 e 10; com/sem container, cor hexadecimal, nível opcional e estilo alternativo de herói/vilão.
- Níveis persistentes com pesos configuráveis, meta de curtidas, últimos seguidores e timer com tempo adicionado por presentes.
- Análises: janelas móveis, mês específico, sessões monitoradas, estimativas USD/BRL e calibração por recebimento real.
- Pop-up do criador uma vez por carregamento, TikTok, site e apoio pelo Live Pix.
- Coleta compartilhada, reconexão, deduplicação por identificador e contagem incremental de combos.
- IndexedDB no modo web; JSON automático no modo local; exportação/importação de backup.
- Demonstração isolada, sem alterar o histórico real.

## Publicar no GitHub Pages (sem instalar nada)

1. Extraia o ZIP. Crie um repositório, por exemplo `amarillou-live`.
2. Envie os arquivos **de dentro da pasta** para a raiz do repositório. `index.html` deve ficar na raiz, não dentro de uma pasta extra.
3. Em **Settings → Pages**, selecione **Deploy from a branch → main → / (root) → Save**.
4. Quando a publicação terminar, abra `https://SEU-USUARIO.github.io/amarillou-live/`.
5. Abra o TikFinity Desktop, conecte-o à sua live e confira a API local. No painel, clique **Conectar TikFinity**.
6. Se o navegador pedir acesso à rede/local machine, permita somente para seu site. Não desative globalmente a segurança do navegador.

Todos os caminhos são relativos, inclusive overlays e módulos: funciona em subpastas de projeto. Não exige Actions personalizado, npm install ou compilação. `.nojekyll` evita processamento por Jekyll. Se o upload pelo site omitir esse arquivo vazio, este projeto ainda usa caminhos compatíveis com o processamento padrão.

O painel coleta apenas enquanto estiver aberto e o navegador não o suspender. Cada computador/perfil de navegador tem seu histórico. O GitHub não recebe os dados dos espectadores. Fotos externas são carregadas das URLs informadas nos eventos ou manualmente.

## Usar overlays no OBS com o mesmo histórico

O Chrome e o navegador embutido do OBS têm armazenamentos e contextos separados. Um link estático por si só não transfere seu histórico entre eles. O modo web sincroniza abas **do mesmo site e mesmo perfil de navegador**. Para o OBS, esta versão inclui uma ponte local opcional:

1. Instale [Node.js](https://nodejs.org/) **22.15 ou superior** (versão LTS compatível).
2. Extraia o projeto em uma pasta fixa. No Windows, abra **INICIAR-LOCAL.bat**.
3. Abra **http://127.0.0.1:8787/** no Chrome/Edge. Use exatamente `127.0.0.1`, não `localhost` nessa URL.
4. Conecte o TikFinity pelo painel. Mantenha a janela da ponte aberta.
5. Se já usou o modo online: exporte o backup lá, desconecte-o e restaure no painel local antes de conectar. Históricos não são mesclados automaticamente.
6. Em Rankings, escolha período/métrica/quantidade e clique **Copiar link do overlay**. Cada seleção gera um link próprio.
7. OBS → Fontes → **Navegador** → cole a URL. Não marque “Arquivo local”.
8. Tamanhos iniciais sugeridos: ranking 640×900; presente 640×400; herói ou vilão 440×420; dupla 880×440. Ajuste à sua cena. Fundo transparente.
9. Repita para outras fontes. Todas consultam a mesma ponte; elas não abrem novas conexões com o TikFinity.

O servidor recebe eventos mesmo com o painel fechado. Fechar o processo interrompe a coleta. Ao reiniciar, o histórico permanece, mas clique **Conectar TikFinity** novamente. O estado de conexão não é autoativado na inicialização.

No macOS/Linux: abra um terminal na pasta e execute `node local/server.mjs`. Não há pacotes a instalar. A ponte escuta somente `127.0.0.1:8787`, não a rede externa. As chaves de leitura dos overlays são estáveis entre reinicializações e ficam no fragmento do link. Não compartilhe seus links privados.

**TikTok Live Studio:** quando sua versão oferecer fonte de link/navegador compatível, teste a mesma URL local. Essa integração não foi executada em um Live Studio real nesta entrega. Alternativa no seu fluxo atual: componha no OBS e envie pela câmera virtual.

## Regras das contagens

- Likes e tap taps são uma só métrica. Usamos `likeCount` do participante; nunca o total global da sala.
- Moedas = valor unitário informado (`diamondCount`) × quantidade nova do presente. São moedas dos presentes, não receita líquida em reais nem o saldo de pontos do TikFinity.
- Combos: 1 → 5 → 50 → final de 50 contam 50 unidades. A camada acompanha a sequência e adiciona apenas o incremento.
- O dia vira à meia-noite de `America/Sao_Paulo` por padrão. Semana: segunda a domingo. Mês: calendário. Períodos mostram o atual; não são janelas móveis de 7 ou 30 dias.
- As datas usam o momento de recebimento neste computador. O relógio do PC precisa estar correto. Um combo que atravessa meia-noite tem os incrementos em cada dia.
- Empates são ordenados pelo identificador do participante. Top da tabela do painel mostra até 100; o histórico guarda todos.
- Combo recente = última sequência com quantidade maior que 1; maior combo = maior quantidade em uma sequência de hoje; último presente = último incremento recebido; mais caro = maior preço de uma unidade hoje (primeiro em caso de empate).
- Follows atualizam a lista de últimos seguidores. Shares, chat, entradas e inscrições reconhecidos atualizam identificação/diagnóstico; não pontuam. Likes e moedas geram pontos conforme os pesos configurados.
- Sem preço informado, o presente entra na quantidade, mas não soma moedas. O diagnóstico registra isso para evitar inventar valores.
- Foto por @ só aparece automaticamente após identificação daquele perfil em algum evento. Não há scraper ou consulta pública de perfil; URLs de foto podem expirar. Nome e foto manuais têm prioridade; limpar os campos manuais volta ao automático.

## Save e backup

- Web: IndexedDB, com gravação periódica e tentativa ao ocultar/fechar a página. Abas fechadas abruptamente podem perder o último intervalo (~2 segundos); suspensão do navegador interrompe a coleta.
- Local: `%USERPROFILE%\.amarillou-live\state.json` no Windows (`~/.amarillou-live/state.json` nos outros sistemas). Chaves em `keys.json`. Escrita temporária + renomeação, a cada ~1 segundo. Fechar abruptamente o processo/PC pode perder eventos ainda não gravados.
- Dados não são apagados ao virar o período. Não há exclusão automática de histórico.
- Faça exportações frequentes em **Conexão & dados → Exportar backup JSON**. Guarde cópias fora do projeto. Não envie seu save ou backup para um repositório público.
- Restaurar exige desconectar a coleta, valida o formato e substitui o histórico inteiro. Não mescla dois backups.
- Para mudar o fuso após começar a coleta, é necessário um histórico novo; os dias antigos já estão agregados e não podem ser redistribuídos com precisão. Esta versão bloqueia a mudança.
- Um painel web por site/perfil coleta usando Web Locks. Outras abas são espelhos. Para assumir o controle, feche o painel original e recarregue o outro.

## Limites desta entrega

1. **TikFinity real, OBS e Live Studio pendentes de validação no PC do usuário.** A página oficial confirma o WebSocket, mas o contrato integral de payload não apareceu no conteúdo público acessível. O adaptador usa o envelope `{event,data}` e campos usuais listados em `docs/ARQUITETURA.md`, com testes simulados. Se sua versão emitir outro formato, ajuste apenas `normalize()`.
2. Não foi identificada documentação pública suficiente para importar o saldo de pontos nativo do TikFinity. Esta versão faz sua própria contagem a partir dos eventos.
3. Nenhum evento anterior à primeira coleta, perdido durante desconexão ou omitido pelo TikTok/TikFinity é recuperado. Likes individuais podem ser limitados/agregados na origem; o app só conta o que recebe.
4. Sem `msgId`, não há deduplicação perfeita de mensagens independentes. Sem `groupId`, o fallback distingue combos pela conclusão/reinício e intervalo; finais isolados repetidos ou sequências sem início podem ser ambíguos. A deduplicação mantém uma janela limitada (8–12 mil mensagens) e não elimina replays arbitrariamente antigos.
5. HTTPS → WebSocket local depende da versão do navegador, permissões e política do servidor. Não se promete compatibilidade universal. Use o modo local se o navegador bloquear; a ponte se conecta ao TikFinity fora do navegador e as páginas locais consultam HTTP na mesma origem.
6. GitHub Pages sozinho não oferece backend para sincronização entre aplicativos/dispositivos. A versão incluída resolve isso com ponte no próprio computador. Uma evolução totalmente online poderá usar backend autenticado com salas, persistência e sincronização remota.
7. Há limites práticos de armazenamento do navegador, memória e tamanho de snapshots. Backup aceito até 32 MB; até 100 mil perfis por importação. Esta é uma base modular v0.3, não uma plataforma multiusuário em nuvem já operada em escala.

## Testes

Execute `npm test` (ou `node --test tests/*.test.mjs`) com Node 22.15+. Sem dependências externas.

Veja [docs/VALIDACAO.md](docs/VALIDACAO.md) para os testes realizados e o roteiro da primeira live.

## Fontes técnicas

- [TikFinity — TikTok LIVE API](https://tikfinity.zerody.one/tiktok/dapi): disponibilidade de WebSocket na aplicação desktop do mesmo computador.
- [TikTok-Live-Connector, do criador do TikFinity](https://github.com/zerodytrash/TikTok-Live-Connector): referência de eventos e comportamento de gift streak; não é tratado como garantia de schema da versão instalada do TikFinity.
- [Chrome — Local Network Access](https://developer.chrome.com/blog/local-network-access): permissões e implantação dependente da API/versão. O artigo descreve etapas e limitações; permissão não implica sucesso automático de todo WebSocket.
- [MDN — Broadcast Channel](https://developer.mozilla.org/en-US/docs/Web/API/Broadcast_Channel_API): comunicação entre contextos da mesma origem/partição.
- [GitHub — Criar site Pages](https://docs.github.com/en/pages/getting-started-with-github-pages/creating-a-github-pages-site): publicação estática.

Projeto independente, sem afiliação com TikTok ou TikFinity.

## Correção v0.2

`index.html`, `overlay.html` e `GUIA.html` são independentes de pastas de recursos. O JavaScript/CSS de cada página foi incorporado no próprio HTML para evitar que um módulo ausente interrompa todos os controles. Avisos de inicialização aparecem na página; bloqueios de BroadcastChannel não impedem a demo. O acesso inicial ao IndexedDB tem limite de 5 segundos.

A causa exata na publicação do usuário não foi confirmada, pois a URL não foi fornecida. A v0.2 elimina a dependência de carregamento que poderia produzir o sintoma relatado.

Os fontes modulares continuam disponíveis. Para desenvolver: edite `src/`, `styles.css` e `ui/*.template.html`, depois execute `npm run build` para atualizar os HTMLs independentes e `npm test`. Node só é necessário para desenvolvimento ou ponte local, nunca para publicar os HTMLs prontos.

## Regras novas da v0.3

### Histórico e resets

O intervalo exibido é o período do calendário. Histórico por datas consulta dados efetivamente recebidos; não há recuperação retroativa do TikFinity. Dados anteriores aos resets continuam em `days`, para histórico e análises. Reset cria uma baseline de subtração para a competição atual e arquiva a classificação encerrada.

| Reset na métrica escolhida | Diário | Semanal | Mensal | Outra métrica / níveis / análises |
|---|---|---|---|---|
| Diário | Reinicia | Preserva | Preserva | Preserva |
| Semanal | Preserva | Reinicia | Preserva | Preserva |
| Mensal | Reinicia | Reinicia | Reinicia | Preserva |

O reset semanal inicia uma nova contagem dentro da semana do calendário; a próxima segunda continua iniciando a próxima semana. Não é uma janela móvel de sete dias após o reset. Cada reset exige confirmação e afeta apenas Likes/Taps OU Moedas, explicitamente indicado no pop-up. Reset da meta de curtidas é independente dos rankings. Os cartões de totais hoje mostram o histórico original recebido, não a competição após reset.

### Níveis

Pontos padrão = 1 por moeda + 1 por like. Pesos podem ser alterados em Conexão & dados, apenas para eventos futuros. Os valores coletados na v0.2 são convertidos uma vez com esses pesos padrão. Importar novamente o mesmo backup substitui o estado, não soma os pontos outra vez.

Fórmula inferida: `floor(50 * 1.03 * (1.03 ** (nível - 1) - 1) / 0.03)`. Ela reproduz todas as referências iniciais fornecidas (nível 13 = **730**, não 7.030) e nível 300 = **11.829.139**. Não foi confirmada como a fórmula oficial do TikFinity. A função inclui pequena tolerância numérica para arredondamento de ponto flutuante. O cálculo continua além do nível 300, com teto de exibição no 1.000.

### Overlays e participantes

Os links de Likes e Moedas são independentes. O estilo é gravado no link para poder usar versões diferentes simultaneamente. Depois de aplicar uma cor/layout/visibilidade do nível, copie o novo link. Isso não altera pontos nem eventos. Os dados do conteúdo continuam atualizando.

A seleção de participantes abre uma lista própria, congelada naquele momento. Digitar no campo de busca filtra a cópia, sem substituir os nomes quando chegam eventos. “Atualizar lista agora” renova a cópia explicitamente. A lista indica quem foi identificado na coleta, não confirma presença online. Selecionar preenche o @; clique em Salvar para aplicar.

### Meta, seguidores e timer

Meta soma likes futuros recebidos desde seu próprio reset. Não puxa automaticamente um total global da sala. Último seguidor e últimos 5 são duas opções de link; guarda até 50 participantes recentes distintos. Sem evento follow entregue pela origem, não inventa seguidores.

Timer usa duração em segundos e relógio absoluto ao executar. Pausar guarda o restante. Recarregar não reinicia o relógio. Regras associam **ID do presente** a segundos por unidade, incluindo incrementos de combo; o final do combo não duplica tempo. Com timer pausado, o tempo adicionado fica acumulado. Com página web fechada não chegam novos presentes; o relógio em execução continua transcorrendo. A ponte local aberta pode continuar coletando.

### Análises

Inicie/encerre manualmente uma transmissão em Análises. Só o tempo monitorado pelo coletor conectado entra na duração (heartbeat contínuo com lacunas de no máximo 6 segundos). Não afirmamos que esse seja o tempo oficial da live. Fechamento, suspensão ou desconexão não são contados como se houvesse monitoramento. No modo local, o coletor permanece no processo Node mesmo sem painel aberto.

Moedas recebidas fora de sessão são mostradas no total e identificadas separadamente; não entram nas médias por hora/transmissão. As médias usam sessões listadas no período (inclusive a atual) e valores associados a elas. Se não existe duração monitorada, a média por hora fica indisponível.

Janelas de 24h, 7d e 30d usam timestamps das transações coletadas a partir da v0.3. O mês usa o fuso do painel. Dados antigos da v0.2 só possuíam agregação diária: entram em “Todo o período” ou “Mês específico”, mas ficam fora das janelas móveis, com aviso. Não criamos sessões ou horários antigos fictícios.

Conversão é manual: USD recebido por moeda e BRL por USD. Calibração = USD real informado / moedas coletadas na sessão encerrada. A estimativa de todos os períodos usa a referência atual; os recebimentos reais informados ficam separados e preservados, em USD, para a transmissão inteira. BRL requer câmbio informado. Nenhuma taxa foi preenchida automaticamente, nenhuma cotação ao vivo é prometida e nenhuma estimativa equivale a saldo oficial.

### Criador e atualização

Pop-up aparece só no painel, uma vez por carregamento/F5. Não aparece em overlays. Fechar não apaga dados. Links fixos: TikTok `@xamarilloux`, https://amarillou.com.br/ e https://livepix.gg/xamarilloux. O botão de apoio usa um coração genérico e o nome Live Pix, não um logotipo oficial inventado.

Schema do backup evoluiu de 1 para 2, preservando a base IndexedDB e as identidades. A v0.3 lê backups da v0.2; a v0.2 não lê backups novos. Exporte uma cópia antes da atualização e não rode coletores de versões diferentes simultaneamente. Nenhuma migração apaga o histórico original.
