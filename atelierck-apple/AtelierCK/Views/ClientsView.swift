import SwiftUI

struct ClientsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ModuleHeader(title: "Clients")
            Text("Clients module with list/detail/edit operations and backend-integrated PDF/accounting flows.")
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
