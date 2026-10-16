# ADR 0003 — CipherLint reference decision

**Status:** Accepted for v1

## Decision
CryptoIR v1 models crypto calls, algorithms, key/nonce/random sources, KDF/hash use, TLS settings, secret literals and bounded value-flow edges.

## Consequences
Implementation and tests must preserve this boundary. An alternative is allowed only through the relevant port/adapter when it preserves authority, public contracts, security invariants and migration semantics.

## Revisit trigger
Measured benchmark, security evidence, maintenance/licensing change or operational incident demonstrates the reference choice no longer satisfies the declared workload/threat model. Revisit via a new superseding ADR; never silently rewrite history.
