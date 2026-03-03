import SwiftUI

struct TemplateStudioView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ModuleHeader(title: "TemplateStudio")
            TemplateCanvasView()
        }
    }
}
