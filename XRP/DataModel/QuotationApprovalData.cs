using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using XRP.Global;
using XRP.Models;

namespace XRP.DataModel
{
    public class QuotationApprovalData
    {

        #region Get All Quotation For Approval

        public List<ssmtbl_QuotationModel> GetAllQuotationForApproval()
        {
            List<ssmtbl_QuotationModel> objQuotList = new List<ssmtbl_QuotationModel>();
            try
            {
                //string sqlstr = "Select id, Isnull(Q.InquiryNo,0) As InquiryNo, Isnull(QuotationNo,0) As QuotationNo, Isnull(VersionNo,'') As VersionNo, "
                //    + " Isnull(CreatedOn,'') As CreatedOn, Isnull(Q.CreatedBy,'') As CreatedBy, Isnull(Q.customerName,'') As customerName  "
                //    + " From dbo.ssmtbl_Quotation Q, ssmtbl_Inquiry I where Q.InquiryNo=I.InquiryNo And ISNULL(Filestatus,'')=''";

                string sqlstr = " Select id, Isnull(Q.InquiryNo,0) As InquiryNo, Isnull(QuotationNo,0) As QuotationNo, Isnull(VersionNo,'') As VersionNo, "
                    + " Isnull(CreatedOn,'') As CreatedOn, Isnull(Q.CreatedBy,'') As CreatedBy, Isnull(Q.customerName,'') As customerName, Isnull(new_Version_No,0) As new_Version_No   "
                    + " From dbo.ssmtbl_Quotation Q, ssmtbl_Inquiry I where Q.InquiryNo=I.InquiryNo And ISNULL(Filestatus,'')=@Filestatus"
                    + " and ID in (Select MAX(id) From ssmtbl_Quotation group by QuotationNo )  order by Q.CreatedOn desc";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@Filestatus", InquiryStatus.QuotationPendingForApproval);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_QuotationModel objtemp = new ssmtbl_QuotationModel();
                    objtemp.id = Convert.ToInt32(sdr["id"].ToString());
                    objtemp.InquiryNo = Convert.ToInt32(sdr["InquiryNo"].ToString());
                    objtemp.QuotationNo = sdr["QuotationNo"].ToString();
                    objtemp.VersionNo = sdr["VersionNo"].ToString();
                    objtemp.CreatedOn = Convert.ToDateTime(sdr["CreatedOn"].ToString());
                    objtemp.Createdby = sdr["CreatedBy"].ToString();
                    objtemp.CustomerName = sdr["customerName"].ToString();
                    objtemp.new_Version_No = Convert.ToInt32(sdr["new_Version_No"].ToString());
                    objQuotList.Add(objtemp);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objQuotList;
        }


        #endregion


        #region Approve Quotation

        public string ApproveQuotation(string QuotationNo, string Comment, string VersionNo, string ApprovedBy, string InquiryNo)
        {
            string result = "Error Approving Quotation";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Approve_Quotation";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "Approve Quotation");
                cmd.Parameters.AddWithValue("@QuotationNo", QuotationNo);
                cmd.Parameters.AddWithValue("@InquiryNo", InquiryNo);
                cmd.Parameters.AddWithValue("@VersionNo", VersionNo);
                cmd.Parameters.AddWithValue("@Filestatus", InquiryStatus.QuotationApproved);
                cmd.Parameters.AddWithValue("@ApprovedBy", ApprovedBy);
                cmd.Parameters.AddWithValue("@Comment", Comment);
                cmd.Parameters.AddWithValue("@ApprovalDate", StandardDateTime.GetDateTime());
                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Quotation Approved Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }

        #endregion

        #region Conditional Approve Quotation

        public string ApproveConditionalQuotation(string QuotationNo, string Comment, string VersionNo, string ApprovedBy, string InquiryNo)
        {
            string result = "Error Approving Quotation";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Approve_Quotation";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "Conditional Quotation Approved");
                cmd.Parameters.AddWithValue("@QuotationNo", QuotationNo);
                cmd.Parameters.AddWithValue("@InquiryNo", InquiryNo);
                cmd.Parameters.AddWithValue("@VersionNo", VersionNo);
                cmd.Parameters.AddWithValue("@Filestatus", InquiryStatus.ConditionalQuotationApproved);
                cmd.Parameters.AddWithValue("@ApprovedBy", ApprovedBy);
                cmd.Parameters.AddWithValue("@Comment", Comment);
                cmd.Parameters.AddWithValue("@ApprovalDate", StandardDateTime.GetDateTime());
                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Quotation Approved Conditionally!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }

        #endregion


        #region Reject Quotation

        public string RejectQuotation(string QuotationNo, string Comment, string VersionNo, string CreatedBy, string InquiryNo)
        {
            string result = "Error Rejecting Quotation";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Reject_Quotation";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@QuotationNo", QuotationNo);
                cmd.Parameters.AddWithValue("@InquiryNo", InquiryNo);
                cmd.Parameters.AddWithValue("@VersionNo", VersionNo);
                cmd.Parameters.AddWithValue("@CreatedBy", CreatedBy);
                cmd.Parameters.AddWithValue("@CreatedDate", StandardDateTime.GetDateTime());
                cmd.Parameters.AddWithValue("@Comment", Comment);
                cmd.Parameters.AddWithValue("@FileStatus", InquiryStatus.QuotationRejected);
                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Quotation Rejected Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }

