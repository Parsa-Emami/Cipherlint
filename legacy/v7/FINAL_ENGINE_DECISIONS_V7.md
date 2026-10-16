# CipherLint — Final Engine Decisions v7

These are accepted v1 decisions, not open blockers. Alternatives require a future ADR and must preserve public/domain contracts.

1. The Rust CLI is the authoritative scanner; server mode orchestrates the same engine and cannot redefine findings.
2. Tree-sitter is the reference parser frontend. Language ASTs compile into CryptoIR v1; rules do not directly depend on every language AST.
3. CryptoIR v1 models crypto calls, algorithms, key/nonce/random sources, KDF/hash use, TLS settings, secret literals and bounded value-flow edges.
4. v1 data flow is intra-procedural plus simple call/assignment summaries; interprocedural deep analysis is a later IR-compatible phase.
5. Rules are Apache-2.0 project-owned YAML/JSON definitions compiled into deterministic matchers. Third-party Semgrep rule corpora are not copied into the core.
6. Input source is never executed. Archives are extracted with path/symlink/decompression limits and scanners have CPU/memory/deadline budgets.
7. SARIF 2.1.0 is the primary CI result format; normalized finding IDs are stable across runs for unchanged code.
8. Each rule ships positive/negative fixtures and precision/recall expectations; parser and IR layers are fuzz targets.
