using Microsoft.UI.Xaml;
using AtelierCK.Views;

namespace AtelierCK;

public sealed partial class MainWindow : Window
{
    public MainWindow()
    {
        InitializeComponent();
        RootFrame.Navigate(typeof(LoginPage));
    }
}
