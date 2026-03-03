using CommunityToolkit.Mvvm.ComponentModel;

namespace AtelierCK.ViewModels;

public partial class ScheduleViewModel : ObservableObject
{
    [ObservableProperty] private string heading = "Schedule";
}
