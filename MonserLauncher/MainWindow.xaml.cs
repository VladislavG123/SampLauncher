using Microsoft.Win32;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Security.Principal;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace MonserLauncher
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public User User { get; set; }
        public SettingsWindow SettingsWindow { get; set; } = new SettingsWindow();
        public MainWindow()
        {
            InitializeComponent();

            User = new User { UserName = userNameTextBox.Text, PathToGame = "" };

            try
            {
                using (StreamReader file = File.OpenText(@"userdata.txt"))
                {
                    JsonSerializer serializer = new JsonSerializer();
                    var newUserData = (User)serializer.Deserialize(file, typeof(User));

                    if (!(newUserData is null))
                    {
                        userNameTextBox.Text = newUserData.UserName;
                        User = newUserData;
                    }
                }
            }
            catch (Exception exception)
            {
                System.Windows.MessageBox.Show("Проблемы с получением данных пользователя!\n" + exception.Message);
            }

        }

        private void ButtonMouseEnter(object sender, MouseEventArgs e)
        {
            (sender as Button).Foreground = Brushes.White;
            (sender as Button).Background = Brushes.Red;
        }

        private void ButtonMouseLeave(object sender, MouseEventArgs e)
        {
            (sender as Button).Foreground = Brushes.Red;
            (sender as Button).Background = null;
        }

        private void StartGame(object sender, RoutedEventArgs e)
        {
            if (userNameTextBox.Text.Length <= 3)
            {
                MessageBox.Show("Ваш никнейм слишком мал!");
                return;
            }

            User.UserName = userNameTextBox.Text;

            if(SettingsWindow.PathToGame != "")
            {
                User.PathToGame = SettingsWindow.PathToGame;
            }

            if(User.PathToGame == string.Empty || User.PathToGame == "")
            {
                SettingsWindow.Show();
                return;
            }

            string json = JsonConvert.SerializeObject(User);

            try
            {
                using (StreamWriter file = new StreamWriter(@"userdata.txt"))
                {
                    file.WriteLine(json);
                }
            }
            catch (Exception exception)
            {
                System.Windows.MessageBox.Show("Проблемы с сохранением данных пользователя!\n" + exception.Message);
            }


            string userNickName = User.UserName;
            string sid = WindowsIdentity.GetCurrent().User.Value;
            string game = sid + "\\Software\\SAMP";

            RegistryKey saveKey = Registry.Users.CreateSubKey(game);
            saveKey.SetValue("PlayerName", userNickName);
            saveKey.Close();

            try
            {
                Process.Start(User.PathToGame + @"\samp.exe", "176.32.39.185:7777");
            }
            catch (Exception exception)
            {
                MessageBox.Show("Возникли проблемы с запуском игры. Попробуйте выбрать другую папку с игрой.\nОшибка: " + exception.Message);
            }
        }

        private void ExitButtonClick(object sender, RoutedEventArgs e)
        {
            SettingsWindow.Close();
            this.Close();
        }

        private void SettingsButtonClick(object sender, RoutedEventArgs e)
        {
            SettingsWindow.Show(); 
        }
    }
}
