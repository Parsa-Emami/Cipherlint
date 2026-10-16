# CipherLint — Final Implementation Specification

This specification freezes the v1 implementation contract. Changes that violate an invariant, authority boundary or public contract require an ADR/RFC and migration/compatibility plan.

## Golden E2E scenarios
1. PHP fixtures -> AST -> CryptoIR -> 3 rules -> SARIF
2. Malformed corpus fuzz has no panic
3. Same source rerun same fingerprint set
4. Triage/suppression reason retained
5. Resource-limit large file returns PARTIAL not process crash

For every golden scenario record expected authoritative state, emitted event IDs/types, audit action, projection state, critical metrics and cleanup state. Run from a clean environment with deterministic synthetic fixtures. At least one scenario must fail mid-flight and then converge after restart/retry/reconciliation.
