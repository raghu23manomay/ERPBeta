using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using XRP.Global;
using XRP.Models;

namespace XRP.DataModel
{
    public class DailyCosumptionsData
    {
        public List<ssmtbl_DailyConsumptionsModel> GetDailyConsumptionPerUnit()
        {
            List<ssmtbl_DailyConsumptionsModel> objDailyConsumpList = new List<ssmtbl_DailyConsumptionsModel>();
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_DailyConsumptions";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "SelectAllConsumableRatePerUnits");
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_DailyConsumptionsModel objtemp = new ssmtbl_DailyConsumptionsModel();
                    objtemp.ConsumableCode = sdr["ConsumableCode"].ToString();
                    objtemp.ConsumableName = (sdr["ConsumableName"].ToString());
                    objtemp.RatePerUnit = (sdr["RatePerUnit"].ToString());
                   
                    objDailyConsumpList.Add(objtemp);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objDailyConsumpList;
        }

        public List<ssmtbl_DailyConsumptionsBetweenDateModel> GetInDatedDailyConsumptions(string datefrom, string dateto)
        {
            List<ssmtbl_DailyConsumptionsBetweenDateModel> objDailyConsumpList = new List<ssmtbl_DailyConsumptionsBetweenDateModel>();
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_DailyConsumptions";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "SelectBetweenDate");
                cmd.Parameters.AddWithValue("@datefrom", datefrom);
                cmd.Parameters.AddWithValue("@dateto", dateto);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_DailyConsumptionsBetweenDateModel objtemp = new ssmtbl_DailyConsumptionsBetweenDateModel();
                    objtemp.ConsumableCode = sdr["ConsumableCode"].ToString();
                    objtemp.ConsumableName = (sdr["ConsumableName"].ToString());
                    objtemp.RatePerUnit = (sdr["RatePerUnit"].ToString());
                    objtemp.ConsumableDate = Convert.ToDateTime(sdr["ConsumableDate"].ToString());
                    objtemp.Type = sdr["Type"].ToString();
                    objtemp.UpdatedDate = Convert.ToDateTime(sdr["UpdatedDate"].ToString());
                         objtemp.StartReading = (sdr["StartReading"].ToString());
                         objtemp.EndReading = sdr["EndReading"].ToString();
                    objtemp.TotalUnit = (sdr["TotalUnit"].ToString());
                    objtemp.Flag = (sdr["Flag"].ToString());

                    objDailyConsumpList.Add(objtemp);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objDailyConsumpList;
        }
               

       public long Save_DailyConsumptions(string xml)
        {           
            try
            {
                 var connection = gConnection.Connection();
               
                xml.TrimEnd('^').Split('^').ToList().ForEach(xmlitem =>
                {
                    connection.Open();
                    string sqlstr = "ssmsp_DailyConsumptions";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "insert");
                cmd.Parameters.AddWithValue("@xmlData", xmlitem);             
                SqlDataReader sdr = cmd.ExecuteReader();
                connection.Close();
                });
               
                long maxwono = 0;
              
                return maxwono;
            }
             catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return 0;
           
        }
    }
}