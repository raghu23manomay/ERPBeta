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
    public class VendorPurchaseOrderApprovalData
    {

        #region Get All Vendor Purchase Order For Approval

        public List<ssmtbl_VendorPurchaseOrderModel> GetAllVendorPurchaseOrder(string vendor_po_status)
        {
            List<ssmtbl_VendorPurchaseOrderModel> objList = new List<ssmtbl_VendorPurchaseOrderModel>();
            try
            {
                string sqlstr = "ssmsp_GetAllVendorPOForApproval";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@vendor_po_status", vendor_po_status);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_VendorPurchaseOrderModel objModel = new ssmtbl_VendorPurchaseOrderModel();
                    objModel.auto_id = Convert.ToInt32(sdr["auto_id"].ToString());
                    objModel.po_no = sdr["po_no"].ToString();
                    objModel.quotation_ref_no = sdr["quotation_ref_no"].ToString();

                    objModel.quotation_ref_date = Convert.ToDateTime(sdr["quotation_ref_date"].ToString());
                    objModel.vendor_name = sdr["vendor_name"].ToString();
                    objModel.vendor_id = Convert.ToInt32(sdr["vendor_id"].ToString());
                    objModel.vendor_email = sdr["vendor_email"].ToString();
                    objModel.vendor_mobile = sdr["vendor_mobile"].ToString();
                    objModel.po_date = Convert.ToDateTime(sdr["po_date"].ToString());
                    objModel.valid_date = Convert.ToDateTime(sdr["valid_date"].ToString());
                    //objModel.contact_person = sdr["contact_person"].ToString();
                    objModel.contact_person_id = Convert.ToInt32(sdr["contact_person_id"].ToString());
                    objModel.contact_person_email = sdr["contact_person_email"].ToString();
                    objModel.contact_person_mobile = sdr["contact_person_mobile"].ToString();
                    objModel.vendor_po_type = sdr["vendor_po_type"].ToString();
                    objModel.vendor_po_status = sdr["vendor_po_status"].ToString();
                    objModel.Comment = sdr["Comment"].ToString();
                    objModel.file_path = sdr["file_path"].ToString();
                    objModel.total = Convert.ToDecimal(sdr["total"].ToString());
                    objModel.cgst_perc = Convert.ToDecimal(sdr["cgst_perc"].ToString());
                    objModel.cgst_amt = Convert.ToDecimal(sdr["cgst_amt"].ToString());
                    objModel.sgst_perc = Convert.ToDecimal(sdr["sgst_perc"].ToString());
                    objModel.sgst_amt = Convert.ToDecimal(sdr["sgst_amt"].ToString());
                    objModel.igst_perc = Convert.ToDecimal(sdr["igst_perc"].ToString());
                    objModel.igst_amt = Convert.ToDecimal(sdr["igst_amt"].ToString());
                    objModel.grand_total = Convert.ToDecimal(sdr["grand_total"].ToString());
                    objModel.CreatedBy = sdr["CreatedBy"].ToString();
                    objModel.CreatedOn = Convert.ToDateTime(sdr["CreatedOn"].ToString());
                    objModel.UpdatedBy = sdr["UpdatedBy"].ToString();
                    objModel.UpdatedOn = Convert.ToDateTime(sdr["UpdatedOn"].ToString());
                    objModel.ApprovalDate = Convert.ToDateTime(sdr["ApprovalDate"].ToString());
                    objModel.ApprovedBy = sdr["ApprovedBy"].ToString();
                    objModel.for_all_dia = Convert.ToBoolean(sdr["for_all_dia"].ToString());
                    objModel.dia_no = sdr["dia_no"].ToString();
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


        public int GetPendingVPOs()
        {
            int count = 0;
            try
            {

                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspGetQuotationCount";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "GetVPOCount");
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

        #endregion



        #region Approve Vendor Purchase Order

        public string ApproveVendorPurchaseOrder(string PONo, string Comment, string ApprovedBy)
        {
            string result = "Error Approving Vendor PO";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Approve_VendorPO";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@PONo", PONo);
                cmd.Parameters.AddWithValue("@vendor_po_status", VendorPurchaseOrderStatus.VPOApproved);
                cmd.Parameters.AddWithValue("@ApprovedBy", ApprovedBy);
                cmd.Parameters.AddWithValue("@Comment", Comment);
                cmd.Parameters.AddWithValue("@ApprovalDate", StandardDateTime.GetDateTime());
                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Vendor PO Approved Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }

        #endregion



        #region Reject Vendor Purchase Order

        public string RejectVendorPurchaseOrder(string PONo, string Comment, string ApprovedBy)
        {
            string result = "Error Rejecting Vendor PO";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Reject_VendorPO";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@PONo", PONo);
                cmd.Parameters.AddWithValue("@vendor_po_status", VendorPurchaseOrderStatus.VPORejected);
                cmd.Parameters.AddWithValue("@ApprovedBy", ApprovedBy);
                cmd.Parameters.AddWithValue("@Comment", Comment);
                cmd.Parameters.AddWithValue("@ApprovalDate", StandardDateTime.GetDateTime());
                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Vendor PO Rejected Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }

        #endregion

        #region condition vpo approved
        public string ConditionalApprovedPurchaseOrder(string PONo, string Comment, string ApprovedBy)
        {
            string result = "Error Rejecting Vendor PO";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspConditionalapproved_VendorPO";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@PONo", PONo);
                cmd.Parameters.AddWithValue("@vendor_po_status","ConditionalApproved");
                cmd.Parameters.AddWithValue("@ApprovedBy", ApprovedBy);
                cmd.Parameters.AddWithValue("@Comment", Comment);
                cmd.Parameters.AddWithValue("@ApprovalDate", StandardDateTime.GetDateTime());
                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Vendor PO Rejected Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }
        #endregion

        #region Get One Vendor Purchase Order For Approval

        public ssmtbl_VendorPurchaseOrderModel GetOneVendorPurchaseOrder(string po_no)
        {
            ssmtbl_VendorPurchaseOrderModel objModel = new ssmtbl_VendorPurchaseOrderModel();
            try
            {
                //string sqlstr = "select auto_id, isnull(po_char,'') as po_char, isnull(po_id,0) as po_id, isnull(VPO.po_no,'') as po_no, "
                //+ " isnull(quotation_ref_no,'') as quotation_ref_no, isnull(quotation_ref_date,'') as quotation_ref_date,"
                //+ " isnull(vendor_id,0) as vendor_id, isnull(vendor_name,'') as vendor_name, isnull(vendor_email,'') as vendor_email, "
                //+ " isnull(vendor_mobile,'') as vendor_mobile, isnull(contact_person_id,0) as contact_person_id,"
                //+ " isnull(po_date,'') as po_date, isnull(valid_date,'') as valid_date, isnull(VPO.contact_person,'') as contact_person,"
                //+ " isnull(contact_person_email,'') as contact_person_email, isnull(contact_person_mobile,'') as contact_person_mobile,"
                //+ " isnull(vendor_po_type,'') as vendor_po_type, isnull(vendor_po_status,'') as vendor_po_status, isnull(Comment,'') as Comment,"
                //+ " isnull(file_path,'') as file_path, isnull(total,0) as total, isnull(cgst_perc,0) as cgst_perc, isnull(cgst_amt,0) as cgst_amt,"
                //+ " isnull(sgst_perc,0) as sgst_perc, isnull(sgst_amt,0) as sgst_amt, ISNULL(igst_perc,0) as igst_perc, isnull(igst_amt,0) as igst_amt,"
                //+ " isnull(grand_total,0) as grand_total, isnull(CreatedBy,'') as CreatedBy, isnull(CreatedOn,'') as CreatedOn,"
                //+ " isnull(UpdatedBy,'') as UpdatedBy, isnull(UpdatedOn,'') as UpdatedOn, isnull(ApprovalDate,'') as ApprovalDate,"
                //+ " isnull(for_all_dia,'') as for_all_dia, isnull(dia_no,'') as dia_no,"
                //+ " isnull(ApprovedBy,'') as ApprovedBy, Isnull(GSTIN,'') as GSTIN, Isnull(PAN,'') As PAN  from ssmtbl_VendorPurchaseOrder VPO , "

                //+ " CustomerVendorMaster_Tb CT where VPO.vendor_id=CT.Id and ISNULL(po_no,'')=@po_no";

                //var connection = gConnection.Connection();
                //connection.Open();
                //SqlCommand cmd = new SqlCommand(sqlstr, connection);
                //cmd.Parameters.AddWithValue("@po_no", po_no);
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspGetVendorPO";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "fetchVPOConsumableEditSingle");
                cmd.Parameters.AddWithValue("@po_no", po_no.Trim());
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objModel.po_char = sdr["po_char"].ToString();
                    objModel.po_id = Convert.ToInt32(sdr["po_id"].ToString());
                    objModel.auto_id = Convert.ToInt32(sdr["auto_id"].ToString());
                    objModel.po_no = sdr["po_no"].ToString();
                    objModel.quotation_ref_no = sdr["quotation_ref_no"].ToString();

                    objModel.quotation_ref_date = Convert.ToDateTime(sdr["quotation_ref_date"]);
                    objModel.vendor_id = Convert.ToInt32(sdr["vendor_id"].ToString());
                    objModel.vendor_name = sdr["vendor_name"].ToString();
                    objModel.vendor_email = sdr["vendor_email"].ToString();
                    objModel.vendor_mobile = sdr["vendor_mobile"].ToString();
                    objModel.po_date = Convert.ToDateTime(sdr["po_date"]);
                    objModel.valid_date = Convert.ToDateTime(sdr["valid_date"]);
                    objModel.contact_person = sdr["contact_person"].ToString();
                    objModel.contact_person_id = Convert.ToInt32(sdr["contact_person_id"].ToString());
                    objModel.contact_person_email = sdr["contact_person_email"].ToString();
                    objModel.contact_person_mobile = sdr["contact_person_mobile"].ToString();
                    objModel.vendor_po_type = sdr["vendor_po_type"].ToString();
                    objModel.vendor_po_status = sdr["vendor_po_status"].ToString();
                    objModel.Comment = sdr["Comment"].ToString();
                    objModel.file_path = sdr["file_path"].ToString();
                    objModel.total = Convert.ToDecimal(sdr["total"].ToString());
                    objModel.cgst_perc = Convert.ToDecimal(sdr["cgst_perc"].ToString());
                    objModel.cgst_amt = Convert.ToDecimal(sdr["cgst_amt"].ToString());
                    objModel.sgst_perc = Convert.ToDecimal(sdr["sgst_perc"].ToString());
                    objModel.sgst_amt = Convert.ToDecimal(sdr["sgst_amt"].ToString());
                    objModel.igst_perc = Convert.ToDecimal(sdr["igst_perc"].ToString());
                    objModel.igst_amt = Convert.ToDecimal(sdr["igst_amt"].ToString());
                    objModel.grand_total = Convert.ToDecimal(sdr["grand_total"].ToString());
                    objModel.CreatedBy = sdr["CreatedBy"].ToString();
                    objModel.CreatedOn = Convert.ToDateTime(sdr["CreatedOn"]);
                    objModel.UpdatedBy = sdr["UpdatedBy"].ToString();
                    objModel.UpdatedOn = Convert.ToDateTime(sdr["UpdatedOn"]);
                    objModel.ApprovalDate = Convert.ToDateTime(sdr["ApprovalDate"]);
                    objModel.ApprovedBy = sdr["ApprovedBy"].ToString();
                    objModel.for_all_dia = Convert.ToBoolean(sdr["for_all_dia"].ToString());
                    objModel.dia_no = sdr["dia_no"].ToString();
                    objModel.GSTIN = sdr["GSTIN"].ToString();
                    objModel.PAN = sdr["PAN"].ToString();
                    objModel.Address = sdr["Address"].ToString();
                    objModel.VersionNo = Convert.ToInt32(sdr["VersionNo"]);
                }
                sdr.Close();
                connection.Close();
                List<ssmtbl_VendorPurchaseOrder_DetailsModel> objVPO_DetList = new List<ssmtbl_VendorPurchaseOrder_DetailsModel>();
                connection.Open();
                string sqlstr1 = "uspGetVendorPO";
                SqlCommand cmd1 = new SqlCommand(sqlstr1, GlobalVariables.gConn);
                cmd1.CommandType = System.Data.CommandType.StoredProcedure;
                cmd1.Parameters.AddWithValue("@Action", "fetchVPOConsumableEditMulti");
                cmd1.Parameters.AddWithValue("@po_no", po_no.Trim());
                SqlDataReader sdr1 = cmd1.ExecuteReader();
                while (sdr1.Read())
                {
                    ssmtbl_VendorPurchaseOrder_DetailsModel tempdata = new ssmtbl_VendorPurchaseOrder_DetailsModel();
                    tempdata.vpo_det_auto_id = Convert.ToInt32(sdr1["vpo_det_auto_id"].ToString());
                    tempdata.item_code = sdr1["item_code"].ToString();
                    tempdata.item_description = sdr1["item_description"].ToString();
                    tempdata.qty = Convert.ToDecimal(sdr1["qty"].ToString());
                    tempdata.rate = Convert.ToDecimal(sdr1["rate"].ToString());
                    tempdata.rate_per = sdr1["rate_per"].ToString();
                    tempdata.amount = Convert.ToDecimal(sdr1["amount"].ToString());
                    tempdata.rm_section = sdr1["rm_section"].ToString();
                    tempdata.rm_gradeofmaterial = sdr1["rm_gradeofmaterial"].ToString();
                    tempdata.process = sdr1["process"].ToString();
                    objVPO_DetList.Add(tempdata);
                }
                sdr1.Close();
                objModel.ssmtbl_VendorPurchaseOrder_DetailsModel = objVPO_DetList;
                connection.Close();
             

                List<ssmtbl_TermsNCondtionModel> objVPO_TnCList = new List<ssmtbl_TermsNCondtionModel>();
                connection.Open();
                string sqlstr2 = "uspGetVendorPO";
                SqlCommand cmd2 = new SqlCommand(sqlstr2, GlobalVariables.gConn);
                cmd2.CommandType = System.Data.CommandType.StoredProcedure;
                cmd2.Parameters.AddWithValue("@Action", "fetchVPOConsumableEdittc");
                cmd2.Parameters.AddWithValue("@po_no", po_no.Trim());
                SqlDataReader sdr2 = cmd2.ExecuteReader();
                while (sdr2.Read())
                {
                    ssmtbl_TermsNCondtionModel tempdata = new ssmtbl_TermsNCondtionModel();
                    tempdata.id = Convert.ToInt32(sdr2["id"].ToString());
                    tempdata.TermsNConditionID = Convert.ToInt32(sdr2["TermsNConditionID"].ToString());
                    if (sdr2["po_no"].ToString() == "")
                    {
                        tempdata.TermsNConditionContent = sdr2["description"].ToString();
                    }
                    else
                    {
                        tempdata.TermsNConditionContent = sdr2["TermsNConditionContent"].ToString();
                    }
                    objVPO_TnCList.Add(tempdata);
                }
                objModel.ssmtbl_TermsNCondtionModel = objVPO_TnCList;

                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return objModel;
        }

        #endregion

        #region Get One Delivery Challan Detail

        public ssmtbl_DeliveryChallanModel getDispacthNODetails(string dispatch_no)
        {
            ssmtbl_DeliveryChallanModel objModel = new ssmtbl_DeliveryChallanModel();
            try
            {
                string sqlstr = "select        auto_id,"
                + " isnull( dispatch_char,'')  as dispatch_char,"
                + " isnull( dispatch_id,0) as dispatch_id,"
                + " isnull( dispatch_no,0) as dispatch_no,"
                + " isnull( delivery_challan_type,'') as delivery_challan_type,"
                + " isnull( customer_name,'') as customer_name,"
                + " isnull( customer_id,'') as customer_id,"
                + " isnull( customerpono,'') as customerpono,"
                + " isnull( po_qty,'') as po_qty,"
                + " isnull( hsncode,'')as hsncode, "
                + " isnull( customer_part_no,'')as customer_part_no, "
                + " isnull( vendor_id,'')as vendor_id,   "
                + " isnull( vendor_name,'')as vendor_name, "
                + " isnull( die_no,'')as die_no,"
                + " isnull( remark,'')as remark,"
                + " isnull( process,'')as process,"
                + " isnull( vendor_po_no,'')as vendor_po_no,"
                + " isnull( expected_date,'')as expected_date,"
                + " isnull( type_of_testing,'')as type_of_testing,"
                + " isnull( heat_code,'')as heat_code,"
                + " isnull( expected_report_date,'')as expected_report_date,   "
                + " isnull( material_grade,'')as material_grade, "
                + " isnull( section,'')as section,              "
                + " isnull(returnable_type,'')as returnable_type,"
                + " isnull( part_description,'') as part_description, "
                + " isnull( cgst_perc,0)as cgst_perc,"
                + " isnull( cgst_amt,0) as cgst_amt,"
                + " isnull( sgst_perc,0) as sgst_perc,"
                + " isnull( sgst_amt,0) as sgst_amt,"
                + " isnull( igst_perc,0) as igst_perc,"
                + " isnull( igst_amt,0) as igst_amt,    "
                + " isnull( total,0) as total,"
                + " isnull( grand_total,0) as grand_total,"
                + " isnull( createdby,'') as createdby,"
                + " isnull( createdon,'') as createdon,"
                + " isnull( updatedby,'') as updatedby,"
                + " isnull( updatedon,'') as updatedon"
                + " from  ssmtbl_deliverychallan where dispatch_no=@dispatch_no";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@dispatch_no", dispatch_no);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objModel.dispatch_char = Convert.ToString(sdr["dispatch_char"]);
                    objModel.dispatch_id = Convert.ToInt32(sdr["dispatch_id"]);
                    objModel.dispatch_no = Convert.ToString(sdr["dispatch_no"]);
                    objModel.delivery_challan_type = Convert.ToString(sdr["delivery_challan_type"]);
                    objModel.customer_name = Convert.ToString(sdr["customer_name"]);
                    objModel.customer_id = Convert.ToInt32(sdr["customer_id"]);
                    objModel.CustomerPONo = Convert.ToString(sdr["CustomerPONo"]);
                    objModel.po_qty = Convert.ToString(sdr["po_qty"]);
                    objModel.HSNCode = Convert.ToString(sdr["HSNCode"]);
                    objModel.Customer_part_no = Convert.ToString(sdr["Customer_part_no"]);
                    objModel.vendor_id = Convert.ToInt32(sdr["vendor_id"]);
                    objModel.vendor_name = Convert.ToString(sdr["vendor_name"]);
                    objModel.die_no = Convert.ToString(sdr["die_no"]);
                    objModel.remark = Convert.ToString(sdr["remark"]);
                    objModel.process = Convert.ToString(sdr["process"]);
                    objModel.vendor_po_no = Convert.ToString(sdr["vendor_po_no"]);
                    objModel.expected_date = Convert.ToDateTime(sdr["expected_date"]);
                    objModel.type_of_testing = Convert.ToString(sdr["type_of_testing"]);
                    objModel.heat_code = Convert.ToString(sdr["heat_code"]);
                    objModel.expected_report_date = Convert.ToDateTime(sdr["expected_report_date"]);
                    objModel.material_grade = Convert.ToString(sdr["material_grade"]);
                    objModel.section = Convert.ToString(sdr["section"]);
                    objModel.returnable_type = Convert.ToString(sdr["returnable_type"]);
                    objModel.part_description = Convert.ToString(sdr["part_description"]);
                    objModel.cgst_perc = Convert.ToDecimal(sdr["cgst_perc"]);
                    objModel.cgst_amt = Convert.ToDecimal(sdr["cgst_amt"]);
                    objModel.sgst_perc = Convert.ToDecimal(sdr["sgst_perc"]);
                    objModel.sgst_amt = Convert.ToDecimal(sdr["sgst_amt"]);
                    objModel.igst_perc = Convert.ToDecimal(sdr["igst_perc"]);
                    objModel.igst_amt = Convert.ToDecimal(sdr["igst_amt"]);
                    objModel.total = Convert.ToDecimal(sdr["total"]);
                    objModel.grand_total = Convert.ToInt32(sdr["grand_total"]);
                    objModel.CreatedBy = Convert.ToString(sdr["CreatedBy"]);
                    objModel.CreatedOn = Convert.ToDateTime(sdr["CreatedOn"]);
                    objModel.UpdatedBy = Convert.ToString(sdr["UpdatedBy"]);
                    objModel.UpdatedOn = Convert.ToDateTime(sdr["UpdatedOn"]);


                }
                sdr.Close();

                List<ssmtbl_DeliveryChallan_DetailsModel> objVPO_DetList = new List<ssmtbl_DeliveryChallan_DetailsModel>();
                sqlstr = "SELECT  dc_det_auto_id,"
                + " isnull( wo,'') as wo,"
                + " isnull( dispatch_no,0)as dispatch_no,"
                + " isnull( material_grade,'') as material_grade,"
                + " isnull( section,'') as section,"
                + " isnull( cut_weight,'')as cut_weight,"
                + " isnull( hardness,'')as hardness,"
                + " isnull( finish_weight,'')as finish_weight, "
                + " isnull( heat_code,'')as heat_code,"
                + " isnull( wo_balance,0)as wo_balance ,"
                + " isnull( description,'')as description,   "
                + " isnull( hsn_sac_code,'')as hsn_sac_code,  "
                + " isnull( qty,0)as qty,"
                + " isnull( units,'')as units,"
                + " isnull( taxable_value,0)as taxable_value"
                + " FROM  ssmtbl_DeliveryChallan_Details where dispatch_no=@dispatch_no";
                cmd.Connection = connection;
                cmd.CommandText = sqlstr;
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@dispatch_no", dispatch_no);
                sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_DeliveryChallan_DetailsModel tempdata = new ssmtbl_DeliveryChallan_DetailsModel();
                    tempdata.dc_det_auto_id = Convert.ToInt32(sdr["dc_det_auto_id"]);
                    tempdata.dispatch_no = Convert.ToString(sdr["dispatch_no"]);
                    tempdata.wo = Convert.ToString(sdr["wo"]);
                    tempdata.material_grade = Convert.ToString(sdr["material_grade"]);
                    tempdata.section = Convert.ToString(sdr["section"]);
                    tempdata.cut_weight = Convert.ToString(sdr["cut_weight"]);
                    tempdata.hardness = Convert.ToString(sdr["hardness"]);
                    tempdata.finish_weight = Convert.ToString(sdr["finish_weight"]);
                    tempdata.heat_code = Convert.ToString(sdr["heat_code"]);
                    tempdata.wo_balance = Convert.ToDecimal(sdr["wo_balance"]);
                    tempdata.description = Convert.ToString(sdr["description"]);
                    tempdata.hsn_sac_code = Convert.ToString(sdr["hsn_sac_code"]);
                    tempdata.qty = Convert.ToDecimal(sdr["qty"]);
                    tempdata.units = Convert.ToString(sdr["units"]);
                    tempdata.taxable_value = Convert.ToDecimal(sdr["taxable_value"]);
                 
                    objVPO_DetList.Add(tempdata);
                }
                sdr.Close();
                objModel.ssmtbl_DeliveryChallan_DetailsModelList = objVPO_DetList;

                List<ssmtbl_TermsNCondtionModel> objVPO_TnCList = new List<ssmtbl_TermsNCondtionModel>();
                sqlstr = "select id, isnull(TermsNConditionID,0) as TermsNConditionID, isnull(TermsNConditionContent,'') as TermsNConditionContent "
                + " from ssmtbl_VendorPurchaseOrderTermsNCondtion where ISNULL(po_no,'')=@po_no ";
                cmd.Connection = connection;
                cmd.CommandText = sqlstr;
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@po_no", objModel.vendor_po_no);
                sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_TermsNCondtionModel tempdata = new ssmtbl_TermsNCondtionModel();
                    tempdata.id = Convert.ToInt32(sdr["id"].ToString());
                    tempdata.TermsNConditionID = Convert.ToInt32(sdr["TermsNConditionID"].ToString());
                    tempdata.TermsNConditionContent = sdr["TermsNConditionContent"].ToString();
                    objVPO_TnCList.Add(tempdata);
                }


                objModel.ssmtbl_TermsNCondtionModel = objVPO_TnCList;

                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return objModel;
        }

        #endregion


    }
}