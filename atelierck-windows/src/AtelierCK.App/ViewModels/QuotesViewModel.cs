using CommunityToolkit.Mvvm.ComponentModel;

namespace AtelierCK.ViewModels;

public partial class QuotesViewModel : ObservableObject
{
    [ObservableProperty] private string heading = "Quotes";
}
