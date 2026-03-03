using CommunityToolkit.Mvvm.ComponentModel;

namespace AtelierCK.ViewModels;

public partial class ReportsViewModel : ObservableObject
{
    [ObservableProperty] private string heading = "Reports";
}
