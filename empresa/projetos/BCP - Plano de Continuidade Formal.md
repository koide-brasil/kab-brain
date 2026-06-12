---
tipo: projeto
area: kab
status: em-analise
criado: 2026-05-21
atualizado: 2026-05-21
tags: [bcp, sgk, qualidade, iso22301, risco, continuidade]
---

# BCP — Plano de Continuidade Formal KAB

Estender o que **já existe** no SGK pra um **Business Continuity Plan formal ISO 22301-like**, com profundidade suficiente pra licitação Tier 1 grande (Stellantis, Ford, GM, BYD direto). Motivador: simulação de pitch comercial 2026-05-21 com Bruce — comprador automotivo perguntou "como você garante meu fornecimento se quebrar máquina / greve / incêndio?".

## O que JÁ existe (não recomeçar)

| Doc | Rev | Cobre |
|---|---|---|
| **FOR-024** Plano de Contingências | REV-02 · out/2025 | Energia, água, greves, equipamento crítico, fornecimento, transporte |
| **FOR-114** Plano de Contingência Operacional | REV-00 · mai/2025 | Matriz de escalonamento 4 níveis por tipo de problema |
| **Plano de Emergência** (NR-23) | fev/2025 | Abandono de prédio, brigada, evacuação |
| **PGR — Programa de Gerenciamento de Riscos** | abr/2022 ⚠️ | Riscos NR-1 ocupacionais — **vencido** |
| **PGR-NR-24 jan/2024** | jan/2024 | Possível atualização (validar) |
| **Contexto + Partes Interessadas** | jun/2025 | PESTEL + SWOT + matriz de riscos ISO 9001 cláusula 6.1 |
| **IT-036** Mapa SIPOC + Análise de Risco | ago/2024 | IT de processo |
| **PFMEAs** por peça (VDA/AIAG) | várias | Risco técnico produtivo (por PN cliente) |
| **Anexo 023-P6** Análise de Risco Fornecedores | 2024 | Fornecedores homologados |
| **Auditoria SumiRiko-BI** "Capacidade Técnica + Plano de Contingência" | ago/2024 | **Já aprovada por cliente** — prova social |

## Lacunas — o que falta pra ser BCP "de verdade"

- [ ] **BIA — Business Impact Analysis** — tempo máximo tolerável de parada por cliente top-5 + custo/dia
- [ ] **RTO / RPO** — Recovery Time Objective e Recovery Point Objective por processo crítico
- [ ] **Plano de continuidade de TI** — DBCorp, Drive, Gmail são single point of failure hoje
- [ ] **Cenário "incêndio total / perda do prédio"** — FOR-024 exclui explicitamente desastres naturais
- [ ] **Matriz máquina-backup formal** — quem cobre o quê (NPK-250 sem gêmea, prensas 80t/30t únicas)
- [ ] **Plano de comunicação a clientes em crise** — quem, quando, em quanto tempo
- [ ] **Teste/simulação anual documentada** — sem evidência de simulado periódico
- [ ] **Renovação PGR** (2022 vencido pela NR-1 atual)
- [ ] **Brigada de Incêndio** — certificados de 2017-2018 (validar renovação)
- [ ] **Sucessão crítica** — quem opera se Madora (SGK) ou Fernando (Produção) saem amanhã

## Escopo do projeto

**3 entregáveis ordenados por urgência comercial:**

### Fase 1 — "Pacote para o comercial" (4 semanas)
Saída: documento único `FOR-XXX - REV-00 - Business Continuity Plan KAB` consolidando FOR-024 + FOR-114 + Plano de Emergência + cenário incêndio total + matriz máquina-backup. Vira **anexo comercial** pra cotação.
- Responsável: **Madora Pereira** (SGK) com input de Bruce
- Stakeholders: Jônatas Moura (Manutenção/Apoio), Fernando Macedo (Produção), Suelen Silvestrini (Logística), Carla Oliveira (Financeiro), Mayra Santos (RH)

### Fase 2 — "BCP estendido" (8-12 semanas)
- BIA com top-5 clientes (Indab, YAB, SRK, DN, Polistampo) — entrevistas estruturadas
- RTO/RPO por linha
- Plano de TI (DBCorp + Drive + Gmail) — encaminha pra [[Migracao para 1Password]] como pré-requisito
- Plano de comunicação de crise

### Fase 3 — "Validação contínua" (recorrente)
- Simulado anual de emergência documentado
- Revisão semestral do BCP integrada à Análise Crítica
- Renovação certificações brigada / PGR

## Insumos do vault

- kab-processo-apoio-producao — PR-10 Manutenção
- kab-sgk-estrutura — formulários SGK
- kab-rnc-fluxo — PR-07 fluxo de não-conformidade
- kab-analise-critica-2025 — análise crítica semestral
- kab-drive-servidor — TI single point of failure
- [[Migracao para 1Password]] — pré-requisito de Fase 2 (credenciais seguras)

## Risco se não fizermos

- Tier 1 grande pode rejeitar a homologação (cotação BYD direto, Stellantis, GM)
- Auditoria de cliente sofisticado pode reprovar
- Em crise real, falta de plano = improviso = perda de cliente

## Aprovação

Aguardando OK do Erico pra disparar com Madora. Esforço: ~2-3 semanas pra Fase 1 com priorização.
