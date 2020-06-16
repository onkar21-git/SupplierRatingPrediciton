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

        List<SupplierData> predictedSuppliers = new List<SupplierData>();

        public Dashboard()
        {
            InitializeComponent();
            //List<SupplierData> predictedSuppliers = new List<SupplierData>();
            ShowColumnChart();
            LoadComboBoxes();
            ClearContents();
        }

        private void LoadComboBoxes()
        {
            cmbCommodity.ItemsSource = new List<string> { "Casting", "Sheet Metal", "Tube" };
            cmbMPProcess.ItemsSource = new List<string> { "Pressing", "CNC Machining", "Tube Forming",
                                                          "VMC Machining", "Sleeve Manufacturing", "Heat Treatment",
                                                          "Wire Manufacturing","Coiling", "Rubber Oring Manufacturing",
                                                          "Draw"};
        }

        private void ShowColumnChart()
        {
            ChartValues<int> valueList = new ChartValues<int>();
            List<string> supplierList = new List<string>();

            foreach (SupplierData item in predictedSuppliers)
            {
                valueList.Add(item.predicted_Total);
                supplierList.Add(item.SupplierName);
            }

            SeriesCollection = new SeriesCollection
            {
                new ColumnSeries
                {
                    Title = "Supplier Predicted Rating",
                    Values = valueList
                }
            };
            Labels = supplierList.ToArray(); // supplier Names
            //Formatter = value => value.ToString("N");

            //Pie chart data
            PointLabel = chartPoint =>
                string.Format("{0} ({1:P})", chartPoint.Y, chartPoint.Participation);
            DataContext = null;
            DataContext = this;
            barChart.Visibility = Visibility.Visible;
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

            predictedSuppliers = ConsumeModel.Predict((cmbCommodity.SelectedIndex + 1).ToString(),
                txtVolume.Text, cmbMPProcess.SelectedItem.ToString());
            ShowColumnChart();

            myMap.ZoomLevel = 3;
            double latitude = 20.5937;
            double longitude = 78.9629;
            myMap.Center = new Microsoft.Maps.MapControl.WPF.Location(latitude, longitude);

            lblSupplierName.Text = string.Empty;
            lblSupplierAddress.Text = string.Empty;
            lblYearsOfRelationship.Text = string.Empty;
            lblLeadTime.Text = string.Empty;
            lblSupplierSize.Text = string.Empty;

            pieChart1.Visibility = Visibility.Hidden;
        }

        private void barChart_DataClick(object sender, ChartPoint chartPoint)
        {
            //MessageBox.Show("You clicked " + chartPoint.X + ", " + chartPoint.Y);
            //MessageBox.Show("Supplier name clicked - " + predictedSuppliers[Convert.ToInt32(chartPoint.X)].SupplierName);

            ShowSelectedSupplierDetails(predictedSuppliers[Convert.ToInt32(chartPoint.X)]);
        }

        private void ShowSelectedSupplierDetails(SupplierData supplierData)
        {
            lblSupplierName.Text = supplierData.SupplierName;
            lblSupplierAddress.Text = supplierData.Supplier_Address;
            lblYearsOfRelationship.Text = supplierData.Supplier_Business_Yrs;
            lblLeadTime.Text = supplierData.Supplier_Lead_Time;
            lblSupplierSize.Text = supplierData.Supplier_Size;

            myMap.ZoomLevel = 11;
            double latitude = Double.Parse(supplierData.Supplier_Location.Split(',')[0]);
            double longitude = Double.Parse(supplierData.Supplier_Location.Split(',')[1]);
            myMap.Center = new Microsoft.Maps.MapControl.WPF.Location(latitude, longitude);
            ShowPieChartData(supplierData.predicted_Q, supplierData.predicted_C, supplierData.predicted_D);
        }

        private void ShowPieChartData(int predicted_Q, int predicted_C, int predicted_D)
        {
            pieChart1.Series = new SeriesCollection
            {
                new PieSeries
                {
                    Title = "Predicted Q",
                    Values = new ChartValues<double> {predicted_Q},
                    //PushOut = 15,
                    DataLabels = true,
                    LabelPoint = PointLabel
                },
                new PieSeries
                {
                    Title = "Predicted C",
                    Values = new ChartValues<double> {predicted_C},
                    DataLabels = true,
                    LabelPoint = PointLabel
                },
                new PieSeries
                {
                    Title = "Predicted D",
                    Values = new ChartValues<double> {predicted_D},
                    DataLabels = true,
                    LabelPoint = PointLabel
                }
            };
            pieChart1.Visibility = Visibility.Visible;
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            ClearContents();
        }

        private void ClearContents()
        {
            pieChart1.Visibility = Visibility.Hidden;
            barChart.Visibility = Visibility.Hidden;

            myMap.ZoomLevel = 3;
            double latitude = 20.5937;
            double longitude = 78.9629;
            myMap.Center = new Microsoft.Maps.MapControl.WPF.Location(latitude, longitude);

            cmbCommodity.SelectedItem = null;
            cmbMPProcess.SelectedItem = null;
            txtVolume.Text = string.Empty;

            lblSupplierName.Text = string.Empty;
            lblSupplierAddress.Text = string.Empty;
            lblYearsOfRelationship.Text = string.Empty;
            lblLeadTime.Text = string.Empty;
            lblSupplierSize.Text = string.Empty;
        }
    }
}
