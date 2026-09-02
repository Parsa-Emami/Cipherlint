# CipherLint — State Machines v7

- **Scan:** `QUEUED -> PARSING -> LOWERING_IR -> ANALYZING -> COMPLETE | PARTIAL | FAILED`
- **Finding:** `OPEN -> CONFIRMED | FALSE_POSITIVE | ACCEPTED -> FIXED`
- **Rule:** `DRAFT -> TESTED -> STABLE -> DEPRECATED`

Transitions are domain commands with authorization, optimistic version check where applicable, audit event and invariant tests. Illegal transitions fail closed and are observable.
