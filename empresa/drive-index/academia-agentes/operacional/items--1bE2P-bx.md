---
tipo: "drive-index"
area: "kab"
fonte: "google-drive"
drive_id: "1bE2P-bxsIgRbg9Liu6B4qDXD4c_sqNCx"
drive_path: "IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-"
nome_arquivo: "items.mjs"
mime: "text/javascript"
modificado: "2026-04-04"
indexado: "2026-05-31"
sensibilidade: "baixa"
destino: "kab-brain"
risk_flags: []
needs_human_review: false
hash_sha: "5f5fdfc69b6666a0"
extrator: "text"
tags: ["kab", "drive-index", "academia-agentes"]
---

# items.mjs

## Classificação
- Destino: `kab-brain`
- Sensibilidade: `baixa`
- Flags: `nenhuma`
- Revisão humana necessária: não

## Resumo extraído automaticamente
- // File generated from our OpenAPI spec by Stainless. See CONTRIBUTING.md for details.
- import { APIResource } from "../../core/resource.mjs";
- import { ConversationCursorPage, } from "../../core/pagination.mjs";
- import { path } from "../../internal/utils/path.mjs";
- /**
- * Manage conversations and conversation items.
- */
- export class Items extends APIResource {
- /**
- * Create items in a conversation with the given ID.

## Utilidade para Academia de Agentes
- Fonte candidata para enriquecer catálogos/playbooks de RFQ, viabilidade, máquinas, ferramental, tolerâncias, processos ou requisitos de cliente.
- Validar com responsável humano antes de transformar em regra operacional definitiva.

## Fonte
- Nome: `items.mjs`
- Drive ID: `1bE2P-bxsIgRbg9Liu6B4qDXD4c_sqNCx`
- Link: https://drive.google.com/file/d/1bE2P-bxsIgRbg9Liu6B4qDXD4c_sqNCx/view?usp=drivesdk
- Modificado: `2026-04-04`
- Query/path hit: `IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-`

## Conteúdo bruto extraído
<details>
<summary>Texto extraído</summary>

// File generated from our OpenAPI spec by Stainless. See CONTRIBUTING.md for details.
import { APIResource } from "../../core/resource.mjs";
import { ConversationCursorPage, } from "../../core/pagination.mjs";
import { path } from "../../internal/utils/path.mjs";
/**
 * Manage conversations and conversation items.
 */
export class Items extends APIResource {
    /**
     * Create items in a conversation with the given ID.
     */
    create(conversationID, params, options) {
        const { include, ...body } = params;
        return this._client.post(path `/conversations/${conversationID}/items`, {
            query: { include },
            body,
            ...options,
        });
    }
    /**
     * Get a single item from a conversation with the given IDs.
     */
    retrieve(itemID, params, options) {
        const { conversation_id, ...query } = params;
        return this._client.get(path `/conversations/${conversation_id}/items/${itemID}`, { query, ...options });
    }
    /**
     * List all items for a conversation with the given ID.
     */
    list(conversationID, query = {}, options) {
        return this._client.getAPIList(path `/conversations/${conversationID}/items`, (ConversationCursorPage), { query, ...options });
    }
    /**
     * Delete an item from a conversation with the given IDs.
     */
    delete(itemID, params, options) {
        const { conversation_id } = params;
        return this._client.delete(path `/conversations/${conversation_id}/items/${itemID}`, options);
    }
}
//# sourceMappingURL=items.mjs.map

</details>
