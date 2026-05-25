---
tipo: nota
area: 
status: ativo
criado: 2026-05-25
atualizado: 2026-05-25
autor: erico
tags: [tony, integracao, rhid]
---

# RHiD — manual operacional do Tony

Sistema de ponto eletrônico em nuvem da Control iD usado pela KAB. API REST documentada empiricamente (doc oficial é fechada).

## 1. Identidade KAB

| Item | Valor |
|---|---|
| `cidCustomerId` | 23018 |
| domínio interno | `koide` |
| operador admin | `nfe@koidebrasil.com` |
| plano | 50 usuários · 1 empresa |
| volumetria (mai/2026) | 74 funcionários cadastrados (35 ativos), 2 dispositivos, 85k+ marcações |

## 2. Como conectar

Credenciais em `/opt/data/.config/rhid.env`:
- `RHID_USER` (email do operador admin)
- `RHID_PASS` (senha)
- `RHID_BASE` = `https://rhid.com.br/v2`

Stack: **WCF/.NET REST**. Rota: `/v2/<servico>.svc/<action>`.

Auth: **JWT Bearer (HS256)**, expira em ~4h. Login:

```python
import os, requests
from dotenv import load_dotenv
load_dotenv("/opt/data/.config/rhid.env")
r = requests.post(
    f"{os.environ['RHID_BASE']}/login.svc/",
    json={"domain": None, "email": os.environ["RHID_USER"], "password": os.environ["RHID_PASS"]},
    timeout=15,
)
token = r.json()["accessToken"]
headers = {"Authorization": f"Bearer {token}"}
```

Token expirado → re-login. Cliente Python pronto em `92-Skills/kab/rhid-client/scripts/rhid_client.py` (cofre pessoal do Érico) já tem renovação automática.

## 3. Regras de segurança

- **READ-ONLY**: nunca POST/PUT/DELETE que altere ponto, banco horas, cadastro. Só GET.
- **Não fazer enumeração sistemática de endpoints** — classifier de segurança bloqueia (e Control iD pode banir IP). Endpoints novos: pedir pra Erico, ou consultar `01-KAB/Integracoes/RHiD - API.md` no cofre pessoal.
- **Dado pessoal de funcionário é sensível**: nome, CPF, foto, banco horas detalhado. Rule 12.3 vale aqui (dado financeiro nominal não vaza pro kab-brain).

## 4. Endpoints validados

| Endpoint | Método | Retorna |
|---|---|---|
| `/v2/login.svc/` | POST | `{accessToken, expiredPassword, isPerson, listCustomer, ...}` |
| `/v2/util.svc/dashboardInfo` | GET | `{countCompany, countDevice, countLog, countPerson}` |
| `/v2/util.svc/ultimasmarcacoes` | GET | array `{data, fotoURL, id, nome}` (últimas batidas) |
| `/v2/util.svc/configUI` | GET | `{CustomerName, Version, modules}` |
| `/v2/customerdb/person.svc/a` | GET | 74 funcionários (~120 campos cada) |

## 5. Convenção crítica — actions de letra única

Algumas actions são **letras únicas** (legado .NET WCF antigo). Em `customerdb/person.svc/`:
- `list`, `listActive`, `query`, `get` → **404**
- **`a`** → ✅ 200 OK com `{data: [...]}`

Ao explorar serviço novo, **testar `'a'` primeiro** antes de adivinhar nomes.

## 6. Departamentos vistos

PRODUÇÃO · QUALIDADE · FINANCEIRO · LOGISTICA · PRESIDENCIA · ADMINISTRATIVO

## 7. Quem NÃO bate ponto (sem ponto = falso positivo se contar como ausente)

Ver memória `kab-pessoas-sem-ponto` do Bruce. Em resumo: Erico (#34), Gabriel Pedon (#41), Mayra Santos não registram. Excluir da contagem de faltas pra evitar alerta falso.

## 8. Turnos cadastrados

`1`, `2`, `3º TURNO`, `ADMINISTRATIVO`. Em 2026-05 só 1/2/ADM ativos — 3º está cadastrado mas vazio (vai voltar quando produção crescer).

## 9. URLs satélite

- `chat.rhid.com.br/signalr` — chat tempo real
- `mobile.rhid.com.br/v2-app/` — API mobile
- `repp.rhid.com.br/marcacao_web` — REP-P remoto
- `rhidv2.s3-sa-east-1.amazonaws.com/` — CDN assets/fotos

## 10. Receita rápida — dashboard atual

```python
import os, requests
from dotenv import load_dotenv

load_dotenv("/opt/data/.config/rhid.env")
base = os.environ["RHID_BASE"]

# 1. login
r = requests.post(f"{base}/login.svc/", json={
    "domain": None,
    "email": os.environ["RHID_USER"],
    "password": os.environ["RHID_PASS"],
}, timeout=15)
token = r.json()["accessToken"]
headers = {"Authorization": f"Bearer {token}"}

# 2. dashboard
dash = requests.get(f"{base}/util.svc/dashboardInfo", headers=headers, timeout=10).json()
print(dash)  # {countCompany, countDevice, countLog, countPerson}

# 3. últimas marcações
recents = requests.get(f"{base}/util.svc/ultimasmarcacoes", headers=headers, timeout=10).json()
```

## 11. Escopo por papel (rule 8)

- **Mayra Santos** (RH+SGK): TUDO RHiD — ponto, banco horas, faltas, treinamentos, cadastros
- **Outros G5**: só com aprovação da Mayra (rule 10)
- **Erico**: tudo, sempre

## 12. Quando aparecer dado pessoal sensível

Salário, dado médico, conflito interno = **gatilho 12.3**. Não gravar em lugar nenhum (nem memória interna, nem kab-brain). Reportar pra Erico se chegou em conversa.

## 13. Referência cruzada

- Skill completa do Bruce: `92-Skills/kab/rhid-client/` (cofre pessoal)
- Memória do Bruce (fonte de verdade): `rhid-api-mapeamento`, `kab-pessoas-sem-ponto`, `kab-turnos-rhid`
- Outras integrações: [[dbcorp]] · [[rdstation]]
- Rule core: SOUL rule 14
