# CipherLint — Final Implementation Specification

This specification freezes the v1 implementation contract. Changes that violate an invariant, authority boundary or public contract require an ADR/RFC and migration/compatibility plan.

## Versioned domain/integration events
- `scan.started.v1`
- `scan.completed.v1`
- `finding.detected.v1`
- `finding.triaged.v1`
- `rulepack.updated.v1`
- `baseline.created.v1`

## Envelope
Every message carries `specversion`, `id`, `source`, `type`, `subject`, `time`, `datacontenttype`, `correlation_id`, `causation_id`, `tenant/workspace scope`, aggregate ID/version and payload schema version.

## Delivery semantics
At-least-once delivery is assumed. Consumers deduplicate by event/command identity and verify aggregate/projection checkpoint. Ordering is guaranteed only within an explicitly versioned stream. Consumers tolerate duplicates and documented reordering; correctness never assumes exactly-once transport.
