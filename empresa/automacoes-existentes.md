---
tipo: nota
area: institucional
status: ativo
criado: 2026-05-23
atualizado: 2026-05-23
tags: [automacoes, skills, agentes, integracoes]
---

# Automações existentes — visão pro Tony

Lista das **skills/automações executadas pelo Bruce** (cofre pessoal do Erico) que tocam a KAB. Tony **referencia** estas mas não executa diretamente (credenciais sensíveis vivem no laptop do Erico).

Quando G5 pedir algo coberto por uma destas skills → Tony **aponta pro Bruce executar**.

## Skills DBCorp (financeiro/operacional)

| Skill | O que faz | Quando rodar |
|---|---|---|
| **daily-meeting** | HTML diário consolidado 7 dpts (Produção, Vendas, Qualidade, Logística, Manutenção, Financeiro + RH) com gráficos Chart.js, abas, KPIs do dia | Toda manhã antes da reunião |
| **custeio-mensal** | Custo real de produção por OP/máquina/peça via absorção ampla; gera markdown + HTML interativo | Depois do fechamento contábil mensal |
| **custeio-anual** | Agregado YTD do custeio, médias ponderadas, rankings | Quando precisa snapshot anual |
| **movimentacao-contas** | xlsx "Movimentação das contas-YYYY-MM" pro escritório Dorna (MP/PA/P TER) | Mensal, após Carla rodar contabilidade |
| **relatorio-mensal-matriz** | 月次業務報告書 (houkokusho) mensal pra Koide Kokan — inclui pesquisa web pra 主な差異要因 em japonês | Mensal pro Japão |
| **auditoria-nfs-mp** | Detecta anomalias em NFs de matéria-prima (aço+alumínio): sobrecobrança, duplicidades, canceladas | Quando suspeita ou periodicamente |

## Skills RD Station (comercial)

| Skill | O que faz | Quando |
|---|---|---|
| **captura-atas-mes** | Puxa ATAs de visitas comerciais do CRM e gera notas estruturadas no vault | Mensal |

## Skills RHiD (RH)

| Skill | O que faz | Quando |
|---|---|---|
| **rhid-client** | Cliente Python pra API RHiD — dashboard, marcações, funcionários, banco horas, biometria | Sob demanda |

## Skills Google Drive

| Skill | O que faz | Quando |
|---|---|---|
| **treinar-sgk** | Lê arquivos do SGK no Drive (PDF/DOCX/XLSX) → extrai texto → gera notas resumidas no vault. Mantém SQLite local pra idempotência | Periodicamente quando há mudanças no SGK Drive |
| **arquivar-nfe-drive** | Arquiva NFes da KAB em `SAIDA/<ano>/<N-MES>/` no Drive (pacote mensal Carla/Dorna). **Operado pelo Bruce-pessoal, não pelo Tony** | Cron 3x/dia no Bruce |

## Skills de vault (sync)

| Skill | O que faz |
|---|---|
| **sync** | Sobe ambos os vaults (erico-brain + kab-brain) pro GitHub. Replica memória cross-sessão local → vault antes do commit. Heurística sensível no kab-brain |
| **cerebro** | Inverso — puxa GitHub pro local |
| **save-kab**, **team-sync**, **consolidar-inbox** | Fluxo de 3 estágios de captura compartilhada (vivem aqui no kab-brain) |

## Agentes (sub-Claude)

| Agente | O que faz | Tipo |
|---|---|---|
| **triage-gmail-kab** | Triagem emails do Gmail corporativo, classifica, gera briefing executivo. NUNCA envia/apaga | Sub-agente Claude Code |
| **briefing-diario** | Consolidação eventos do dia (calendar + emails urgentes) | Sub-agente |
| **captura-email-vault** | Email → nota no vault com template apropriado | Sub-agente |
| **hunting-leiloes-imobiliarias** | Vasculha emails de imobiliárias e cria fichas pré-análise em `02-Investimentos/Garimpo/` | Sub-agente (escopo Erico — não toca KAB) |
| **arquivar-nfe-drive** | Fluxo sensível de NFe — fica no Bruce-pessoal; Tony só sabe que existe e deve escalar | Sub-agente fora do Tony |
| **hunting-leiloes-sites** | Caçador de oportunidades em sites de leilão imobiliário (escopo Erico) | Sub-agente |

## Cron / agendamentos automáticos

| Job | O quê | Onde |
|---|---|---|
| `bruce-sync.timer` | `/sync` a cada 10min | Laptop (systemd user) |
| `bruce-cerebro.timer` | `/cerebro` a cada 10min | Laptop |
| HERMES `f2658c064601` | Sync push (Haiku 4.5) | VPS Hostinger |
| HERMES `bc2f942fe482` | Cerebro pull (Haiku 4.5) | VPS |

## Quando Tony deve sugerir uma destas

Padrão de delegação:

```
G5: "Tony, preciso do custeio de abril"
Tony: "É a skill custeio-mensal do Bruce. Quer que eu peça pro Erico
       rodar agora? Ele pode disparar /sync depois pra você receber 
       o resultado no vault."
```

Tony **nunca** executa skills sensíveis diretamente. Sempre delega ao Bruce + Erico aprova.

## Roadmap

Sprint 4+: Tony ganha versão **filtrada** das skills que ele pode executar (read-only, sem valores nominais). Ex: `daily-meeting-agregado` que dá só números agregados pro time, sem detalhes sensíveis.

## Links

- [[contexto/integracoes/_sobre]] — sistemas externos
- [[contexto/integracoes/dbcorp]] — ERP
- [[contexto/integracoes/rdstation]] — CRM
- [[contexto/integracoes/rhid]] — ponto
- [[contexto/integracoes/google-drive-mapeamento]] — Drive
- [[../agentes/_arquitetura]] — 3 camadas (Bruce → Tony → Hermes deps)
