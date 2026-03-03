import Foundation
import SwiftUI

enum AppModule: String, CaseIterable, Identifiable {
    case dashboard = "Dashboard"
    case clients = "Clients"
    case projects = "Projects"
    case quotes = "Quotes"
    case invoices = "Invoices"
    case paymentsReceipts = "Payments/Receipts"
    case schedule = "Schedule"
    case files = "Files"
    case reports = "Reports"
    case settings = "Settings"
    case templateStudio = "Template Studio"

    var id: String { rawValue }
}

@MainActor
final class AppViewModel: ObservableObject {
    @Published var selectedModule: AppModule = .dashboard
    @Published var isAuthenticated = false
    @Published var email = "admin@atelierck.test"
    @Published var password = "Passw0rd!"

    func login() { isAuthenticated = !email.isEmpty && !password.isEmpty }
}
