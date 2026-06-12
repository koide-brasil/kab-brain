---
tipo: indicador
area: kab
status: ativo
criado: 2026-05-19
atualizado: 2026-05-19
tags: [indicador, kab, qualidade, producao]
processo: producao
responsavel: Fernando (coordenador producao)
periodicidade: mensal
fonte: DBCorp
meta_atual: ≤ 0,65% (Análise Crítica)
meta_origem: analise-critica
skill_que_mede: daily-meeting · custeio-mensal
---

# Refugo Produção (%)

## Definição

Percentual de peças refugadas em relação ao volume produzido. Net scrap rate.

## Fórmula

```
% refugo = refug / (refug + concl)
```

Onde `refug` exclui refugo de setup ≤10 pç por apontamento (regra Erico, ver `skill-daily-meeting`).

## Metas (divergência registrada)

| Origem | Meta | Vigência |
|---|---|---|
| Mapa de Processo Produção (rev 15) | **≤ 0,50%** | mensal |
| Análise Crítica (mais recente) | **≤ 0,65%** | semestral |

⚠ Análise Crítica é mais recente — usar 0,65% como meta operacional, mas anotar que mapa diz 0,50%.

## Histórico

| Período | Valor | Status |
|---|---|---|
| 1º Sem 2025 | 0,58% | ✅ dentro da meta 0,65% |
| 2º Sem 2025 | 0,51% | ✅ folgado |
| mai/2026 MTD | **0,17%** | ✅✅ muito folgado |

## Alavancas

- Setup bem-feito (afeta refugo inicial — descontado ≤10 pç)
- Manutenção do ferramental (vida útil; ver [[Apoio a Producao]])
- Inspeção 200% em itens críticos
- Treinamento dos operadores

## Observação

O **refugo em R$** ([[Refugo R$]]) é monitorado separadamente pelo Flávio (Qualidade) com meta ≤ R$ 10 mil/mês. **Esse está estourando em maio/26** (R$ 11,8 mil já em 19/05) — gap em valor mesmo com folga em %.

## Links

- [[../indicadores/MAPA]] · [[../../areas/producao/contexto/sobre-o-departamento]] · Fernando (coordenador producao) · Flavio (supervisor qualidade) · kab-objetivos-correlacao
