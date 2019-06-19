using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using XRP.Global;
using XRP.Models;

namespace XRP.DataModel
{
    public class PurchaseOrderData
    {

        #region Insert Purchase Order

        public string InsertPurchaseOrder(ssmtbl_Quotation_PoModel objPOMod)
        {
            string result = "Error Creating Purchase Order";
            try
            {
                if(objPOMod.ssmtbl_PurchaseOrderModel.Filepath == null)
                {
                    objPOMod.ssmtbl_PurchaseOrderModel.Filepath = "";
                }
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Insert_PurchaseOrder";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@InquiryNo", objPOMod.ssmtbl_QuotationModel.InquiryNo);
                cmd.Parameters.AddWithValue("@customerName", objPOMod.ssmtbl_QuotationModel.CustomerName.Trim());
                cmd.Parameters.AddWithValue("@QuotationNo", objPOMod.ssmtbl_QuotationModel.QuotationNo.Trim());
                cmd.Parameters.AddWithValue("@QuotationId", objPOMod.ssmtbl_QuotationModel.id);
                cmd.Parameters.AddWithValue("@CustomerPONo", objPOMod.ssmtbl_PurchaseOrderModel.CustomerPONo.Trim());
                cmd.Parameters.AddWithValue("@POValidity", StandardDateTime.GetDateTime());
                cmd.Parameters.AddWithValue("@QtymentionedinPO", objPOMod.ssmtbl_PurchaseOrderModel.QtymentionedinPO.Trim());
                cmd.Parameters.AddWithValue("@DieNumber", objPOMod.ssmtbl_PurchaseOrderModel.DieNumber.Trim());
                cmd.Parameters.AddWithValue("@HSNCode", "");
                cmd.Parameters.AddWithValue("@SteelCost", objPOMod.ssmtbl_PurchaseOrderModel.SteelCost);
                cmd.Parameters.AddWithValue("@Transportation", objPOMod.ssmtbl_PurchaseOrderModel.Transportation);
                cmd.Parameters.AddWithValue("@Total", objPOMod.ssmtbl_PurchaseOrderModel.Total);
                cmd.Parameters.AddWithValue("@TotalRowMaterialCost", objPOMod.ssmtbl_PurchaseOrderModel.TotalRowMaterialCost);
                cmd.Parameters.AddWithValue("@CuttingSquare1", objPOMod.ssmtbl_PurchaseOrderModel.CuttingSquare1);
                cmd.Parameters.AddWithValue("@CuttingSquare2", objPOMod.ssmtbl_PurchaseOrderModel.CuttingSquare2);
                cmd.Parameters.AddWithValue("@Forging1", objPOMod.ssmtbl_PurchaseOrderModel.Forging1);
                cmd.Parameters.AddWithValue("@Forging2", objPOMod.ssmtbl_PurchaseOrderModel.Forging2);
                cmd.Parameters.AddWithValue("@HeatTreatment1", objPOMod.ssmtbl_PurchaseOrderModel.HeatTreatment1);
                cmd.Parameters.AddWithValue("@HeatTreatment2", objPOMod.ssmtbl_PurchaseOrderModel.HeatTreatment2);
                cmd.Parameters.AddWithValue("@ShotBlasting1", objPOMod.ssmtbl_PurchaseOrderModel.ShotBlasting1);
                cmd.Parameters.AddWithValue("@ShotBlasting2", objPOMod.ssmtbl_PurchaseOrderModel.ShotBlasting2);
                cmd.Parameters.AddWithValue("@MPI1", objPOMod.ssmtbl_PurchaseOrderModel.MPI1);
                cmd.Parameters.AddWithValue("@MPI2", objPOMod.ssmtbl_PurchaseOrderModel.MPI2);
                cmd.Parameters.AddWithValue("@Grinding1", objPOMod.ssmtbl_PurchaseOrderModel.Grinding1);
                cmd.Parameters.AddWithValue("@Grinding2", objPOMod.ssmtbl_PurchaseOrderModel.Grinding2);
                cmd.Parameters.AddWithValue("@ColdCoining1", objPOMod.ssmtbl_PurchaseOrderModel.ColdCoining1);
                cmd.Parameters.AddWithValue("@ColdCoining2", objPOMod.ssmtbl_PurchaseOrderModel.ColdCoining2);
                cmd.Parameters.AddWithValue("@Machining1", objPOMod.ssmtbl_PurchaseOrderModel.Machining1);
                cmd.Parameters.AddWithValue("@Machining2", objPOMod.ssmtbl_PurchaseOrderModel.Machining2);
                cmd.Parameters.AddWithValue("@DieMaintenance1", objPOMod.ssmtbl_PurchaseOrderModel.DieMaintenance1);
                cmd.Parameters.AddWithValue("@DieMaintenance2", objPOMod.ssmtbl_PurchaseOrderModel.DieMaintenance2);
                cmd.Parameters.AddWithValue("@TotalConverstionCost", objPOMod.ssmtbl_PurchaseOrderModel.TotalConverstionCost);
                cmd.Parameters.AddWithValue("@TotalComponentCost", objPOMod.ssmtbl_PurchaseOrderModel.TotalComponentCost);
                cmd.Parameters.AddWithValue("@InitialDieCost", objPOMod.ssmtbl_PurchaseOrderModel.InitialDieCost);
                cmd.Parameters.AddWithValue("@Filepath", objPOMod.ssmtbl_PurchaseOrderModel.Filepath);
                cmd.Parameters.AddWithValue("@Status", InquiryStatus.POPendingForApproval);
                cmd.Parameters.AddWithValue("@CGST", objPOMod.ssmtbl_PurchaseOrderModel.CGST);
                cmd.Parameters.AddWithValue("@IGST", objPOMod.ssmtbl_PurchaseOrderModel.IGST);
                cmd.Parameters.AddWithValue("@SGST", objPOMod.ssmtbl_PurchaseOrderModel.SGST);
                cmd.Parameters.AddWithValue("@createdby", "Test");
                //cmd.Parameters.AddWithValue("@createdby", Session["UserId"].ToString());
              
                cmd.Parameters.AddWithValue("@POQty_Open", objPOMod.ssmtbl_PurchaseOrderModel.POQty_Open);
                cmd.Parameters.AddWithValue("@saq", objPOMod.ssmtbl_PurchaseOrderModel.sameasquotation);
                cmd.Parameters.AddWithValue("@createddate", StandardDateTime.GetDateTime());
                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Purchase Order Created Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }



