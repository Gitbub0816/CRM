import SwiftUI

struct ReportsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ModuleHeader(title: "Reports")
            Text("Reports module with list/detail/edit operations and backend-integrated PDF/accounting flows.")
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
