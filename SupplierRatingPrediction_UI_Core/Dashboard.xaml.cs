using LiveCharts;
using LiveCharts.Wpf;
using SupplierRatingPredictionML.Model;
using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace SupplierRatingPrediction_UI_Core
{
    /// <summary>
    /// Interaction logic for Dashboard.xaml
    /// </summary>
    public partial class Dashboard : Window
    {
        public SeriesCollection SeriesCollection { get; set; }
        public string[] Labels { get; set; }
        public Func<double, string> Formatter { get; set; }

        public Func<ChartPoint, string> PointLabel { get; set; }

        public Dashboard()
        {
            InitializeComponent();
            showColumnChart();
            LoadComboBoxes();

            SeriesCollection = new SeriesCollection
            {
                new ColumnSeries
                {
                    Title = "2015",
                    Values = new ChartValues<double> { 10, 50, 39, 50 }
                }
            };
            Labels = new[] { "Maria", "Susan", "Charles", "Frida" }; // supplier Names
            //Formatter = value => value.ToString("N");


            PointLabel = chartPoint =>
                string.Format("{0} ({1:P})", chartPoint.Y, chartPoint.Participation);
            DataContext = this;
        }

        private void LoadComboBoxes()
        {
            cmbCommodity.ItemsSource = new List<string> { "Casting", "Sheet Metal", "Tube" };
            cmbMPProcess.ItemsSource = new List<string> { "Pressing", "CNC Machining", "Tube Forming",
                                                          "VMC Machining", "Sleeve Manufacturing", "Heat Treatment",
                                                          "Wire Manufacturing","Coiling", "Rubber Oring Manufacturing",
                                                          "Draw"};
        }

        private void showColumnChart()
        {
            List<KeyValuePair<string, int>> valueList = new List<KeyValuePair<string, int>>();
            valueList.Add(new KeyValuePair<string, int>("Developer", 60));
            valueList.Add(new KeyValuePair<string, int>("Misc", 20));
            valueList.Add(new KeyValuePair<string, int>("Tester", 50));
            valueList.Add(new KeyValuePair<string, int>("QA", 30));
            valueList.Add(new KeyValuePair<string, int>("Project Manager", 40));
            //barChart.DataContext = valueList;
        }


        private void barChart_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            //string selectedItem = e.Source[0];
            //string[] abc = selectedItem.Split('=');
            //            ((System.Collections.Generic.KeyValuePair<string, int>)((System.Windows.Controls.DataVisualization.Charting.DataPointSeries)e.Source).SelectedItem).Key
            //((System.Collections.Generic.KeyValuePair<string, int>)((System.Windows.Controls.DataVisualization.Charting.DataPointSeries)e.Source).SelectedItem).Value
        }

        private void btnPredict_Click(object sender, RoutedEventArgs e)
        {
            List<SupplierData> predictedSuppliers = new List<SupplierData>();
            predictedSuppliers = ConsumeModel.Predict((cmbCommodity.SelectedIndex + 1).ToString(),
                txtVolume.Text, cmbMPProcess.SelectedItem.ToString());
        }
    }
}
