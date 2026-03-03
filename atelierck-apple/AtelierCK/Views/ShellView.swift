import SwiftUI

struct ShellView: View {
    @ObservedObject var vm: AppViewModel

    var body: some View {
        NavigationSplitView {
            List(AppModule.allCases, selection: $vm.selectedModule) { module in
                Text(module.rawValue).tag(module)
            }
            .navigationTitle("Atelier d'CK")
        } detail: {
            ModuleView(module: vm.selectedModule)
                .padding()
                .background(BrandTheme.cream)
        }
    }
}

struct ModuleView: View {
    let module: AppModule

    var body: some View {
        ScrollView {
            switch module {
            case .dashboard: DashboardView()
            case .clients: ClientsView()
            case .projects: ProjectsView()
            case .quotes: QuotesView()
            case .invoices: InvoicesView()
            case .paymentsReceipts: PaymentsReceiptsView()
            case .schedule: ScheduleView()
            case .files: FilesView()
            case .reports: ReportsView()
            case .settings: SettingsView()
            case .templateStudio: TemplateStudioView()
            }
        }
    }
}
