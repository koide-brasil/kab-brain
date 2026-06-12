---
tipo: nota
area: kab
status: ativo
criado: 2026-06-01
atualizado: 2026-06-01
tags: [kab, rfq, viabilidade, caso-teste, sombra]
rfq_id: "67040"
cliente: BOGE Rubber & Plastics
classe_agente: Dados insuficientes
classe_humano: Não atende (capacidade)
modo: sombra
---

# Caso 001 — RFQ 67040 · BOGE · Battery Cover HEV Bush

> Teste em sombra (2026-06-01) da skill `viabilidade-rfq` com os catálogos bootstrapados do DBCorp.
> Rodado **às cegas** — o desfecho real da KAB foi conferido só DEPOIS (ver "Comparação").

## Intake (checklist de dados mínimos)

| Campo | Status |
|---|---|
| Cliente | ✅ BOGE Rubber & Plastics Brasil (Sorocaba/SP) — cliente existente (DBCorp CliId 10) |
| Canal / contato | ✅ Fernando Honain (Sr Commodity Buyer) → Josielen/Gabriel |
| Part number | ✅ 171.000.015.992 |
| Descrição | ⚠️ "Bush" — genérico (sem geometria) |
| Desenho/especificação | ❌ anexo `2DD_171.000.015.992.DES001` não disponível |
| Revisão do desenho | ❌ |
| Material | ❌ |
| Dimensões principais | ❌ |
| Tolerâncias críticas | ❌ |
| Volume anual | ⚠️ 9 pç/veículo; volume de veículos não informado |
| SOP / prazo | ✅ SOP Jul/2027 · EOP Dez/2034 |
| Tratamento/beneficiamento | ❌ |
| Embalagem/logística | ❌ (cliente pediu custo de embalagem) |
| Requisitos PPAP/SC/layout | ⚠️ cliente pede feasibility + CBD; "informar desvio de material/especificação" |

**Status do intake: INCOMPLETO** — falta o item que governa toda análise técnica: o **desenho**.

---

## Parecer de Viabilidade Técnica

**Conclusão: Dados insuficientes** — não é possível confirmar viabilidade sem o desenho.
**Mas há uma bandeira de capacidade que precede o desenho** (ver Riscos) e que deve ser
levantada já na resposta ao vendedor.

## Evidências
- **Fonte 1 — Catálogo de Máquinas KAB (DBCorp):** frota da KAB = corte (serras SA-90/TR-80/CMB-75),
  chanfro (FA-100/NPK-250/NP-57), estamparia (2 prensas verticais), usinagem leve (2 Ergomat).
  Não há prensa de embutimento profundo, dobra de chapa larga, fundição ou forjaria.
- **Fonte 2 — Matriz Peça×Processo (DBCorp):** as ~225 peças que a KAB fabrica são **bushes/anéis/
  tubos internos pequenos** (peso líq 0,02–0,33 kg; rota típica CORTE → CHANFRO, alguns + usinagem).
  Envelope dominado por componentes de **driveline/suspensão** a partir de tubo/perfil.
- **Histórico similar:** PN 171.000.015.992 **não existe** no DBCorp (peça nova, nunca produzida).
  Cliente BOGE existe no cadastro, mas sem item correlato encontrado.

## Análise técnica
- **Material:** desconhecido (sem desenho). Se for tubo de aço ou perfil de alumínio → família core
  da KAB. Se for chapa estampada/embutida → fora do core.
- **Geometria:** desconhecida. O termo "Bush" sozinho é compatível com o que a KAB faz, **mas o
  contexto "Battery Cover HEV" (tampa de bateria) sugere possível peça maior / estampada**, fora do
  envelope de bush de tubo pequeno. Não confirmável sem o desenho.
- **Tolerâncias:** desconhecidas → risco técnico em aberto por definição.
- **Operações prováveis (SE for bush de tubo):** CORTE → CHANFRO (± usinagem Ergomat). Plenamente
  dentro da capacidade nominal.
- **Máquina candidata:** corte (qualquer das 6 serras) + chanfro (FA-100/NP-57; **evitar NPK-250**,
  outlier de refugo 1,22%). Condicional à confirmação de que é peça tubular pequena.
- **Ferramental:** indeterminado (catálogo de ferramentas ainda esqueleto).
- **Qualidade/requisitos:** cliente de **borracha** (BOGE) → bush provavelmente recebe elastômero.
  Histórico interno mostra modo de falha funcional **"chanfro maior → faceamento fino → infiltração
  de borracha"** (Alerta BJ-112-1, família SumiRiko). Se confirmado bush-com-borracha → característica
  crítica de chanfro/faceamento, inspeção reforçada.

## Riscos
- **Técnico:** sem desenho, zero confirmação dimensional. Risco-base máximo.
- **Qualidade:** se bush-com-borracha, chanfro/faceamento é característica crítica (histórico de NC).
- **Produção/capacidade:** ⚠️ **principal.** "Battery Cover" levanta a hipótese de peça **fora do
  envelope** que a KAB domina (bush pequeno de tubo). A KAB **não** tem embutimento profundo / chapa
  larga / forjaria. Se o desenho mostrar isso → **Não atende capacidade atual**.
- **Fornecedor/beneficiamento:** desconhecido (pode exigir tratamento externo não mapeado).

## Escalonamento
- **Validar com:** Fernando (capacidade/envelope produtivo) — e Gabriel/Josielen pra obter o desenho.
- **Motivo:** decidir entre "core (bush de tubo)" vs "fora de capacidade (peça estampada/grande)"
  depende do desenho, que o RFQ não trouxe.
- **Pergunta objetiva pro humano:** "Pelo desenho 2DD_171.000.015.992: é um bush **tubular** (Ø e
  comprimento na faixa dos nossos, ~Ø14–80 mm) ou uma peça de chapa/estampada de tampa de bateria?
  Material? Recebe borracha?"

## Dados faltantes
- Desenho técnico (dimensões, material, tolerâncias, normas, revisão).
- Volume anual de veículos (só temos 9 pç/veículo).
- Confirmação de tratamento/beneficiamento e requisitos PPAP específicos.


## Links relacionados

- [[empresa/MAPA|empresa]]
