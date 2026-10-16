# CipherLint: reference workflow

Status: planned domain acceptance; the current JSON structure preview does not implement this workflow.

Install CLI -> scan positive/negative crypto fixtures -> check stable IDs -> produce SARIF -> load report locally in viewer -> confirm no source network transmission.

Required invariants:

- No source execution
- Deterministic finding IDs
- Unsupported syntax and incomplete scan are explicit

Required UAT:

- روی fixture crypto ناامن نتیجهٔ توضیح‌دار و روی نمونهٔ اصلاح‌شده نتیجهٔ مناسب بدهد
- SARIF در CI خوانده شود و finding IDs با اجرای مجدد ثابت بمانند
- source هیچ‌وقت اجرا یا به دامنهٔ viewer ارسال نشود

Machine contract: tests/scenarios/clone-to-value.json. C01/C04 create and freeze the actual synthetic positive/negative fixture formats; no real secrets, user source/traffic/case data or unlicensed corpus. A clean source clone must reproduce the entire workflow with restart and restore at C30.
