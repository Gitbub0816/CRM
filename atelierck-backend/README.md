# Atelier d'CK Backend

Firebase Functions + Firestore backend for CRM/accounting and server-side PDF rendering.

## Features
- Roles and claims model for Owner/Admin/Accounting/PM/Field/ReadOnly and ClientUser.
- Firestore collections for CRM/accounting modules.
- Server-side template compiler JSON -> HTML/CSS.
- Puppeteer-based official PDF pipeline.
- Stripe Checkout + webhook payment sync.
- Emulator-friendly development workflow.

## Commands
```bash
cd functions
npm install
npm run lint
npm test
npm run emulators
npm run seed
```

## Deploy
```bash
firebase deploy
```

## Done Gates and Expected Results
1. `cd atelierck-backend/functions && npm install && npm test` passes all tests.
2. `firebase emulators:start` starts Functions/Auth/Firestore/Storage emulators.
3. `renderPdf` endpoint generates PDF and stores at `/companies/{companyId}/pdf/{docType}/{docId}/{versionTimestamp}.pdf`.
4. `stripeWebhook` validates signature, updates invoice/payment/receipt, and triggers receipt PDF generation.

## Stripe Test Flow
- Create checkout session via `createStripeCheckoutSession(invoiceId)`.
- Complete payment using Stripe test card `4242 4242 4242 4242`.
- Send signed webhook event to `stripeWebhook`.
- Confirm invoice moves to `paid` and receipt PDF is created.
