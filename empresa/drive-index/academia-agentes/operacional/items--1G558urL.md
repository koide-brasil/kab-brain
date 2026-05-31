---
tipo: "drive-index"
area: "kab"
fonte: "google-drive"
drive_id: "1G558urLSTTyaqrhn4KT94xQlnBXmRjaV"
drive_path: "IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-"
nome_arquivo: "items.js"
mime: "text/javascript"
modificado: "2026-04-04"
indexado: "2026-05-31"
sensibilidade: "baixa"
destino: "kab-brain"
risk_flags: []
needs_human_review: false
hash_sha: "5b0b59d2f47b812f"
extrator: "text"
tags: ["kab", "drive-index", "academia-agentes"]
---

# items.js

## Classificação
- Destino: `kab-brain`
- Sensibilidade: `baixa`
- Flags: `nenhuma`
- Revisão humana necessária: não

## Resumo extraído automaticamente
- "use strict";
- // File generated from our OpenAPI spec by Stainless. See CONTRIBUTING.md for details.
- Object.defineProperty(exports, "__esModule", { value: true });
- exports.Items = void 0;
- const resource_1 = require("../../core/resource.js");
- const pagination_1 = require("../../core/pagination.js");
- const path_1 = require("../../internal/utils/path.js");
- /**
- * Manage conversations and conversation items.
- */

## Utilidade para Academia de Agentes
- Fonte candidata para enriquecer catálogos/playbooks de RFQ, viabilidade, máquinas, ferramental, tolerâncias, processos ou requisitos de cliente.
- Validar com responsável humano antes de transformar em regra operacional definitiva.

## Fonte
- Nome: `items.js`
- Drive ID: `1G558urLSTTyaqrhn4KT94xQlnBXmRjaV`
- Link: https://drive.google.com/file/d/1G558urLSTTyaqrhn4KT94xQlnBXmRjaV/view?usp=drivesdk
- Modificado: `2026-04-04`
- Query/path hit: `IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-;IT-`

## Conteúdo bruto extraído
<details>
<summary>Texto extraído</summary>

"use strict";
// File generated from our OpenAPI spec by Stainless. See CONTRIBUTING.md for details.
Object.defineProperty(exports, "__esModule", { value: true });
exports.Items = void 0;
const resource_1 = require("../../core/resource.js");
const pagination_1 = require("../../core/pagination.js");
const path_1 = require("../../internal/utils/path.js");
/**
 * Manage conversations and conversation items.
 */
class Items extends resource_1.APIResource {
    /**
     * Create items in a conversation with the given ID.
     */
    create(conversationID, params, options) {
        const { include, ...body } = params;
        return this._client.post((0, path_1.path) `/conversations/${conversationID}/items`, {
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
        return this._client.get((0, path_1.path) `/conversations/${conversation_id}/items/${itemID}`, { query, ...options });
    }
    /**
     * List all items for a conversation with the given ID.
     */
    list(conversationID, query = {}, options) {
        return this._client.getAPIList((0, path_1.path) `/conversations/${conversationID}/items`, (pagination_1.ConversationCursorPage), { query, ...options });
    }
    /**
     * Delete an item from a conversation with the given IDs.
     */
    delete(itemID, params, options) {
        const { conversation_id } = params;
        return this._client.delete((0, path_1.path) `/conversations/${conversation_id}/items/${itemID}`, options);
    }
}
exports.Items = Items;
//# sourceMappingURL=items.js.map

</details>
