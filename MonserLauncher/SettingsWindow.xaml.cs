using System.Windows;
using System.Windows.Forms;
using System.Windows.Media;

namespace MonserLauncher
{
    /// <summary>
    /// Логика взаимодействия для SettingsWindow.xaml
    /// </summary>
    public partial class SettingsWindow : Window
    {
        public string PathToGame { get; set; } = "";

        public SettingsWindow()
        {
            InitializeComponent();
        }


        private void ExitButtonClick(object sender, RoutedEventArgs e)
        {
            this.Hide();
        }

        private void ButtonMouseEnter(object sender, System.Windows.Input.MouseEventArgs e)
        {
            (sender as System.Windows.Controls.Button).Foreground = Brushes.White;
            (sender as System.Windows.Controls.Button).Background = Brushes.Red;
        }

        private void ButtonMouseLeave(object sender, System.Windows.Input.MouseEventArgs e)
        {
            (sender as System.Windows.Controls.Button).Foreground = Brushes.Red;
            (sender as System.Windows.Controls.Button).Background = null;
        }

        private void SelectFolderButton(object sender, RoutedEventArgs e)
        {
            FolderBrowserDialog browser = new FolderBrowserDialog();
            
            browser.ShowDialog();
            if (browser.SelectedPath != "")
            {
                PathToGame = browser.SelectedPath;
            }
            this.Hide();
        }
    }
}
