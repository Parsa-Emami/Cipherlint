# CipherLint acceptance gate

All scenarios are unexecuted in v0. Use synthetic or explicitly authorized owned data.

1. روی fixture crypto ناامن نتیجهٔ توضیح‌دار و روی نمونهٔ اصلاح‌شده نتیجهٔ مناسب بدهد
2. SARIF در CI خوانده شود و finding IDs با اجرای مجدد ثابت بمانند
3. source هیچ‌وقت اجرا یا به دامنهٔ viewer ارسال نشود

Also require negative input/auth tests, crash or interrupted operation, clean install/upgrade, export/restore and workload bounds. Claims must match selected private/public distribution profile.
