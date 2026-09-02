# CipherLint — Component Architecture v7

## Runtime/components
- Rust CLI/core engine
- Tree-sitter parser frontends
- Laravel optional collaboration/control plane
- React findings UI
- PostgreSQL 18 server metadata
- ObjectStore optional encrypted source snapshots
- OpenTelemetry server side

## Dependency direction
`Web/CLI -> HTTP/Application -> Domain <- Ports <- Infrastructure Adapters`

Specialized workers/engines consume versioned commands/contracts; they do not reach into Laravel tables except through explicit repositories or service APIs owned by the responsible module.

## Cross-cutting
Transactional outbox, idempotent jobs, correlation IDs, OpenTelemetry, structured audit, rate/resource limits, health/readiness and graceful shutdown are mandatory.
