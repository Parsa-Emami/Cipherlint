# ADR 0005 — CipherLint reference decision

**Status:** Accepted for v1

## Decision
Rules are Apache-2.0 project-owned YAML/JSON definitions compiled into deterministic matchers. Third-party Semgrep rule corpora are not copied into the core.

## Consequences
Implementation and tests must preserve this boundary. An alternative is allowed only through the relevant port/adapter when it preserves authority, public contracts, security invariants and migration semantics.

## Revisit trigger
Measured benchmark, security evidence, maintenance/licensing change or operational incident demonstrates the reference choice no longer satisfies the declared workload/threat model. Revisit via a new superseding ADR; never silently rewrite history.
