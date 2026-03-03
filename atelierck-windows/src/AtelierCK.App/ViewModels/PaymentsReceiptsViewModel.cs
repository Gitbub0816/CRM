using CommunityToolkit.Mvvm.ComponentModel;

namespace AtelierCK.ViewModels;

public partial class PaymentsReceiptsViewModel : ObservableObject
{
    [ObservableProperty] private string heading = "Payments/Receipts";
}
