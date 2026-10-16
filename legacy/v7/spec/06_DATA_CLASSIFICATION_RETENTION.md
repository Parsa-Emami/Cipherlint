# CipherLint — Final Implementation Specification

This specification freezes the v1 implementation contract. Changes that violate an invariant, authority boundary or public contract require an ADR/RFC and migration/compatibility plan.

| Data class | v1 rule |
|---|---|
| uploaded source | off by default or shortest configured period; encrypted if server mode stores it |
| findings | retain metadata/history |
| snippets | minimized/redacted and governed with source retention |
| local CLI | no server persistence |

## Classification labels
`PUBLIC`, `INTERNAL`, `CONFIDENTIAL`, `SECRET`, plus project-specific `EVIDENCE`/`SECURITY_TELEMETRY`. Classification drives logging, export, encryption, backup and retention behavior.

## Deletion
Deletion is an explicit domain operation with authorization, hold checks, audit and downstream projection/cache invalidation. Derived stores must not resurrect deleted authoritative data during rebuild.
