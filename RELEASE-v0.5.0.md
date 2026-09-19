# AMARILLOU Live Control v0.5.0

[Abrir o painel](https://xamarilloux.github.io/amarillou-live/)

## Novidades

- **Manutenção de pontos:** na aba Pontos, busque o participante e clique em Ajustar pontos para adicionar ou remover uma quantidade. O nível é recalculado automaticamente. Remoções não podem deixar saldo negativo.
- **Reset dos Pontos da Comunidade:** em Conexão & dados, escolha todos os pontos, somente pontos de moedas ou somente pontos de likes/taps. Sempre pede confirmação. Rankings, moedas e likes recebidos, presentes e Análises permanecem preservados.
- **Origem da pontuação:** novos pontos ficam separados entre moedas, likes/taps e adições manuais. Os pesos usados são os vigentes quando o evento é recebido.
- **Duração em HH:MM:SS:** cadastre transmissões como 04:00:00, 24:00:00 ou 48:30:00, sem converter para minutos. Recebimento em USD e calibração foram preservados.
- **Editor de Presets:** criação, renomeação, exclusão, cadastro/edição de macros e exportação/importação JSON. Presets acompanham o backup geral.
- **30 macros como recomendação:** adicionar o 31º ou qualquer macro posterior abre um aviso com Continuar/Cancelar. Continuar permite adicionar; Cancelar mantém o formulário e não adiciona. Editar um macro existente não aumenta a quantidade. Importar um preset acima da recomendação também pede confirmação. Não há bloqueio em 30.

## Dados antigos e resets

Até a v0.4, o sistema salvava o total de pontos sem separar sua origem. A atualização preserva esse saldo como **origem não identificada**. Não tenta adivinhar a origem a partir dos pesos atuais.

Resets somente de moedas ou likes afetam apenas pontos cuja origem foi registrada a partir da v0.5. Para zerar também os pontos antigos e manuais, escolha **Todos os pontos**. Para corrigir uma pessoa específica, use Ajustar pontos e remova do saldo geral ou de uma origem escolhida.

Remoções do saldo geral descontam nesta ordem: pontos manuais, origem não identificada, likes e moedas. Os níveis seguem a pontuação restante. Novos eventos continuam pontuando, conforme os pesos configurados. Resetar pontos não zera os totais históricos de moedas/likes e não reinicia a conexão.

## Presets nesta etapa

A v0.4 não tinha um editor de presets. Esta versão introduz o cadastro e a regra de recomendação solicitada. **Não há execução de teclas nesta entrega, nem no modo web nem na ponte local.** Essa integração fica para a etapa local planejada. Salvar/importar um preset não ativa macros. A transferência entre pessoas usa arquivo JSON; não há serviço de IDs curtos.

## Atualizar

No GitHub Pages, substitua **index.html**, **overlay.html** e **GUIA.html** na mesma pasta publicada. Atualize também README.md e estas notas. Feche abas antigas, aguarde a publicação e use Ctrl+F5. Confira **v0.5** na lateral.

No modo local, substitua o projeto inteiro e reinicie a ponte. Os dados continuam no local anterior. Web e local têm bases separadas; use exportação/importação para transferir dados entre eles. Não abra uma versão antiga sobre a base já migrada.

A atualização não reseta dados automaticamente. O reset geral continua disponível separadamente e também apaga os presets.

## Verificação

66 testes automatizados aprovados e fluxos de interface verificados em Chromium, nos modos web e local, incluindo recarga, migração, resets e aviso do 31º macro. Dados e eventos simulados; TikFinity real, OBS e Live Studio precisam de teste no computador do usuário.

Criado por **xAMARILLOUx** · [TikTok](https://www.tiktok.com/@xamarilloux) · [Site](https://amarillou.com.br/) · [Live Pix](https://livepix.gg/xamarilloux)
