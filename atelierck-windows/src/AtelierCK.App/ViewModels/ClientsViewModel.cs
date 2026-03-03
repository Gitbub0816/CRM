using CommunityToolkit.Mvvm.ComponentModel;

namespace AtelierCK.ViewModels;

public partial class ClientsViewModel : ObservableObject
{
    [ObservableProperty] private string heading = "Clients";
}
