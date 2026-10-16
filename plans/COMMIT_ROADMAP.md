# CipherLint: forty implementation commits

Updated 2026-10-16. Current implementation is the web foundation; core features are not complete.

Full reference workflow: Install CLI -> scan positive/negative crypto fixtures -> check stable IDs -> produce SARIF -> load report locally in viewer -> confirm no source network transmission.

**C30: first locally usable supported product**, after actual verified C01-C30 and clean-host workflow/restart/restore. **C40: complete published OSS v1**, after full source/engine release gates and installation of the published version. No paid account, domain or customer-pilot count is required.

| ID | Intended commit | Dependencies | Detailed work card |
|---|---|---|---|
| C01 | `docs(product): freeze the open-source clone-to-value workflow` | None | [Files/resources/tests](commits/C01.md) |
| C02 | `chore(toolchain): lock reproducible open-source resources` | C01 | [Files/resources/tests](commits/C02.md) |
| C03 | `feat(runtime): implement unified local engine setup and launch` | C02 | [Files/resources/tests](commits/C03.md) |
| C04 | `feat(contracts): define typed versioned domain inputs and results` | C03 | [Files/resources/tests](commits/C04.md) |
| C05 | `feat(storage): prove recoverable local authoritative writes` | C04 | [Files/resources/tests](commits/C05.md) |
| C06 | `ci(engine): verify the actual engine from a clean checkout` | C05 | [Files/resources/tests](commits/C06.md) |
| C07 | `feat(cli): define scan config and exit code contract` | C06 | [Files/resources/tests](commits/C07.md) |
| C08 | `feat(files): traverse deterministically with ignore rules` | C07 | [Files/resources/tests](commits/C08.md) |
| C09 | `feat(parser): add php syntax frontend` | C08 | [Files/resources/tests](commits/C09.md) |
| C10 | `feat(parser): add python syntax frontend` | C09 | [Files/resources/tests](commits/C10.md) |
| C11 | `feat(ir): normalize crypto calls and value sources` | C10 | [Files/resources/tests](commits/C11.md) |
| C12 | `feat(flow): implement bounded intraprocedural summaries` | C11 | [Files/resources/tests](commits/C12.md) |
| C13 | `feat(rules): compile project owned declarative rules` | C12 | [Files/resources/tests](commits/C13.md) |
| C14 | `feat(rules): detect weak randomness in key generation` | C13 | [Files/resources/tests](commits/C14.md) |
| C15 | `feat(rules): detect hardcoded key and nonce misuse` | C14 | [Files/resources/tests](commits/C15.md) |
| C16 | `feat(rules): detect context dependent hash and kdf misuse` | C15 | [Files/resources/tests](commits/C16.md) |
| C17 | `feat(rules): detect explicit tls verification disablement` | C16 | [Files/resources/tests](commits/C17.md) |
| C18 | `feat(findings): generate stable explainable finding IDs` | C17 | [Files/resources/tests](commits/C18.md) |
| C19 | `feat(output): export json and validated sarif` | C18 | [Files/resources/tests](commits/C19.md) |
| C20 | `feat(baseline): suppress accepted findings with expiry` | C19 | [Files/resources/tests](commits/C20.md) |
| C21 | `feat(budgets): enforce parser time and memory limits` | C20 | [Files/resources/tests](commits/C21.md) |
| C22 | `feat(viewer): load local findings without upload` | C21 | [Files/resources/tests](commits/C22.md) |
| C23 | `feat(ci): integrate scanner as pinned binary in github actions` | C22 | [Files/resources/tests](commits/C23.md) |
| C24 | `feat(quality): measure per rule precision and recall` | C23 | [Files/resources/tests](commits/C24.md) |
| C25 | `test(fuzz): exercise parser and ir crash corpus` | C24 | [Files/resources/tests](commits/C25.md) |
| C26 | `feat(release): package native scanner and offline rule packs` | C25 | [Files/resources/tests](commits/C26.md) |
| C27 | `test(security): prove project abuse and authorization boundaries` | C26 | [Files/resources/tests](commits/C27.md) |
| C28 | `perf(local): measure bounded target and overload workloads` | C27 | [Files/resources/tests](commits/C28.md) |
| C29 | `feat(operations): expose real engine readiness and redacted diagnostics` | C28 | [Files/resources/tests](commits/C29.md) |
| C30 | `test(acceptance): prove full local usability from git clone` | C29 | [Files/resources/tests](commits/C30.md) |
| C31 | `build(release): package complete reproducible open-source artifacts` | C30 | [Files/resources/tests](commits/C31.md) |
| C32 | `feat(network): harden local launch and optional private hosting` | C31 | [Files/resources/tests](commits/C32.md) |
| C33 | `test(ux): verify keyboard mobile failures and compatible updates` | C32 | [Files/resources/tests](commits/C33.md) |
| C34 | `docs(oss): complete installation usage contribution and support guides` | C33 | [Files/resources/tests](commits/C34.md) |
| C35 | `test(distribution): verify signed artifacts and data-safe upgrades` | C34 | [Files/resources/tests](commits/C35.md) |
| C36 | `test(onboarding): repeat clone-to-value independently` | C35 | [Files/resources/tests](commits/C36.md) |
| C37 | `fix(acceptance): resolve observed installation and workflow blockers` | C36 | [Files/resources/tests](commits/C37.md) |
| C38 | `docs(release): freeze local privacy limits and maintenance policy` | C37 | [Files/resources/tests](commits/C38.md) |
| C39 | `ci(release): enforce evidence-backed open-source v1 readiness` | C38 | [Files/resources/tests](commits/C39.md) |
| C40 | `chore(release): publish and install the verified open-source v1` | C39 | [Files/resources/tests](commits/C40.md) |

Use `npm run plan -- next` or `npm run plan -- show C07`. These forty work units normally become focused implementation commits; split child IDs only when necessary and keep parent requirement/evidence coverage. Do not create empty quota commits.

C01-C06 establish full engine foundations; C07-C26 implement twenty project-specific capabilities; C27-C30 prove local safety, measured bounds and recovery; C31-C38 finish complete packaging, networking, UX, docs, upgrade, independent onboarding and maintenance; C39-C40 gate and publish real v1 evidence. W01-W08 are a separate historical web track, never proof of C completion.
