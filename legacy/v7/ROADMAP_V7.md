# CipherLint — Definitive Sequential Roadmap v7

**Portfolio order:** 2 / 10
**Complexity:** Medium
**Planning estimate:** 8–12 focused weeks (not a promise; recalibrate after Phase 1)

**Why this order:** A Rust-first deterministic security CLI is bounded, testable, easy to publish, and gives strong engineering signal before adding web collaboration.

## First executable proof
Rust CLI scan → deterministic findings → stable IDs → SARIF export → rule fixtures/fuzz/property tests. Server/UI starts only after CLI contract is stable.

## Rules for this repository
- One phase at a time; no implementation work for phase N+1 before phase N exit evidence is merged.
- Contract/schema changes precede dependent implementation.
- Every retryable operation is idempotent.
- Every derived store/projection has a rebuild path.
- Negative and failure tests are part of the feature, not post-release hardening.
- Status claims must be evidence-backed.

## Phase 0 — Rust workspace/CLI

**Implementation deliverables**
- Create Cargo workspace and CLI shell
- Define exit codes/stdout/stderr contract
- Config discovery precedence
- Deterministic file traversal and ignore rules

**Required verification**
- CLI snapshot tests
- path ordering tests
- config precedence tests

**Definition of Done**
- Scanning an empty/fixture repo is reproducible across repeated runs and emits stable machine-readable output.
- CI is green from a clean checkout.
- New behavior is observable without logging secrets/sensitive payloads.
- Failure behavior and rollback/recovery note are documented.
- Contracts and README status are updated if externally visible behavior changed.

## Phase 1 — PHP parser frontend

**Implementation deliverables**
- Pin tree-sitter grammar
- Parse relevant PHP constructs
- Normalize source spans/path representation
- Graceful parse-error model

**Required verification**
- parser corpus
- malformed code fuzz
- span accuracy fixtures

**Definition of Done**
- Parser never panics on malformed input and reports stable byte/line spans.
- CI is green from a clean checkout.
- New behavior is observable without logging secrets/sensitive payloads.
- Failure behavior and rollback/recovery note are documented.
- Contracts and README status are updated if externally visible behavior changed.

## Phase 2 — CryptoIR v1

**Implementation deliverables**
- Define language-neutral crypto/security IR
- Map PHP AST patterns into IR
- Represent unknown/dynamic behavior explicitly
- Version IR schema

**Required verification**
- mapping golden tests
- unknown-case fixtures
- schema compatibility tests

**Definition of Done**
- Equivalent crypto usage normalizes consistently without pretending dynamic values are known.
- CI is green from a clean checkout.
- New behavior is observable without logging secrets/sensitive payloads.
- Failure behavior and rollback/recovery note are documented.
- Contracts and README status are updated if externally visible behavior changed.

## Phase 3 — Rule SDK + initial rules

**Implementation deliverables**
- Rule metadata/severity/confidence/remediation schema
- Pure deterministic rule evaluation
- Initial high-confidence PHP crypto misuse rules
- Stable finding fingerprint algorithm

**Required verification**
- rule fixture suite
- false-positive regression corpus
- fingerprint stability tests

**Definition of Done**
- Same file+rule+semantic location produces the same finding ID after unrelated line movement where feasible.
- CI is green from a clean checkout.
- New behavior is observable without logging secrets/sensitive payloads.
- Failure behavior and rollback/recovery note are documented.
- Contracts and README status are updated if externally visible behavior changed.

## Phase 4 — SARIF/CI

**Implementation deliverables**
- SARIF 2.1.0 exporter
- GitHub code scanning compatible locations/rules
- Baseline/new-findings mode
- Document CI exit policy

**Required verification**
- SARIF schema validation
- GitHub fixture smoke test
- baseline tests

**Definition of Done**
- Generated SARIF validates and findings map to correct files/regions without leaking source contents unnecessarily.
- CI is green from a clean checkout.
- New behavior is observable without logging secrets/sensitive payloads.
- Failure behavior and rollback/recovery note are documented.
- Contracts and README status are updated if externally visible behavior changed.

## Phase 5 — Fuzz/property corpus

**Implementation deliverables**
- cargo-fuzz targets for parsers/IR/config
- Property tests for normalization/fingerprints
- Corpus minimization and regression promotion
- Resource limits for adversarial files

**Required verification**
- fuzz smoke in CI
- large-file timeout tests

**Definition of Done**
- Known malformed/adversarial corpus causes no panic/OOM and all fixed crashes become permanent regression tests.
- CI is green from a clean checkout.
- New behavior is observable without logging secrets/sensitive payloads.
- Failure behavior and rollback/recovery note are documented.
- Contracts and README status are updated if externally visible behavior changed.

## Phase 6 — JS/Python/Java frontends

**Implementation deliverables**
- Add parser adapters one language at a time
- Map into same CryptoIR
- Language-specific rules only where semantics differ
- Cross-language fixture equivalence

**Required verification**
- adapter contract suite
- cross-language IR tests

**Definition of Done**
- New language frontends do not fork the core rule engine and preserve deterministic output contracts.
- CI is green from a clean checkout.
- New behavior is observable without logging secrets/sensitive payloads.
- Failure behavior and rollback/recovery note are documented.
- Contracts and README status are updated if externally visible behavior changed.

## Phase 7 — Server collaboration UI

**Implementation deliverables**
- Only now bootstrap optional Laravel/React service
- Upload findings, not source by default
- Team triage/suppression with rationale
- RBAC and audit

**Required verification**
- API authorization tests
- source-retention tests
- UI workflow tests

**Definition of Done**
- CLI remains fully usable offline; server cannot weaken scanner determinism or require source upload.
- CI is green from a clean checkout.
- New behavior is observable without logging secrets/sensitive payloads.
- Failure behavior and rollback/recovery note are documented.
- Contracts and README status are updated if externally visible behavior changed.

## Phase 8 — Performance/public v1

**Implementation deliverables**
- Benchmark representative repositories
- Incremental/cache strategy with correctness validation
- Packaging for major platforms
- Signed checksums/SBOM/release docs

**Required verification**
- benchmark regression gates
- clean install on supported OSes
- release verification

**Definition of Done**
- Public v1 has reproducible binaries, measured performance budgets and stable CLI/SARIF compatibility guarantees.
- CI is green from a clean checkout.
- New behavior is observable without logging secrets/sensitive payloads.
- Failure behavior and rollback/recovery note are documented.
- Contracts and README status are updated if externally visible behavior changed.

## Public v1 invariant
The project is not called production-ready merely because all phases are coded. `PUBLIC-V1-GO` requires the repository release gate, clean-install proof, security/recovery evidence and signed/verifiable release artifacts.
