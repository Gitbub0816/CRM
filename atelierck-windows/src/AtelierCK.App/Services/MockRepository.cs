using AtelierCK.Models;

namespace AtelierCK.Services;

public class MockRepository
{
    public List<Client> Clients { get; } = [
        new("cl_001", "co_001", "Maison Rouge", "client@example.com", "555-0100")
    ];

    public List<Project> Projects { get; } = [
        new("pr_001", "co_001", "cl_001", "Kitchen Renovation", ProjectStatus.Open)
    ];

    public List<Invoice> Invoices { get; } = [
        new("in_001", "co_001", "cl_001", "pr_001", InvoiceStatus.Issued, 12800m, 0m, 12800m)
    ];

    public List<Payment> Payments { get; } = [];
    public List<Receipt> Receipts { get; } = [];
}
