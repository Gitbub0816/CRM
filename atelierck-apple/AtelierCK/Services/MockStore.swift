import Foundation

@MainActor
final class MockStore: ObservableObject {
    @Published var clients: [Client] = [.init(id: "cl_001", name: "Maison Rouge", email: "client@example.com", phone: "555-0100")]
    @Published var projects: [Project] = [.init(id: "pr_001", clientId: "cl_001", name: "Kitchen Renovation", status: .open)]
    @Published var invoices: [Invoice] = [.init(id: "in_001", projectId: "pr_001", status: .issued, total: 12800, paid: 0, balance: 12800)]
    @Published var payments: [Payment] = []
    @Published var receipts: [Receipt] = []
}
