using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Mvc;
using XRP.Global;
using XRP.Models;

namespace XRP.DataModel
{
    public class WorkorderData
    {

        #region Insert Workorder

        public string InsertWorkorder(ssmtbl_WorkorderModel objWoMod)
        {
            string result = "Error Creating Workorder";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Insert_Workorder";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                var wono = objWoMod.WorkorderNo;
                var pono = objWoMod.PoNo;
                wono = ("WO-" + pono + "-" + ((Convert.ToInt64(wono.Split('-')[1])).ToString("00000")));
                cmd.Parameters.AddWithValue("@WorkorderNo", wono);
                // cmd.Parameters.AddWithValue("@RawMaterial", objWoMod.RawMaterial);
                cmd.Parameters.AddWithValue("@HeatCode", objWoMod.HeatCode);
                //cmd.Parameters.AddWithValue("@Section", objWoMod.PoSection);
                //cmd.Parameters.AddWithValue("@DateOfIssue", objWoMod.DateOfIssue);
                cmd.Parameters.AddWithValue("@TargetDate", objWoMod.TargetDate);
                cmd.Parameters.AddWithValue("@CutWeight", objWoMod.CutWeight);
                cmd.Parameters.AddWithValue("@ColorCode", objWoMod.ColorCode);
                cmd.Parameters.AddWithValue("@PoNo", objWoMod.PoNo);
                cmd.Parameters.AddWithValue("@Status", "601");
                cmd.Parameters.AddWithValue("@CustomerName", objWoMod.CustomerName);
                cmd.Parameters.AddWithValue("@AllocatedRM", objWoMod.AllocatedRM);
                cmd.Parameters.AddWithValue("@AllocatedSection", objWoMod.AllocatedSection);
                cmd.Parameters.AddWithValue("@PoRM", objWoMod.PoRM);
                cmd.Parameters.AddWithValue("@PoSection", objWoMod.PoSection);
                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Workorder Created Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }
        #endregion
        public int GetPendingRMs()
        {
            int count = 0;
            try
            {

                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspGetQuotationCount";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "GetRMCount");
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

        public string ApproveRmRequisition(string rFQId)
        {
            string result = "Error Approving Raw Material";
            try
            {
                string sqlstr = "uspRMApproval";
            var connection = gConnection.Connection();
            connection.Open();
            SqlCommand cmd = new SqlCommand(sqlstr, connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", "ApproveRMRequisition");
            cmd.Parameters.AddWithValue("@RfqID", Convert.ToInt32(rFQId));
            cmd.ExecuteNonQuery();
            connection.Close();
            result = "Requisition Approved Successfully!";
        }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }

        public List<Dictionary<string, object>> updateWOStatus(string pOID)
        {
            string result = "";
            try
            {
                string sqlstr = "uspGetAllPO";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "updateWOStatus");
                cmd.Parameters.AddWithValue("@POID", Convert.ToInt32(pOID));
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                List<Dictionary<string, object>> rfq = GetTableRows(dt);
                return rfq;
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return null;
        }

        public string RejectRmRequisition(string rFQId, string Comment)
        {
            string result = "Error Rejecting Raw Material";
            try
            {
                string sqlstr = "uspRMApproval";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "RejectRMRequisition");
                cmd.Parameters.AddWithValue("@CommentForReject", Comment.Trim());
                cmd.Parameters.AddWithValue("@RfqID", Convert.ToInt32(rFQId));
                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Requisition Rejected Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }

        public List<Dictionary<string, object>> GetOneRFQForApproval(string id)
        {
            string sqlstr = "uspRMApproval";
            var connection = gConnection.Connection();
            connection.Open();
            SqlCommand cmd = new SqlCommand(sqlstr, connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", "SelectOneRMRequisition");
            cmd.Parameters.AddWithValue("@RfqID", id.ToString());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            connection.Close();
            List<Dictionary<string, object>> rfq = GetTableRows(dt);
            return rfq;
        }



        public List<ssmtbl_WorkorderModel> GetWorkorderApprovalList(string woStatus)
        {
            List<ssmtbl_WorkorderModel> objList = new List<ssmtbl_WorkorderModel>();
            try
            {
                string sqlstr = "uspRMApproval";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "SelectWoList");
                cmd.Parameters.AddWithValue("@WorkorderStatus", woStatus.Trim());
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_WorkorderModel objModel = new ssmtbl_WorkorderModel();
                   
                    objModel.PartName = sdr["PartName"].ToString();
                    objModel.WorkorderNo = sdr["ReqNo"].ToString();
                    objModel.PartNo = sdr["PartNO"].ToString();
                    objModel.Type = sdr["Type"].ToString();
                    objModel.RfqID = sdr["RfqID"].ToString();
                    objModel.RawMaterial = sdr["ReqTypeMaterial"].ToString();
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

      

        #region Get Max Workorder No

        public string GetMaxWorkorderNo()
        {
            string s = "WO-00001";
            string woNo = "0";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Get_MaxWorkorderNo";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    woNo = (sdr["WorkorderNo"].ToString());
                    s = woNo == "" ? "WO-00001" : ("WO-" + ((Convert.ToInt64(woNo.Split('-')[1]) + 1).ToString("00000")));
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                s = "WO-00001";
                ErrorHandlerClass.LogError(ex);
            }
            return s;
        }

        #endregion
        public List<Dictionary<string, object>> GetWoDataByWOID(string woID)
        {
            List<ssmtbl_WorkorderModel> objWoList = new List<ssmtbl_WorkorderModel>();
            try
            {

                string sqlstr = "uspgetWOfromWOid";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@woID", Convert.ToInt32(woID));
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                List<Dictionary<string, object>> allWO = GetTableRows(dt);
                return allWO;
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return null;

        }
        #region Get All Workorder

        public List<ssmtbl_WorkorderModel> GetAllWorkorder()
        {
            List<ssmtbl_WorkorderModel> objWoList = new List<ssmtbl_WorkorderModel>();
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Get_AllWorkorder";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "Select");
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_WorkorderModel objtemp = new ssmtbl_WorkorderModel();
                    objtemp.WorkorderID = Convert.ToInt32(sdr["WorkorderID"].ToString());
                    objtemp.WorkorderNo = sdr["WorkorderNo"].ToString();
                    objtemp.PlanQty = Convert.ToDecimal(sdr["PlanQty"].ToString());
                    objtemp.TargetDate = Convert.ToDateTime(sdr["TargetDate"].ToString());
                    objtemp.CreatedDate = Convert.ToDateTime(sdr["CreatedDate"].ToString());
                    objWoList.Add(objtemp);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objWoList;
        }

        public List<Dictionary<string, object>> GetForgingMachine()
        {
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspSelectMachaine";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "BindForgingMachaine");
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                List<Dictionary<string, object>> allWO = GetTableRows(dt);
                return allWO;
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return null;
        }


        #endregion
        public List<Dictionary<string, object>> GetCuttingMachine()
        {
           
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspSelectMachaine";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "BindCuttingMachaine");
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                List<Dictionary<string, object>> allWO = GetTableRows(dt);
                return allWO;
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return null;
        }

        #region Generate Workorder
        public string GenerateWorkorder(string workorderNo, string customerName, string poNumber, string dieNo, string rawMaterial, string heatcode,
           string section, string cutLength, string dateOfIssue, string targetDate, string hammerNo, string dieSts, string dieLife, string cutWt,
           string poQty, string productionStartDate, string planQty, string availableRM, string quantity, string reqType, string partName,
           string partDescription, string remark, string woPOID, string CuttingMc, string ForgingMc, string weight, string createdBy)
        {
            string result = "Error Generating Workorder";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspGenerateWorkorder";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@WorkorderNo", workorderNo.Trim());
                cmd.Parameters.AddWithValue("@CustomerName", customerName.Trim());
                cmd.Parameters.AddWithValue("@PONumber", poNumber.Trim());
                cmd.Parameters.AddWithValue("@DieNo", dieNo.Trim());
                cmd.Parameters.AddWithValue("@RawMaterial", rawMaterial.Trim());
                cmd.Parameters.AddWithValue("@HeatCode", heatcode.Trim());
                cmd.Parameters.AddWithValue("@Section", section.Trim());
                cmd.Parameters.AddWithValue("@CutLength", Convert.ToDouble(cutLength));
                cmd.Parameters.AddWithValue("@DateOfIssue", DateTime.Now);
                cmd.Parameters.AddWithValue("@TargetDate", Convert.ToDateTime(targetDate));
                cmd.Parameters.AddWithValue("@HammerNo", hammerNo.Trim());
                cmd.Parameters.AddWithValue("@DieStatus", dieSts.Trim());
                cmd.Parameters.AddWithValue("@DieLife", dieLife.Trim());
                cmd.Parameters.AddWithValue("@CutWeight", Convert.ToDouble(cutWt));
                cmd.Parameters.AddWithValue("@POQty", Convert.ToDouble(poQty));
                //cmd.Parameters.AddWithValue("@ProductionStartDate", Convert.ToDateTime(productionStartDate));
                cmd.Parameters.AddWithValue("@PlanQty", Convert.ToDouble(planQty));
                cmd.Parameters.AddWithValue("@BalanceQty", Convert.ToDouble((Convert.ToDouble(poQty) - Convert.ToDouble(planQty))));
                cmd.Parameters.AddWithValue("@AvailableQty", Convert.ToDouble(availableRM));
                cmd.Parameters.AddWithValue("@CreatedBy", createdBy.Trim());
                cmd.Parameters.AddWithValue("@CreatedDate", DateTime.Now);
                cmd.Parameters.AddWithValue("@poID", Convert.ToInt64(woPOID));
                cmd.Parameters.AddWithValue("@CuttingMachineID", CuttingMc.Trim());
                cmd.Parameters.AddWithValue("@ForgingMachineID", ForgingMc.Trim());
                cmd.Parameters.AddWithValue("@weight", Convert.ToDouble(weight));
                //cmd.Parameters.AddWithValue("@reqType", reqType.Trim());
                //cmd.Parameters.AddWithValue("@partName", partName.Trim());
                //cmd.Parameters.AddWithValue("@partDescription", partDescription.Trim());
                //cmd.Parameters.AddWithValue("@remark", remark.Trim());
                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Workorder Generated Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        } 
        #endregion

        public string InsertRequisitionDetails(string rfqId, string rawMaterial, string section, string quantity, string TotalWt, string Req)
        {
            string result = "";
            try { 
            var connection = gConnection.Connection();
            connection.Open();
            string sqlstr = "uspInsertRequisitionDetails";
            SqlCommand cmd = new SqlCommand(sqlstr, connection);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", (Req).Trim());
                cmd.Parameters.AddWithValue("@rfqId", Convert.ToInt32(rfqId));
                cmd.Parameters.AddWithValue("@RawMaterial", rawMaterial = rawMaterial.Trim() == "undefined" ? "0" : rawMaterial.Trim());
                cmd.Parameters.AddWithValue("@Section", section= section.Trim() == "undefined" ? "0" : section.Trim());
                cmd.Parameters.AddWithValue("@Quantity", quantity=quantity.Trim() == "undefined" ? "0" : quantity.Trim());
                cmd.Parameters.AddWithValue("@TotalWt", TotalWt = (TotalWt.Trim() == "NaN"|| TotalWt.Trim() == "") ? quantity.Trim() : TotalWt.Trim());                
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

        [HttpPost]
        public List<Dictionary<string, object>> getOpsInvolvedByPOId(string poID)
        {
            try
            {
                string sqlstr = "uspGetOpsInvolvedByPOId";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@POId", Convert.ToInt32(poID));
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                List<Dictionary<string, object>> allOpsinv = GetTableRows(dt);
                return allOpsinv;
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return null;
        }

        public List<Dictionary<string, object>> getWOListPOId(string poID)
        {
            try
            {
                string sqlstr = "uspGetWOListPOId";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@POId", Convert.ToInt32(poID));
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                List<Dictionary<string, object>> allWO = GetTableRows(dt);
                return allWO;
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
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
        public string SendDieRequisition(string DieDescription, string DieRemark, string WorkorderNo, string DieNo)
        {
            string result = "Error Sending Die Requisition";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspSendDieRequisition";
               
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Description", DieDescription.Trim());
                cmd.Parameters.AddWithValue("@Remark", DieRemark.Trim());
                cmd.Parameters.AddWithValue("@WorkorderNumber", WorkorderNo.Trim());
                cmd.Parameters.AddWithValue("@DieNumber", DieNo.Trim());
                cmd.Parameters.AddWithValue("@Status","Pending For Approval");
                cmd.Parameters.AddWithValue("@ReqDate", DateTime.Now);
                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Die Requisition Sent Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }

        public float[] getDispatchQty(string PoID)
        {
            float[] qty =new float[2];
            try
            {

                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspGetDispatchQty";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@PoID", Convert.ToInt32(PoID));
           
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    var disQty = sdr["Dispatchqty"].ToString();
                    var balQty = sdr["BalanceQty"].ToString();

                    if (disQty != "")
                    {
                        qty[0] = float.Parse(sdr["Dispatchqty"].ToString());
                    }
                    else { qty[0] = 0; }
                    if (balQty != "")
                    {
                        qty[1] = float.Parse(sdr["BalanceQty"].ToString());
                    }
                    else { qty[1] = 0; }
                   
                }

                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return qty;
        }

        public string GetDieAvailability(string dieNumber)
        {
            string result = "";
            try
            {

                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspGetDieAvailability";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@DieNumber", dieNumber.Trim());
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    result = (sdr["DieNo"].ToString());
                }

                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return result;

        }



       

        #region Get All Workorder

        public List<ssmtbl_PurchaseOrderModel> GetAllPO(string wono)
        {
            List<ssmtbl_PurchaseOrderModel> objWoList = new List<ssmtbl_PurchaseOrderModel>();
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspGetAllPO";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "SelectAllPO");
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_PurchaseOrderModel objtemp = new ssmtbl_PurchaseOrderModel();
                    objtemp.po_id = Convert.ToInt32(sdr["po_id"].ToString());
                    objtemp.WorkorderNo1 = wono;
                    objtemp.customerName = (sdr["customerName"].ToString());
                    objtemp.ApprovalDate = Convert.ToDateTime(sdr["ApprovalDate"].ToString());
                    objtemp.createddate = Convert.ToDateTime(sdr["createddate"].ToString());
                    objtemp.CustomerPONo = (sdr["CustomerPONo"].ToString());
                    objtemp.QuotationNo = (sdr["QuotationNo"].ToString());
                    objtemp.QtymentionedinPO = (sdr["QtymentionedinPO"]).ToString();
                    objtemp.DieNumber = ((sdr["DieNumber"])).ToString();
                   
                    objWoList.Add(objtemp);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objWoList;
        }

        #endregion


        #region Get PO Number Using Parameter Customer Name
        public List<SelectListItem> getPOByCstName(string cstnme)
        {
            List<SelectListItem> objRowsList = new List<SelectListItem>();
            try
            {
                string sqlstr = "select po_id, CustomerPONo from ssmtbl_PurchaseOrder where customerName=@cstnme";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@cstnme", cstnme);
                SqlDataReader sdr = cmd.ExecuteReader();
                List<string> custName = new List<string>();
                while (sdr.Read())
                {
                    objRowsList.Add(new SelectListItem
                    {
                        Value = sdr["CustomerPONo"].ToString(),
                        Text = sdr["CustomerPONo"].ToString()
                    });
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return objRowsList;
        }

        #endregion





        public List<ssmtbl_WorkorderModel> GetWoDataByPO(string po = "")
        {
            List<ssmtbl_WorkorderModel> objWoList = new List<ssmtbl_WorkorderModel>();
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_getInquiryfrompoid";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ponumber", po);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_WorkorderModel objtemp = new ssmtbl_WorkorderModel();
                    objtemp.CutWeight = (sdr["cutweight"].ToString());
                    objtemp.HeatCode = (sdr["FeasibilityHeattreatment"].ToString());
                    objtemp.ColorCode = (sdr["ColorCode"].ToString());
                    objtemp.RawMaterial = (sdr["RawMaterial"].ToString());
                    objtemp.Section = (sdr["Section"].ToString());
                    objtemp.PoRM = (sdr["PORM"].ToString());
                    objtemp.PoSection = (sdr["Section"].ToString());
                    objWoList.Add(objtemp);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return objWoList;

        }

        #region Send Requisition

        public Tuple<long, string> SendRequisition(string reqType, string customerName, string partName, string partNumber, string rawMaterial, string TotalWt, string section, string quantity, string DieDescription, string partDescription, string workorderNo, string remark,string poid, string userID, string Department)
        {
            string result = "Error Sending Requisition";
            long id = 0;
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspSendRequisition";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ReqType", reqType = reqType.Trim() == "Raw Material"?"2": reqType.Trim());
                //cmd.Parameters.AddWithValue("@CustomerName", customerName.Trim());
                cmd.Parameters.AddWithValue("@PartName", partName.Trim());
                cmd.Parameters.AddWithValue("@RawMaterial", rawMaterial.Trim());               
                cmd.Parameters.AddWithValue("@TotalWt", TotalWt = (TotalWt.Trim() == "NaN"|| TotalWt.Trim() == "0" || TotalWt.Trim() == "undefined" || TotalWt.Trim() == "") ? ( quantity = (quantity.Trim() == "undefined" || quantity.Trim() == "0" || quantity.Trim() == "")? "0": quantity.Trim()) : TotalWt.Trim());
                //cmd.Parameters.AddWithValue("@Quantity", quantity.Trim());
                cmd.Parameters.AddWithValue("@PartDesc", partDescription=partDescription.Trim() == "undefined" ? " " : partDescription.Trim());
                cmd.Parameters.AddWithValue("@PartNO", partNumber.Trim());
                cmd.Parameters.AddWithValue("@UserID", Convert.ToInt32(HttpContext.Current.Session["userid"].ToString()));
                cmd.Parameters.AddWithValue("@Status", "Pending For Approval");
                cmd.Parameters.AddWithValue("@ReqNo", workorderNo.Trim());
                cmd.Parameters.AddWithValue("@ReqDate", DateTime.Now);
                cmd.Parameters.AddWithValue("@RMStatus", 1);
                cmd.Parameters.AddWithValue("@Remark", remark.Trim());               
                cmd.Parameters.AddWithValue("@poid", poid =  poid.Trim() == "undefined" ? "0" : poid.Trim());
                cmd.Parameters.AddWithValue("@DieId", DieDescription = DieDescription.Trim() == "undefined" ? "0" : DieDescription.Trim());
                cmd.Parameters.AddWithValue("@Department", Department.Trim());
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    id = Convert.ToInt64(sdr[0].ToString());
                }
                connection.Close();
                result = "Requisition Sent Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return new Tuple<long, string>(id, result);
        }


        #endregion

        public List<ssmtbl_WorkorderModel> GetWoDataByPOID(string poID)
        {
            List<ssmtbl_WorkorderModel> objWoList = new List<ssmtbl_WorkorderModel>();
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_getInquiryfrompoid";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@POID", Convert.ToInt32(poID));
                SqlDataReader sdr = cmd.ExecuteReader();
                //SqlDataAdapter da = new SqlDataAdapter(cmd);
                //DataTable dt = new DataTable();
                //da.Fill(dt);
                while (sdr.Read())
                {
                    ssmtbl_WorkorderModel objtemp = new ssmtbl_WorkorderModel();
                    objtemp.CutWeight = (sdr["cutweight"].ToString());
                    objtemp.HeatCode = (sdr["HeatCode"].ToString());
                    objtemp.ColorCode = (sdr["ColorCode"].ToString());
                    objtemp.RawMaterial = (sdr["RawMaterial"].ToString());
                    objtemp.Section = (sdr["Section"].ToString());
                    objtemp.PoRM = (sdr["PORM"].ToString());
                    objtemp.PoSection = (sdr["Section"].ToString()); 
                    objtemp.POSectionId = Convert.ToInt32(sdr["SectionId"].ToString());
                    objtemp.PoNo = (sdr["CustomerPONo"].ToString());
                    objtemp.CustomerName = (sdr["customerName"].ToString());
                    objtemp.CutWeight = (sdr["cutweight"].ToString());
                    objtemp.grossWeight = Convert.ToDecimal(sdr["grossweight"].ToString());
                    objtemp.DieNumber = (sdr["DieNumber"].ToString());
                    objtemp.FeasibilityHammerRequired = Convert.ToInt32(sdr["FeasibilityHammerRequired"].ToString());
                    objtemp.CutLength = Convert.ToDecimal(sdr["cutlength"].ToString());
                    objtemp.QtymentionedinPO = Convert.ToDouble(sdr["QtymentionedinPO"].ToString());
                    objtemp.NatureOfWork = Convert.ToInt32(sdr["FeasibilityNatureofWork"].ToString());
                    objtemp.ApprovalDate = Convert.ToDateTime(sdr["ApprovalDate"].ToString());
                    objtemp.ApprovalDate = Convert.ToDateTime(sdr["ApprovalDate"].ToString());
                    objtemp.PartName = sdr["PartName"].ToString();
                    objtemp.ConditionOfSupply = sdr["FeasibilityConditionSupply1"].ToString();
                    objtemp.HeatTreatment = (sdr["FeasibilityHeattreatment1"].ToString());
                    objtemp.HardnessMin = sdr["hardnessmin"].ToString();
                    objtemp.HardnessMax = sdr["hardnessmax"].ToString();
                    objtemp.HardnessUnit = sdr["hardnessunits"].ToString();
                    objtemp.HeatCode = sdr["HeatCode"].ToString();
                    objWoList.Add(objtemp);
                }

                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return objWoList;

        }

        public decimal GetRMAvailabiltyByRMNSection(string RawMaterial, string Section)
        {
            decimal Quantity = 0;
            try
            {

                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspGetRMAvialability";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@RawMaterial", RawMaterial.Trim());
                cmd.Parameters.AddWithValue("@Section", Section.Trim());
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    Quantity = Convert.ToDecimal(sdr["Quntity"].ToString());
                }

                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Quantity;

        }
    }
}