import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ModuleHeader(title: "Dashboard")
            Text("Dashboard module with list/detail/edit operations and backend-integrated PDF/accounting flows.")
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
