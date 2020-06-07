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

}
