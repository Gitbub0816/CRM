import SwiftUI

struct ContentView: View {
    @StateObject private var vm = AppViewModel()

    var body: some View {
        Group {
            if vm.isAuthenticated {
                ShellView(vm: vm)
            } else {
                LoginView(vm: vm)
            }
        }
        .background(BrandTheme.cream)
    }
}
