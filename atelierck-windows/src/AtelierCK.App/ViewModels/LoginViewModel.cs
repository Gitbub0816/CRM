using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using AtelierCK.Services;

namespace AtelierCK.ViewModels;

public partial class LoginViewModel(AuthService auth) : ObservableObject
{
    [ObservableProperty] private string email = "admin@atelierck.test";
    [ObservableProperty] private string password = "Passw0rd!";
    [ObservableProperty] private string error = string.Empty;

    [RelayCommand]
    public async Task<bool> LoginAsync()
    {
        var (ok, _) = await auth.SignInAsync(Email, Password);
        Error = ok ? string.Empty : "Login failed";
        return ok;
    }
}
