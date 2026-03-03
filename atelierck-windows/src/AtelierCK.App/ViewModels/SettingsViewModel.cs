using CommunityToolkit.Mvvm.ComponentModel;

namespace AtelierCK.ViewModels;

public partial class SettingsViewModel : ObservableObject
{
    [ObservableProperty] private string heading = "Settings";
}
