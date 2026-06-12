# CLAUDE.md — Instruções para agentes neste cérebro KAB

> Este é o cérebro operacional compartilhável da KAB. Diferente do vault pessoal do Erico (`my-second-brain`), aqui o conteúdo é **não-sensível**. Bruce e outros agentes lendo este arquivo: respeitem a regra dos 3 gatilhos abaixo.

---

## 0. Identidade — quem é o agente neste repo

Identidade formal: **`agentes/tony/`**

Leia esses arquivos antes de qualquer ação:
1. `agentes/tony/SOUL.md` — personalidade (Bruce em modo time)
2. `agentes/tony/IDENTITY.md` — papel: consolidador time KAB, escopo restrito
3. `agentes/tony/USER.md` — quem este agente serve (Erico + time)
4. `agentes/tony/MEMORY.md` — onde lembra (cross-link com vault pessoal)
5. `agentes/tony/TOOLS.md` — skills permitidas neste escopo

**Bruce é o mesmo do vault pessoal**, mas neste repo opera com **escopo limitado** — não fala de dinheiro nominal, pessoa específica, ou jurídico.

---

## 1. Regra fundamental — os 3 gatilhos

Conteúdo **NÃO PODE** entrar neste repo se dispara qualquer um:

| Gatilho | Exemplos do que NÃO entra | Onde mora isso |
|---|---|---|
| 💰 Dinheiro com nome próprio | Salário do João, comissão da Mariana, bônus do Fernando, pró-labore, negociação nominal de fornecedor com valor confidencial | Vault pessoal do Erico |
| 👤 Pessoa específica | "Gabriel tá performando mal", "Suelen vai sair", avaliação 360 nominal, conflito interno detalhado | Vault pessoal do Erico |
| ⚖️ Peso jurídico/contratual | Contrato Gestamp/Yamaha/etc na íntegra, NDA, litígio, LGPD individualizada, contrato Koide Kokan intercompany, NEs financeiras | Vault pessoal do Erico |

**Contratos operacionais OK aqui**: hosting SaaS, gateway de pagamento, fornecedor genérico de material de escritório.

**Em dúvida → NÃO entra**. Pergunte ao Erico ou capture no vault pessoal.

Detalhes e edge cases em [[empresa/contexto/PRINCIPIOS]].

---

## 2. O que é este repo

Cérebro operacional compartilhável da **Koide Autopeças do Brasil (KAB)** — fábrica de peças usinadas em Pindamonhangaba/SP. Versionado em GitHub privado, acessível pra: Erico + 1-2 gerentes piloto (Gabriel inicialmente).

**Distinção crítica**:
- **`my-second-brain`** (Erico) = cofre privado, inclui sensível, ~350 notas
- **`kab-cerebro`** (este) = compartilhável, só não-sensível, ~25 arquivos iniciais

---

## 3. Mapa de pastas

| Pasta | Conteúdo | Status |
|---|---|---|
| `agentes/tony/` | Identidade formal do agente neste escopo | Sprint 1 ✅ |
| `areas/producao/` | Processos, indicadores públicos, FAQs do chão de fábrica | Sprint 2 (seed) |
| `areas/vendas/` | Funil, qualificação de leads, ATAs de visita (sem deals nominais) | Sprint 2 (seed) |
| `areas/qualidade/` | SGK, normas, mapas de processo, RNC fluxo | Sprint 2 (seed) |
| `areas/logistica/` | Frete, OTD, expedição | Sprint 2 (seed) |
| `areas/manutencao/` | OS, paradas, ferramentaria | Sprint 2 (seed) |
| `areas/rh/` | Políticas, treinamentos, benefícios (sem salários nominais) | Sprint 2 (seed) |
| `areas/financeiro/` | KPIs públicos, fluxo de caixa agregado (sem intercompany) | Sprint 2 (seed) |
| `inbox/{nome}/` | Capturas brutas individuais (1º estágio) | Sprint 1 ✅ |
| `staging/{area}/` | Captura compartilhada provisória (2º estágio) | Sprint 3 ✅ |
| `empresa/contexto/` | Princípios e arquitetura | Sprint 1 ✅ |
| `empresa/skills/save-kab/` | Captura no inbox individual | Sprint 3 ✅ |
| `empresa/skills/team-sync/` | Promove inbox → staging compartilhado | Sprint 3 ✅ |
| `empresa/skills/consolidar-inbox/` | Bruce noturno: staging → canônico | Sprint 3b |
| `skills/` | Skills compartilháveis | Sprint 3 |
| `onboarding/` | 1-pagers pra novos membros | Sprint 3 |

Cada `areas/{x}/` tem 3 subpastas:
- `contexto/` — fatos duráveis: `geral.md` (função/KPIs), `people.md` (papéis + decisão), `decisions.md`, `lessons.md`
- `rotinas/` — automações + `_index.md` (catálogo)
- `skills/` — skills da área + `_index.md` (catálogo)

> **Área-piloto mobiliada:** `areas/producao/` segue o padrão canônico completo (03/06/2026). Use como modelo ao mobiliar as demais.

**Painel de status (ler no início):** `empresa/projetos/projetos.md` (projetos) + `empresa/projetos/pendencias.md` (pendências).

**Manutenção de MAPAs (regra de 2026-06-12):** ao criar, mover ou renomear notas/subpastas,
atualize o `MAPA.md`/`_MOC-*`/`_index.md` da pasta afetada **na mesma sessão** (incluindo o
campo `atualizado:`). MAPA é GPS: padrões e estrutura, não lista de arquivo datado. Rede de
segurança: cron semanal no HERMES audita o frescor nos 2 cérebros.

