> Current OSS delivery/resources/storage/release policy is ADR-0003-open-source-local-first.md and DEFINITION_OF_DONE.md. The older planning context below is superseded where it conflicts; business invariants remain applicable.

# ADR-0001 — CipherLint lean release architecture

Status: accepted planning decision, 2026-10-01. Supersedes all runtime/storage/bootstrap decisions in `legacy/v7`; business invariants remain applicable where the selected scope implements them. No released external clients exist in the supplied scaffold, so this is a planning reset, not a live DB migration.

## Why change

The v7 input has zero application source/manifests. Its Laravel/PostgreSQL/cache/secondary-engine baseline adds operational cost before proving a useful app. The owner's objective is personally usable software on a domain with minimum database-service administration. Online interaction is compatible with embedded durable storage; no correctness claim relies on volatile memory as authority.

## Selected composition

- Rust CLI
- Tree-sitter grammars
- Project-owned crypto rules
- Static TypeScript findings viewer

Distribution: `file-cli`. Domain/application layer owns invariants; transport validates input and calls explicit use cases; storage/provider adapters implement ports. UI renders state and never guesses durable success. CLI and UI/report reader must agree on the same typed domain outputs. Static-hosted UI cannot provision Podman, capture traffic or run a secret provider in a browser.

## Authority and recovery

| Store | Ownership |
|---|---|
| Filesystem | source stays local; config, baselines, SARIF and rule packs |
| Memory | bounded AST/IR per scan |
| Server | static report viewer only; no source upload |

Removed compulsory services: Laravel, PostgreSQL, S3 source storage, server telemetry dependency. No hidden substitution with a self-built SQL server or full distributed event store. SQLite where present has no separate DB daemon, but durable disk, backup, schema evolution and correct constraints still matter. Optional external providers retain their own operational state and may increase total overhead.

## Initial capacity contract — targets, not measured

```json
{
  "source_file_max_mib": 2,
  "total_source_max_mib": 100,
  "file_count": 10000,
  "deadline_seconds": 120
}
```

CLI هدف 2 vCPU / 2 GiB RAM؛ viewer static. Native binary release برای Linux/macOS/Windows جدا تست شود.

Reject or visibly truncate workload beyond limit; no unbounded imports, recursive graph queries, unlimited retention or background queues. C28 benchmarks the target and overload case; publish only measured limits.

## Essential invariants

- No source execution
- Deterministic finding IDs
- Unsupported syntax and incomplete scan are explicit

## Trust and deployment boundary

- نمی‌توان از صفر finding نتیجهٔ امن‌بودن گرفت
- parser و dataflow محدود false negative دارند
- قواعد crypto باید usage context را از صرف نام الگوریتم جدا کنند

Private service mode requires persistent volume and access control. Public domain can serve a synthetic static demo; it does not imply public runtime admission. Single-host updates may have a maintenance window. No horizontal replicas sharing SQLite disk. Root operator is trusted for local file protection; external checkpoints only add independently verifiable tamper evidence, not magical host immutability.

## Migration and future expansion

Archive-only v7 contracts/bootstrap are not active compatibility promises. C04 defines current exact typed inputs/results; no generic OperationResult substitutes for domain payloads. Versioned file schemas get import/export migration fixtures before formats change. Reuse IDs/invariants, not unimplemented API shapes by default.

Add managed PostgreSQL only when multiple writers/hosts or tenant concurrency demonstrably need it. Add graph/search/telemetry services only after measured query/workload limits fail. Keep adapters so semantic identities and exports survive migration. SaaS requires separate tenant/RBAC/rate/retention/backup and cost decisions; do not silently promote the personal profile to public shared service.

## Rejected initial alternatives

- Uniform Laravel plus PostgreSQL and Valkey for all projects: heavier operations without a working product.
- Storing critical state only in JSON files or RAM: no safe concurrency/durable recovery protocol.
- Browser storage as sole guaranteed backup: origin changes/eviction/clearing may lose data.
- Rebuilding scanners, IdP or crypto primitives for feature parity: greater risk and weaker differentiation.
- Making all ten public services at once: insufficient capacity to maintain high-trust boundaries independently.

Any contrary implementation must add an ADR with evidence and update product/deployment/roadmap together before dependent code.
