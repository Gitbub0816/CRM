# Atelier d'CK Portal

Next.js customer portal for invoices, projects, scheduling, and messaging.

## Routes
- `/login`
- `/invoices`, `/invoices/[id]`
- `/projects`, `/projects/[id]`
- `/schedule`
- `/messages`, `/messages/[threadId]`

## Commands
```bash
npm install
npm run dev
npm run build
npm test
```

## Behavior Notes
- Messaging UI must be disabled when no open project exists.
- Invoice payment button calls backend `createStripeCheckoutSession(invoiceId)` and redirects to Stripe Checkout.
- Invoice and receipt PDFs are downloaded from backend-generated assets only.

## Deploy
- Firebase Hosting: build then deploy static output or SSR adapter.
- Vercel: import repo and configure environment variables.

## Done Gates and Expected Results
1. `cd atelierck-portal && npm install && npm run build` succeeds.
2. Login works with seeded client user.
3. Invoice list displays seeded invoice.
4. Pay button opens Stripe checkout session in test mode.
5. Messaging disabled if open project does not exist.
