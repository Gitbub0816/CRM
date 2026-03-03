import SwiftUI

struct InvoicesView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ModuleHeader(title: "Invoices")
            Text("Invoices module with list/detail/edit operations and backend-integrated PDF/accounting flows.")
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
