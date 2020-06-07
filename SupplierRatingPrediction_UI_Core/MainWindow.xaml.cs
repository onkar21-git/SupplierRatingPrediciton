﻿using System;
using System.Collections.Generic;
using System.Linq;
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

namespace SupplierRatingPrediction_UI_Core
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            //if (!string.IsNullOrEmpty(txtUserName.Text) && !string.IsNullOrEmpty(txtPassword.Password))
            //{
            //    if (txtUserName.Text == "admin" && txtPassword.Password == "admin")
            //    {
            //        Dashboard dashboardPage = new Dashboard();
            //        dashboardPage.Show();
            //        this.Close();
            //    }
            //    else
            //    {
            //        MessageBox.Show("Invalid username or password.");
            //    }
            //}
            //else
            //{
            //    MessageBox.Show("Invalid username or password.");
            //}

            Dashboard dashboardPage = new Dashboard();
            dashboardPage.Show();
            this.Close();
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
