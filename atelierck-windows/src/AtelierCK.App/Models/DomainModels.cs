namespace AtelierCK.Models;

public enum InternalRole { Owner, Admin, Accounting, PM, Field, ReadOnly }
public enum ProjectStatus { Draft, Open, OnHold, Completed, Cancelled }
public enum InvoiceStatus { Draft, Issued, PartiallyPaid, Paid, Overdue, Void }

public record Company(string Id, string Name, string Email, string Phone);
public record Client(string Id, string CompanyId, string Name, string Email, string Phone);
public record Project(string Id, string CompanyId, string ClientId, string Name, ProjectStatus Status);
public record Quote(string Id, string CompanyId, string ClientId, string ProjectId, decimal Subtotal, decimal Tax, decimal Total);
public record Invoice(string Id, string CompanyId, string ClientId, string ProjectId, InvoiceStatus Status, decimal Total, decimal Paid, decimal Balance);
public record Payment(string Id, string InvoiceId, decimal Amount, string Method, DateTime PostedAt);
public record Receipt(string Id, string InvoiceId, string PdfUrl, decimal Amount);
public record ScheduleEvent(string Id, string ProjectId, DateTime Start, DateTime End, string Status);
public record FileItem(string Id, string ProjectId, string Name, string StoragePath);
public record TemplateComponent(string Type, string Label);
public record TemplateVersion(string Id, string TemplateId, int Version, bool Published);
