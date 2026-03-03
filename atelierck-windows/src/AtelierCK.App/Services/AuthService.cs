namespace AtelierCK.Services;

public class AuthService
{
    public Task<(bool ok, string token)> SignInAsync(string email, string password)
    {
        if (string.IsNullOrWhiteSpace(email) || string.IsNullOrWhiteSpace(password))
            return Task.FromResult((false, string.Empty));
        return Task.FromResult((true, "mock-id-token"));
    }
}
