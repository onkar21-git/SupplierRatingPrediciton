// This file was auto-generated by ML.NET Model Builder. 

using Microsoft.ML.Data;

namespace SupplierRatingPredictionML.Model
{
    public class ModelInput
    {
        [ColumnName("Order_Id"), LoadColumn(0)]
        public float Order_Id { get; set; }


        [ColumnName("Order_Year"), LoadColumn(1)]
        public float Order_Year { get; set; }


        [ColumnName("Order_Month"), LoadColumn(2)]
        public float Order_Month { get; set; }


        [ColumnName("Order_Day"), LoadColumn(3)]
        public float Order_Day { get; set; }


        [ColumnName("Commodity"), LoadColumn(4)]
        public float Commodity { get; set; }


        [ColumnName("Manufacturing_Process_Id"), LoadColumn(5)]
        public float Manufacturing_Process { get; set; }


        [ColumnName("Volume"), LoadColumn(6)]
        public float Volume { get; set; }


        [ColumnName("Supplier"), LoadColumn(7)]
        public float Supplier { get; set; }


        [ColumnName("Order_Amount"), LoadColumn(8)]
        public float Order_Amount { get; set; }


        [ColumnName("Quality_Rating"), LoadColumn(9)]
        public float Quality_Rating { get; set; }


        [ColumnName("Delivery_Rating"), LoadColumn(10)]
        public float Delivery_Rating { get; set; }


        [ColumnName("Cost_Rating"), LoadColumn(11)]
        public float Cost_Rating { get; set; }


        [ColumnName("Total_Rating"), LoadColumn(12)]
        public float Total_Rating { get; set; }


    }
}
