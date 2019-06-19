using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using XRP.Global;

namespace XRP.DataModel
{
    public class CuttingSlipData
    {

        public List<Dictionary<string, object>> GenerateCuttingSlip(string workorderNo, string quantity, string totalWeight, string ctSlipNo, string goodsIssuedno)
        {
            try
            {
                string sqlstr = "uspCuttingSlip";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "Generate");
                cmd.Parameters.AddWithValue("@workorderNo", workorderNo.Trim());
                cmd.Parameters.AddWithValue("@quantity", float.Parse(quantity));
                cmd.Parameters.AddWithValue("@totalWeight", float.Parse(totalWeight));
                cmd.Parameters.AddWithValue("@ctSlipNo", ctSlipNo.Trim());
                cmd.Parameters.AddWithValue("@goodsIssuedno", goodsIssuedno.Trim());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                List<Dictionary<string, object>> rfq = GetTableRows(dt);
                return rfq;
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return null;
        }

        public string GetMaxCuttingSlipNo()
        {

            string s = "CS-00001";
            string csNo = "0";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspCuttingSlip";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "SelectMaxCSNo");
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    csNo = (sdr["CuttingSlipNo"].ToString());
                    s = csNo == "" ? "CS-00001" : ("CS-" + ((Convert.ToInt64(csNo.Split('-')[1]) + 1).ToString("00000")));
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                s = "CS-00001";
                ErrorHandlerClass.LogError(ex);
            }
            return s;

        }



        public string updateReceivedQty(string cuttingID, string receivedQty, string receivedRemark)
        {
            string result = "";
            try
            {
                string sqlstr = "uspCuttingSlip";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "UpdateReceivedQty");
                cmd.Parameters.AddWithValue("@CuttingID", cuttingID.Trim());
                cmd.Parameters.AddWithValue("@ReceivedQuantity", Convert.ToDecimal(receivedQty));
                cmd.Parameters.AddWithValue("@ReceivedRemark", (receivedRemark).Trim());

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                List<Dictionary<string, object>> rfq = GetTableRows(dt);
                return result;
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return null;
        }

        public string SaveAddCuttingDetails(string cuttingID, string cutting1, string cutting2, string cutting3, string cutting4, string cutting5, string avg)
        {
            string result = "Error Inserting Cutting Details !";
            try
            {
                string sqlstr = "uspCuttingSlip";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "InsertAddCuttingDetails");
                cmd.Parameters.AddWithValue("@CuttingID", Convert.ToInt32(cuttingID));
                cmd.Parameters.AddWithValue("@Cutting1", Convert.ToDecimal(cutting1));
                cmd.Parameters.AddWithValue("@Cutting2",  Convert.ToDecimal(cutting2));
                cmd.Parameters.AddWithValue("@Cutting3",  Convert.ToDecimal(cutting3));
                cmd.Parameters.AddWithValue("@Cutting4",  Convert.ToDecimal(cutting4));
                cmd.Parameters.AddWithValue("@Cutting5",  Convert.ToDecimal(cutting5));
                cmd.Parameters.AddWithValue("@CuttingAvg",  Convert.ToDecimal(avg));                
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                List<Dictionary<string, object>> rfq = GetTableRows(dt);
                result = "Cutting Details Inserted Successfully !";
                return result;
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return null;
        }

        public string SaveCuttingDetails(string cutId, string OkCutPcs, string OkCutPcsKgs,string EndPcs, string EndPcsKgs, string RejectedPcs, string RejectedPcsKgs, string McIdleFrom, string McIdleTo, string McBrkDwnReason, string nextOperationName,string sec,string rm)
        {
            string result = "Error Inserting Cutting Details !";
            try
            {
                string sqlstr = "uspCuttingSlip";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "InsertCuttingDetails");
                cmd.Parameters.AddWithValue("@CuttingID", Convert.ToInt32(cutId));
                cmd.Parameters.AddWithValue("@OkCutPcs", float.Parse(OkCutPcs)); 
                cmd.Parameters.AddWithValue("@OkCutPcsKgs", float.Parse(OkCutPcsKgs));
                cmd.Parameters.AddWithValue("@EndPcs", float.Parse(EndPcs));
                cmd.Parameters.AddWithValue("@EndPcsKgs", float.Parse(EndPcsKgs));
                cmd.Parameters.AddWithValue("@RejectedPcs", float.Parse(RejectedPcs));
                cmd.Parameters.AddWithValue("@RejectedPcsKgs", float.Parse(RejectedPcsKgs));
                cmd.Parameters.AddWithValue("@IdealTimeFrom", Convert.ToDateTime(McIdleFrom));
                cmd.Parameters.AddWithValue("@IdealTimeTo", Convert.ToDateTime(McIdleTo));
                cmd.Parameters.AddWithValue("@Reason", (McBrkDwnReason).Trim());
                cmd.Parameters.AddWithValue("@nextOperationName", (nextOperationName).Trim());
                cmd.Parameters.AddWithValue("@section", (sec).Trim());
                cmd.Parameters.AddWithValue("@ramaterial", (rm).Trim());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                List<Dictionary<string, object>> rfq = GetTableRows(dt);
                result = "Cutting Details Inserted Successfully !";
                return result;
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return null;
        }

        public List<Dictionary<string, object>> GetOneCuttingSlip(string id)
        {
            try
            {
                string sqlstr = "uspCuttingSlip";
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

        public List<Dictionary<string, object>> GetCuttingSlipList()
        {
            try
            {
                string sqlstr = "uspCuttingSlip";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "SelectAll");
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                List<Dictionary<string, object>> rfqlist = GetTableRows(dt);
                return rfqlist;
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return null;
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