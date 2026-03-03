using CommunityToolkit.Mvvm.ComponentModel;

namespace AtelierCK.ViewModels;

public partial class ProjectsViewModel : ObservableObject
{
    [ObservableProperty] private string heading = "Projects";
}
