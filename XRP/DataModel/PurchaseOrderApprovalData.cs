using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using XRP.Global;
using XRP.Models;

namespace XRP.DataModel
{
    public class PurchaseOrderApprovalData
    {
        #region Get All Purchase Order For Approval

        public List<ssmtbl_PurchaseOrderModel> GetAllPurchaseOrderForApproval()
        {
            List<ssmtbl_PurchaseOrderModel> objPOList = new List<ssmtbl_PurchaseOrderModel>();
            try
            {
                string sqlstr = "Select po_id As po_id, Isnull(InquiryNo,0) As InquiryNo, Isnull(customerName,'') As customerName, "
                + " Isnull(QuotationNo,'') As QuotationNo, Isnull(CustomerPONo,'') As CustomerPONo,Isnull(POValidity,'') As POValidity,  "
                + " CreatedBy, CreatedDate, Isnull(QuotationId,0) as QuotationId,Isnull(Filepath,'') As Filepath From ssmtbl_PurchaseOrder Where InquiryNo In (Select InquiryNo  "
                + " From ssmtbl_Inquiry where Status=@Status) and Isnull(POStatus,'') = @Status order by createddate desc";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@Status", InquiryStatus.POPendingForApproval);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_PurchaseOrderModel objtemp = new ssmtbl_PurchaseOrderModel();
                    objtemp.po_id = Convert.ToInt32(sdr["po_id"].ToString());
                    objtemp.InquiryNo = Convert.ToInt32(sdr["InquiryNo"].ToString());
                    objtemp.QuotationId = Convert.ToInt32(sdr["QuotationId"].ToString());
                    objtemp.customerName = sdr["customerName"].ToString();
                    objtemp.QuotationNo = sdr["QuotationNo"].ToString();
                    objtemp.CustomerPONo = sdr["CustomerPONo"].ToString();
                    objtemp.POValidity = Convert.ToDateTime(sdr["POValidity"].ToString());
                    objtemp.createdby = sdr["CreatedBy"].ToString();
                    objtemp.createddate = Convert.ToDateTime(sdr["CreatedDate"].ToString());
                    objtemp.Filepath = sdr["Filepath"].ToString();
                    objPOList.Add(objtemp);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objPOList;
        }


        #endregion



        #region Get One Purchase Order 

        public ssmtbl_PurchaseOrderModel GetOnePurchaseOrder(string po_id)
        {
            ssmtbl_PurchaseOrderModel objPO = new ssmtbl_PurchaseOrderModel();
            try
            {
                string sqlstr = "Select isnull(po_id,0) As po_id, Isnull(InquiryNo,0) As InquiryNo, Isnull(customerName,'') As customerName, "
                + " Isnull(QuotationNo,'') As QuotationNo, Isnull(CustomerPONo,'') As CustomerPONo, Isnull(POValidity,'') As POValidity, "
                + " Isnull(QtymentionedinPO,'') As QtymentionedinPO, Isnull(DieNumber,'') As DieNumber, Isnull(HSNCode,'') As HSNCode,"
                + " Isnull(SteelCost,0) As SteelCost, Isnull(Transportation,0) As Transportation, Isnull(Total,0) As Total,"
                + " Isnull(TotalRowMaterialCost,0) As TotalRowMaterialCost, Isnull(CuttingSquare1,0) As CuttingSquare1,"
                + " Isnull(CuttingSquare2,0) As CuttingSquare2, Isnull(Forging1,0) As Forging1, Isnull(Forging2,0) As Forging2,"
                + " Isnull(HeatTreatment1,0) As HeatTreatment1, Isnull(HeatTreatment2,0) As HeatTreatment2, Isnull(ShotBlasting1,0) As ShotBlasting1,"
                + " Isnull(ShotBlasting2,0) As ShotBlasting2, Isnull(MPI1,0) As MPI1, Isnull(MPI2,0) As MPI2, Isnull(Grinding1,0) As Grinding1,"
                + " Isnull(Grinding2,0) As Grinding2, Isnull(ColdCoining1,0) As ColdCoining1, Isnull(ColdCoining2,0) As ColdCoining2,"
                + " Isnull(Machining1,0) As Machining1, Isnull(Machining2,0) As Machining2, Isnull(DieMaintenance1,0) As DieMaintenance1,"
                + " Isnull(DieMaintenance2,0) As DieMaintenance2, Isnull(TotalConverstionCost,0) As TotalConverstionCost, Isnull(TotalComponentCost,0) As TotalComponentCost,"
                + " Isnull(InitialDieCost,0) As InitialDieCost, Isnull(Filepath,'') As Filepath, Isnull(CGST,0) As CGST,"
                + " Isnull(IGST,0) As IGST, Isnull(SGST,0) As SGST, Isnull(createdby,'') As createdby, Isnull(createddate,'') As createddate,"
                + " Isnull(POQty_Open,0) As POQty_Open, Isnull(SameasQuotation,0) As SameasQuotation,"
                + " Isnull(updatedby,'') As updatedby, Isnull(updateddate,'') As updateddate From ssmtbl_PurchaseOrder"
                + " where po_id=@po_id";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@po_id", po_id);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objPO.po_id = Convert.ToInt32(sdr["po_id"].ToString());
                    objPO.InquiryNo = Convert.ToInt32(sdr["InquiryNo"].ToString());
                    objPO.customerName = sdr["customerName"].ToString();
                    objPO.QuotationNo = sdr["QuotationNo"].ToString();
                    objPO.CustomerPONo = sdr["CustomerPONo"].ToString();
                    objPO.POValidity = Convert.ToDateTime(sdr["POValidity"].ToString());
                    objPO.QtymentionedinPO = sdr["QtymentionedinPO"].ToString();
                    objPO.DieNumber = sdr["DieNumber"].ToString();
                    objPO.HSNCode = sdr["HSNCode"].ToString();
                    objPO.SteelCost = Convert.ToDecimal(sdr["SteelCost"].ToString());
                    objPO.Transportation = Convert.ToDecimal(sdr["Transportation"].ToString());
                    objPO.Total = Convert.ToDecimal(sdr["Total"].ToString());
                    objPO.TotalRowMaterialCost = Convert.ToDecimal(sdr["TotalRowMaterialCost"].ToString());
                    objPO.CuttingSquare1 = Convert.ToDecimal(sdr["CuttingSquare1"].ToString());
                    objPO.CuttingSquare2 = Convert.ToDecimal(sdr["CuttingSquare2"].ToString());
                    objPO.Forging1 = Convert.ToDecimal(sdr["Forging1"].ToString());
                    objPO.Forging2 = Convert.ToDecimal(sdr["Forging2"].ToString());
                    objPO.HeatTreatment1 = Convert.ToDecimal(sdr["HeatTreatment1"].ToString());
                    objPO.HeatTreatment2 = Convert.ToDecimal(sdr["HeatTreatment2"].ToString());
                    objPO.ShotBlasting1 = Convert.ToDecimal(sdr["ShotBlasting1"].ToString());
                    objPO.ShotBlasting2 = Convert.ToDecimal(sdr["ShotBlasting2"].ToString());
                    objPO.MPI1 = Convert.ToDecimal(sdr["MPI1"].ToString());
                    objPO.MPI2 = Convert.ToDecimal(sdr["MPI2"].ToString());
                    objPO.Grinding1 = Convert.ToDecimal(sdr["Grinding1"].ToString());
                    objPO.Grinding2 = Convert.ToDecimal(sdr["Grinding2"].ToString());
                    objPO.ColdCoining1 = Convert.ToDecimal(sdr["ColdCoining1"].ToString());
                    objPO.ColdCoining2 = Convert.ToDecimal(sdr["ColdCoining2"].ToString());
                    objPO.Machining1 = Convert.ToDecimal(sdr["Machining1"].ToString());
                    objPO.Machining2 = Convert.ToDecimal(sdr["Machining2"].ToString());
                    objPO.DieMaintenance1 = Convert.ToDecimal(sdr["DieMaintenance1"].ToString());
                    objPO.DieMaintenance2 = Convert.ToDecimal(sdr["DieMaintenance2"].ToString());
                    objPO.TotalConverstionCost = Convert.ToDecimal(sdr["TotalConverstionCost"].ToString());
                    objPO.TotalComponentCost = Convert.ToDecimal(sdr["TotalComponentCost"].ToString());
                    objPO.InitialDieCost = Convert.ToDecimal(sdr["InitialDieCost"].ToString());
                    objPO.Filepath = sdr["Filepath"].ToString();
                    objPO.CGST = Convert.ToDecimal(sdr["CGST"].ToString());
                    objPO.IGST = Convert.ToDecimal(sdr["IGST"].ToString());
                    objPO.SGST = Convert.ToDecimal(sdr["SGST"].ToString());

                    objPO.CustomerPONo = sdr["CustomerPONo"].ToString();
                    objPO.CustomerPONo = sdr["CustomerPONo"].ToString();


                    objPO.createdby = sdr["CreatedBy"].ToString();
                    objPO.createddate = Convert.ToDateTime(sdr["CreatedDate"].ToString());
                    objPO.POQty_Open = Convert.ToBoolean(sdr["POQty_Open"].ToString());
                    objPO.sameasquotation = Convert.ToBoolean(sdr["SameasQuotation"].ToString());
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objPO;
        }


        #endregion



        #region Approve Purchase Order

        public string ApprovePurchaseOrder(string PO_Id, string InquiryNo, string ApprovedBy, string Comment)
        {
            string result = "Error Approving Purchase Orbder";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Approve_PurchaseOrder";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@InquiryNo", InquiryNo);
                cmd.Parameters.AddWithValue("@Filestatus", InquiryStatus.POApproved);
                cmd.Parameters.AddWithValue("@ApprovedBy", ApprovedBy);
                cmd.Parameters.AddWithValue("@Comment", Comment);
                cmd.Parameters.AddWithValue("@po_id", Convert.ToInt32(PO_Id));
                cmd.Parameters.AddWithValue("@ApprovalDate", StandardDateTime.GetDateTime());
                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Purchase Order Approved Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }

        #endregion



        #region Reject Purchase Order

        public string RejectPurchaseOrder(string PO_Id, string InquiryNo, string ApprovedBy, string Comment)
        {
            string result = "Error Rejecting Purchase Orbder";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Reject_PurchaseOrder";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@InquiryNo", InquiryNo);
                cmd.Parameters.AddWithValue("@Filestatus", InquiryStatus.PORejected);
                cmd.Parameters.AddWithValue("@ApprovedBy", ApprovedBy);
                cmd.Parameters.AddWithValue("@Comment", Comment);
                cmd.Parameters.AddWithValue("@ApprovalDate", StandardDateTime.GetDateTime());
                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Purchase Order Rejected Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }

        #endregion


    }
}