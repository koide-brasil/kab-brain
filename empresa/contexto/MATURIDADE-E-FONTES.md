---
tipo: principio
area: institucional
status: canonico
criado: 2026-05-29
atualizado: 2026-05-29
autor: bruce
fonte_original: Erico + auditoria kab-brain 2026-05-29
validado_por: Erico
validado_em: 2026-05-29
tags: [canonico, maturidade, fontes, governanca]
---

# Maturidade e fontes canônicas do kab-brain

> Documento canônico. Define como Tony/Bruce devem classificar confiabilidade, origem e uso das notas do `kab-brain`.
>
> Regra curta: **nem todo markdown é verdade oficial**. `inbox/` captura, `staging/` amadurece, `areas/` e `empresa/` consolidam. Dados numéricos continuam pertencendo ao sistema de origem.

## Hierarquia de confiança

### 1. Sistema operacional original — fonte máxima para fatos numéricos

Use sempre que a pergunta for sobre número, status atual ou registro transacional.

- **DBCorp**: pedidos, NFs, faturamento, produção, OPs, estoque, compras, financeiro operacional, contas a pagar/receber.
- **RD Station CRM**: pipeline comercial, deals, atividades, visitas, histórico comercial cadastrado.
- **RHiD**: ponto eletrônico, turnos, banco de horas, faltas, horas extras, justificativas/atestados. Atenção às regras de RH-confidencial em [[PRINCIPIOS]].
- **Google Drive / SGK**: procedimentos, formulários, normas, indicadores oficiais, RNCs, atas de análise crítica, documentos auditáveis.

O `kab-brain` pode resumir e indexar esses dados, mas não substitui a fonte original.

### 2. Canônico interno do kab-brain — fonte oficial para regras e contexto consolidado

Notas com:

```yaml
status: canonico
```

Uso esperado:

- regras de segregação e audiência;
- arquitetura do brain e dos agentes;
- mapas mestres;
- contexto institucional revisado;
- glossário e definições estáveis;
- integrações e fontes de dados.

### 3. Revisado — confiável para operação, mas não regra fundacional

Notas com:

```yaml
status: revisado
```

Uso esperado:

- contexto departamental;
- processos operacionais não-sensíveis;
- indicadores com fonte declarada;
- resumos de Drive/SGK conferidos;
- mapas de áreas.

### 4. Ativo — útil, mas requer checagem se for decisão importante

Notas com:

```yaml
status: ativo
```

Uso esperado:

- material operacional corrente;
- notas ainda sem validação explícita;
- referências úteis para investigação.

Antes de tomar decisão com impacto, validar contra `fonte_original` ou responsável.

### 5. Staging / inbox — captura, não verdade final

Notas com:

```yaml
status: staging
# ou
status: inbox
```

Uso esperado:

- capturas brutas;
- relatos individuais;
- material recém-chegado;
- inputs para consolidação.

Não usar como fato oficial sem validação.

## Frontmatter recomendado

Para notas novas ou consolidadas:

```yaml
---
tipo: nota              # nota | departamento | indicador | integracao | procedimento | reuniao | projeto | principio | arquitetura
area: institucional     # institucional | producao | vendas | qualidade | logistica | manutencao | rh | financeiro | sgk | kab | g5
status: revisado        # inbox | staging | ativo | revisado | canonico | arquivado
criado: 2026-05-29
atualizado: 2026-05-29
autor: bruce
fonte_original: DBCorp | RD Station | RHiD | Google Drive/SGK | Ata | Erico | Responsavel area
validado_por: Erico | Gabriel | Fernando | Mayra | Suelen | Carla | Flavio | Jonatas | N/A
validado_em: 2026-05-29
sensibilidade: gestao   # externo | gestao | g5 | restrito-erico
recencia: estatica      # estatica | diaria | mensal | sob-demanda
tags: []
---
```

Campos mínimos para promoção a `status: canonico` ou `status: revisado`:

- `fonte_original`
- `validado_por`
- `validado_em`
- `sensibilidade`
- `atualizado`

## Como promover uma nota

### inbox → staging

Permitido quando:

- passou por triagem de sensibilidade em [[PRINCIPIOS]];
- tem área sugerida;
- não contém RH individual nem financeiro estratégico.

### staging → revisado/canônico

Permitido quando:

- a informação foi checada contra sistema, Drive/SGK, ata ou responsável;
- o texto foi consolidado, sem opinião solta;
- `fonte_original` e `validado_por` foram preenchidos;
- se for regra, política ou arquitetura, Erico validou.

## Convenção prática para Tony/Bruce

- Para responder **"qual é o dado atual?"**: consultar sistema original.
- Para responder **"qual é a regra/política/contexto?"**: consultar notas canônicas/revisadas.
- Para responder **"alguém comentou algo sobre isso?"**: consultar `inbox/` e `staging/`, deixando claro que é provisório.
- Para conteúdo sensível: usar o cofre pessoal do Erico, não o `kab-brain`.

## Pacote canônico mínimo v1

Neste momento, a camada canônica/revisada mínima do `kab-brain` deve incluir:

- [[PRINCIPIOS]]
- [[ARQUITETURA]]
- [[MATURIDADE-E-FONTES]]
- [[../glossario]]
- [[../equipe/g5]]
- [[integracoes/_sobre]]
- [[integracoes/dbcorp]]
- [[integracoes/rdstation]]
- [[integracoes/rhid]]
- [[integracoes/google-drive-mapeamento]]
- [[../../empresa/sgk/MAPA]]
- [[../../empresa/indicadores/MAPA]]
- [[../../areas/_MAPA-Departamentos]]

As notas de `areas/*/contexto/sobre-o-departamento.md` ficam como `status: revisado` até validação detalhada por cada responsável de área.