        #endregion
        public int GetPendingPOs()
        {
            int count = 0;
            try
            {

                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspGetQuotationCount";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "GetPOCount");
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

        #region Get One Purchase Order

        public ssmtbl_PurchaseOrderModel GetOnePurchaseOrder(string InquiryNo)
        {
            ssmtbl_PurchaseOrderModel objPO = new ssmtbl_PurchaseOrderModel();
            try
            {
                
                string sqlstr = "Select po_id, InquiryNo, Isnull(customerName,'') As customerName, Isnull(QuotationNo,'') As QuotationNo, ISNULL(CustomerPONo,'') As CustomerPONo,"
                + " Isnull(POValidity,'') As POValidity, Isnull(QtymentionedinPO,'') As QtymentionedinPO, Isnull(DieNumber,'') As DieNumber,"
                + " Isnull(HSNCode,'') As HSNCode, Isnull(SteelCost,0) As SteelCost,Isnull(Transportation,0) As Transportation, ISNULL(Total,0) As Total,"
                + " Isnull(TotalRowMaterialCost,0) As TotalRowMaterialCost, Isnull(CuttingSquare1,0) As CuttingSquare1,Isnull(CuttingSquare2,0) As CuttingSquare2,"
                + " Isnull(Forging1,0) As Forging1, Isnull(Forging2,0) As Forging2, Isnull(HeatTreatment1,0) As HeatTreatment1, Isnull(HeatTreatment2,0) As HeatTreatment2,"
                + " Isnull(ShotBlasting1,0) As ShotBlasting1, Isnull(ShotBlasting2,0) As ShotBlasting2, Isnull(MPI1,0) As MPI1, Isnull(MPI2,0) As MPI2,"
                + " Isnull(Grinding1,0) As Grinding1, Isnull(Grinding2,0) As Grinding2, Isnull(ColdCoining1,0) As ColdCoining1,Isnull(ColdCoining2,0) As ColdCoining2,"
                + " Isnull(Machining1,0) As Machining1, Isnull(Machining2,0) As Machining2, Isnull(DieMaintenance1,0) As DieMaintenance1,Isnull(DieMaintenance2,0) As DieMaintenance2,"
                + " Isnull(TotalConverstionCost,0) As TotalConverstionCost, Isnull(TotalComponentCost,0) As TotalComponentCost,Isnull(InitialDieCost,0) As InitialDieCost,"
                + " Isnull(Filepath,'') As Filepath,Isnull(CGST,0) As CGST, Isnull(IGST,0) As IGST,Isnull(SGST,0) As SGST,Isnull(createdby,'') As createdby,"
                + " Isnull(createddate,'') As createddate, Isnull(updatedby,'') As updatedby, Isnull(updateddate,'') As updateddate, "
                + " Isnull(QuotationId,0) As QuotationId, Isnull(POStatus,'') As POStatus, Isnull(Comment,'') As Comment, Isnull(ApprovalDate,'') As ApprovalDate, "
                + " Isnull(SameasQuotation,0) As SameasQuotation, Isnull(SameasQuotation,'') As SameasQuotation,"
                + " Isnull(POQty_Open,0) As POQty_Open, Isnull(POQty_Open,'') As POQty_Open,"
                + " Isnull(ApprovedBy,'') As ApprovedBy From ssmtbl_PurchaseOrder Where InquiryNo=@InquiryNo";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@InquiryNo", InquiryNo);
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
                    objPO.createdby = sdr["createdby"].ToString();
                    objPO.createddate = Convert.ToDateTime(sdr["createddate"].ToString());
                    objPO.updatedby = sdr["updatedby"].ToString();
                    objPO.updateddate = Convert.ToDateTime(sdr["updateddate"].ToString());
                    objPO.QuotationId = Convert.ToInt32(sdr["QuotationId"].ToString());
                    objPO.Comment = sdr["Comment"].ToString();
                    objPO.ApprovalDate = Convert.ToDateTime(sdr["ApprovalDate"].ToString());
                    objPO.ApprovedBy = sdr["ApprovedBy"].ToString();
                    objPO.sameasquotation = Convert.ToBoolean(sdr["SameasQuotation"]);
                    objPO.POQty_Open = Convert.ToBoolean(sdr["POQty_Open"]);
                    

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




        #region Get One Purchase Order From PO No

        public ssmtbl_PurchaseOrderModel GetOnePurchaseOrderFromPONo(string PONo)
        {
            ssmtbl_PurchaseOrderModel objPO = new ssmtbl_PurchaseOrderModel();
            try
            {

                string sqlstr = "Select po_id, InquiryNo, Isnull(customerName,'') As customerName, Isnull(QuotationNo,'') As QuotationNo, ISNULL(CustomerPONo,'') As CustomerPONo,"
                + " Isnull(POValidity,'') As POValidity, Isnull(QtymentionedinPO,'') As QtymentionedinPO, Isnull(DieNumber,'') As DieNumber,"
                + " Isnull(HSNCode,'') As HSNCode, Isnull(SteelCost,0) As SteelCost,Isnull(Transportation,0) As Transportation, ISNULL(Total,0) As Total,"
                + " Isnull(TotalRowMaterialCost,0) As TotalRowMaterialCost, Isnull(CuttingSquare1,0) As CuttingSquare1,Isnull(CuttingSquare2,0) As CuttingSquare2,"
                + " Isnull(Forging1,0) As Forging1, Isnull(Forging2,0) As Forging2, Isnull(HeatTreatment1,0) As HeatTreatment1, Isnull(HeatTreatment2,0) As HeatTreatment2,"
                + " Isnull(ShotBlasting1,0) As ShotBlasting1, Isnull(ShotBlasting2,0) As ShotBlasting2, Isnull(MPI1,0) As MPI1, Isnull(MPI2,0) As MPI2,"
                + " Isnull(Grinding1,0) As Grinding1, Isnull(Grinding2,0) As Grinding2, Isnull(ColdCoining1,0) As ColdCoining1,Isnull(ColdCoining2,0) As ColdCoining2,"
                + " Isnull(Machining1,0) As Machining1, Isnull(Machining2,0) As Machining2, Isnull(DieMaintenance1,0) As DieMaintenance1,Isnull(DieMaintenance2,0) As DieMaintenance2,"
                + " Isnull(TotalConverstionCost,0) As TotalConverstionCost, Isnull(TotalComponentCost,0) As TotalComponentCost,Isnull(InitialDieCost,0) As InitialDieCost,"
                + " Isnull(Filepath,'') As Filepath,Isnull(CGST,0) As CGST, Isnull(IGST,0) As IGST,Isnull(SGST,0) As SGST,Isnull(createdby,'') As createdby,"
                + " Isnull(createddate,'') As createddate, Isnull(updatedby,'') As updatedby, Isnull(updateddate,'') As updateddate, "
                + " Isnull(QuotationId,0) As QuotationId, Isnull(POStatus,'') As POStatus, Isnull(Comment,'') As Comment, Isnull(ApprovalDate,'') As ApprovalDate, "
                + " Isnull(ApprovedBy,'') As ApprovedBy From ssmtbl_PurchaseOrder Where CustomerPONo=@CustomerPONo and Isnull(POStatus,'')=@POStatus";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@CustomerPONo", PONo);
                cmd.Parameters.AddWithValue("@POStatus", InquiryStatus.POApproved);
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
                    objPO.createdby = sdr["createdby"].ToString();
                    objPO.createddate = Convert.ToDateTime(sdr["createddate"].ToString());
                    objPO.updatedby = sdr["updatedby"].ToString();
                    objPO.updateddate = Convert.ToDateTime(sdr["updateddate"].ToString());
                    objPO.QuotationId = Convert.ToInt32(sdr["QuotationId"].ToString());
                    objPO.Comment = sdr["Comment"].ToString();
                    objPO.ApprovalDate = Convert.ToDateTime(sdr["ApprovalDate"].ToString());
                    objPO.ApprovedBy = sdr["ApprovedBy"].ToString();
                    //objPO.POStatus = sdr["POStatus"].ToString();

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

    }
}