using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using XRP.Global;
using XRP.Models;

namespace XRP.DataModel
{
    public class DieDescriptionData
    {
        public string InsertDie(DieDescription objMod)
        {
            string result = "Error Creating Die";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspDieDescription";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action","Insert");
                cmd.Parameters.AddWithValue("@DieNo", objMod.DieNo.Trim());
                cmd.Parameters.AddWithValue("@customerName", objMod.CustomerName.Trim());
                cmd.Parameters.AddWithValue("@PartName", objMod.PartName.Trim());
                cmd.Parameters.AddWithValue("@InternalCutWeight", objMod.InternalCutWeight);
                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Die Created Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }

        public List<Dictionary<string, object>> GetOneDieForApproval(string dieReqId)
        {
            string sqlstr = "uspDieApproval";
            var connection = gConnection.Connection();
            connection.Open();
            SqlCommand cmd = new SqlCommand(sqlstr, connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", "SelectOneDieRequisition");
            cmd.Parameters.AddWithValue("@DieID", dieReqId.ToString());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            connection.Close();
            List<Dictionary<string, object>> rfq = GetTableRows(dt);
            return rfq;
        }

        public string ApproveDieRequisition(string dieReqId)
        {
            string result = "Error Approving Die Requisition";
            try
            {
                string sqlstr = "uspDieApproval";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "ApproveDieRequisition");
                cmd.Parameters.AddWithValue("@DieID", Convert.ToInt32(dieReqId));
                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Die Requisition Approved Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }

        public int GetPendingDie()
        {
            int count = 0;
            try
            {

                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspGetQuotationCount";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "GetDieCount");
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    count = Convert.ToInt32(sdr["Total"].ToString());
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return count;
        }

        public string RejectDieRequisition(string dieReqId, string comment)
        {
            string result = "Error Rejecting Die Requisition";
            try
            {
                string sqlstr = "uspDieApproval";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "RejectDieRequisition");
                cmd.Parameters.AddWithValue("@CommentForReject", comment.Trim());
                cmd.Parameters.AddWithValue("@DieID", Convert.ToInt32(dieReqId));
                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Die Requisition Rejected Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }

        public List<ssmtbl_WorkorderModel> GetWorkorderApprovalList(string dieStatus)
        {
            List<ssmtbl_WorkorderModel> objList = new List<ssmtbl_WorkorderModel>();
            try
            {
                string sqlstr = "uspDieApproval";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "SelectDieList");
                cmd.Parameters.AddWithValue("@Status", dieStatus.Trim());
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_WorkorderModel objModel = new ssmtbl_WorkorderModel();

                    objModel.DieNumber = sdr["DieNumber"].ToString();
                    objModel.WorkorderNo = sdr["WorkorderNumber"].ToString();
                    objModel.DieReqDate = Convert.ToDateTime(sdr["ReqDate"].ToString());
                    objModel.DieRequisitionID = Convert.ToInt32(sdr["DieRequisitionID"].ToString());
                    objList.Add(objModel);
                }
                connection.Close();

            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return objList;
        }

        public List<DieDescription> GetAllDieDescription()
        {
            List<DieDescription> objtempList = new List<DieDescription>();
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspDieDescription";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "GetAllDieDescription");
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    DieDescription objtemp = new DieDescription();

                    objtemp.DieNo = (sdr["DieNo"].ToString());
                    objtemp.CustomerName = sdr["Name"].ToString();
                    objtemp.PartName = (sdr["PartName"].ToString());
                    objtemp.InternalCutWeight = Convert.ToDecimal(sdr["InternalCutWeight"].ToString());
                    objtempList.Add(objtemp);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objtempList;
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