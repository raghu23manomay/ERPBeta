using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using XRP.Global;

namespace XRP.DataModel
{
    public class GoodsIssuedData
    {
       
        public List<Dictionary<string, object>> AllGoodsIssued()
        {
            try
            {
                string sqlstr = "uspGoodsIssued";
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

       
        public List<Dictionary<string, object>> GetOneGoodsIssued(string id)
        {
            try
            {
                string sqlstr = "uspGoodsIssued";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "SelectOne");
                cmd.Parameters.AddWithValue("@GoodsIssuedID", Convert.ToInt32(id));
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

        public string GenerateGoodsIssued(string gisId, string issuedWt, string remark, string goodsIssuedno)
        {
            string Result = "Error Issueing Goods !";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspGoodsIssued";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "Generate");
                cmd.Parameters.AddWithValue("@IssuedWt", Convert.ToDouble(issuedWt));
                cmd.Parameters.AddWithValue("@GoodsIssuedNo", goodsIssuedno.Trim());
                cmd.Parameters.AddWithValue("@remark", remark.Trim());
                cmd.Parameters.AddWithValue("@GoodsIssuedID", Convert.ToInt64(gisId));
                SqlDataReader sdr = cmd.ExecuteReader();
                connection.Close();
                Result = "Goods Issued Successfully !";
            }
            catch (Exception ex)
            {
               
                ErrorHandlerClass.LogError(ex);
            }
            return Result;
        }

        public string GetMaxGISNo()
        {
            string s = "GIS-00001";
            string csNo = "0";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspGoodsIssued";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "SelectMaxGISNo");
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    csNo = (sdr["GoodsIssuedNo"].ToString());
                    s = csNo == "" ? "GIS-00001" : ("GIS-" + ((Convert.ToInt64(csNo.Split('-')[1]) + 1).ToString("00000")));
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                s = "GIS-00001";
                ErrorHandlerClass.LogError(ex);
            }
            return s;
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