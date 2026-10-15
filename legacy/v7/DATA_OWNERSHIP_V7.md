# CipherLint — Data Ownership v7

- **Local CLI:** filesystem input and SARIF/JSON output, no server needed
- **PostgreSQL:** server projects/scans/finding lifecycle/rule metadata
- **ObjectStore:** optional encrypted uploaded sources/raw artifacts
- **Cache:** derived parse cache only

## Universal rules
- cache is never authority
- derived projections have checkpoint + rebuild + staleness metric
- secrets/evidence follow project-specific retention and redaction
- deletion does not rewrite immutable audit/custody history
