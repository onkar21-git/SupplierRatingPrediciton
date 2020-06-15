using System;
using System.Collections.Generic;
using System.Text;

namespace SupplierRatingPredictionML.Model
{
    public class SupplierData
    {
        public int SupplierId;
        public string SupplierName;
        public int predicted_Q;
        public int predicted_C;
        public int predicted_D;
        public int predicted_Total;
        public string Supplier_Address;
        public string Supplier_Location;
        public string Supplier_Size;
        public string Supplier_Lead_Time;
        public string Supplier_Business_Yrs;
    }

    public class OrderData
    {
        public float Order_Id;
        public float Commodity;
        public float Volume;
        public float Supplier;
        public float Manufacturing_Process_Id;
        public float Quality_Rating;
        public float Cost_Rating;
        public float Delivery_Rating;
        public float Total_Rating; 
    }

}
