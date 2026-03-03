import SwiftUI

struct ProjectsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ModuleHeader(title: "Projects")
            Text("Projects module with list/detail/edit operations and backend-integrated PDF/accounting flows.")
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
