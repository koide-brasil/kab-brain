---
tipo: nota
area: institucional
status: revisado
criado: 2026-05-23
atualizado: 2026-05-29
fonte_original: RHiD Control iD + uso RH KAB
validado_por: Bruce
validado_em: 2026-05-29
sensibilidade: gestao
recencia: sob-demanda
tags: [integracao, rhid, ponto-eletronico, rh]
---

# RHiD — ponto eletrônico Control iD

A KAB usa **RHiD** (sistema de ponto eletrônico em nuvem da Control iD) pra:
- Registrar marcações de entrada/saída por funcionário
- Banco de horas (HE + HC)
- Gestão de turnos
- Biometria + cartão proximidade

## Como acessar

- **API REST**: `https://api.secullum.com.br/v2/` (Control iD usa Secullum como provider)
- **Auth**: JWT Bearer com renovação automática (token expira a cada 4h)
- **Credenciais**: vivem em `~/.config/rhid.env` (NUNCA git)
- **Cliente da KAB**: `cidCustomerId=23018` (id `koide` na URL pública do RHiD)

## Endpoints principais

| Endpoint | O que retorna |
|---|---|
| `/login.svc/login` | Auth — POST com email+senha → retorna JWT |
| `/dashboard` | Visão agregada: total funcionários, marcações do dia, dispositivos online |
| `/funcionarios?action=a` | **Action `a` = lista completa** (~120 campos por funcionário) |
| `/funcionarios?action=l` | Lista resumida (rápida) |
| `/marcacoes?date=YYYY-MM-DD` | Marcações do dia |
| `/marcacoes/ultima` | Última marcação por funcionário (tempo real) |

## Dados-chave da KAB

- **74 funcionários cadastrados** total (incluindo inativos/históricos)
- **35 ativos** trabalhando hoje
- **~85k marcações** acumuladas (desde implantação)
- **2 dispositivos** (relógios biométricos) ativos
- **Turnos ativos hoje**: 1, 2, ADMINISTRATIVO
- **3º TURNO**: cadastrado mas vazio em 2026-05 (já teve no passado, pode voltar)

## Pessoas que NÃO batem ponto

Por regra interna, **gerentes e diretoria** não batem ponto no RHiD:
- Diretor presidente (CEO)
- Gerente comercial
- Gerente de RH

→ **Tony deve EXCLUIR esses IDs da contagem de "faltantes" no daily** (senão dá falso positivo). Lista vive em `~/.config/rhid-excluidos.env` (papéis, não nomes nominais aqui).

## Convenções operacionais

- **Convenção da skill `rhid-client`**: `action='a'` retorna lista COMPLETA com todos os campos (admissão, banco horas, biometria, departamento, função)
- **Renovação JWT**: automática (cliente Python detecta expiração e refaz login)
- **Banco de horas**: campos `bancoHorasSaldo`, `horasExtras`, `horasContratuais`

## Skills existentes que usam RHiD

Vivem no cofre pessoal do Erico, executadas pelo Bruce:

- `rhid-client` — cliente Python (`erico-brain/92-Skills/kab/rhid-client/`) que encapsula API. Dashboard, marcações, funcionários, config.
- `daily-meeting` — usa RHiD pra contar faltas + atrasos do dia

Tony **referencia** mas não executa (credenciais sensíveis + dados pessoais).

## O que Tony NÃO deve fazer com RHiD

- ❌ Não listar nomes de quem tá em atraso (pessoa específica)
- ❌ Não acessar banco de horas individual
- ❌ Não cruzar dados pessoais (CPF, biometria, salário)
- ✅ Pode reportar **agregados** ("hoje 3 funcionários faltaram", sem nomes)
- ✅ Pode reportar **dashboard global** (74 cadastrados, 35 ativos, etc)

## Roadmap

Quando Tony for promovido a executor (Sprint 4+):
- Acesso read-only ao dashboard
- Pode reportar agregados pro daily-meeting do time
- NÃO terá acesso a dados pessoais individuais

## Links

- [[_sobre]] — índice integrações
- [[../../sgk/Procedimentos/PR-02 Recursos Humanos]] — processo RH
- [[../../sgk/Mapas-Processo/RH]] — mapa do processo
