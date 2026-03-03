# Atelier d'CK Windows

WinUI 3 (.NET 8) internal operations app.

## Solution Structure
- `AtelierCK.sln`
- `src/AtelierCK.App` with Views, ViewModels, Models, Services, Controls, Themes.

## Required Screens
- Login
- Shell + modules: Dashboard, Clients, Projects, Quotes, Invoices, Payments/Receipts, Schedule, Files, Reports, Settings, Template Studio.

## Implementation Notes
- Firebase Auth REST (signInWithPassword + refresh token).
- Firestore/Storage REST wrappers with typed client, retry, and error handling.
- WebView2 for backend-generated PDF viewing.
- Unit tests for totals calculation in separate test project.

## Build Commands
```powershell
dotnet restore
dotnet build -c Release
```

## Done Gates and Expected Results
1. Solution builds in Release.
2. Login works with seeded admin.
3. CRUD works for clients/projects/invoices.
4. Template Studio saves/publishes and displays server preview PDF.
