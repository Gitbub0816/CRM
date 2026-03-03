import Foundation

enum InternalRole: String, CaseIterable, Codable { case owner = "Owner", admin = "Admin", accounting = "Accounting", pm = "PM", field = "Field", readOnly = "ReadOnly" }
enum ProjectStatus: String, Codable { case draft, open, onHold, completed, cancelled }
enum InvoiceStatus: String, Codable { case draft, issued, partiallyPaid, paid, overdue, void }

struct Client: Identifiable, Codable { let id: String; var name: String; var email: String; var phone: String }
struct Project: Identifiable, Codable { let id: String; var clientId: String; var name: String; var status: ProjectStatus }
struct Quote: Identifiable, Codable { let id: String; var projectId: String; var total: Double }
struct Invoice: Identifiable, Codable { let id: String; var projectId: String; var status: InvoiceStatus; var total: Double; var paid: Double; var balance: Double }
struct Payment: Identifiable, Codable { let id: String; var invoiceId: String; var amount: Double; var method: String }
struct Receipt: Identifiable, Codable { let id: String; var invoiceId: String; var pdfURL: String }
struct ScheduleEvent: Identifiable, Codable { let id: String; var projectId: String; var start: Date; var end: Date; var status: String }
struct VaultFile: Identifiable, Codable { let id: String; var projectId: String; var name: String; var path: String }
struct TemplateComponent: Identifiable, Codable { let id: String; var type: String; var label: String }
