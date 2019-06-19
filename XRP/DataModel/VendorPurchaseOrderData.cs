using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using XRP.Global;
using XRP.Models;

namespace XRP.DataModel
{
    public class VendorPurchaseOrderData
    {
        GlobalFunction objGFunc = new GlobalFunction();

        #region Get Item Code Using Parameter Prefix

        public List<SelectListItem> getItemCode(string Prefix)
        {
            List<SelectListItem> objRowsList = new List<SelectListItem>();
            try
            {
                string sqlstr = "select distinct  isnull(t1.code,'') as code from LKP_Consumable t1 where"
                    + " t1.code like @Prefix";
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
                        Text = sdr["code"].ToString(),
                        Value = sdr["code"].ToString()
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


        #region Get Vendor Name Using Parameter Prefix

        public List<SelectListItem> getVendorName(string Prefix)
        {
            List<SelectListItem> objRowsList = new List<SelectListItem>();
            try
            {
                string sqlstr = "select distinct Id, isnull(t1.Name,'') as custname from CustomerVendorMaster_Tb t1 where"
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

        #endregion


        #region Get VendorContactPersonFromId

        public List<multipleconatctpersonforcustomer_TbModel> getVendorContactPersonFromId(string Prefix)
        {
            List<multipleconatctpersonforcustomer_TbModel> objRowsList = new List<multipleconatctpersonforcustomer_TbModel>();
            try
            {
                string sqlstr = "select distinct * from multipleconatctpersonforcustomer_Tb where id=@venderId  ";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@venderId", Prefix);
                SqlDataReader sdr = cmd.ExecuteReader();
                List<string> custName = new List<string>();
                while (sdr.Read())
                {
                    objRowsList.Add(new multipleconatctpersonforcustomer_TbModel
                    {
                        srno = Convert.ToInt32(sdr["srno"].ToString()),
                        contactpersonname = sdr["contactpersonname"].ToString(),
                        email = sdr["email"].ToString(),
                        mob = sdr["mob"].ToString()
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



        public multipleconatctpersonforcustomer_TbModel getVendorContactPersonFromId(string Prefix, string ContPersName)
        {
            multipleconatctpersonforcustomer_TbModel objRows = new multipleconatctpersonforcustomer_TbModel();
            try
            {
                string sqlstr = "select distinct * from multipleconatctpersonforcustomer_Tb where id=@venderId and contactpersonname=@contactpersonname ";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@venderId", Prefix);
                cmd.Parameters.AddWithValue("@contactpersonname", ContPersName);
                SqlDataReader sdr = cmd.ExecuteReader();
                List<string> custName = new List<string>();
                while (sdr.Read())
                {
                    objRows.srno = Convert.ToInt32(sdr["srno"].ToString());
                    objRows.contactpersonname = sdr["contactpersonname"].ToString();
                    objRows.email = sdr["email"].ToString();
                    objRows.mob = sdr["mob"].ToString();
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return objRows;
        }



        #endregion


        #region Get VendorDetailsFromId

        public CustomerVendorMaster_TbModel getVendorDetailsFromId(string Id)
        {
            CustomerVendorMaster_TbModel objRowsList = new CustomerVendorMaster_TbModel();
            try
            {
                string sqlstr = "ssmsp_Get_AllVendor";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                
                cmd.Parameters.AddWithValue("@Action", "selectvendorfromVPO");
                cmd.Parameters.AddWithValue("@Name", Id.Trim()); 
                cmd.Parameters.AddWithValue("@Type", "vendor"); 
                 SqlDataReader sdr = cmd.ExecuteReader();
                //
                
                while (sdr.Read())
                {
                    objRowsList.Name = sdr["Name"].ToString();
                    objRowsList.GSTIN = sdr["gst"].ToString();
                    objRowsList.PAN = sdr["pan"].ToString();
                    objRowsList.address = sdr["Address"].ToString();
                    objRowsList.Contact_Person = sdr["ContactPersonName"].ToString();
                    objRowsList.Email_ID = sdr["Email"].ToString();
                    objRowsList.Mobile_No = sdr["Mob"].ToString();

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


        #region Get Item Data Using Item Code

        public LKP_ConsumableModel getItemDetails(string ItemCode)
        {
            LKP_ConsumableModel objRows = new LKP_ConsumableModel();
            try
            {
                string sqlstr = "select * from LKP_Consumable t1 where"
                    + " t1.code = @code";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@code", System.Data.SqlDbType.NVarChar).Value = ItemCode;
                SqlDataReader sdr = cmd.ExecuteReader();
                List<string> custName = new List<string>();
                while (sdr.Read())
                {
                    objRows.code = sdr["code"].ToString();
                    objRows.description = sdr["description"].ToString();
                    objRows.rate = Convert.ToInt32(sdr["rate"].ToString());
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return objRows;
        }

        #endregion


        #region Get All Vendor Purchase Order

        public Paged_ssmtbl_VendorPurchaseOrderModel getAllVendorPurchaseOrder(string vendor_po_type)
        {
            Paged_ssmtbl_VendorPurchaseOrderModel objPGVPO = new Paged_ssmtbl_VendorPurchaseOrderModel();
            List<ssmtbl_VendorPurchaseOrderModel> objList = new List<ssmtbl_VendorPurchaseOrderModel>();
            try
            {
                string sqlstr = "ssmsp_GetAllVendorPO";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@vendor_po_type", vendor_po_type);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_VendorPurchaseOrderModel objModel = new ssmtbl_VendorPurchaseOrderModel();
                    objModel.auto_id = Convert.ToInt32(sdr["auto_id"].ToString());
                    objModel.po_no = sdr["po_no"].ToString();
                    objModel.quotation_ref_no = sdr["quotation_ref_no"].ToString();

                    objModel.quotation_ref_date = Convert.ToDateTime(sdr["quotation_ref_date"].ToString());
                    objModel.vendor_name = sdr["vendor_name"].ToString();
                    objModel.vendor_email = sdr["vendor_email"].ToString();
                    objModel.vendor_mobile = sdr["vendor_mobile"].ToString();
                    objModel.po_date = Convert.ToDateTime(sdr["po_date"].ToString());
                    objModel.valid_date = Convert.ToDateTime(sdr["valid_date"].ToString());
                    objModel.contact_person = sdr["contact_person"].ToString();
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
                    objList.Add(objModel);
                }
                connection.Close();

                objPGVPO.ssmtbl_VendorPurchaseOrderModelList = objList;
                objPGVPO.vendor_po_type = vendor_po_type;
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return objPGVPO;
        }

        #endregion
        public Paged_ssmtbl_VendorPurchaseOrderModel AllVPOList(string _inward_type)
        {
            Paged_ssmtbl_VendorPurchaseOrderModel objPGVPO = new Paged_ssmtbl_VendorPurchaseOrderModel();
            List<ssmtbl_VendorPurchaseOrderModel> objList = new List<ssmtbl_VendorPurchaseOrderModel>();
            try
            {
                string sqlstr = "AllVPO";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "selectApprovedVPO");
                cmd.Parameters.AddWithValue("@vendor_po_type", _inward_type.Trim());
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_VendorPurchaseOrderModel objModel = new ssmtbl_VendorPurchaseOrderModel();
                  
                    objModel.vpo_id = Convert.ToInt32(sdr["vpo_id"].ToString());
                    //objModel.cstpo_id= Convert.ToInt32(sdr["cstpo_id"].ToString());
                    //objModel.CustomerPONo = sdr["CustomerPONo"].ToString();
                    objModel.po_no = sdr["po_no"].ToString();
                    objModel.dia_no= sdr["dia_no"].ToString();
                    objModel.vendor_name = sdr["PartyName"].ToString();
                    objModel.customerName = sdr["PartyName"].ToString();
                    objModel.po_date = Convert.ToDateTime(sdr["po_date"].ToString());
                    //objModel.cstPODate = Convert.ToDateTime(sdr["cstPOcreateddate"].ToString());
                    objModel.PartyTYpe = sdr["PartyTYpe"].ToString();
                    objModel.vendor_po_type = sdr["Vtype"].ToString();
                    
                    //objModel.quotation_ref_no = sdr["quotation_ref_no"].ToString();
                    //objModel.vendor_id = Convert.ToInt32(sdr["vendor_id"].ToString());
                    //objModel.quotation_ref_date = Convert.ToDateTime(sdr["quotation_ref_date"].ToString());

                    //objModel.vendor_email = sdr["vendor_email"].ToString();
                    //objModel.vendor_mobile = sdr["vendor_mobile"].ToString();

                    //objModel.valid_date = Convert.ToDateTime(sdr["valid_date"].ToString());
                    //objModel.contact_person = sdr["contact_person"].ToString();
                    //objModel.contact_person_email = sdr["contact_person_email"].ToString();
                    //objModel.contact_person_mobile = sdr["contact_person_mobile"].ToString();
                    //objModel.vendor_po_type = sdr["vendor_po_type"].ToString();
                    //objModel.vendor_po_status = sdr["vendor_po_status"].ToString();
                    //objModel.Comment = sdr["Comment"].ToString();
                    //objModel.file_path = sdr["file_path"].ToString();
                    //objModel.total = Convert.ToDecimal(sdr["total"].ToString());
                    //objModel.cgst_perc = Convert.ToDecimal(sdr["cgst_perc"].ToString());
                    //objModel.cgst_amt = Convert.ToDecimal(sdr["cgst_amt"].ToString());
                    //objModel.sgst_perc = Convert.ToDecimal(sdr["sgst_perc"].ToString());
                    //objModel.sgst_amt = Convert.ToDecimal(sdr["sgst_amt"].ToString());
                    //objModel.igst_perc = Convert.ToDecimal(sdr["igst_perc"].ToString());
                    //objModel.igst_amt = Convert.ToDecimal(sdr["igst_amt"].ToString());
                    //objModel.grand_total = Convert.ToDecimal(sdr["grand_total"].ToString());
                    //objModel.CreatedBy = sdr["CreatedBy"].ToString();
                    //objModel.CreatedOn = Convert.ToDateTime(sdr["CreatedOn"].ToString());
                    //objModel.UpdatedBy = sdr["UpdatedBy"].ToString();
                    //objModel.UpdatedOn = Convert.ToDateTime(sdr["UpdatedOn"].ToString());
                    //objModel.ApprovalDate = Convert.ToDateTime(sdr["ApprovalDate"].ToString());
                    //objModel.ApprovedBy = sdr["ApprovedBy"].ToString();
                    objList.Add(objModel);
                }
                connection.Close();
                objPGVPO.ssmtbl_GoodsInward_DocReceivedModel= objGFunc.GetGIDocReceivedList();
                objPGVPO.ssmtbl_VendorPurchaseOrderModelList = objList;
               // objPGVPO.vendor_po_type = vendor_po_type;
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return objPGVPO;
        }

        public Paged_ssmtbl_VendorPurchaseOrderModel AllVPOList1()
        {
            Paged_ssmtbl_VendorPurchaseOrderModel objPGVPO = new Paged_ssmtbl_VendorPurchaseOrderModel();
            List<ssmtbl_VendorPurchaseOrderModel> objList = new List<ssmtbl_VendorPurchaseOrderModel>();
            try
            {
                string sqlstr = "VPORequisition";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "VPOBind");
               
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_VendorPurchaseOrderModel objModel = new ssmtbl_VendorPurchaseOrderModel();
                    objModel.auto_id = Convert.ToInt32(sdr["auto_id"].ToString());
                    objModel.vendor_name = sdr["Name"].ToString().Trim();
                    objModel.vendor_po_type = (sdr["vendor_po_type"].ToString()).Trim();
                    objModel.po_no = (sdr["po_no"].ToString()).Trim();
                    objModel.po_date = Convert.ToDateTime(sdr["po_date"].ToString());
                    objList.Add(objModel);
                }
                connection.Close();

                objPGVPO.ssmtbl_VendorPurchaseOrderModelList = objList;
                // objPGVPO.vendor_po_type = vendor_po_type;
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return objPGVPO;
        }
        public Paged_ssmtbl_VendorPurchaseOrderModel AllVPOFilter(string _inward_type)
        {
            Paged_ssmtbl_VendorPurchaseOrderModel objPGVPO = new Paged_ssmtbl_VendorPurchaseOrderModel();
            List<ssmtbl_VendorPurchaseOrderModel> objList = new List<ssmtbl_VendorPurchaseOrderModel>();
            try
            {
                string sqlstr = "VPORequisition";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "VPOBindFilter");
                cmd.Parameters.AddWithValue("@inward_type", _inward_type.Trim());
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_VendorPurchaseOrderModel objModel = new ssmtbl_VendorPurchaseOrderModel();
                    objModel.auto_id = Convert.ToInt32(sdr["auto_id"].ToString());
                    objModel.vendor_name = sdr["Name"].ToString();
                    objModel.vendor_po_type = sdr["vendor_po_type"].ToString();
                    objModel.po_no = (sdr["po_no"].ToString());
                    objModel.po_date = Convert.ToDateTime(sdr["po_date"].ToString());
                    objList.Add(objModel);
                }
                connection.Close();

                objPGVPO.ssmtbl_VendorPurchaseOrderModelList = objList;
                // objPGVPO.vendor_po_type = vendor_po_type;
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return objPGVPO;
        }

        public string InsertVendorPurchaseOrder(ssmtbl_VendorPurchaseOrderModel model)
        {
            string result = "Error Creating Vendor Purchase Order";
            try
            {
                model.ssmtbl_VendorPurchaseOrder_DetailsModel = NulltoBlank(model.ssmtbl_VendorPurchaseOrder_DetailsModel);

                DataTable dt = new DataTable();
                dt.Columns.Add("item_code");
                dt.Columns.Add("item_description");
                dt.Columns.Add("qty");
                dt.Columns.Add("rate");
                dt.Columns.Add("rate_per");
                dt.Columns.Add("amount");
                dt.Columns.Add("rm_section");
                dt.Columns.Add("rm_gradeofmaterial");
                dt.Columns.Add("process");
                for (int i = 0; i < model.ssmtbl_VendorPurchaseOrder_DetailsModel.Count; i++)
                {
                    dt.Rows.Add(model.ssmtbl_VendorPurchaseOrder_DetailsModel[i].item_code,
                    model.ssmtbl_VendorPurchaseOrder_DetailsModel[i].item_description,
                    model.ssmtbl_VendorPurchaseOrder_DetailsModel[i].qty,
                    model.ssmtbl_VendorPurchaseOrder_DetailsModel[i].rate,
                    model.ssmtbl_VendorPurchaseOrder_DetailsModel[i].rate_per,
                    model.ssmtbl_VendorPurchaseOrder_DetailsModel[i].amount,
                    model.ssmtbl_VendorPurchaseOrder_DetailsModel[i].rm_section,
                    model.ssmtbl_VendorPurchaseOrder_DetailsModel[i].rm_gradeofmaterial,
                    model.ssmtbl_VendorPurchaseOrder_DetailsModel[i].process);
                }


                DataTable dt1 = new DataTable();
                dt1.Columns.Add("TermsNConditionID");
                dt1.Columns.Add("TermsNConditionContent");
                dt1.Columns.Add("flag");
                for (int i = 0; i < model.ssmtbl_TermsNCondtionModel.Count; i++)
                {
                    dt1.Rows.Add(model.ssmtbl_TermsNCondtionModel[i].TermsNConditionID,
                    model.ssmtbl_TermsNCondtionModel[i].TermsNConditionContent, model.ssmtbl_TermsNCondtionModel[i].flag);
                }

                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmSP_Insert_VendorPurchaseOrder";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@po_char", model.po_char);
                cmd.Parameters.AddWithValue("@po_id", model.po_id);
                cmd.Parameters.AddWithValue("@po_no", model.po_no);
                cmd.Parameters.AddWithValue("@quotation_ref_no", model.quotation_ref_no);
                cmd.Parameters.AddWithValue("@quotation_ref_date", model.quotation_ref_date);
               // cmd.Parameters.AddWithValue("@vendor_id", model.vendor_id);
                cmd.Parameters.AddWithValue("@vendor_name", model.vendor_name.Trim());
                cmd.Parameters.AddWithValue("@vendor_email", model.vendor_email);
                cmd.Parameters.AddWithValue("@vendor_mobile", model.vendor_mobile);
                cmd.Parameters.AddWithValue("@po_date", model.po_date);
                cmd.Parameters.AddWithValue("@valid_date", model.valid_date);
                cmd.Parameters.AddWithValue("@contact_person_id", model.contact_person_id);
                cmd.Parameters.AddWithValue("@contact_person", model.contact_person);
                cmd.Parameters.AddWithValue("@contact_person_email", model.contact_person_email);
                cmd.Parameters.AddWithValue("@contact_person_mobile", model.contact_person_mobile);
                cmd.Parameters.AddWithValue("@vendor_po_type", model.vendor_po_type);
                cmd.Parameters.AddWithValue("@vendor_po_status", VendorPurchaseOrderStatus.VPOPendingForApproval);
                cmd.Parameters.AddWithValue("@Comment", model.Comment);
                cmd.Parameters.AddWithValue("@file_path", model.file_path);
                cmd.Parameters.AddWithValue("@total", model.total);
                cmd.Parameters.AddWithValue("@cgst_perc", model.cgst_perc);
                cmd.Parameters.AddWithValue("@cgst_amt", model.cgst_amt);
                cmd.Parameters.AddWithValue("@sgst_perc", model.sgst_perc);
                cmd.Parameters.AddWithValue("@sgst_amt", model.sgst_amt);
                cmd.Parameters.AddWithValue("@igst_perc", model.igst_perc);
                cmd.Parameters.AddWithValue("@igst_amt", model.igst_amt);
                cmd.Parameters.AddWithValue("@grand_total", model.grand_total);
                cmd.Parameters.AddWithValue("@CreatedBy", "Test");
                cmd.Parameters.AddWithValue("@CreatedOn", StandardDateTime.GetDateTime());
                cmd.Parameters.AddWithValue("@for_all_dia", model.for_all_dia);
                cmd.Parameters.AddWithValue("@dia_no", model.dia_no);

                var pList = new SqlParameter("@ssmtbl_VendorPurchaseOrder_Details_", SqlDbType.Structured);
                pList.TypeName = "dbo.ssmtbl_VendorPurchaseOrder_Details";
                pList.Value = dt;
                cmd.Parameters.Add(pList);

                var pList1 = new SqlParameter("@ssmtbl_VendorPurchaseOrderTermsNCondtion_", SqlDbType.Structured);
                pList1.TypeName = "dbo.ssmtbl_VendorPurchaseOrderTermsNCondtion";
                pList1.Value = dt1;
                cmd.Parameters.Add(pList1);

                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Vendor Purchase Order Created Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }


        public string UpdateVendorPurchaseOrder(ssmtbl_VendorPurchaseOrderModel model)
        {
            string result = "Error Creating Vendor Purchase Order";
            try
            {
                model.ssmtbl_VendorPurchaseOrder_DetailsModel = NulltoBlank(model.ssmtbl_VendorPurchaseOrder_DetailsModel);

                DataTable dt = new DataTable();
                dt.Columns.Add("item_code");
                dt.Columns.Add("item_description");
                dt.Columns.Add("qty");
                dt.Columns.Add("rate");
                dt.Columns.Add("rate_per");
                dt.Columns.Add("amount");
                dt.Columns.Add("rm_section");
                dt.Columns.Add("rm_gradeofmaterial");
                dt.Columns.Add("process");
                for (int i = 0; i < model.ssmtbl_VendorPurchaseOrder_DetailsModel.Count; i++)
                {
                    dt.Rows.Add(model.ssmtbl_VendorPurchaseOrder_DetailsModel[i].item_code,
                    model.ssmtbl_VendorPurchaseOrder_DetailsModel[i].item_description,
                    model.ssmtbl_VendorPurchaseOrder_DetailsModel[i].qty,
                    model.ssmtbl_VendorPurchaseOrder_DetailsModel[i].rate,
                    model.ssmtbl_VendorPurchaseOrder_DetailsModel[i].rate_per,
                    model.ssmtbl_VendorPurchaseOrder_DetailsModel[i].amount,
                    model.ssmtbl_VendorPurchaseOrder_DetailsModel[i].rm_section,
                    model.ssmtbl_VendorPurchaseOrder_DetailsModel[i].rm_gradeofmaterial,
                    model.ssmtbl_VendorPurchaseOrder_DetailsModel[i].process);
                }


                DataTable dt1 = new DataTable();
                dt1.Columns.Add("TermsNConditionID");
                dt1.Columns.Add("TermsNConditionContent");
                dt1.Columns.Add("flag");
                for (int i = 0; i < model.ssmtbl_TermsNCondtionModel.Count; i++)
                {
                    dt1.Rows.Add(model.ssmtbl_TermsNCondtionModel[i].TermsNConditionID,
                    model.ssmtbl_TermsNCondtionModel[i].TermsNConditionContent,
                    model.ssmtbl_TermsNCondtionModel[i].flag);
                }

                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmSP_Update_VendorPurchaseOrder";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@po_char", model.po_char);
                cmd.Parameters.AddWithValue("@po_id", model.po_id);
                cmd.Parameters.AddWithValue("@po_no", model.po_no);
                cmd.Parameters.AddWithValue("@quotation_ref_no", model.quotation_ref_no);
                cmd.Parameters.AddWithValue("@quotation_ref_date", model.quotation_ref_date);
                cmd.Parameters.AddWithValue("@vendor_id", model.vendor_id);
                cmd.Parameters.AddWithValue("@vendor_name", model.vendor_name);
                cmd.Parameters.AddWithValue("@vendor_email", model.vendor_email);
                cmd.Parameters.AddWithValue("@vendor_mobile", model.vendor_mobile);
                cmd.Parameters.AddWithValue("@po_date", model.po_date);
                cmd.Parameters.AddWithValue("@valid_date", model.valid_date);
                cmd.Parameters.AddWithValue("@contact_person_id", model.contact_person_id);
                cmd.Parameters.AddWithValue("@contact_person", model.contact_person);
                cmd.Parameters.AddWithValue("@contact_person_email", model.contact_person_email);
                cmd.Parameters.AddWithValue("@contact_person_mobile", model.contact_person_mobile);
                cmd.Parameters.AddWithValue("@vendor_po_type", model.vendor_po_type);
                cmd.Parameters.AddWithValue("@vendor_po_status", VendorPurchaseOrderStatus.VPOPendingForApproval);
                cmd.Parameters.AddWithValue("@Comment", model.Comment);
                cmd.Parameters.AddWithValue("@file_path", model.file_path);
                cmd.Parameters.AddWithValue("@total", model.total);
                cmd.Parameters.AddWithValue("@cgst_perc", model.cgst_perc);
                cmd.Parameters.AddWithValue("@cgst_amt", model.cgst_amt);
                cmd.Parameters.AddWithValue("@sgst_perc", model.sgst_perc);
                cmd.Parameters.AddWithValue("@sgst_amt", model.sgst_amt);
                cmd.Parameters.AddWithValue("@igst_perc", model.igst_perc);
                cmd.Parameters.AddWithValue("@igst_amt", model.igst_amt);
                cmd.Parameters.AddWithValue("@grand_total", model.grand_total);
                cmd.Parameters.AddWithValue("@UpdatedBy", "Test");
                cmd.Parameters.AddWithValue("@UpdatedOn", StandardDateTime.GetDateTime());
                cmd.Parameters.AddWithValue("@for_all_dia", model.for_all_dia);
                cmd.Parameters.AddWithValue("@dia_no", model.dia_no);

                var pList = new SqlParameter("@ssmtbl_VendorPurchaseOrder_Details_", SqlDbType.Structured);
                pList.TypeName = "dbo.ssmtbl_VendorPurchaseOrder_Details";
                pList.Value = dt;
                cmd.Parameters.Add(pList);

                var pList1 = new SqlParameter("@ssmtbl_VendorPurchaseOrderTermsNCondtion_", SqlDbType.Structured);
                pList1.TypeName = "dbo.ssmtbl_VendorPurchaseOrderTermsNCondtion";
                pList1.Value = dt1;
                cmd.Parameters.Add(pList1);

                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Vendor Purchase Order Created Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }


        public string UpdateVendorPurchaseOrderFilePath(string po_no, string file_path)
        {
            string result = "Error Creating Vendor Purchase Order";
            try
            {                
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "update ssmtbl_VendorPurchaseOrder set file_path=@file_path where po_no=@po_no  ";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.Text;

                cmd.Parameters.AddWithValue("@file_path",file_path);
                cmd.Parameters.AddWithValue("@po_no", po_no);

                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Vendor Purchase Order Created Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }





        public ssmtbl_VendorPurchaseOrderModel GetMaxPONo()
        {
            ssmtbl_VendorPurchaseOrderModel objPOModel = new ssmtbl_VendorPurchaseOrderModel();
            try
            {
                string sqlstr = "select (Isnull(Max(po_id),0) + 1) as po_id from dbo.ssmtbl_VendorPurchaseOrder";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.Text;
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objPOModel.po_id = Convert.ToInt32(sdr["po_id"].ToString());
                    objPOModel.po_char = "VPO-" + StandardDateTime.GetDateTime().ToString("MMyy") + "-";
                    objPOModel.po_no = objPOModel.po_char + objPOModel.po_id;

                    objPOModel.quotation_ref_date = StandardDateTime.GetDateTime();
                    objPOModel.po_date = StandardDateTime.GetDateTime();
                    objPOModel.valid_date = StandardDateTime.GetDateTime();
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objPOModel;
        }


        public List<SelectListItem> GetVendorPOProcessInvolved(string Prefix)
        {
            List<SelectListItem> objList = new List<SelectListItem>();
            try
            {

                //string sqlstr = "select Isnull(ID,0) As ID, Isnull(Options,'') As Options from LKP_Inquiry_Tb where Type='Operation involved' ";
                string sqlstr = "select Isnull(ID,0) As ID,Isnull(operationinvolvedname,'') As operationinvolvedname from [LKP_Quotationoperationinvolved] where Isnull(operationinvolvedname,'') like @Prefix ";

                var connection = gConnection.Connection();
                connection.Open();

                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@Prefix", System.Data.SqlDbType.NVarChar).Value = "%" + Prefix + "%";
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objList.Add(new SelectListItem
                    {
                        Text = sdr["operationinvolvedname"].ToString().Trim(),
                        Value = sdr["operationinvolvedname"].ToString().Trim()
                    });
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }


        public List<SelectListItem> GetRawMaterialSection(string Prefix)
        {
            List<SelectListItem> objList = new List<SelectListItem>();
            try
            {

                //string sqlstr = "select Isnull(ID,0) As ID, Isnull(Options,'') As Options from LKP_Inquiry_Tb where Type='Operation involved' ";
                string sqlstr = "select Isnull(ID,0) As ID,Isnull(xsection,'') As xsection from [LKP_CuutingCalculation_Tb] where Isnull(xsection,'') like @Prefix ";

                var connection = gConnection.Connection();
                connection.Open();

                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@Prefix", System.Data.SqlDbType.NVarChar).Value = "%" + Prefix + "%";
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objList.Add(new SelectListItem
                    {
                        Text = sdr["xsection"].ToString().Trim(),
                        Value = sdr["xsection"].ToString().Trim()
                    });
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }


        public List<SelectListItem> GetRawMaterialGradeofMaterial(string Prefix)
        {
            List<SelectListItem> objList = new List<SelectListItem>();
            try
            {
                string sqlstr = "select Isnull(Srno,0) As ID,Isnull(Materialgrade,'') As Materialgrade from [LKP_Colorcode_Tb] where Isnull(Materialgrade,'') like @Prefix ";

                var connection = gConnection.Connection();
                connection.Open();

                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@Prefix", System.Data.SqlDbType.NVarChar).Value = "%" + Prefix + "%";
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objList.Add(new SelectListItem
                    {
                        Text = sdr["Materialgrade"].ToString().Trim(),
                        Value = sdr["Materialgrade"].ToString().Trim()
                    });
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }


        private List<ssmtbl_VendorPurchaseOrder_DetailsModel> NulltoBlank(List<ssmtbl_VendorPurchaseOrder_DetailsModel> objmodel)
        {
            for (int i = 0; i < objmodel.Count; i++)
            {
                if(objmodel[i].amount == null)
                {
                    objmodel[i].amount = 0;
                }
                if(objmodel[i].item_code == null)
                {
                    objmodel[i].item_code = "";
                }
                if(objmodel[i].item_description == null)
                {
                    objmodel[i].item_description = "";
                }
                if(objmodel[i].process == null)
                {
                    objmodel[i].process = "";
                }
                if(objmodel[i].rate_per == null)
                {
                    objmodel[i].rate_per = "";
                }
                if(objmodel[i].rm_gradeofmaterial == null)
                {
                    objmodel[i].rm_gradeofmaterial = "";
                }
                if(objmodel[i].rm_section == null)
                {
                    objmodel[i].rm_section = "";
                }
            }
            return objmodel;
        }

    }
}