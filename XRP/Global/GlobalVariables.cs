using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace XRP.Global
{
    public class GlobalVariables
    {
        public static string CompanyName;
        public static string Address1;
        public static string Address2;
        public static string Address3;
        public static string City;
        public static string State;
        public static string Country;
        public static string PinCode;
        public static string CompanyLogo;
        public static string CompanyTheme;
        public static string DecorationRate;
        public static string WifiValetParkingRate;

        public static int gRowsPerPage;

        public static string gUserType;


        public static SqlConnection gConn;
        public static SqlConnection gConn_New;
        
        public static string gConnectionString;
    }
}