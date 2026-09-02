# CipherLint — Failure & Recovery Proof v7

## Mandatory injected failures
- malformed syntax
- parser panic corpus
- recursive archive
- symlink escape
- huge generated file
- rule timeout
- unsupported syntax
- version mismatch

## Pass criteria
For every failure: no invariant violation; no unauthorized bypass; no unbounded retry storm; orphan resources are reconciled; user-visible state becomes correct; telemetry identifies cause; retry/cancel/manual recovery is documented; recovery test is automated where feasible.
