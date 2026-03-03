using CommunityToolkit.Mvvm.ComponentModel;

namespace AtelierCK.ViewModels;

public partial class ShellViewModel : ObservableObject
{
    [ObservableProperty] private string title = "Atelier d'CK";
    [ObservableProperty] private string activeModule = "Dashboard";
}
