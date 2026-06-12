---
tipo: "drive-index"
area: "kab"
fonte: "google-drive"
drive_id: "1vkDDowm-XV_e6fNBFmW9Cz86qBoOLKCD"
drive_path: "setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup"
nome_arquivo: "verify-typescript-setup.d.ts"
mime: "text/vnd.trolltech.linguist"
modificado: "2026-04-02"
indexado: "2026-05-31"
sensibilidade: "baixa"
destino: "kab-brain"
risk_flags: []
needs_human_review: false
hash_sha: "768cf96431791e4c"
extrator: "text"
tags: ["kab", "drive-index", "academia-agentes", "processo"]
---

# verify-typescript-setup.d.ts

## Classificação
- Destino: `kab-brain`
- Sensibilidade: `baixa`
- Flags: `nenhuma`
- Revisão humana necessária: não

## Resumo extraído automaticamente
- import type { TypeCheckResult } from './typescript/runTypeCheck';
- export declare function verifyAndRunTypeScript({ dir, distDir, cacheDir, strictRouteTypes, tsconfigPath, shouldRunTypeCheck, typedRoutes, disableStaticImages, hasAppDir, hasPage...
- dir: string;
- distDir: string;
- cacheDir?: string;
- strictRouteTypes: boolean;
- tsconfigPath: string | undefined;
- shouldRunTypeCheck: boolean;
- typedRoutes: boolean;
- disableStaticImages: boolean;

## Utilidade para Academia de Agentes
- Fonte candidata para enriquecer catálogos/playbooks de RFQ, viabilidade, máquinas, ferramental, tolerâncias, processos ou requisitos de cliente.
- Validar com responsável humano antes de transformar em regra operacional definitiva.

## Fonte
- Nome: `verify-typescript-setup.d.ts`
- Drive ID: `1vkDDowm-XV_e6fNBFmW9Cz86qBoOLKCD`
- Link: https://drive.google.com/file/d/1vkDDowm-XV_e6fNBFmW9Cz86qBoOLKCD/view?usp=drivesdk
- Modificado: `2026-04-02`
- Query/path hit: `setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup;setup`

## Conteúdo bruto extraído
<details>
<summary>Texto extraído</summary>

import type { TypeCheckResult } from './typescript/runTypeCheck';
export declare function verifyAndRunTypeScript({ dir, distDir, cacheDir, strictRouteTypes, tsconfigPath, shouldRunTypeCheck, typedRoutes, disableStaticImages, hasAppDir, hasPagesDir, appDir, pagesDir, debugBuildPaths, }: {
    dir: string;
    distDir: string;
    cacheDir?: string;
    strictRouteTypes: boolean;
    tsconfigPath: string | undefined;
    shouldRunTypeCheck: boolean;
    typedRoutes: boolean;
    disableStaticImages: boolean;
    hasAppDir: boolean;
    hasPagesDir: boolean;
    appDir?: string;
    pagesDir?: string;
    debugBuildPaths?: {
        app?: string[];
        pages?: string[];
    };
}): Promise<{
    result?: TypeCheckResult;
    version: string | null;
}>;

</details>


## Links relacionados

- [[_MOC-Academia-Agentes-KAB]]
