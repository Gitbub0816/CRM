# Atelier d'CK UX Specification

## Navigation Map
- Internal apps: Dashboard, Clients, Projects, Quotes, Invoices, Payments/Receipts, Schedule, Files, Reports, Settings, Template Studio.
- Portal: Login, Invoices, Invoice Detail, Projects, Project Detail, Schedule, Messages, Thread Detail.

## Required Screens
- Login (passwordless or password for portal, email/password for internal apps).
- CRUD modules for clients, projects, quotes, invoices, payments/receipts, schedules.
- Template Studio with component canvas, properties panel, save draft, publish, and server preview.
- Settings: company profile, numbering, taxes, user access basics.

## Field Validations
- Email: RFC-like pattern, max 254.
- Currency values: >= 0, scale 2.
- Tax rate: 0-100.
- Discount: 0-100 or absolute >=0.
- Invoice due date >= issue date.
- Payment amount > 0 and <= outstanding balance unless overpayment explicitly enabled.

## Status Enums
- ProjectStatus: draft, open, on_hold, completed, cancelled.
- QuoteStatus: draft, sent, accepted, declined, expired.
- InvoiceStatus: draft, issued, partially_paid, paid, overdue, void.
- PaymentStatus: pending, posted, failed, refunded.
- ScheduleStatus: requested, approved, declined, completed, cancelled.
- MessageThreadStatus: open, closed.

## Behavior Rules
- Client messaging is enabled only when at least one open project exists.
- Official PDFs are backend-rendered only.
- Template preview is generated server-side only.
- Stripe webhook is source of truth for final paid status when Stripe is used.
- Role-based access control is enforced by Firestore rules and Cloud Functions for sensitive operations.
