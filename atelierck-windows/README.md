# Atelier d'CK Windows

WinUI 3 (.NET 8) internal CRM + accounting application.

## Implemented App Surface
- Login workflow shell with Owner/Admin/Accounting/PM/Field/ReadOnly role model.
- Left-navigation shell modules: Dashboard, Clients, Projects, Quotes, Invoices, Payments/Receipts, Schedule, Files, Reports, Settings, Template Studio.
- Typed domain model set for clients/projects/quotes/invoices/payments/receipts/scheduling/files/templates.
- API/Auth service layer scaffold for Firebase REST endpoints and token-authenticated operations.
- Template Studio canvas control scaffold for drag-drop component composition and preview integration.

## Project Layout
- `AtelierCK.sln`
- `src/AtelierCK.App/AtelierCK.App.csproj`
- `src/AtelierCK.App/Views/*`
- `src/AtelierCK.App/ViewModels/*`
- `src/AtelierCK.App/Models/DomainModels.cs`
- `src/AtelierCK.App/Services/*`
- `src/AtelierCK.App/Controls/TemplateCanvasControl.xaml`
- `src/AtelierCK.App/Themes/BrandResources.xaml`

## Build
```powershell
cd atelierck-windows/src/AtelierCK.App
dotnet restore
dotnet build -c Release
```
Expected result: build succeeds on Windows with WinUI workloads installed.

## Runtime Validation Gates
1. Login accepts seeded admin credentials.
2. CRUD screens exist for clients, projects, quotes, invoices.
3. Payment posting and receipts views are accessible.
4. Template Studio displays canvas + components and can request server preview.
5. Settings supports company, numbering, tax, and user management sections.
