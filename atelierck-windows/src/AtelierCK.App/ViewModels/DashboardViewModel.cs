using CommunityToolkit.Mvvm.ComponentModel;

namespace AtelierCK.ViewModels;

public partial class DashboardViewModel : ObservableObject
{
    [ObservableProperty] private string heading = "Dashboard";
}
