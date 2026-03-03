using CommunityToolkit.Mvvm.ComponentModel;

namespace AtelierCK.ViewModels;

public partial class FilesViewModel : ObservableObject
{
    [ObservableProperty] private string heading = "Files";
}
