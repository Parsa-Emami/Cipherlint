# CipherLint — Final Implementation Specification

This specification freezes the v1 implementation contract. Changes that violate an invariant, authority boundary or public contract require an ADR/RFC and migration/compatibility plan.

## HTTP conventions
- Prefix `/api/v1`; JSON UTF-8; explicit content type.
- Resource IDs are opaque UUID/ULID-style identifiers and authorization is re-evaluated after lookup.
- Cursor pagination for unbounded collections.
- Mutation request/response schemas are versioned in OpenAPI; unknown security-sensitive fields are rejected where ambiguity is dangerous.
- Stable error codes follow the common error standard.

| Method | Route | Purpose | Gate |
|---|---|---|---|
| `POST` | `/projects/{project}/scans` | Server orchestration of authoritative CLI scanner | auth + validation + idempotency where side-effecting |
| `GET` | `/scans/{scan}` | Read results | auth + validation + idempotency where side-effecting |
| `POST` | `/findings/{finding}/triage` | Triage with reason | auth + validation + idempotency where side-effecting |
| `POST` | `/baselines` | Create finding baseline | auth + validation + idempotency where side-effecting |
| `GET` | `/rules` | List rule IDs/versions | auth + validation + idempotency where side-effecting |
| `GET` | `/exports/{scan}.sarif` | Deterministic SARIF export | auth + validation + idempotency where side-effecting |

## Compatibility
Additive compatible changes may ship in v1. Removing/renaming/changing semantics requires deprecation + migration and normally a new API major. Golden request/response fixtures run in CI.
