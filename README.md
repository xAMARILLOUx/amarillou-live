# AMARILLOU Live Control v1.3.0

[Usar online](https://xamarilloux.github.io/amarillou-live/) · [Baixar EXE / Releases](https://github.com/xAMARILLOUx/amarillou-live/releases)

TikTok LIVE → TikFinity → uma conexão central → rankings, presentes, pontos, baús, batalhas, análises e macros locais. Criado por **xAMARILLOUx**.

## Novidades desta versão
- Macros simultâneos opcionais por preset, com fila exclusiva por tecla e fila única como padrão.
- Teste de quantidade pela fila, sem produzir eventos fictícios. Somente teclas individuais.
- Ranking com composição à esquerda ou à direita.
- X1 com ativação explícita, diagnóstico dos comandos, próximas batalhas na overlay principal e transparência ao ficar ocioso.
- Herói/Vilão automáticos com filtros de presentes; destaque de presentes alternado em um único overlay.
- Batalha da comunidade: todos participam nos rankings de moedas e likes de uma rodada; somente viradas na liderança de moedas podem prorrogar o tempo.

[Notas completas](RELEASE-v1.3.0.md) · [Guia de uso](GUIA.html) · [Novas funções](docs/V1.3.md)

## Arquivos para cada finalidade
- **EXECUTAVEL-WINDOWS:** abra o `.exe` portátil no Windows 10/11 x64. Node.js incluído. Feche a ponte anterior e mantenha o terminal do novo serviço aberto.
- **CODIGO-FONTE:** contém este projeto **e o site compilado**. Envie seu conteúdo à raiz publicada no GitHub Pages, substituindo os arquivos anteriores. Não envie a pasta do executável para o site.
- **PREVIAS:** imagens de referência dos novos layouts.
- **RELEASE.md:** título e descrição para publicar o release.

O EXE abre o navegador em `http://127.0.0.1:8787/`. Não há instalador nem ícone na bandeja nesta versão.

## X1 e batalha da comunidade
Em **Batalhas / X1**, escolha a subcategoria.

**X1 entre viewers:** clique **Ativar módulo**. O chat usa somente `!desafiar @usuario`. A pessoa marcada responde `!aceitar` ou `!recusar`; o desafiante pode usar `!cancelardesafio`. O participante precisa ter aparecido em eventos recebidos. Convites e fila não alteram uma luta em andamento. Vitória +1, derrota −1 em classificação independente.

**Batalha da comunidade:** configure a rodada e clique **Iniciar rodada**. Todos podem pontuar com moedas e likes recebidos após o início. Padrão: 5 minutos, janela final de 10 segundos e tempo restante de 60 segundos após uma troca estrita de líder nas moedas. Likes, empates e primeiro líder não prorrogam.

[X1 completo](docs/X1.md) · [Novas regras e testes](docs/V1.3.md)

## Macros
Abra o modo local no Windows. A fila única continua padrão. Marque **Executar macros simultaneamente** no preset se quiser teclas diferentes em paralelo; a mesma tecla continua sequencial. Alterar a configuração para a execução e exige reativar.

**Ativo por macro:** desmarcar remove apenas os pendentes dele e ignora seus próximos gatilhos. **Pausar:** mantém a fila e recebe novos gatilhos. **Retomar:** espera 5 segundos. **Parar:** limpa tudo. As teclas já pressionadas terminam antes da pausa; Parar solicita liberação imediata ao executor.

O teste executa exatamente a quantidade informada, sem multiplicar pelas repetições. Desativa o preset e cancela a fila anterior antes da espera de 5 segundos. Os limites continuam sendo 1.000 pressionamentos ou 10 minutos estimados pendentes.

[Combos, desempenho e fila](docs/COMBOS-E-FILA.md)

## Overlays
Copie os links no **modo local** para OBS. Selecione 1600 × 1200 (padrão), 1080 × 1920 (vertical) ou 800 × 600. Use no Browser Source exatamente as dimensões mostradas e depois redimensione na cena. Copie novo link ao alterar estilo, lado ou resolução.

O X1 principal desaparece quando ocioso. O ranking X1 pode acompanhar a atividade da batalha; a opção desmarcada o mantém visível. Tutorial e fila continuam disponíveis separadamente. A Meta de Baú mantém seu preview e suas configurações atualizadas no mesmo link.

[Meta de Baú](docs/META-DE-BAU.md)

## Dados e compatibilidade
Web: IndexedDB do navegador e endereço do site. Local: `%USERPROFILE%\.amarillou-live`, fora do EXE. São históricos separados; use exportação/importação para transferir. Backup inclui os novos módulos e configurações. A fila de teclas é temporária e nunca é restaurada automaticamente.

Presets exportados nesta versão usam formato 5; formatos 1–4 com teclas individuais continuam aceitos. Modificadores são recusados com mensagem clara. Guarde backup antes de voltar a versões antigas, que não conhecem estes campos.

## Desenvolvimento
Node.js ≥22.15. `npm start` inicia a ponte, `npm run build` gera as três páginas independentes e `npm test` executa os testes. `INICIAR-LOCAL.bat` é alternativa para quem executa o código-fonte; o EXE é a forma principal para o usuário final.

[Validação e limites](docs/VALIDACAO.md) · [Construir portátil](portable/BUILD.md)

Criador: [TikTok](https://www.tiktok.com/@xamarilloux) · [Site](https://amarillou.com.br/) · [Apoiar](https://livepix.gg/xamarilloux)
