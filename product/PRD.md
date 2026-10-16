# CipherLint product requirements v0

Status: planning; application source not implemented. English-facing app/docs are the release default. See Persian assessment for commercial hypotheses.

Target user: توسعه‌دهنده و reviewer کد با نگرانی رمزنگاری

Job to complete: یافتن الگوهای محدود crypto با دلیل و راه اصلاح در CI

Differentiation hypothesis: قاعده‌های دقیق و context-aware برای PHP و Python؛ source روی دستگاه کاربر می‌ماند

## MVP acceptance scope

- Rust CLI برای PHP/Python subset مستند
- قواعد نسخه‌دار CryptoIR و fixture
- JSON/SARIF و exit code مشخص
- viewer روی دامنه برای report محلی

## Excluded until another decision

- تحلیل interprocedural کامل
- اسکن عمومی ZIP روی سرور
- IDE extension مستقل
- پشتیبانی ده‌ها زبان

## End-to-end outcomes

1. روی fixture crypto ناامن نتیجهٔ توضیح‌دار و روی نمونهٔ اصلاح‌شده نتیجهٔ مناسب بدهد
2. SARIF در CI خوانده شود و finding IDs با اجرای مجدد ثابت بمانند
3. source هیچ‌وقت اجرا یا به دامنهٔ viewer ارسال نشود

Functional requirements F01–F20 and nonfunctional/release requirements are mapped one-to-one in `plans/requirements.json`. Tests belong with their feature commit, not postponed until launch. Success: a clean installed selected profile performs the core task and recovers from documented failures. Public demand remains unvalidated until real trials are recorded.

## UI flow

Select/import scoped input -> validate limits and permission -> show actual processing state -> explain result and confidence -> review/triage where appropriate -> export -> recover in clean environment. Loading, empty, stale, partial, unauthorized, rejected input, timeout/cancel and permanent failure are explicit. Provide table/keyboard alternatives to canvas, charts and graph paths. No sensitive content in page telemetry.
