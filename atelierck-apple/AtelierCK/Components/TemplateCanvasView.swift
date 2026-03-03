import SwiftUI

struct TemplateCanvasView: View {
    @State private var components: [String] = ["Header", "ClientBlock", "LineItemsTable", "TotalsBlock", "Footer"]

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Template Studio Canvas").font(.title2)
            ForEach(components, id: \.self) { component in
                RoundedRectangle(cornerRadius: 10)
                    .stroke(BrandTheme.gold, lineWidth: 1)
                    .frame(height: 44)
                    .overlay(Text(component).frame(maxWidth: .infinity, alignment: .leading).padding(.horizontal, 10))
            }
            HStack {
                Button("Save Draft") {}
                Button("Publish") {}
                Button("Preview PDF") {}
            }
        }
    }
}
