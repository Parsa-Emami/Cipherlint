# CipherLint — First 30 Commit Plan v7

These are atomic intent boundaries, not mandatory commit-message text. Do not combine unrelated items merely to hit a number.

1. chore: initialize toolchain manifests and lockfiles
2. ci: make repository validation executable
3. chore: add local development environment/health checks
4. test: add clean-bootstrap smoke test
5. docs: freeze Phase 0 invariants and ADR index
6. phase0: create Cargo workspace and CLI shell
7. phase0: define exit codes/stdout/stderr contract
8. phase0: config discovery precedence
9. phase0: deterministic file traversal and ignore rules
10. test(phase0): add CLI snapshot tests
11. docs(phase0): record exit evidence and ADR updates
12. phase1: pin tree-sitter grammar
13. phase1: parse relevant PHP constructs
14. phase1: normalize source spans/path representation
15. phase1: graceful parse-error model
16. test(phase1): add parser corpus
17. docs(phase1): record exit evidence and ADR updates
18. phase2: define language-neutral crypto/security IR
19. phase2: map PHP AST patterns into IR
20. phase2: represent unknown/dynamic behavior explicitly
21. phase2: version IR schema
22. test(phase2): add mapping golden tests
23. docs(phase2): record exit evidence and ADR updates
24. phase3: rule metadata/severity/confidence/remediation schema
25. phase3: pure deterministic rule evaluation
26. phase3: initial high-confidence PHP crypto misuse rules
27. phase3: stable finding fingerprint algorithm
28. test(phase3): add rule fixture suite
29. docs(phase3): record exit evidence and ADR updates
30. test: close Phase 0/1 regression or failure-proof gap before scope expansion
