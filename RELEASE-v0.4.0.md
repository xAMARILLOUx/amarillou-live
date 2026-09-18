AMARILLOU Live Control v0.4.0

[Abrir o painel](https://xamarilloux.github.io/amarillou-live/)

**Novidades**

- Reset geral em Conexão & dados: desconecta a coleta e permite começar do zero, apagando histórico, pontos, níveis, participantes, canal e configurações. Exige confirmação digitando ZERAR.
- Campo de identificação do canal TikTok no topo, salvo nos registros e backups.
- Nova aba Pontos: visão geral acumulada, busca por participante e ordenação por pontos, nível, moedas, likes ou nome, crescente/decrescente.
- Novo layout de Presentes com foto maior, presente junto à foto e contador de combo. Disponível com e sem container.
- Reset de Presentes de hoje, separado dos rankings e do reset geral.
- Análises por cadastro de transmissões encerradas: nome opcional, início, duração, moedas e recebimento USD opcional. Exclusão com confirmação.
- Câmbio USD → BRL automático, com fonte/data da cotação, botão de atualização e alternativa manual.
- Identidade visual roxa e amarela, avatar do criador e links com ícones de TikTok, site e Live Pix.
- README com acesso direto ao painel.

**Correções e melhorias**

- Níveis e pontos reposicionados com mais espaço entre as colunas e a barra de rolagem.
- Ao resetar Presentes durante um combo, o destaque passa a mostrar somente as unidades posteriores ao reset, mantendo a contagem correta de moedas.
- Restauração de backups preserva timestamps atuais sem truncar suas datas.
- Explicação de proteção do armazenamento: persistência do navegador não equivale a backup.
- Rankings por período, consulta de histórico, Herói/Vilão, meta de curtidas, seguidores e timer continuam disponíveis.

**Mudança em Análises**

O formulário de cadastro substitui os botões de iniciar/encerrar monitoramento. Cada transmissão entra integralmente no período de sua data de início. As moedas informadas não são somadas aos rankings nem aos pontos dos participantes; os eventos coletados também não duplicam os totais cadastrados.

Sessões da v0.3 são migradas uma vez com o tempo que havia sido monitorado. Exclua e cadastre novamente para corrigir os valores. Dados antigos sem sessão continuam preservados nos rankings e backups.

USD por moeda continua manual, com opção de calibração por uma transmissão real. A cotação dólar/real é uma referência diária via Frankfurter, não uma cotação em tempo real. Em falha, a última referência é mantida. As estimativas usam a conversão atual; o recebimento real informado fica preservado em USD.

**Como atualizar**

Substitua index.html, overlay.html e GUIA.html na publicação atual. Aguarde o GitHub Pages, feche abas antigas e atualize com Ctrl + F5. No modo local, substitua o projeto inteiro e reinicie a ponte.

A atualização preserva os dados. Para começar do zero, use o botão de reset geral. Não use versões antigas sobre a base já migrada. Copie novos links de overlay ao alterar suas opções visuais.

**Validação**

53 testes automatizados aprovados e testes de interface em Chromium nos modos web e local, incluindo migração, persistência após reset/F5, transmissões manuais, confirmações, ordenação e layouts. Eventos e respostas de câmbio simulados. A consulta real ao provedor e a compatibilidade com TikFinity, OBS e Live Studio ainda precisam de teste no computador do usuário.

Criado por xAMARILLOUx · [TikTok](https://www.tiktok.com/@xamarilloux) · [Site](https://amarillou.com.br/) · [Apoiar pelo Live Pix](https://livepix.gg/xamarilloux)
