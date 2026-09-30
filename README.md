# AMARILLOU Live Control v1.5.2

[Usar online](https://xamarilloux.github.io/amarillou-live/) · [Baixar EXE / Releases](https://github.com/xAMARILLOUx/amarillou-live/releases)

TikTok LIVE → TikFinity → uma conexão central → rankings, presentes, pontos, baús, batalhas, análises e macros locais. Criado por **xAMARILLOUx**.

## Novidades v1.5.2
- Diagnóstico opcional de todos os macros, desativado ao abrir a ponte, com tabela e exportação das duas últimas coletas.
- X1 com mínimo de zero pontos, migração dos negativos e desfazer baseado no valor efetivamente aplicado.
- Rankings compactos: número abaixo de nome ou @; nível em selo na foto.
- Batalha da comunidade maior e mais próxima, grade opcional e destaque Top 3; nomes do X1 maiores.

[Notas v1.5.2](RELEASE-v1.5.2.md) · [Diagnóstico e limites](docs/V1.5.2.md)

## Correção v1.5.1
NUM0–NUM9 e NUMDECIMAL agora usam scan codes. O usuário confirmou que o ajuste resolveu a entrada no jogo testado, inclusive com Num Lock desligado. A implementação de teclado é idêntica à v1.5.1-test.1 aprovada. [Notas v1.5.1](RELEASE-v1.5.1.md) · [Teclado numérico](docs/NUMPAD.md)

## Novidades v1.5.0
- Ouro, prata e bronze e destaque de tamanho configurável no Top 3 de likes e moedas.
- Placar com valores negativos e atalhos globais personalizáveis (Windows local, Beta).
- Alertas com imagem/GIF + áudio, controle de som do vídeo e enquadramento na fonte.
- X1 com comando editável (padrão `!batalha`) e montagem manual de duplas.
- Empate 0 × 0 com prazo adicional, encerramento sem vencedor e avanço da fila.

[Notas do release](RELEASE-v1.5.0.md) · [Guia](GUIA.html) · [Detalhes v1.5](docs/V1.5.md)

## Arquivos para cada finalidade
- **EXECUTAVEL-WINDOWS:** abra o `.exe` portátil no Windows 10/11 x64. Node.js incluído. Feche a ponte anterior e mantenha o terminal do novo serviço aberto.
- **CODIGO-FONTE:** contém este projeto **e o site compilado**. Envie seu conteúdo à raiz publicada no GitHub Pages, substituindo os arquivos anteriores. Não envie a pasta do executável para o site.
- **SITE-GITHUB-PAGES:** somente os arquivos do site, prontos para upload. Use esta pasta OU o conteúdo de CODIGO-FONTE.
- **RELEASE.md:** título e descrição para publicar o release.

O EXE abre o navegador em `http://127.0.0.1:8787/`. Não há instalador nem ícone na bandeja nesta versão.

## X1 e batalha da comunidade
Em **Batalhas / X1**, escolha a subcategoria.

**X1 entre viewers:** clique **Ativar módulo**. Cada pessoa envia o comando configurado (padrão `!batalha`). Dois participantes disponíveis formam uma dupla e entram na fila FIFO. `!cancelarduelo` sai da espera antes de formar dupla. Uma inscrição por pessoa e no máximo uma batalha futura confirmada. Não há @ nem `!aceitar`. Convites antigos salvos permanecem visíveis e podem ser limpos pelo painel; fila, batalhas e resultados antigos são preservados.

**Batalha da comunidade:** configure a rodada e clique **Iniciar rodada**. Todos podem pontuar com moedas e likes recebidos após o início. Padrão: 5 minutos, janela final de 10 segundos e tempo restante de 60 segundos após uma troca estrita de líder nas moedas. Likes, empates e primeiro líder não prorrogam.

[X1 completo](docs/X1.md) · [Novas regras e testes](docs/V1.5.md)

## Macros
Abra o modo local no Windows. A fila única continua padrão. Selecione o preset e vá a **Studio → Opções avançadas** para marcar **Executar macros simultaneamente · Beta** se quiser teclas diferentes em paralelo; a mesma tecla continua sequencial. Presets que contêm Ctrl, Alt ou Shift ficam inteiramente sequenciais, mesmo com essa opção marcada. Alterar a configuração para a execução e exige reativar.

**Ativo por macro:** desmarcar remove apenas os pendentes dele e ignora seus próximos gatilhos. **Pausar:** mantém a fila e recebe novos gatilhos. **Retomar:** espera 5 segundos. **Parar:** limpa tudo. As teclas já pressionadas terminam antes da pausa; Parar solicita liberação imediata ao executor.

O teste executa exatamente a quantidade informada, sem multiplicar pelas repetições. Desativa o preset e cancela a fila anterior antes da espera de 5 segundos. Os limites continuam sendo 1.000 pressionamentos ou 10 minutos estimados pendentes.

[Combos, desempenho e fila](docs/COMBOS-E-FILA.md)

## Overlays
Copie os links no **modo local** para OBS. Selecione 1600 × 1200 (padrão), 1080 × 1920 (vertical) ou 800 × 600. Use no Browser Source exatamente as dimensões mostradas e depois redimensione na cena. Copie novo link ao alterar estilo, lado ou resolução.

O X1 principal desaparece quando ocioso. O ranking X1 pode acompanhar a atividade da batalha; a opção desmarcada o mantém visível. Tutorial e fila continuam disponíveis separadamente. A Meta de Baú mantém seu preview e suas configurações atualizadas no mesmo link.

[Meta de Baú](docs/META-DE-BAU.md)

Alertas de imagem e vídeo usam a dimensão real da fonte. Em cada alerta, escolha Encaixar inteiro, Preencher ou Esticar.

## Dados e compatibilidade
Web: IndexedDB do navegador e endereço do site. Local: `%USERPROFILE%\.amarillou-live`, fora do EXE. São históricos separados; use exportação/importação para transferir. Backup inclui os novos módulos e configurações. A fila de teclas é temporária e nunca é restaurada automaticamente.

Presets exportados usam formato 6; formatos 1–5 continuam aceitos. Não volte a versões antigas usando o mesmo save sem ter backup compatível. Recordes de maior combo e maior presente não são apagados pela atualização.

Mídias de alertas ficam em `%USERPROFILE%\.amarillou-live\media`. O backup JSON guarda referências, não os arquivos: copie essa pasta junto ao backup ao trocar de computador. Filas de alertas e teclas não são reproduzidas após reiniciar.

Atalhos globais, entrada nativa de teclado e interação entre macros e atalhos precisam de validação no Windows. O teste automatizado usa executor simulado; não equivale a uma live real no OBS/TikFinity.

## Desenvolvimento
Node.js ≥22.15. `npm start` inicia a ponte, `npm run build` gera as três páginas independentes e `npm test` executa os testes. `INICIAR-LOCAL.bat` é alternativa para quem executa o código-fonte; o EXE é a forma principal para o usuário final.

[Validação e limites](docs/VALIDACAO.md) · [Construir portátil](portable/BUILD.md)

Criador: [TikTok](https://www.tiktok.com/@xamarilloux) · [Site](https://amarillou.com.br/) · [Apoiar](https://livepix.gg/xamarilloux)
