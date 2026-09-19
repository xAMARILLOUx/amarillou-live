# AMARILLOU Live Control v0.7.0

Novos gatilhos de macros, mantendo a execução local no Windows e o editor online.

- **Curtidas por pessoa:** a cada N curtidas de um participante, ativa uma vez. Dez pessoas completando 50 curtidas geram dez ativações. Sobras continuam contando; pacotes que completam vários múltiplos geram várias ativações.
- **Curtidas totais:** soma as curtidas recebidas de todos enquanto o preset está ativo e dispara a cada N. Não usa o histórico dos rankings nem tenta recuperar curtidas anteriores à conexão.
- **Novo seguidor:** proteção opcional de 24 horas, ativada por padrão, por canal e participante. Todas as regras elegíveis do mesmo follow podem executar. Tentativas bloqueadas não renovam o prazo. Proteção compartilhada entre presets e salva no histórico local antes de enfileirar a ação.
- **Faixa de moedas:** mínimo e máximo inclusivos sobre o preço unitário do presente. Mínimo 1/máximo 1 aceita qualquer presente de uma moeda. Combos contam apenas unidades novas. Preço não informado não ativa esta regra.
- Presente específico continua disponível. Repetições, intervalo e duração funcionam para qualquer gatilho.

## Contagem e proteção

Curtidas de macros começam do zero a cada ativação. Parar, desconectar, editar, trocar preset ou mudar o canal cancela a fila e limpa o progresso de curtidas. F5 no painel não para a ponte nem limpa esse progresso enquanto a ponte continua aberta. Rankings e pontos não são alterados por isso.

A proteção de follow persiste após F5 e reinício, inclusive nos backups. Use o @ do canal correto no topo; sem canal preenchido, a proteção usa o canal não identificado desta instalação. Alterar o @ não troca o canal monitorado pelo TikFinity. Reset geral apaga também a proteção; restaurar um backup antigo recupera a proteção daquele momento. Não há consulta a quem deixou de seguir. O prazo conta desde o último follow protegido aceito para execução, mesmo se sua fila for cancelada depois.

Regras sobrepostas executam todas: por exemplo, uma Rosa pode ativar a regra de presente específico e a faixa de moedas. A regra de curtidas individuais pode coexistir com a total. O limite existente de 1.000 pressionamentos ou 10 minutos de fila continua: uma rajada acima disso desativa o preset e informa o motivo. Macros não recuperam eventos ocorridos enquanto estavam desligados.

## Compatibilidade e atualização

- Configurações antigas são migradas automaticamente para presente específico, sem reset de rankings/pontos.
- Backup do aplicativo: esquema 6. Presets JSON: formato 2; importa também formato 1. Presets exportados na v0.7 devem ser abertos na v0.7 ou posterior.
- Online: substituir index.html, overlay.html e GUIA.html. Fechar abas antigas e atualizar painel/overlays.
- Local: fechar a ponte, extrair o projeto completo e executar INICIAR-LOCAL.bat. O Node já instalado pode continuar sendo usado. Histórico salvo fora da pasta do projeto é preservado.
- Nenhum preset é ativado automaticamente ao reiniciar a ponte.

## Validação

91 testes automatizados: migração, presets, limites, combos, contagem individual/coletiva, duplicação de eventos, proteção de follow, falha de gravação e cancelamento durante gravação. Verificação no Chromium online/local com eventos WebSocket e teclado simulado; teste da proteção após reinício real da ponte. O executor nativo Windows não foi alterado nesta versão e não foi executado neste ambiente Linux. Faça um teste inicial no Bloco de Notas antes da live.
