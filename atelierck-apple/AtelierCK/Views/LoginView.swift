import SwiftUI

struct LoginView: View {
    @ObservedObject var vm: AppViewModel

    var body: some View {
        VStack(spacing: 12) {
            Text("Atelier d'CK").font(.system(size: 42, weight: .semibold, design: .serif)).foregroundStyle(BrandTheme.gold)
            TextField("Email", text: $vm.email).textFieldStyle(.roundedBorder)
            SecureField("Password", text: $vm.password).textFieldStyle(.roundedBorder)
            Button("Sign In") { vm.login() }
                .buttonStyle(.borderedProminent)
        }
        .padding(40)
        .frame(maxWidth: 420)
    }
}
