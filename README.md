# CipherLint

> v7.0 status: **ARCHITECTURE-GO / BOOTSTRAP-GO / SOURCE-NOT-IMPLEMENTED**

This directory is a standalone GitHub repository starting point for CipherLint. It contains the frozen architecture/specification, valid HTTP/event/configuration contracts, GitHub governance/security controls, and project-specific source bootstrap commands.

## Runtime boundary
- Rust 1.98 CLI/core engine (authoritative scanner)
- Tree-sitter parser frontends
- Laravel 13 optional collaboration/control plane
- React 19.2 latest patched + TypeScript optional findings UI
- PostgreSQL 18.6 server metadata
- S3-compatible optional encrypted source snapshots
- OpenTelemetry server-side only

## First executable proof
Rust CLI scan → deterministic findings → stable IDs → SARIF export → rule fixtures/fuzz/property tests. Server/UI starts only after CLI contract is stable.

## Start
```bash
make validate
# verify the GitHub owner/module namespace first
make bootstrap
```

Read `ROADMAP_V7.md`, `PROJECT_START_CHECKLIST_V7.md`, `ACCEPTANCE_GATES_V7.md`, and `GITHUB_REPOSITORY_SETUP_V7.md` before the first code commit.

## Evidence rule
Architecture readiness is not production readiness. “S-tier”, “secure”, “resilient”, or performance claims require executable test/observability/failure/recovery/benchmark/release evidence.

## v7 portfolio position
Recommended implementation order: **2 / 10**. A Rust-first deterministic security CLI is bounded, testable, easy to publish, and gives strong engineering signal before adding web collaboration.
