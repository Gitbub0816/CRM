using System.Net.Http.Headers;
using System.Text;
using System.Text.Json;

namespace AtelierCK.Services;

public class ApiClient
{
    private readonly HttpClient _http;
    private string? _token;

    public ApiClient(HttpClient http) => _http = http;

    public void SetToken(string token)
    {
        _token = token;
        _http.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);
    }

    public async Task<T> GetAsync<T>(string path)
    {
        var res = await _http.GetAsync(path);
        res.EnsureSuccessStatusCode();
        var json = await res.Content.ReadAsStringAsync();
        return JsonSerializer.Deserialize<T>(json)!;
    }

    public async Task<TResponse> PostAsync<TRequest, TResponse>(string path, TRequest request)
    {
        var json = JsonSerializer.Serialize(request);
        var res = await _http.PostAsync(path, new StringContent(json, Encoding.UTF8, "application/json"));
        res.EnsureSuccessStatusCode();
        var body = await res.Content.ReadAsStringAsync();
        return JsonSerializer.Deserialize<TResponse>(body)!;
    }
}
