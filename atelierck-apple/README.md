# Atelier d'CK Apple

SwiftUI universal app (iPadOS + macOS) for internal CRM/accounting workflows.

## Structure
- `AtelierCK.xcodeproj`
- `AtelierCK/Views`, `ViewModels`, `Models`, `Services`, `Theme`, `Components`

## Required Features
- Login and navigation shell matching Windows modules.
- CRUD modules for clients/projects/quotes/invoices/payments/receipts/schedule/files.
- Template Studio with canvas/properties/save/publish/server preview.
- PDFKit viewer for backend-generated PDFs.

## Build Commands
```bash
xcodebuild -project AtelierCK.xcodeproj -scheme AtelierCK -configuration Debug build
```

## Done Gates and Expected Results
1. Xcode build succeeds.
2. Login works with seeded admin.
3. CRUD works.
4. Template Studio works and PDF preview renders.
