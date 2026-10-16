# CipherLint — Final Implementation Specification

This specification freezes the v1 implementation contract. Changes that violate an invariant, authority boundary or public contract require an ADR/RFC and migration/compatibility plan.

## Domain objects
- `Workspace`
- `Project`
- `SourceSnapshot`
- `Scan`
- `LanguageFrontend`
- `CryptoIRModule`
- `RulePack`
- `Rule`
- `Finding`
- `Suppression`
- `Baseline`
- `SARIFExport`

## Aggregate rules
- Aggregate mutations occur through application commands, never controller/model convenience writes.
- Aggregate version is checked on conflicting writes.
- Invariants are tested with illegal-transition/negative cases.
- Domain objects do not import Laravel/Eloquent/vendor SDKs.

## Frozen v1 invariants
1. Source code is data and never executed.
2. Language frontends lower to versioned CryptoIR; stable rules do not depend directly on language AST shape.
3. Finding fingerprint excludes unstable formatting/location noise but includes semantic sink/source identity.
4. Suppression requires reason/scope/expiry or stable baseline reference.
