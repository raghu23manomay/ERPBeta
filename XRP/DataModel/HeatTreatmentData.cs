using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using XRP.Global;

namespace XRP.DataModel
{
    public class HeatTreatmentData
    {
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
        public List<Dictionary<string, object>> BindFogingList(string id)
        {
            try
            {
                string sqlstr = "uspHeatTreatment";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "ForgingBind");
                //cmd.Parameters.AddWithValue("@CuttingID", Convert.ToInt32(id));
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
        public List<Dictionary<string, object>> GetOneForging(string id)
        {
            try
            {
                string sqlstr = "uspHeatTreatment";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "GetOneForging");
                cmd.Parameters.AddWithValue("@HtID", Convert.ToInt32(id));
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
                string sqlstr = "uspHeatTreatment";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "UpdateReceivedQuantity");
                cmd.Parameters.AddWithValue("@HtID", fid.Trim());

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
        public string InsertHeatTreatmentDetails(string htid, string untrimmed, string okqnt, string rejectedqnt, string reworkqnt, string fromtime, string totime, string reason, string sec, string rm)
        {
            string result = "";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspHeatTreatment";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "InsertHTDetails");
                cmd.Parameters.AddWithValue("@HtID", htid.Trim());

                cmd.Parameters.AddWithValue("@untrimmed", untrimmed.Trim());
                cmd.Parameters.AddWithValue("@okqnt", okqnt.Trim());
                cmd.Parameters.AddWithValue("@rejectedqnt", rejectedqnt.Trim());
                cmd.Parameters.AddWithValue("@reworkqnt", reworkqnt.Trim());
                cmd.Parameters.AddWithValue("@fromtime", Convert.ToDateTime(fromtime));
                cmd.Parameters.AddWithValue("@totime", Convert.ToDateTime(totime));
                cmd.Parameters.AddWithValue("@reason", reason.Trim());
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
    }

}