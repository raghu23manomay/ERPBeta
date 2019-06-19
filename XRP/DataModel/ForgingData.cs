using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using XRP.Global;

namespace XRP.DataModel
{
    public class ForgingData
    {
        public List<Dictionary<string, object>> GetOneCuttingSlip(string id)
        {
            try
            {
                string sqlstr = "uspForging";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "SelectOne");
                cmd.Parameters.AddWithValue("@CuttingID", Convert.ToInt32(id));
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                List<Dictionary<string, object>> oneCutting = GetTableRows(dt);
                return oneCutting;
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return null;
        }
        public string InsertComponentFlash(string forgingid, string comp1, string comp2, string comp3, string comp4, string comp5, string compavg,
            string flash1, string flash2, string flash3, string flash4, string flash5, string flashavg)
        {
            string result = "";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspForging";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "InsertForgingAdition");
                cmd.Parameters.AddWithValue("@ForgingID", forgingid.Trim());
                cmd.Parameters.AddWithValue("@comp1", comp1.Trim());
                cmd.Parameters.AddWithValue("@comp2", comp2.Trim());
                cmd.Parameters.AddWithValue("@comp3", comp3.Trim());
                cmd.Parameters.AddWithValue("@comp4", comp4.Trim());
                cmd.Parameters.AddWithValue("@comp5", comp5.Trim());
                cmd.Parameters.AddWithValue("@compavg", compavg.Trim());
                cmd.Parameters.AddWithValue("@flash1", flash1.Trim());
                cmd.Parameters.AddWithValue("@flash2", flash2.Trim());
                cmd.Parameters.AddWithValue("@flash3", flash3.Trim());
                cmd.Parameters.AddWithValue("@flash4", flash4.Trim());
                cmd.Parameters.AddWithValue("@flash5", flash5.Trim());
                cmd.Parameters.AddWithValue("@flashavg", flashavg.Trim());
                cmd.ExecuteReader();
                connection.Close();
                result = "Insert  Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }
        public List<Dictionary<string, object>> BindCuttingDetailsList(string id)
        {
            try
            {
                string sqlstr = "uspForging";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "SelectCuttingList");
                cmd.Parameters.AddWithValue("@CuttingID", Convert.ToInt32(id));
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                List<Dictionary<string, object>> oneCutting = GetTableRows(dt);
                return oneCutting;
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return null;
        }
        public string UpdateReceivedQuantity(string fid, string recqnt, string remark)
        {
            string result = "";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspForging";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "UpdateReceivedQuantity");
                cmd.Parameters.AddWithValue("@ForgingID", fid.Trim());
                
                cmd.Parameters.AddWithValue("@recqnt", recqnt.Trim());
                cmd.Parameters.AddWithValue("@remark", remark.Trim());
               
                cmd.ExecuteReader();
                connection.Close();
                result = "Requisition Sent Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }
        public string InsertForgingDetails(string forgingid, string untrimmed, string okqnt, string rejectedqnt, string reworkqnt, string fromtime, string totime, string reason,
            string nextOperationName, string untrimmedkg, string okqntkg, string rejectedqntkg, string reworkqntkg,string sec, string rm)
        {
            string result = "";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspInserForgingDetails";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ForgingID", forgingid.Trim());

                cmd.Parameters.AddWithValue("@untrimmed", untrimmed.Trim());
                cmd.Parameters.AddWithValue("@okqnt", okqnt.Trim());
                cmd.Parameters.AddWithValue("@rejectedqnt", rejectedqnt.Trim());
                cmd.Parameters.AddWithValue("@reworkqnt", reworkqnt.Trim());
                cmd.Parameters.AddWithValue("@fromtime", Convert.ToDateTime(fromtime));
                cmd.Parameters.AddWithValue("@totime", Convert.ToDateTime(totime));
                cmd.Parameters.AddWithValue("@reason", reason.Trim());
                cmd.Parameters.AddWithValue("@nextOperationName", nextOperationName.Trim());
                cmd.Parameters.AddWithValue("@untrimmedkg", untrimmedkg.Trim());
                cmd.Parameters.AddWithValue("@okqntkg", okqntkg.Trim());
                cmd.Parameters.AddWithValue("@rejectedqntkg", rejectedqntkg.Trim());
                cmd.Parameters.AddWithValue("@reworkqntkg", reworkqntkg.Trim());
                cmd.Parameters.AddWithValue("@section", (sec).Trim());
                cmd.Parameters.AddWithValue("@ramaterial", (rm).Trim());
                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Requisition Sent Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }
        public List<Dictionary<string, object>> GetTableRows(DataTable dtData)
        {
            List<Dictionary<string, object>>
            lstRows = new List<Dictionary<string, object>>();
            Dictionary<string, object> dictRow = null;

            foreach (DataRow dr in dtData.Rows)
            {
                dictRow = new Dictionary<string, object>();
                foreach (DataColumn col in dtData.Columns)
                {
                    dictRow.Add(col.ColumnName, dr[col]);
                }
                lstRows.Add(dictRow);
            }
            return lstRows;
        }
    }
}