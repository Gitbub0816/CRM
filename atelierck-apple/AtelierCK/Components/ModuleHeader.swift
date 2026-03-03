import SwiftUI

struct ModuleHeader: View {
    let title: String
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(title).font(.largeTitle).foregroundStyle(BrandTheme.gold)
            Text("CRM + Accounting").font(.subheadline).foregroundStyle(BrandTheme.ink.opacity(0.75))
        }
    }
}
