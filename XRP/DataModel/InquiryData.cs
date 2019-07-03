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
    public class InquiryData
    {

        #region Insert Inquiry

        public string InsertInquiry(ssmtbl_InquiryModel objInqMod)
        {
            string result = "Error Creating Inquiry";
            try
            {
                int dieid = 0;
                if (objInqMod.DieID==0)
                {
                    var connection1 = gConnection.Connection();
                   
                    string sqlstr1 = "InsertDieDescInInquiry";
                    SqlCommand cmd1 = new SqlCommand(sqlstr1, GlobalVariables.gConn);
                    cmd1.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd1.Parameters.AddWithValue("@Action", "InsertDieDescInInquiry");
                    cmd1.Parameters.AddWithValue("@DieNo", objInqMod.DieNumber);
                    cmd1.Parameters.AddWithValue("@customerName", objInqMod.customerName);
                  
                    cmd1.Parameters.AddWithValue("@PartName", objInqMod.PartName);

                    cmd1.Parameters.Add("@id", SqlDbType.Int).Direction = ParameterDirection.Output;
                    connection1.Open();
                    cmd1.ExecuteNonQuery();
                    string id = cmd1.Parameters["@id"].Value.ToString();
                    dieid = Convert.ToInt32(id);
                    connection1.Close();

                }
                else
                {
                    dieid = objInqMod.DieID;
                }
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Insert_Inquiry";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@InquiryNo", objInqMod.InquiryNo);
                cmd.Parameters.AddWithValue("@customerName", objInqMod.customerName);
                cmd.Parameters.AddWithValue("@InquiryDate", objInqMod.InquiryDate);
                cmd.Parameters.AddWithValue("@PartName", objInqMod.PartName);
                cmd.Parameters.AddWithValue("@PartNo", objInqMod.PartNo);
                cmd.Parameters.AddWithValue("@CustomerDrgNo", objInqMod.CustomerDrgNo);
                cmd.Parameters.AddWithValue("@FrequencyRepearOrder", objInqMod.FrequencyRepearOrder);
                cmd.Parameters.AddWithValue("@Qty", objInqMod.Qty);
                cmd.Parameters.AddWithValue("@Status", InquiryStatus.InquiryNew);
                //cmd.Parameters.AddWithValue("@createdby", "Test");
                cmd.Parameters.AddWithValue("@createdby", HttpContext.Current.Session["userid"].ToString());
                cmd.Parameters.AddWithValue("@createddate", StandardDateTime.GetDateTime());
                cmd.Parameters.AddWithValue("@hsncode", objInqMod.HSN);
                cmd.Parameters.AddWithValue("@dieid", dieid);
                cmd.Parameters.AddWithValue("@Remark", objInqMod.Remark);
                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Inquiry Created Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }

        #endregion
        #region Get Vendor Name Using Parameter Prefix
        public List<SelectListItem> getVendorname(string Prefix)
        {
            List<SelectListItem> objRowsList = new List<SelectListItem>();
            try
            {
                string sqlstr = "select distinct  isnull(t1.Name,'') as custname from ssmtbl_CustomerVendorMaster_Tb t1 where"
                    + " type='vendor' and t1.Name like @Prefix";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@Prefix", System.Data.SqlDbType.NVarChar).Value = "%" + Prefix + "%";
                SqlDataReader sdr = cmd.ExecuteReader();
                List<string> custName = new List<string>();
                while (sdr.Read())
                {
                    objRowsList.Add(new SelectListItem
                    {
                        Text = sdr["custname"].ToString(),
                        Value = sdr["custname"].ToString()
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
        public List<SelectListItem> getDiaDetails(string Prefix)
        {
            List<SelectListItem> objRowsList = new List<SelectListItem>();
            try
            {
                string sqlstr = "select * from DieDescription t1 where t1.DieNo like @Prefix";

                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@Prefix", System.Data.SqlDbType.NVarChar).Value = "%" + Prefix + "%";
                SqlDataReader sdr = cmd.ExecuteReader();
                List<string> custName = new List<string>();
                while (sdr.Read())
                {
                    objRowsList.Add(new SelectListItem
                    {
                        Text = sdr["DieNo"].ToString(),
                        Value = sdr["Id"].ToString()
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
        # region Get Max Inquiry No

        public int GetMaxInquiryNo()
        {
            int inqNo = 0;
            try
            {
                string sqlstr = "select (ISNULL(Max(InquiryNo),0)+1) as InquiryNo from ssmtbl_Inquiry";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    inqNo = Convert.ToInt32(sdr["InquiryNo"].ToString());
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return inqNo;
        }

        #endregion


        #region Get All Inquiry

        public List<ssmtbl_InquiryModel> GetAllInquiry()
        {
            List<ssmtbl_InquiryModel> objInqList = new List<ssmtbl_InquiryModel>();
            try
            {
                //string sqlstr = "select Isnull(I.InquiryNo, 0) As InquiryNo, Isnull(I.customerName, '') As customerName, "
                //     + " Isnull(InquiryDate,'') as InquiryDate, Isnull(Status, '') As Status, "
                //      + " Isnull((Select FeasibilityId From ssmtbl_Feasibility F where F.InquiryNo = I.InquiryNo),0) As FeasibilityId, "
                //       + " Isnull((Select Distinct QuotationNo From ssmtbl_Quotation Q where Q.InquiryNo = I.InquiryNo),'') As QuotationNo, "
                //   //  + " Isnull((Select Max(new_Version_No) From ssmtbl_Quotation Q where Q.InquiryNo = I.InquiryNo),'') As Version_No, "
                //   + " (Select  new_Version_No = (CASE max(new_Version_No) WHEN 0 THEN ''  ELSE max(new_Version_No)  END)FROM ssmtbl_Quotation Q where Q.InquiryNo = I.InquiryNo ) As Version_No, "
                //     + " Isnull((Select Max(id) From ssmtbl_Quotation Q where Q.InquiryNo = I.InquiryNo and(Q.FileStatus = 'Quotation Approved' OR Q.FileStatus = 'Conditional Quotation Approved')),'') As QuotationId, "
                //          + " Isnull((Select Max(po_id) From ssmtbl_PurchaseOrder P where P.InquiryNo = I.InquiryNo and Isnull(POStatus, '') != 'PO Rejected'),0) As POId, "
                //               + " Isnull((Select distinct CustomerPONo From ssmtbl_PurchaseOrder P where P.InquiryNo = I.InquiryNo and Isnull(POStatus, '') != 'PO Rejected'),'') As CustomerPoNo, "
                //                    + " Isnull((Select distinct FilePath From ssmtbl_PurchaseOrder P where P.InquiryNo = I.InquiryNo and Isnull(POStatus, '') = 'PO Approved'),'') As POFilePath "
                //  + " From ssmtbl_Inquiry I order by InquiryNo desc";
                string sqlstr = "select Isnull(I.InquiryNo, 0) As InquiryNo, Isnull(I.customerName, '') As customerName, "
                  + " Isnull(InquiryDate,'') as InquiryDate, Isnull(Status, '') As Status, Isnull(DieDescription.DieNo,'') as DieNo,  "
                   + " Isnull((Select FeasibilityId From ssmtbl_Feasibility F where F.InquiryNo = I.InquiryNo),0) As FeasibilityId, "
                    + " Isnull((Select Distinct QuotationNo From ssmtbl_Quotation Q where Q.InquiryNo = I.InquiryNo),'') As QuotationNo, "
                //  + " Isnull((Select Max(new_Version_No) From ssmtbl_Quotation Q where Q.InquiryNo = I.InquiryNo),'') As Version_No, "
                + " (Select  verno = (CASE max(verno) WHEN 0 THEN ''  ELSE max(verno)  END)FROM QuotationVersion Q where Q.InquiryNo = I.InquiryNo ) As Version_No, "
                  + " Isnull((Select Max(id) From ssmtbl_Quotation Q where Q.InquiryNo = I.InquiryNo and(Q.FileStatus = 'Quotation Approved' OR Q.FileStatus = 'Conditional Quotation Approved')),'') As QuotationId, "
                       + " Isnull((Select Max(po_id) From ssmtbl_PurchaseOrder P where P.InquiryNo = I.InquiryNo and Isnull(POStatus, '') != 'PO Rejected'),0) As POId, "
                            + " Isnull((Select distinct CustomerPONo From ssmtbl_PurchaseOrder P where P.InquiryNo = I.InquiryNo and Isnull(POStatus, '') != 'PO Rejected'),'') As CustomerPoNo, "
                                 + " Isnull((Select distinct FilePath From ssmtbl_PurchaseOrder P where P.InquiryNo = I.InquiryNo and Isnull(POStatus, '') = 'PO Approved'),'') As POFilePath "
               + " From ssmtbl_Inquiry I left join DieDescription on DieDescription.Id=I.DieDescID order by InquiryNo desc";

                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@FileStatus", InquiryStatus.QuotationApproved);
                cmd.Parameters.AddWithValue("@POStatus", InquiryStatus.PORejected);
                cmd.Parameters.AddWithValue("@POApp", InquiryStatus.POApproved);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_InquiryModel objtemp = new ssmtbl_InquiryModel();
                    objtemp.InquiryNo = Convert.ToInt32(sdr["InquiryNo"].ToString());
                    objtemp.customerName = sdr["customerName"].ToString();
                    objtemp.DieNumber = sdr["DieNo"].ToString();
                    objtemp.InquiryDate = Convert.ToDateTime(sdr["InquiryDate"].ToString());
                    objtemp.Status = sdr["Status"].ToString();
                    objtemp.FeasibilityId = Convert.ToInt32(sdr["FeasibilityId"].ToString());
                    objtemp.QuotationId = Convert.ToInt32(sdr["QuotationId"].ToString());
                    objtemp.QuotationNo = sdr["QuotationNo"].ToString();
                    objtemp.POId = Convert.ToInt32(sdr["POId"].ToString());
                    objtemp.customerPONo = sdr["CustomerPoNo"].ToString();
                    objtemp.FilePath = sdr["POFilePath"].ToString();
                    objtemp.VersionNo = (sdr["Version_No"].ToString());
                    if (objtemp.FilePath != "")
                    {
                        objtemp.FilePath = WebConfigurationManager.AppSettings["WebUrl"] + sdr["POFilePath"].ToString();
                    }
                    objInqList.Add(objtemp);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objInqList;
        }

        #endregion


        #region Get One Inquiry Using Parameter InquiryId

        public ssmtbl_InquiryModel GetOneInquiry(int InquiryId)
        {
            ssmtbl_InquiryModel objInq = new ssmtbl_InquiryModel();
            try
            {
                //string sqlstr = "select InquiryNo,customerName, InquiryDate,Status,PartName,PartNo,CustomerDrgNo,FrequencyRepearOrder,Qty,HSNCode From ssmtbl_Inquiry where InquiryNo=@InquiryNo Order By InquiryNo";
                string sqlstr = "select ID,InquiryNo,customerName, InquiryDate,Status,ssmtbl_Inquiry.PartName,PartNo,CustomerDrgNo,FrequencyRepearOrder,Qty,HSNCode,Remark,DieDescription.DieNo From ssmtbl_Inquiry left join DieDescription on ssmtbl_Inquiry.DieDescID=DieDescription.Id where InquiryNo=@InquiryNo Order By InquiryNo";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@InquiryNo", InquiryId);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objInq.InquiryNo = Convert.ToInt32(sdr["InquiryNo"].ToString());
                    objInq.customerName = sdr["customerName"].ToString();
                    objInq.InquiryDate = Convert.ToDateTime(sdr["InquiryDate"].ToString());
                    objInq.Status = sdr["Status"].ToString();
                    objInq.PartName = sdr["PartName"].ToString();
                    objInq.PartNo = sdr["PartNo"].ToString();
                    objInq.CustomerDrgNo = sdr["CustomerDrgNo"].ToString();
                    objInq.FrequencyRepearOrder = Convert.ToInt32(sdr["FrequencyRepearOrder"].ToString());
                    objInq.Qty = Convert.ToInt32(sdr["Qty"].ToString());
                    objInq.HSN = (sdr["HSNCode"].ToString());
                    objInq.DieNumber = (sdr["DieNo"].ToString());
                    objInq.Remark = (sdr["Remark"].ToString());
                    objInq.DieID= (Convert.ToInt32(sdr["ID"].ToString()));
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objInq;
        }

        #endregion


        #region Get Customer Name Using Parameter Prefix

        public List<SelectListItem> getCustomername(string Prefix)
        {
            List<SelectListItem> objRowsList = new List<SelectListItem>();
            try
            {
                string sqlstr = "select distinct  isnull(t1.Name,'') as custname from ssmtbl_CustomerVendorMaster_Tb t1 where"
                    + " type='customer' and t1.Name like @Prefix";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@Prefix", System.Data.SqlDbType.NVarChar).Value = "%" + Prefix + "%";
                SqlDataReader sdr = cmd.ExecuteReader();
                List<string> custName = new List<string>();
                while (sdr.Read())
                {
                    objRowsList.Add(new SelectListItem
                    {
                        Text = sdr["custname"].ToString(),
                        Value = sdr["custname"].ToString()
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
        public List<SelectListItem> getpreferedvendor(string Prefix)
        {
            List<SelectListItem> objRowsList = new List<SelectListItem>();
            try
            {
                string sqlstr = "select * from PreferedVendorMaster t1 where t1.Name like @Prefix";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@Prefix", System.Data.SqlDbType.NVarChar).Value = "%" + Prefix + "%";
                SqlDataReader sdr = cmd.ExecuteReader();
                List<string> custName = new List<string>();
                while (sdr.Read())
                {
                    objRowsList.Add(new SelectListItem
                    {
                        Text = sdr["Name"].ToString(),
                        Value = sdr["Name"].ToString()
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

        #region Update Inquiry

        public string UpdateInquiry(ssmtbl_InquiryModel objInqMod)
        {
            string result = "Error Updating Inquiry";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Update_Inquiry";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@InquiryNo", objInqMod.InquiryNo);
                cmd.Parameters.AddWithValue("@customerName", objInqMod.customerName);
                cmd.Parameters.AddWithValue("@InquiryDate", objInqMod.InquiryDate);
                cmd.Parameters.AddWithValue("@PartName", objInqMod.PartName);
                cmd.Parameters.AddWithValue("@PartNo", objInqMod.PartNo);
                cmd.Parameters.AddWithValue("@CustomerDrgNo", objInqMod.CustomerDrgNo);
                cmd.Parameters.AddWithValue("@FrequencyRepearOrder", objInqMod.FrequencyRepearOrder);
                cmd.Parameters.AddWithValue("@Qty", objInqMod.Qty);
                cmd.Parameters.AddWithValue("@hsncode", objInqMod.HSN);
                cmd.Parameters.AddWithValue("@dieid", objInqMod.DieID);
                //cmd.Parameters.AddWithValue("@createdby", "Test");
                cmd.Parameters.AddWithValue("@updatedby", HttpContext.Current.Session["userid"].ToString());
                cmd.Parameters.AddWithValue("@updateddate", StandardDateTime.GetDateTime());
                cmd.Parameters.AddWithValue("@Remark", objInqMod.Remark);
                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Inquiry Updated Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }

        #endregion


        #region Close Inquiry

        public string CloseInquiry(string InqNo, string Comment)
        {
            string result = "Error Closing Inquiry";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Close_Inquiry";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@InquiryNo", InqNo);
                cmd.Parameters.AddWithValue("@Status", InquiryStatus.InquiryClosed);
                cmd.Parameters.AddWithValue("@createdby", "Test");
                cmd.Parameters.AddWithValue("@CommentForClose", Comment);
                //cmd.Parameters.AddWithValue("@createdby", Session["UserId"].ToString());
                cmd.Parameters.AddWithValue("@createddate", StandardDateTime.GetDateTime());
                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Inquiry Closed Successfully!";
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