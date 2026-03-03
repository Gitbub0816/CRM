using CommunityToolkit.Mvvm.ComponentModel;

namespace AtelierCK.ViewModels;

public partial class InvoicesViewModel : ObservableObject
{
    [ObservableProperty] private string heading = "Invoices";
}