        #endregion


        #region Get All Version Of One Quotation

        public List<ssmtbl_QuotationModel> GetAllVersionOfOneQuotation(string QuotationNo)
        {
            List<ssmtbl_QuotationModel> objQuotList = new List<ssmtbl_QuotationModel>();
            try
            {
                string sqlstr = " Select id, Isnull(Q.InquiryNo,0) As InquiryNo, Isnull(QuotationNo,0) As QuotationNo, Isnull(VersionNo,'') As VersionNo, "
                    + " Isnull(CreatedOn,'') As CreatedOn, Isnull(Q.CreatedBy,'') As CreatedBy, Isnull(Q.customerName,'') As customerName ,  "
                    + " Isnull(FileStatus,'') as FileStatus, Isnull(new_Version_No,0) As new_Version_No From dbo.ssmtbl_Quotation Q where Isnull(QuotationNo,0)=@QuotationNo";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@QuotationNo", QuotationNo);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_QuotationModel objtemp = new ssmtbl_QuotationModel();
                    objtemp.id = Convert.ToInt32(sdr["id"].ToString());
                    objtemp.InquiryNo = Convert.ToInt32(sdr["InquiryNo"].ToString());
                    objtemp.QuotationNo = sdr["QuotationNo"].ToString();
                    objtemp.VersionNo = sdr["VersionNo"].ToString();
                    objtemp.CreatedOn = Convert.ToDateTime(sdr["CreatedOn"].ToString());
                    objtemp.Createdby = sdr["CreatedBy"].ToString();
                    objtemp.CustomerName = sdr["customerName"].ToString();
                    objtemp.FileStatus = sdr["FileStatus"].ToString();
                    objtemp.new_Version_No = Convert.ToInt32(sdr["new_Version_No"].ToString());
                    objQuotList.Add(objtemp);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objQuotList;
        }


        #endregion


        #region Get One Quotation

        public ssmtbl_QuotationModel GetOneQuotationForApproval(string QuotationId)
        {
            ssmtbl_QuotationModel objQuot = new ssmtbl_QuotationModel();
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspGetOneQuotationForApproval";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure; 
                     cmd.Parameters.AddWithValue("@Action", "GetOneQuotationForApproval");
                cmd.Parameters.AddWithValue("@QuotationId", QuotationId);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objQuot.id = Convert.ToInt32(sdr["id"].ToString());
                    objQuot.InquiryNo = Convert.ToInt32(sdr["InquiryNo"].ToString());
                    objQuot.QuotationNo = sdr["QuotationNo"].ToString();
                    objQuot.CustomerName = sdr["CustomerName"].ToString();
                    objQuot.PartDescription = sdr["PartDescription"].ToString();
                    objQuot.PartNo = sdr["PartNo"].ToString();
                    objQuot.HeatTreatmentText = sdr["HeatTreatment"].ToString();
                    objQuot.Material = sdr["Material"].ToString();
                    objQuot.VersionNo = sdr["VersionNo"].ToString();
                    objQuot.Section = sdr["Section"].ToString();
                    objQuot.MachainedWeight = sdr["MachainedWeight"].ToString();
                    objQuot.GrossWeight = Convert.ToDecimal(sdr["GrossWeight"].ToString());
                    objQuot.CutWeight = Convert.ToDecimal(sdr["CutWeight"].ToString());
                    objQuot.NetWeight = Convert.ToDecimal(sdr["NetWeight"].ToString());
                    objQuot.ForgingCostBased = sdr["ForgingCostBased"].ToString();
                    objQuot.MPICostBasedOn = sdr["MPICostBasedOn"].ToString();
                    objQuot.SteelCost = Convert.ToDecimal(sdr["SteelCost"].ToString());
                    objQuot.Transportation = Convert.ToDecimal(sdr["Transportation"].ToString());
                    objQuot.Total = Convert.ToDecimal(sdr["Total"].ToString());
                    objQuot.TotalRowMaterialCost = Convert.ToDecimal(sdr["TotalRowMaterialCost"].ToString());
                    objQuot.CuttingSquare1 = (sdr["CuttingSquare1"].ToString());
                    objQuot.CuttingSquare2 = (sdr["CuttingSquare2"].ToString());
                    objQuot.Forging1 = (sdr["Forging1"].ToString());
                    objQuot.Forging2 = (sdr["Forging2"].ToString());
                    objQuot.HeatTreatment1 = (sdr["HeatTreatment1"].ToString());
                    objQuot.HeatTreatment2 = (sdr["HeatTreatment2"].ToString());
                    objQuot.ShotBlasting1 = (sdr["ShotBlasting1"].ToString());
                    objQuot.ShotBlasting2 =(sdr["ShotBlasting2"].ToString());
                    objQuot.MPI1 =(sdr["MPI1"].ToString());
                    objQuot.MPI2 = (sdr["MPI2"].ToString());
                    objQuot.Grinding1 = (sdr["Grinding1"].ToString());
                    objQuot.Grinding2 = (sdr["Grinding2"].ToString());
                    objQuot.ColdCoining1 = (sdr["ColdCoining1"].ToString());
                    objQuot.ColdCoining2 = (sdr["ColdCoining2"].ToString());
                    objQuot.Machining1 = (sdr["Machining1"].ToString());
                    objQuot.Machining2 = (sdr["Machining2"].ToString());
                    objQuot.DieMaintenance1 =(sdr["DieMaintenance1"].ToString());
                    objQuot.DieMaintenance2 =(sdr["DieMaintenance2"].ToString());
                    objQuot.TotalConverstionCost = Convert.ToDecimal(sdr["TotalConverstionCost"].ToString());
                    objQuot.TotalComponentCost = Convert.ToDecimal(sdr["TotalComponentCost"].ToString());
                    objQuot.InitialDieCost = Convert.ToDecimal(sdr["InitialDieCost"].ToString());
                    objQuot.PoNo = sdr["PoNo"].ToString();
                    objQuot.FileStatus = sdr["FileStatus"].ToString();
                    objQuot.Comment = sdr["Comment"].ToString();
                    objQuot.ApprovalDate = Convert.ToDateTime(sdr["ApprovalDate"].ToString());
                    objQuot.ApprovedBy = sdr["ApprovedBy"].ToString();
                    objQuot.CreatedOn = Convert.ToDateTime(sdr["CreatedOn"].ToString());
                    objQuot.Createdby = sdr["Createdby"].ToString();
                    objQuot.UpdatedOn = Convert.ToDateTime(sdr["UpdatedOn"].ToString());
                    objQuot.UpdatedBy = sdr["UpdatedBy"].ToString();
                    objQuot.VersionNo = sdr["VersionNo"].ToString();
                    objQuot.new_Version_No = Convert.ToInt32(sdr["new_Version_No"].ToString());
                    objQuot.UserComment = sdr["UserComment"].ToString();
                    objQuot.hardnessmin = sdr["hardnessmin"].ToString();
                    objQuot.hardnessmax = sdr["hardnessmax"].ToString();
                    objQuot.hardnessunits = sdr["hardnessunits"].ToString();
                    objQuot.address = sdr["address"].ToString();
                    objQuot.iccoverhadrm = sdr["Iccoverhead"].ToString();
                       // sdr["Iccoverhead"] as decimal? ?? default(decimal);

                    objQuot.totaliccoverhadrm = sdr["Iccoverheadtotal"].ToString();
                    //Convert.ToDecimal(sdr["Iccoverheadtotal"].ToString());
                    objQuot.profitonconversion = sdr["Profitconversion"].ToString();
                    //Convert.ToDecimal(sdr["Profitconversion"].ToString());
                    objQuot.totalprofitonconversion = sdr["TotalProfitconversion"].ToString();
                    //Convert.ToDecimal(sdr["TotalProfitconversion"].ToString());
                    objQuot.rejection = sdr["Rejection"].ToString();
                    //Convert.ToDecimal(sdr["Rejection"].ToString());
                    objQuot.totalrejection = sdr["TotalRejection"].ToString();
                    //Convert.ToDecimal(sdr["TotalRejection"].ToString());
                    objQuot.packingtransport = sdr["Packing"].ToString();
                    //Convert.ToDecimal(sdr["Packing"].ToString());
                    objQuot.totalpackingtransport =  sdr["TotalPacking"].ToString();
                    //Convert.ToDecimal(sdr["TotalPacking"].ToString());
                    objQuot.totallycost = sdr["TotallyCost"].ToString();
                    
                }
                sdr.Close();

                List<ssmtbl_TermsNCondtionModel> objTCList = new List<ssmtbl_TermsNCondtionModel>();
                sqlstr = "Select id, Isnull(QuotationID,0) As QuotationID, Isnull(TermsNConditionID,0) As TermsNConditionID, "
                    + " Isnull(TermsNConditionContent,'') As TermsNConditionContent From ssmtbl_TermsNCondtion where QuotationID=@id and flag = 1";  // Sharad
                // + " Isnull(TermsNConditionContent,'') As TermsNConditionContent From ssmtbl_TermsNCondtion where id=@id"; // Sharad
                cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@id", objQuot.id);
                sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_TermsNCondtionModel tempobj = new ssmtbl_TermsNCondtionModel();
                    tempobj.id = Convert.ToInt32(sdr["id"].ToString());
                    tempobj.QuotationID = Convert.ToInt32(sdr["QuotationID"].ToString());
                    tempobj.TermsNConditionID = Convert.ToInt32(sdr["TermsNConditionID"].ToString());
                    tempobj.TermsNConditionContent = sdr["TermsNConditionContent"].ToString();
                    objTCList.Add(tempobj);
                }
                objQuot.ssmtbl_TermsNCondtionModel = objTCList; // Sharad
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return objQuot;
        }


        #endregion


    }
}