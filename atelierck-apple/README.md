# Atelier d'CK Apple

SwiftUI universal app (iPadOS + macOS) matching the Windows CRM + accounting module set.

## Implemented App Surface
- Login flow and authenticated shell.
- Sidebar/split navigation across all required modules:
  Dashboard, Clients, Projects, Quotes, Invoices, Payments/Receipts, Schedule, Files, Reports, Settings, Template Studio.
- Shared domain model types for CRM/accounting entities.
- API service scaffold for backend PDF previews and Stripe checkout session redirect workflow.
- Template Studio canvas with save/publish/preview action affordances.

## Folder Structure
- `AtelierCK/Views` (Login, Shell, module detail rendering)
- `AtelierCK/ViewModels` (application state and module selection)
- `AtelierCK/Models` (core entities)
- `AtelierCK/Services` (API + mock store)
- `AtelierCK/Theme` (luxury brand tokens)
- `AtelierCK/Components` (reusable module header and template canvas)

## Build
```bash
xcodebuild -project AtelierCK.xcodeproj -scheme AtelierCK -configuration Debug build
```
Expected result: builds in Xcode with SwiftUI + PDFKit/Firebase dependencies wired in project settings.

## Runtime Validation Gates
1. Login works with seeded admin identity.
2. All CRM/accounting modules are navigable.
3. Invoices can launch Stripe checkout flow via backend endpoint.
4. Template Studio supports save/publish and backend preview request.
5. Settings includes company, numbering, taxes, and user controls.
