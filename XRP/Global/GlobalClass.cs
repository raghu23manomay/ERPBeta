using XRP.Global;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace XRP.Global
{
    public static class gConnection
    {
        public static SqlConnection Open()
        {
            //ConnectionStringSettings connSettings = ConfigurationManager.ConnectionStrings["con1"];
            //string connString = connSettings.ConnectionString;

            //GlobalVariables.gConn = new SqlConnection(connString);
            string connString = HttpContext.Current.Session["DbDetails"].ToString();
            GlobalVariables.gConn = new SqlConnection(connString);
            GlobalVariables.gConn.Open();

            return GlobalVariables.gConn;
        }


        public static SqlConnection Close()
        {
            GlobalVariables.gConn.Close();
            return GlobalVariables.gConn;
        }



        public static SqlConnection Connection()
        {
            ConnectionStringSettings connSettings = ConfigurationManager.ConnectionStrings["DbDetails"];
            string connString = connSettings.ConnectionString;
            
            GlobalVariables.gConn = new SqlConnection(connString);

            return GlobalVariables.gConn;
        }



    }

}