---

## 4. Frontmatter padrão

```yaml
---
tipo: nota          # nota | rotina | skill | reuniao | indicador
area: producao      # producao | vendas | qualidade | logistica | manutencao | rh | financeiro
status: ativo       # inbox | ativo | revisado | canonico | arquivado
criado: 2026-05-22
atualizado: 2026-05-22
autor: erico        # autor humano da nota
tags: []
---
```

---

## 5. Fluxo de captura (3 estágios)

Adotado em Sprint 3 (2026-05-22) seguindo Aula 03 do curso Pixel "Da teoria pra prática". Substitui o fluxo de 2 estágios original.

```
1º ESTÁGIO — individual               2º ESTÁGIO — compartilhado            3º ESTÁGIO — canônico
                                       (visível ao time, ainda provisório)   (memória oficial)

   inbox/{pessoa}/         ─────►       staging/{area}/         ─────►       areas/{x}/contexto/
   2026-MM-DD-slug.md     /save-kab    2026-MM-DD-slug.md     consolidar    nota-canonica.md
   + .meta.yaml (opt)    /team-sync    + .meta.yaml (opt)     -inbox        (sem .meta.yaml)
```

### Passo a passo

1. **Capturar** (`/save-kab`):
   - Escreve em `inbox/{seu_nome}/YYYY-MM-DD-{slug}.md` com frontmatter
   - Captura automática (bot/script) gera sidecar `.meta.yaml` ao lado
   - Roda heurística dos 3 gatilhos — se detectar sensível, alerta e sugere cofre pessoal

2. **Promover ao staging** (`/team-sync`):
   - Item-por-item, humano escolhe o que tá maduro pra time ver
   - Move de `inbox/{pessoa}/` pra `staging/{area}/`
   - Re-valida 3 gatilhos antes (defesa em camadas)
   - Atualiza `status: staging` no frontmatter

3. **Consolidar** (`/consolidar-inbox`, Sprint 3b):
   - Rotina noturna do Bruce-HERMES lê `staging/{area}/`
   - Propõe destino canônico em `areas/{x}/contexto/`
   - Multi-pasta OK via wikilinks (uma nota, várias áreas linkam pra ela)
   - Quando confiança baixa: pergunta ao humano

4. **Arquivar processado** (futuro):
   - Original em `staging/{area}/` movido pra `staging/{area}/.processed/` (audit trail)
   - Canônico em `areas/{x}/contexto/` com `status: ativo`

### Quem escreve onde

| Ator | Onde escreve | Onde NUNCA escreve |
|---|---|---|
| **Bruce (agente da empresa)** | `areas/`, `staging/` (consolida), `agentes/` | Inbox alheio (`inbox/gabriel/` se você é Bruce-RH) |
| **Colaborador** (Gabriel, Fernando, Carla, Mayra) | Só `inbox/{seu_nome}/` | `areas/`, `staging/`, `agentes/` (direto) |
| **Erico (diretor)** | Qualquer lugar (gestor) — mas captura também passa por `inbox/erico/` por disciplina | — |
| **Captura automática (bot)** | `inbox/{pessoa}/` em nome do humano + `.meta.yaml` | — |

**Regra de ouro:** colaborador NUNCA edita canônico direto. Captura sempre passa por inbox → staging → consolidação. Bruce é o gestor que promove.

---

## 6. Sync

- `/sync-kab` (Sprint 2) — git add + commit + push
- `/cerebro-kab` (Sprint 2) — git pull
- Branch única: `main`
- Push direto pra main enquanto for piloto (sem PR obrigatório)
- CODEOWNERS em `.github/CODEOWNERS` força Erico como aprovador final quando time crescer

---

## 7. O que NÃO fazer

- ❌ Não criar notas com dados sensíveis (regra dos 3 gatilhos)
- ❌ Não duplicar conteúdo do vault pessoal — preferir link textual ("conteúdo completo no cofre pessoal")
- ❌ Não criar wikilinks pra fora deste repo (vão quebrar)
- ❌ Não rodar `/sync` aqui (essa é a skill do vault pessoal) — usar `/sync-kab`
- ❌ Não tomar decisão de negócio com base só no que tá aqui (este repo é parte da operação, não a totalidade)

---

## 8. Cross-link com vault pessoal

Quando uma nota daqui precisa referenciar conteúdo sensível do vault pessoal, use **referência textual** em vez de wikilink:

```markdown
> Contexto financeiro detalhado: no cofre pessoal do Erico (`my-second-brain` → `01-KAB/Financeiro/`).
```

Wikilinks `[[...]]` neste repo só pra notas DESTE repo.

---

## 9. Como o agente acessa este repo

| Local | Path |
|---|---|
| Laptop Erico | `~/Área de trabalho/Erico/kab-cerebro/` |
| HERMES (VPS) | `/opt/data/kab-cerebro/` (a configurar) |
| GitHub | `git@github.com:eshiroiwa/kab-cerebro` (a criar) |

Bruce abre Claude Code aqui dentro → este `CLAUDE.md` é lido automaticamente.

---

## Origem

Adotado em 2026-05-22 a partir da metodologia OpenClaw (versão híbrida invertida). Plano em `~/.claude/plans/agora-vamos-para-algo-playful-diffie.md`.
