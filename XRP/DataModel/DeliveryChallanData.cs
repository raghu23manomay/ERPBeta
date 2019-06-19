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
    public class DeliveryChallanData
    {

        #region Get All Delivery Challan

        public Paged_ssmtbl_DeliveryChallanModel GetAllDeliveryChallan(string challan_type)
        {
            ssmtbl_DeliveryChallanModel objPOModel = new ssmtbl_DeliveryChallanModel();
            Paged_ssmtbl_DeliveryChallanModel objPGDC = new Paged_ssmtbl_DeliveryChallanModel();
            List<ssmtbl_DeliveryChallanModel> objList = new List<ssmtbl_DeliveryChallanModel>();
            try
            {
                string sqlstr = "ssmsp_GetAllDeliveryChallan";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                //cmd.Parameters.AddWithValue("@challan_type", challan_type);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_DeliveryChallanModel objModel = new ssmtbl_DeliveryChallanModel();
             
                    objModel.auto_id = Convert.ToInt32(sdr["DeliveryChallanID"].ToString());
                    objModel.delivery_challan_type = sdr["DeliveryChallanType"].ToString();
                    objModel.customer_name = sdr["Name"].ToString();
                    objModel.customer_id = Convert.ToInt32(sdr["CustomerVendorId"].ToString());
                    objModel.type = sdr["Type"].ToString();
                    objModel.CreatedOn = Convert.ToDateTime(sdr["CreatedOn"].ToString());
                    objModel.section = sdr["section"].ToString();
                    objModel.material_grade = sdr["grade"].ToString();
                    objModel.heat_code = sdr["heat_code"].ToString();
                    objModel.vendor_po_no = sdr["PONumber"].ToString();
                    //code for detch ginid
                    objModel.dispatch_id = Convert.ToInt32(sdr["GinID"].ToString());
                   
                    objList.Add(objModel);
                }
                connection.Close();
              
                objPGDC.ssmtbl_DeliveryChallanModelList = objList;
                objPGDC.delivery_challan_type = challan_type;
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return objPGDC;
        }
        #endregion
        public string InsertDeliveryChallanLabTesting(int CustomerVendorId, string DeliveryChallanNo, string DeliveryChallanType, string PONumber, string expectReportDate, string remark, string RawMaterialTest,string dcid)
        {
            string result = "Error Creating Delivery Challan";
            int userId= ((int)System.Web.HttpContext.Current.Session["userid"]);
            try
            {               
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspDeliveryChallan";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "InsertDCLabTesting");
                cmd.Parameters.AddWithValue("@CustomerVendorId", CustomerVendorId);
                cmd.Parameters.AddWithValue("@DeliveryChallanNo", DeliveryChallanNo.Trim());
                cmd.Parameters.AddWithValue("@DeliveryChallanType", DeliveryChallanType.Trim());
                cmd.Parameters.AddWithValue("@PONumber", PONumber.Trim());
                cmd.Parameters.AddWithValue("@Remark", remark.Trim());
                cmd.Parameters.AddWithValue("@Process", RawMaterialTest.Trim());
                cmd.Parameters.AddWithValue("@ExpectedDate", Convert.ToDateTime(expectReportDate));
                cmd.Parameters.AddWithValue("@CreatedBy", (int)System.Web.HttpContext.Current.Session["userid"]);

                cmd.Parameters.AddWithValue("@CreatedOn", DateTime.Now);
                cmd.Parameters.AddWithValue("@UpdatedBy", (int)System.Web.HttpContext.Current.Session["userid"]);
                cmd.Parameters.AddWithValue("@UpdatedDate", DateTime.Now);
                cmd.Parameters.AddWithValue("@DeliveryChallanID", dcid.Trim());
                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Delivery Challan Created Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }

        public Paged_ssmtbl_DeliveryChallanModel GetDeliveryChallanByDispatchNo(string DispatchNo)
        {
            Paged_ssmtbl_DeliveryChallanModel objPGDC = new Paged_ssmtbl_DeliveryChallanModel();
            List<ssmtbl_DeliveryChallanModel> objList = new List<ssmtbl_DeliveryChallanModel>();
            try
            {
                string sqlstr = "ssmsp_GetAllDeliveryChallan";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@dispatch_no", DispatchNo);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objPGDC.auto_id = Convert.ToInt32(sdr["auto_id"].ToString());
                    objPGDC.dispatch_id = Convert.ToInt32(sdr["dispatch_id"].ToString());
                    objPGDC.dispatch_char = sdr["dispatch_char"].ToString();
                    objPGDC.dispatch_no = sdr["dispatch_no"].ToString();
                    objPGDC.delivery_challan_type = sdr["delivery_challan_type"].ToString();
                    objPGDC.customer_name = sdr["customer_name"].ToString();
                    objPGDC.customer_id = Convert.ToInt32(sdr["customer_id"].ToString());
                    objPGDC.CustomerPONo = sdr["CustomerPONo"].ToString();
                    objPGDC.po_qty = sdr["po_qty"].ToString();
                    objPGDC.HSNCode = sdr["HSNCode"].ToString();
                    objPGDC.Customer_part_no = sdr["Customer_part_no"].ToString();
                    objPGDC.vendor_id = Convert.ToInt32(sdr["vendor_id"].ToString());
                    objPGDC.vendor_name = sdr["vendor_name"].ToString();
                    objPGDC.die_no = sdr["die_no"].ToString();
                    objPGDC.remark = sdr["remark"].ToString();
                    objPGDC.process = sdr["process"].ToString();
                    objPGDC.vendor_po_no = sdr["vendor_po_no"].ToString();
                    objPGDC.expected_date = Convert.ToDateTime(sdr["expected_date"].ToString());
                    objPGDC.type_of_testing = sdr["type_of_testing"].ToString();
                    objPGDC.heat_code = sdr["heat_code"].ToString();
                    objPGDC.expected_report_date = Convert.ToDateTime(sdr["expected_report_date"].ToString());
                    objPGDC.material_grade = sdr["material_grade"].ToString();
                    objPGDC.section = sdr["section"].ToString();
                    objPGDC.returnable_type = sdr["returnable_type"].ToString();
                    objPGDC.part_description = sdr["part_description"].ToString();
                    objPGDC.total = Convert.ToDecimal(sdr["total"].ToString());
                   
                }
                sdr.Close();


                List<ssmtbl_DeliveryChallan_DetailsModel> objDCDetailsList = new List<ssmtbl_DeliveryChallan_DetailsModel>();
                cmd.Parameters.Clear();
                cmd.CommandText = "ssmsp_GetAllDeliveryChallanDetails";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@dispatch_no", DispatchNo);
                sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_DeliveryChallan_DetailsModel tempobj = new ssmtbl_DeliveryChallan_DetailsModel();
                    tempobj.dc_det_auto_id = Convert.ToInt32(sdr["dc_det_auto_id"].ToString());
                    tempobj.dispatch_no = sdr["dispatch_no"].ToString();
                    tempobj.wo = sdr["wo"].ToString();
                    tempobj.material_grade = sdr["material_grade"].ToString();
                    tempobj.section = sdr["section"].ToString();
                    tempobj.cut_weight = sdr["cut_weight"].ToString();
                    tempobj.hardness = sdr["hardness"].ToString();
                    tempobj.finish_weight = sdr["finish_weight"].ToString();
                    tempobj.heat_code = sdr["heat_code"].ToString();
                    tempobj.wo_balance = Convert.ToDecimal(sdr["wo_balance"].ToString());
                    tempobj.description = sdr["description"].ToString();
                    tempobj.hsn_sac_code = sdr["hsn_sac_code"].ToString();
                    tempobj.qty = Convert.ToDecimal(sdr["qty"].ToString());
                    tempobj.units = sdr["units"].ToString();
                    tempobj.taxable_value = Convert.ToDecimal(sdr["taxable_value"].ToString());

                    objDCDetailsList.Add(tempobj);
                }
                sdr.Close();



                List<ssmtbl_Feasibility_RawMaterialTestModel> objDCFeaList = new List<ssmtbl_Feasibility_RawMaterialTestModel>();
                cmd.Parameters.Clear();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select isnull(auto_id,0) as auto_id,isnull(dispatch_code,'') as dispatch_code, isnull(id,0) "
                + " as RawMaterialTestFisID, type from ssmtbl_DeliveryChallan_TestingType dc right outer join LKP_RawMaterialTestFis rm"
                + " on dc.RawMaterialTestFisID=rm.id and dispatch_code=@dispatch_code";
                cmd.Parameters.AddWithValue("@dispatch_code", DispatchNo);
                sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_Feasibility_RawMaterialTestModel tempobj = new ssmtbl_Feasibility_RawMaterialTestModel();
                    tempobj.auto_id = Convert.ToInt32(sdr["auto_id"].ToString());
                    tempobj.Raw_Material_Test = Convert.ToInt32(sdr["RawMaterialTestFisID"].ToString());
                    tempobj.Raw_Material_Test_Text = sdr["type"].ToString();
                    if (Convert.ToInt32(sdr["auto_id"].ToString()) > 0)
                    {
                        tempobj.Raw_Material_Test_Select = true;
                    }
                    objDCFeaList.Add(tempobj);
                }
                sdr.Close();


                connection.Close();

                objPGDC.ssmtbl_DeliveryChallan_DetailsModelList = objDCDetailsList;
                objPGDC.ssmtbl_DeliveryChallanModelList = objList;


            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return objPGDC;
        }

       




        #region Get Customer Name Using Parameter Prefix

        public List<SelectListItem> getCustomerNameAndId(string Prefix)
        {
            List<SelectListItem> objRowsList = new List<SelectListItem>();
            try
            {
                string sqlstr = "GetCustNameAndId";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
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


        #region Get Vendor Name Using Parameter Prefix

        public List<SelectListItem> getVendorNameAndId(string Prefix)
        {
            List<SelectListItem> objRowsList = new List<SelectListItem>();
            try
            {
                string sqlstr = "select distinct Id, isnull(t1.Name,'') as custname from ssmtbl_CustomerVendorMaster_Tb t1 where"
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


        #region Get Customer PONo From CustomerName And Prefix

        public List<SelectListItem> getCustomerPONo(string Prefix, string CutsomerName)
        {
            List<SelectListItem> objRowsList = new List<SelectListItem>();
            try
            {
                string sqlstr = "GetCustPoNoByName";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CustomerName", System.Data.SqlDbType.NVarChar).Value = "%" + CutsomerName + "%";
                cmd.Parameters.AddWithValue("@Prefix", System.Data.SqlDbType.NVarChar).Value = "%" + Prefix + "%";
                SqlDataReader sdr = cmd.ExecuteReader();              
                List<string> custName = new List<string>();
                while (sdr.Read())
                {
                    objRowsList.Add(new SelectListItem
                    {
                        Text = sdr["CustomerPONo"].ToString(),
                        Value = sdr["CustomerPONo"].ToString()
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


        #region Get Vendor PONo From CustomerName And Prefix

        public List<SelectListItem> getVendorPONo(string Prefix, string vendor_name)
        {
            List<SelectListItem> objRowsList = new List<SelectListItem>();
            try
            {

                string sqlstr = "select distinct po_no from dbo.ssmtbl_VendorPurchaseOrder where vendor_name "
                    + " like @vendor_name and po_no like @Prefix and vendor_po_status=@vendor_po_status";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@vendor_name", System.Data.SqlDbType.NVarChar).Value = "%" + vendor_name + "%";
                cmd.Parameters.AddWithValue("@Prefix", System.Data.SqlDbType.NVarChar).Value = "%" + Prefix + "%";
                cmd.Parameters.AddWithValue("@vendor_po_status", VendorPurchaseOrderStatus.VPOApproved);
                SqlDataReader sdr = cmd.ExecuteReader();
                List<string> custName = new List<string>();
                while (sdr.Read())
                {
                    objRowsList.Add(new SelectListItem
                    {
                        Text = sdr["po_no"].ToString(),
                        Value = sdr["po_no"].ToString()
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


        #region Get Customer PO Details From CustomerPONo

        public ssmtbl_DeliveryChallanModel GetOnePurchaseOrderFromPONo(string CustomerPONo)
        {
            ssmtbl_DeliveryChallanModel objDC = new ssmtbl_DeliveryChallanModel();
            try
            {

                string sqlstr = "Select Inq.InquiryNo,PartNo, CustomerPONo, Inq.HSNCode, Qtymentionedinpo, PartName from ssmtbl_inquiry Inq, "
                    + " ssmtbl_PurchaseOrder PO where Inq.InquiryNo=PO.InquiryNo and POStatus=@POStatus "
                    + " and CustomerPONo=@CustomerPONo ";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@CustomerPONo", CustomerPONo);
                cmd.Parameters.AddWithValue("@POStatus", InquiryStatus.POApproved);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objDC.CustomerPONo = sdr["CustomerPONo"].ToString();
                    objDC.po_qty = sdr["QtymentionedinPO"].ToString();
                    objDC.HSNCode = sdr["HSNCode"].ToString();
                    objDC.Customer_part_no = sdr["PartNo"].ToString();
                    //objDC.HSNCode = sdr["HSNCode"].ToString();
                    objDC.part_description = sdr["PartName"].ToString();
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objDC;
        }
        public ssmtbl_DeliveryChallanModel GetVendorPurchaseOrder(string CustomerPONo)
        {
            ssmtbl_DeliveryChallanModel objDC = new ssmtbl_DeliveryChallanModel();
            try
            {

                string sqlstr = @"SELECT po_no,  cgst_perc, cgst_amt, sgst_perc, sgst_amt, igst_perc, igst_amt
                FROM ssmtbl_VendorPurchaseOrder where po_no=@po_no and vendor_po_status=@vendor_po_status";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);

                cmd.Parameters.AddWithValue("@po_no", CustomerPONo);
                cmd.Parameters.AddWithValue("@vendor_po_status", VendorPurchaseOrderStatus.VPOApproved);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    //po_no, cgst_perc, cgst_amt, sgst_perc, sgst_amt, igst_perc, igst_amt, vendor_po_status
                    objDC.cgst_amt = Convert.ToDecimal(sdr["cgst_amt"]);
                    objDC.cgst_perc = Convert.ToDecimal(sdr["cgst_perc"]);
                    objDC.igst_amt = Convert.ToDecimal(sdr["igst_amt"]);
                    objDC.igst_perc = Convert.ToDecimal(sdr["igst_perc"]);

                    objDC.sgst_amt = Convert.ToDecimal(sdr["sgst_amt"]);
                    objDC.sgst_perc = Convert.ToDecimal(sdr["sgst_perc"]);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objDC;
        }


        public List<SelectListItem> getTestingType()
        {
            List<SelectListItem> objRowsList = new List<SelectListItem>();
            try
            {
                string sqlstr = "SELECT id, type FROM LKP_RawMaterialTestFis";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                SqlDataReader sdr = cmd.ExecuteReader();
                List<string> custName = new List<string>();
                while (sdr.Read())
                {
                    objRowsList.Add(new SelectListItem
                    {
                        Text = sdr["type"].ToString(),
                        Value = sdr["id"].ToString()
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


        public List<SelectListItem> getHeatCode(string Prefix)
        {

            List<SelectListItem> objRowsList = new List<SelectListItem>();
            try
            {
                string sqlstr = "SELECT Heatcode FROM ssmtbl_RMInventary where Heatcode like @Prefix";
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
                        Text = sdr["Heatcode"].ToString(),
                        Value = sdr["Heatcode"].ToString()
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
        public ssmtbl_DeliveryChallan_DetailsModel getHeatCodeDetail(string heat_code)
        {

            ssmtbl_DeliveryChallan_DetailsModel objDC = new ssmtbl_DeliveryChallan_DetailsModel();
            try
            {
                string sqlstr = "SELECT Heatcode, ChallanNo, Quntity, Unit, RMUnit, GradeOfMaterial, Section FROM  ssmtbl_RMInventary where Heatcode=@Heatcode";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@Heatcode", System.Data.SqlDbType.NVarChar).Value = heat_code;
                SqlDataReader sdr = cmd.ExecuteReader();
                List<string> custName = new List<string>();
                while (sdr.Read())
                {
                    objDC.heat_code = sdr["Heatcode"].ToString();
                    objDC.material_grade = sdr["GradeOfMaterial"].ToString();
                    objDC.section = sdr["Section"].ToString();
                    objDC.qty = Convert.ToDecimal(sdr["Quntity"]);
                    objDC.units = Convert.ToString(sdr["RMUnit"]);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return objDC;


        }
        #endregion

        #region Get Get One Delivery By Delivery Challan Type and Dispatch Id

        public ssmtbl_DeliveryChallanModel GetOneDelivery(string DispatchId, string DeliveryChallanType)
        {
            ssmtbl_DeliveryChallanModel objDC = new ssmtbl_DeliveryChallanModel();
            try
            {

                string sqlstr = "uspGetOneDeliveryChallanByTypeAndId";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@DispatchId", Convert.ToInt32(DispatchId));
                cmd.Parameters.AddWithValue("@DeliveryChallanType", DeliveryChallanType.Trim());
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objDC.delivery_challan_type=sdr["delivery_challan_type"].ToString();
                    objDC.customer_name= sdr["customer_name"].ToString();
                    objDC.customer_id = Convert.ToInt32(sdr["customer_id"].ToString());
                    objDC.vendor_id = Convert.ToInt32(sdr["vendor_id"].ToString());
                    objDC.vendor_name = sdr["vendor_name"].ToString();
                    objDC.CustomerPONo = sdr["CustomerPONo"].ToString();
                    objDC.vendor_po_no = sdr["vendor_po_no"].ToString();
                    objDC.po_qty = sdr["po_qty"].ToString();
                    objDC.HSNCode = sdr["HSNCode"].ToString();
                    objDC.Customer_part_no = sdr["Customer_part_no"].ToString();
                    objDC.dispatch_no = sdr["dispatch_no"].ToString();
                    objDC.CreatedOn = Convert.ToDateTime(sdr["CreatedOn"].ToString());
                    objDC.UpdatedOn = Convert.ToDateTime(sdr["UpdatedOn"].ToString());
                    objDC.part_description= sdr["part_description"].ToString();
                }
                connection.Close();

               
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objDC;
        }
        #endregion

        #region Get One Delivery Details
        public List<ssmtbl_DeliveryChallan_DetailsModel> GetOneDeliveryDetails(string DispatchNo)
        {
            List<ssmtbl_DeliveryChallan_DetailsModel> objDCDetailsList = new List<ssmtbl_DeliveryChallan_DetailsModel>();
            try
            {   
            string sqlstr = "ssmsp_GetAllDeliveryChallanDetails";
            var connection = gConnection.Connection();
            connection.Open();
            SqlCommand cmd = new SqlCommand(sqlstr, connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@dispatch_no", DispatchNo);          
            SqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                ssmtbl_DeliveryChallan_DetailsModel tempobj = new ssmtbl_DeliveryChallan_DetailsModel();
                tempobj.dc_det_auto_id = Convert.ToInt32(sdr["dc_det_auto_id"].ToString());
                tempobj.dispatch_no = sdr["dispatch_no"].ToString();
                tempobj.wo = sdr["wo"].ToString();
                tempobj.material_grade = sdr["material_grade"].ToString();
                tempobj.section = sdr["section"].ToString();
                tempobj.cut_weight = sdr["cut_weight"].ToString();
                tempobj.hardness = sdr["hardness"].ToString();
                tempobj.finish_weight = sdr["finish_weight"].ToString();
                tempobj.heat_code = sdr["heat_code"].ToString();
                tempobj.wo_balance = Convert.ToDecimal(sdr["wo_balance"].ToString());
                tempobj.description = sdr["description"].ToString();
                tempobj.hsn_sac_code = sdr["hsn_sac_code"].ToString();
                tempobj.qty = Convert.ToDecimal(sdr["qty"].ToString());
                tempobj.units = sdr["units"].ToString();
                tempobj.taxable_value = Convert.ToDecimal(sdr["taxable_value"].ToString());

                objDCDetailsList.Add(tempobj);
            }
            connection.Close();
        }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return objDCDetailsList;
        }
        #endregion

        #region Get Max Delivery Challan No

        public ssmtbl_DeliveryChallanModel GetMaxDeliveryChallanNo()
        {
            ssmtbl_DeliveryChallanModel objPOModel = new ssmtbl_DeliveryChallanModel();
            try
            {
                string sqlstr = "select (Isnull(Max(dispatch_id),0) + 1) as dispatch_id from dbo.ssmtbl_DeliveryChallan";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.Text;
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objPOModel.dispatch_id = Convert.ToInt32(sdr["dispatch_id"].ToString());
                    objPOModel.dispatch_char = "DC-" + StandardDateTime.GetDateTime().ToString("MMyy") + "-";
                    objPOModel.dispatch_no = objPOModel.dispatch_char + objPOModel.dispatch_id;
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            objPOModel.expected_date = DateTime.Today;

            return objPOModel;
        }



        #endregion

        #region Get Max Delivery Challan No

        public string GetMaxDeliveryChallanNo1()
        {
            string dispatchNo = "DC-" + StandardDateTime.GetDateTime().ToString("MMyy") + "-1";
            ssmtbl_DeliveryChallanModel objPOModel = new ssmtbl_DeliveryChallanModel();
            try
            {
                string sqlstr = "uspDeliveryChallan";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "GetMaxDeliveryChallanNo");
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    dispatchNo = "DC-" + StandardDateTime.GetDateTime().ToString("MMyy") + "-"+(Convert.ToInt32((sdr["DeliveryChallanNo"].ToString()).Split('-')[2])+1);
                    //objPOModel.dispatch_id = Convert.ToInt32(sdr["dispatch_id"].ToString());
                    //objPOModel.dispatch_char = "DC-" + StandardDateTime.GetDateTime().ToString("MMyy") + "-";
                    //objPOModel.dispatch_no = objPOModel.dispatch_char + objPOModel.dispatch_id;
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            objPOModel.expected_date = DateTime.Today;

            return dispatchNo;
        }



        #endregion
        #region Get Vendor PONo From CustomerName And Prefix

        public List<SelectListItem> getVendorPONoByID(string ID)
        {
            List<SelectListItem> objRowsList = new List<SelectListItem>();
            try
            {

                //string sqlstr = "select distinct po_no from dbo.ssmtbl_VendorPurchaseOrder where vendor_name "
                //    + " like @vendor_name and po_no like @Prefix and vendor_po_status=@vendor_po_status";
                string sqlstr = "select distinct po_no from dbo.ssmtbl_VendorPurchaseOrder where vendor_id "
                   + " = @vendor_po_ID and vendor_po_status = @vendor_po_status";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                //cmd.Parameters.AddWithValue("@vendor_name", System.Data.SqlDbType.NVarChar).Value = "%" + vendor_name + "%";
                //cmd.Parameters.AddWithValue("@Prefix", System.Data.SqlDbType.NVarChar).Value = "%" + Prefix + "%";
                cmd.Parameters.AddWithValue("@vendor_po_ID", Convert.ToInt64(ID));
                cmd.Parameters.AddWithValue("@vendor_po_status", VendorPurchaseOrderStatus.VPOApproved);
                SqlDataReader sdr = cmd.ExecuteReader();
                List<string> custName = new List<string>();
                while (sdr.Read())
                {
                    objRowsList.Add(new SelectListItem
                    {
                        Text = sdr["po_no"].ToString(),
                        Value = sdr["po_no"].ToString()
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


        #region Get WONo From WorkOrder_Tb And Prefix

        public List<SelectListItem> getWONo(string Prefix, string pono = null)
        {
            List<SelectListItem> objRowsList = new List<SelectListItem>();
            try
            {
                string sqlstr = string.Empty;
                if (pono == null)
                {
                    sqlstr = "select distinct WorkorderNo from dbo.ssmtbl_WorkOrder where WorkorderNo "
                        + " like @Wono ";
                }
                else
                {
                    sqlstr = "select distinct WorkorderNo from dbo.ssmtbl_WorkOrder where WorkorderNo "
                        + " like @Wono and PoNo=@pono";
                }
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@Wono", System.Data.SqlDbType.NVarChar).Value = "%" + Prefix + "%";
                if (pono != null)
                {
                    cmd.Parameters.AddWithValue("@pono", pono);
                }
                SqlDataReader sdr = cmd.ExecuteReader();
                List<string> custName = new List<string>();
                while (sdr.Read())
                {
                    objRowsList.Add(new SelectListItem
                    {
                        Text = sdr["WorkorderNo"].ToString(),
                        Value = sdr["WorkorderNo"].ToString()
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

        #region Get WONo Details From WoNo

        public WorkOrder_TbModel getWONoDetails(string Wono)
        {
            WorkOrder_TbModel objMod = new WorkOrder_TbModel();
            try
            {
                string sqlstr = "select WorkorderNo, PoRM, PoSection, CutWeight from dbo.ssmtbl_WorkOrder where WorkorderNo = @Wono ";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@Wono", Wono);
                SqlDataReader sdr = cmd.ExecuteReader();
                List<string> custName = new List<string>();
                while (sdr.Read())
                {
                    objMod.Wono = sdr["WorkorderNo"].ToString();
                    objMod.Rawmaterial = sdr["PoRM"].ToString();
                    objMod.section = sdr["PoSection"].ToString();
                    objMod.cutweight = sdr["CutWeight"].ToString();
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return objMod;
        }

        #endregion








        #region Insert Delivery Challan

        public string InsertDeliveryChallan(ssmtbl_DeliveryChallanModel objDCModel)
        {
            string result = "Error Creating Delivery Challan";
            try
            {
                objDCModel = NullToBlank(objDCModel);

                DataTable dt = new DataTable();
                dt.Columns.Add("wo");
                dt.Columns.Add("material_grade");
                dt.Columns.Add("section");
                dt.Columns.Add("cut_weight");
                dt.Columns.Add("hardness");
                dt.Columns.Add("finish_weight");
                dt.Columns.Add("heat_code");
                dt.Columns.Add("wo_balance");
                dt.Columns.Add("description");
                dt.Columns.Add("hsn_sac_code");
                dt.Columns.Add("qty");
                dt.Columns.Add("units");
                dt.Columns.Add("taxable_value");
                for (int i = 0; i < objDCModel.ssmtbl_DeliveryChallan_DetailsModelList.Count; i++)
                {
                    dt.Rows.Add(objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].wo,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].material_grade,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].section,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].cut_weight,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].hardness,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].finish_weight,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].heat_code,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].wo_balance,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].description,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].hsn_sac_code,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].qty,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].units,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].taxable_value);
                }



                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmSP_Insert_DeliveryChallan";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@dispatch_char", objDCModel.dispatch_char);
                cmd.Parameters.AddWithValue("@dispatch_id", objDCModel.dispatch_id);
                cmd.Parameters.AddWithValue("@dispatch_no", objDCModel.dispatch_no);
                cmd.Parameters.AddWithValue("@delivery_challan_type", objDCModel.delivery_challan_type);
                cmd.Parameters.AddWithValue("@customer_name", objDCModel.customer_name);
                cmd.Parameters.AddWithValue("@customer_id", objDCModel.customer_id);
                cmd.Parameters.AddWithValue("@CustomerPONo", objDCModel.CustomerPONo);
                cmd.Parameters.AddWithValue("@po_qty", objDCModel.po_qty);
                cmd.Parameters.AddWithValue("@HSNCode", objDCModel.HSNCode);
                cmd.Parameters.AddWithValue("@Customer_part_no", objDCModel.Customer_part_no);
                cmd.Parameters.AddWithValue("@vendor_id", objDCModel.vendor_id);
                cmd.Parameters.AddWithValue("@vendor_name", objDCModel.vendor_name);
                cmd.Parameters.AddWithValue("@die_no", objDCModel.die_no);
                cmd.Parameters.AddWithValue("@remark", objDCModel.remark);
                cmd.Parameters.AddWithValue("@process", objDCModel.process);
                cmd.Parameters.AddWithValue("@vendor_po_no", objDCModel.vendor_po_no);
                cmd.Parameters.AddWithValue("@expected_date", objDCModel.expected_date);
                cmd.Parameters.AddWithValue("@type_of_testing", objDCModel.type_of_testing);
                cmd.Parameters.AddWithValue("@heat_code", objDCModel.heat_code);
                cmd.Parameters.AddWithValue("@expected_report_date", objDCModel.expected_report_date);
                cmd.Parameters.AddWithValue("@material_grade", objDCModel.material_grade);
                cmd.Parameters.AddWithValue("@section", objDCModel.section);
                cmd.Parameters.AddWithValue("@returnable_type", objDCModel.returnable_type);
                cmd.Parameters.AddWithValue("@part_description", objDCModel.part_description);
                cmd.Parameters.AddWithValue("@cgst_perc", objDCModel.cgst_perc);
                cmd.Parameters.AddWithValue("@cgst_amt", objDCModel.cgst_amt);
                cmd.Parameters.AddWithValue("@sgst_perc", objDCModel.sgst_perc);
                cmd.Parameters.AddWithValue("@sgst_amt", objDCModel.sgst_amt);
                cmd.Parameters.AddWithValue("@igst_perc", objDCModel.igst_perc);
                cmd.Parameters.AddWithValue("@igst_amt", objDCModel.igst_amt);
                cmd.Parameters.AddWithValue("@total", objDCModel.total);
                cmd.Parameters.AddWithValue("@grand_total", objDCModel.grand_total);
                cmd.Parameters.AddWithValue("@createdby", "Test");
                //cmd.Parameters.AddWithValue("@createdby", Session["UserId"].ToString());
                cmd.Parameters.AddWithValue("@CreatedOn", StandardDateTime.GetDateTime());


                var pList = new SqlParameter("@ssmtbl_DeliveryChallan_Details_", SqlDbType.Structured);
                pList.TypeName = "dbo.ssmtbl_DeliveryChallan_Details";
                pList.Value = dt;
                cmd.Parameters.Add(pList);





                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Delivery Challan Created Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }


        public string InsertDeliveryChallanLabTesting(ssmtbl_DeliveryChallanModel objDCModel)
        {
            string result = "Error Creating Delivery Challan";
            try
            {
                objDCModel = NullToBlank(objDCModel);

                DataTable dt = new DataTable();
                dt.Columns.Add("wo");
                dt.Columns.Add("material_grade");
                dt.Columns.Add("section");
                dt.Columns.Add("cut_weight");
                dt.Columns.Add("hardness");
                dt.Columns.Add("finish_weight");
                dt.Columns.Add("heat_code");
                dt.Columns.Add("wo_balance");
                dt.Columns.Add("description");
                dt.Columns.Add("hsn_sac_code");
                dt.Columns.Add("qty");
                dt.Columns.Add("units");
                dt.Columns.Add("taxable_value");
                for (int i = 0; i < objDCModel.ssmtbl_DeliveryChallan_DetailsModelList.Count; i++)
                {
                    dt.Rows.Add(objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].wo,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].material_grade,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].section,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].cut_weight,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].hardness,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].finish_weight,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].heat_code,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].wo_balance,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].description,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].hsn_sac_code,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].qty,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].units,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].taxable_value);
                }



                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmSP_Insert_DeliveryChallanLabTesting";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@dispatch_char", objDCModel.dispatch_char);
                cmd.Parameters.AddWithValue("@dispatch_id", objDCModel.dispatch_id);
                cmd.Parameters.AddWithValue("@dispatch_no", objDCModel.dispatch_no);
                cmd.Parameters.AddWithValue("@delivery_challan_type", objDCModel.delivery_challan_type);
                cmd.Parameters.AddWithValue("@customer_name", objDCModel.customer_name);
                cmd.Parameters.AddWithValue("@customer_id", objDCModel.customer_id);
                cmd.Parameters.AddWithValue("@CustomerPONo", objDCModel.CustomerPONo);
                cmd.Parameters.AddWithValue("@po_qty", objDCModel.po_qty);
                cmd.Parameters.AddWithValue("@HSNCode", objDCModel.HSNCode);
                cmd.Parameters.AddWithValue("@Customer_part_no", objDCModel.Customer_part_no);
                cmd.Parameters.AddWithValue("@vendor_id", objDCModel.vendor_id);
                cmd.Parameters.AddWithValue("@vendor_name", objDCModel.vendor_name);
                cmd.Parameters.AddWithValue("@die_no", objDCModel.die_no);
                cmd.Parameters.AddWithValue("@remark", objDCModel.remark);
                cmd.Parameters.AddWithValue("@process", objDCModel.process);
                cmd.Parameters.AddWithValue("@vendor_po_no", objDCModel.vendor_po_no);
                cmd.Parameters.AddWithValue("@expected_date", objDCModel.expected_date);
                cmd.Parameters.AddWithValue("@type_of_testing", objDCModel.type_of_testing);
                cmd.Parameters.AddWithValue("@heat_code", objDCModel.heat_code);
                cmd.Parameters.AddWithValue("@expected_report_date", objDCModel.expected_report_date);
                cmd.Parameters.AddWithValue("@material_grade", objDCModel.material_grade);
                cmd.Parameters.AddWithValue("@section", objDCModel.section);
                cmd.Parameters.AddWithValue("@returnable_type", objDCModel.returnable_type);
                cmd.Parameters.AddWithValue("@part_description", objDCModel.part_description);
                cmd.Parameters.AddWithValue("@cgst_perc", objDCModel.cgst_perc);
                cmd.Parameters.AddWithValue("@cgst_amt", objDCModel.cgst_amt);
                cmd.Parameters.AddWithValue("@sgst_perc", objDCModel.sgst_perc);
                cmd.Parameters.AddWithValue("@sgst_amt", objDCModel.sgst_amt);
                cmd.Parameters.AddWithValue("@igst_perc", objDCModel.igst_perc);
                cmd.Parameters.AddWithValue("@igst_amt", objDCModel.igst_amt);
                cmd.Parameters.AddWithValue("@total", objDCModel.total);
                cmd.Parameters.AddWithValue("@grand_total", objDCModel.grand_total);
                cmd.Parameters.AddWithValue("@createdby", "Test");
                //cmd.Parameters.AddWithValue("@createdby", Session["UserId"].ToString());
                cmd.Parameters.AddWithValue("@CreatedOn", StandardDateTime.GetDateTime());


                var pList = new SqlParameter("@ssmtbl_DeliveryChallan_Details_", SqlDbType.Structured);
                pList.TypeName = "dbo.ssmtbl_DeliveryChallan_Details";
                pList.Value = dt;
                cmd.Parameters.Add(pList);



                DataTable dataTable2 = new DataTable("SampleDataType1");
                dataTable2.Columns.Add("Raw_Material_Test", typeof(long));
                foreach (var data in objDCModel.ssmtbl_Feasibility_RawMaterialTestModel)
                {
                    dataTable2.Rows.Add(data.Raw_Material_Test);
                }
                var pList1 = new SqlParameter("@ssmtbl_Feasibility_RawMaterialTest_", SqlDbType.Structured);
                pList1.TypeName = "dbo.ssmtbl_Feasibility_RawMaterialTest";
                pList1.Value = dataTable2;
                cmd.Parameters.Add(pList1);


                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Delivery Challan Created Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }



        private ssmtbl_DeliveryChallanModel NullToBlank(ssmtbl_DeliveryChallanModel objModel)
        {
            if (objModel.customer_id == null)
            {
                objModel.customer_id = 0;
            }
            if (objModel.customer_name == null)
            {
                objModel.customer_name = "";
            }
            if (objModel.Customer_part_no == null)
            {
                objModel.Customer_part_no = "";
            }
            if (objModel.CustomerPONo == null)
            {
                objModel.CustomerPONo = "";
            }
            if (objModel.delivery_challan_type == null)
            {
                objModel.delivery_challan_type = "";
            }
            if (objModel.die_no == null)
            {
                objModel.die_no = "";
            }
            if (objModel.dispatch_char == null)
            {
                objModel.dispatch_char = "";
            }
            if (objModel.dispatch_no == null)
            {
                objModel.dispatch_no = "";
            }
            if (objModel.heat_code == null)
            {
                objModel.heat_code = "";
            }
            if (objModel.HSNCode == null)
            {
                objModel.HSNCode = "";
            }
            if (objModel.material_grade == null)
            {
                objModel.material_grade = "";
            }
            if (objModel.part_description == null)
            {
                objModel.part_description = "";
            }
            if (objModel.po_qty == null)
            {
                objModel.po_qty = "";
            }
            if (objModel.process == null)
            {
                objModel.process = "";
            }
            if (objModel.remark == null)
            {
                objModel.remark = "";
            }
            if (objModel.returnable_type == null)
            {
                objModel.returnable_type = "";
            }
            if (objModel.section == null)
            {
                objModel.section = "";
            }
            if (objModel.type_of_testing == null)
            {
                objModel.type_of_testing = "";
            }
            if (objModel.vendor_id == null)
            {
                objModel.vendor_id = 0;
            }
            if (objModel.vendor_name == null)
            {
                objModel.vendor_name = "";
            }
            if (objModel.vendor_po_no == null)
            {
                objModel.vendor_po_no = "";
            }

            for (int i = 0; i < objModel.ssmtbl_DeliveryChallan_DetailsModelList.Count; i++)
            {
                if (objModel.ssmtbl_DeliveryChallan_DetailsModelList[i].cut_weight == null)
                {
                    objModel.ssmtbl_DeliveryChallan_DetailsModelList[i].cut_weight = "";
                }
                if (objModel.ssmtbl_DeliveryChallan_DetailsModelList[i].description == null)
                {
                    objModel.ssmtbl_DeliveryChallan_DetailsModelList[i].description = "";
                }
                if (objModel.ssmtbl_DeliveryChallan_DetailsModelList[i].finish_weight == null)
                {
                    objModel.ssmtbl_DeliveryChallan_DetailsModelList[i].finish_weight = "";
                }
                if (objModel.ssmtbl_DeliveryChallan_DetailsModelList[i].hardness == null)
                {
                    objModel.ssmtbl_DeliveryChallan_DetailsModelList[i].hardness = "";
                }
                if (objModel.ssmtbl_DeliveryChallan_DetailsModelList[i].heat_code == null)
                {
                    objModel.ssmtbl_DeliveryChallan_DetailsModelList[i].heat_code = "";
                }
                if (objModel.ssmtbl_DeliveryChallan_DetailsModelList[i].hsn_sac_code == null)
                {
                    objModel.ssmtbl_DeliveryChallan_DetailsModelList[i].hsn_sac_code = "";
                }
                if (objModel.ssmtbl_DeliveryChallan_DetailsModelList[i].material_grade == null)
                {
                    objModel.ssmtbl_DeliveryChallan_DetailsModelList[i].material_grade = "";
                }
                if (objModel.ssmtbl_DeliveryChallan_DetailsModelList[i].qty == null)
                {
                    objModel.ssmtbl_DeliveryChallan_DetailsModelList[i].qty = 0;
                }
                if (objModel.ssmtbl_DeliveryChallan_DetailsModelList[i].section == null)
                {
                    objModel.ssmtbl_DeliveryChallan_DetailsModelList[i].section = "";
                }
                if (objModel.ssmtbl_DeliveryChallan_DetailsModelList[i].taxable_value == null)
                {
                    objModel.ssmtbl_DeliveryChallan_DetailsModelList[i].taxable_value = 0;
                }
                if (objModel.ssmtbl_DeliveryChallan_DetailsModelList[i].units == null)
                {
                    objModel.ssmtbl_DeliveryChallan_DetailsModelList[i].units = "";
                }
                if (objModel.ssmtbl_DeliveryChallan_DetailsModelList[i].wo == null)
                {
                    objModel.ssmtbl_DeliveryChallan_DetailsModelList[i].wo = "";
                }
                if (objModel.ssmtbl_DeliveryChallan_DetailsModelList[i].wo_balance == null)
                {
                    objModel.ssmtbl_DeliveryChallan_DetailsModelList[i].wo_balance = 0;
                }
            }

            return objModel;
        }

        #endregion




        #region Update Delkivery Challan

        public string UpdateDeliveryChallan(ssmtbl_DeliveryChallanModel objDCModel)
        {
            string result = "Error Creating Delivery Challan";
            try
            {
                objDCModel = NullToBlank(objDCModel);

                DataTable dt = new DataTable();
                dt.Columns.Add("wo");
                dt.Columns.Add("material_grade");
                dt.Columns.Add("section");
                dt.Columns.Add("cut_weight");
                dt.Columns.Add("hardness");
                dt.Columns.Add("finish_weight");
                dt.Columns.Add("heat_code");
                dt.Columns.Add("wo_balance");
                dt.Columns.Add("description");
                dt.Columns.Add("hsn_sac_code");
                dt.Columns.Add("qty");
                dt.Columns.Add("units");
                dt.Columns.Add("taxable_value");
                for (int i = 0; i < objDCModel.ssmtbl_DeliveryChallan_DetailsModelList.Count; i++)
                {
                    dt.Rows.Add(objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].wo,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].material_grade,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].section,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].cut_weight,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].hardness,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].finish_weight,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].heat_code,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].wo_balance,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].description,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].hsn_sac_code,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].qty,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].units,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].taxable_value);
                }



                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmSP_Update_DeliveryChallan";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@dispatch_char", objDCModel.dispatch_char);
                cmd.Parameters.AddWithValue("@dispatch_id", objDCModel.dispatch_id);
                cmd.Parameters.AddWithValue("@dispatch_no", objDCModel.dispatch_no);
                cmd.Parameters.AddWithValue("@delivery_challan_type", objDCModel.delivery_challan_type);
                cmd.Parameters.AddWithValue("@customer_name", objDCModel.customer_name);
                cmd.Parameters.AddWithValue("@customer_id", objDCModel.customer_id);
                cmd.Parameters.AddWithValue("@CustomerPONo", objDCModel.CustomerPONo);
                cmd.Parameters.AddWithValue("@po_qty", objDCModel.po_qty);
                cmd.Parameters.AddWithValue("@HSNCode", objDCModel.HSNCode);
                cmd.Parameters.AddWithValue("@Customer_part_no", objDCModel.Customer_part_no);
                cmd.Parameters.AddWithValue("@vendor_id", objDCModel.vendor_id);
                cmd.Parameters.AddWithValue("@vendor_name", objDCModel.vendor_name);
                cmd.Parameters.AddWithValue("@die_no", objDCModel.die_no);
                cmd.Parameters.AddWithValue("@remark", objDCModel.remark);
                cmd.Parameters.AddWithValue("@process", objDCModel.process);
                cmd.Parameters.AddWithValue("@vendor_po_no", objDCModel.vendor_po_no);
                cmd.Parameters.AddWithValue("@expected_date", objDCModel.expected_date);
                cmd.Parameters.AddWithValue("@type_of_testing", objDCModel.type_of_testing);
                cmd.Parameters.AddWithValue("@heat_code", objDCModel.heat_code);
                cmd.Parameters.AddWithValue("@expected_report_date", objDCModel.expected_report_date);
                cmd.Parameters.AddWithValue("@material_grade", objDCModel.material_grade);
                cmd.Parameters.AddWithValue("@section", objDCModel.section);
                cmd.Parameters.AddWithValue("@returnable_type", objDCModel.returnable_type);
                cmd.Parameters.AddWithValue("@part_description", objDCModel.part_description);
                cmd.Parameters.AddWithValue("@cgst_perc", objDCModel.cgst_perc);
                cmd.Parameters.AddWithValue("@cgst_amt", objDCModel.cgst_amt);
                cmd.Parameters.AddWithValue("@sgst_perc", objDCModel.sgst_perc);
                cmd.Parameters.AddWithValue("@sgst_amt", objDCModel.sgst_amt);
                cmd.Parameters.AddWithValue("@igst_perc", objDCModel.igst_perc);
                cmd.Parameters.AddWithValue("@igst_amt", objDCModel.igst_amt);
                cmd.Parameters.AddWithValue("@total", objDCModel.total);
                cmd.Parameters.AddWithValue("@grand_total", objDCModel.grand_total);
                cmd.Parameters.AddWithValue("@UpdatedBy", "Test");
                //cmd.Parameters.AddWithValue("@createdby", Session["UserId"].ToString());
                cmd.Parameters.AddWithValue("@UpdatedOn", StandardDateTime.GetDateTime());


                var pList = new SqlParameter("@ssmtbl_DeliveryChallan_Details_", SqlDbType.Structured);
                pList.TypeName = "dbo.ssmtbl_DeliveryChallan_Details";
                pList.Value = dt;
                cmd.Parameters.Add(pList);
                


                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Delivery Challan Created Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }



        public string UpdateDeliveryChallanLabTesting(ssmtbl_DeliveryChallanModel objDCModel)
        {
            string result = "Error Creating Delivery Challan";
            try
            {
                objDCModel = NullToBlank(objDCModel);

                DataTable dt = new DataTable();
                dt.Columns.Add("wo");
                dt.Columns.Add("material_grade");
                dt.Columns.Add("section");
                dt.Columns.Add("cut_weight");
                dt.Columns.Add("hardness");
                dt.Columns.Add("finish_weight");
                dt.Columns.Add("heat_code");
                dt.Columns.Add("wo_balance");
                dt.Columns.Add("description");
                dt.Columns.Add("hsn_sac_code");
                dt.Columns.Add("qty");
                dt.Columns.Add("units");
                dt.Columns.Add("taxable_value");
                for (int i = 0; i < objDCModel.ssmtbl_DeliveryChallan_DetailsModelList.Count; i++)
                {
                    dt.Rows.Add(objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].wo,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].material_grade,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].section,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].cut_weight,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].hardness,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].finish_weight,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].heat_code,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].wo_balance,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].description,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].hsn_sac_code,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].qty,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].units,
                    objDCModel.ssmtbl_DeliveryChallan_DetailsModelList[i].taxable_value);
                }



                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmSP_Update_DeliveryChallanLabTesting";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@dispatch_char", objDCModel.dispatch_char);
                cmd.Parameters.AddWithValue("@dispatch_id", objDCModel.dispatch_id);
                cmd.Parameters.AddWithValue("@dispatch_no", objDCModel.dispatch_no);
                cmd.Parameters.AddWithValue("@delivery_challan_type", objDCModel.delivery_challan_type);
                cmd.Parameters.AddWithValue("@customer_name", objDCModel.customer_name);
                cmd.Parameters.AddWithValue("@customer_id", objDCModel.customer_id);
                cmd.Parameters.AddWithValue("@CustomerPONo", objDCModel.CustomerPONo);
                cmd.Parameters.AddWithValue("@po_qty", objDCModel.po_qty);
                cmd.Parameters.AddWithValue("@HSNCode", objDCModel.HSNCode);
                cmd.Parameters.AddWithValue("@Customer_part_no", objDCModel.Customer_part_no);
                cmd.Parameters.AddWithValue("@vendor_id", objDCModel.vendor_id);
                cmd.Parameters.AddWithValue("@vendor_name", objDCModel.vendor_name);
                cmd.Parameters.AddWithValue("@die_no", objDCModel.die_no);
                cmd.Parameters.AddWithValue("@remark", objDCModel.remark);
                cmd.Parameters.AddWithValue("@process", objDCModel.process);
                cmd.Parameters.AddWithValue("@vendor_po_no", objDCModel.vendor_po_no);
                cmd.Parameters.AddWithValue("@expected_date", objDCModel.expected_date);
                cmd.Parameters.AddWithValue("@type_of_testing", objDCModel.type_of_testing);
                cmd.Parameters.AddWithValue("@heat_code", objDCModel.heat_code);
                cmd.Parameters.AddWithValue("@expected_report_date", objDCModel.expected_report_date);
                cmd.Parameters.AddWithValue("@material_grade", objDCModel.material_grade);
                cmd.Parameters.AddWithValue("@section", objDCModel.section);
                cmd.Parameters.AddWithValue("@returnable_type", objDCModel.returnable_type);
                cmd.Parameters.AddWithValue("@part_description", objDCModel.part_description);
                cmd.Parameters.AddWithValue("@cgst_perc", objDCModel.cgst_perc);
                cmd.Parameters.AddWithValue("@cgst_amt", objDCModel.cgst_amt);
                cmd.Parameters.AddWithValue("@sgst_perc", objDCModel.sgst_perc);
                cmd.Parameters.AddWithValue("@sgst_amt", objDCModel.sgst_amt);
                cmd.Parameters.AddWithValue("@igst_perc", objDCModel.igst_perc);
                cmd.Parameters.AddWithValue("@igst_amt", objDCModel.igst_amt);
                cmd.Parameters.AddWithValue("@total", objDCModel.total);
                cmd.Parameters.AddWithValue("@grand_total", objDCModel.grand_total);
                cmd.Parameters.AddWithValue("@UpdatedBy", "Test");
                //cmd.Parameters.AddWithValue("@createdby", Session["UserId"].ToString());
                cmd.Parameters.AddWithValue("@UpdatedOn", StandardDateTime.GetDateTime());


                var pList = new SqlParameter("@ssmtbl_DeliveryChallan_Details_", SqlDbType.Structured);
                pList.TypeName = "dbo.ssmtbl_DeliveryChallan_Details";
                pList.Value = dt;
                cmd.Parameters.Add(pList);



                DataTable dataTable2 = new DataTable("SampleDataType1");
                dataTable2.Columns.Add("Raw_Material_Test", typeof(long));
                foreach (var data in objDCModel.ssmtbl_Feasibility_RawMaterialTestModel)
                {
                    dataTable2.Rows.Add(data.Raw_Material_Test);
                }
                var pList1 = new SqlParameter("@ssmtbl_Feasibility_RawMaterialTest_", SqlDbType.Structured);
                pList1.TypeName = "dbo.ssmtbl_Feasibility_RawMaterialTest";
                pList1.Value = dataTable2;
                cmd.Parameters.Add(pList1);


                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Delivery Challan Created Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }



        #endregion



        #region Get One Delivery Challan

        public ssmtbl_DeliveryChallanModel GetOneDeliveryChallan(string DispatchNo)
        {
            ssmtbl_DeliveryChallanModel objPGDC = new ssmtbl_DeliveryChallanModel();
            
            try
            {
                string sqlstr = "ssmsp_GetAllDeliveryChallan";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@dispatch_no", DispatchNo);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objPGDC.auto_id = Convert.ToInt32(sdr["auto_id"].ToString());
                    objPGDC.dispatch_id = Convert.ToInt32(sdr["dispatch_id"].ToString());
                    objPGDC.dispatch_char = sdr["dispatch_char"].ToString();
                    objPGDC.dispatch_no = sdr["dispatch_no"].ToString();
                    objPGDC.delivery_challan_type = sdr["delivery_challan_type"].ToString();
                    objPGDC.customer_name = sdr["customer_name"].ToString();
                    objPGDC.customer_id = Convert.ToInt32(sdr["customer_id"].ToString());
                    objPGDC.CustomerPONo = sdr["CustomerPONo"].ToString();
                    objPGDC.po_qty = sdr["po_qty"].ToString();
                    objPGDC.HSNCode = sdr["HSNCode"].ToString();
                    objPGDC.Customer_part_no = sdr["Customer_part_no"].ToString();
                    objPGDC.vendor_id = Convert.ToInt32(sdr["vendor_id"].ToString());
                    objPGDC.vendor_name = sdr["vendor_name"].ToString();
                    objPGDC.die_no = sdr["die_no"].ToString();
                    objPGDC.remark = sdr["remark"].ToString();
                    objPGDC.process = sdr["process"].ToString();
                    objPGDC.vendor_po_no = sdr["vendor_po_no"].ToString();
                    objPGDC.expected_date = Convert.ToDateTime(sdr["expected_date"].ToString());
                    objPGDC.type_of_testing = sdr["type_of_testing"].ToString();
                    objPGDC.heat_code = sdr["heat_code"].ToString();
                    objPGDC.expected_report_date = Convert.ToDateTime(sdr["expected_report_date"].ToString());
                    objPGDC.material_grade = sdr["material_grade"].ToString();
                    objPGDC.section = sdr["section"].ToString();
                    objPGDC.returnable_type = sdr["returnable_type"].ToString();
                    objPGDC.part_description = sdr["part_description"].ToString();
                    objPGDC.total = Convert.ToDecimal(sdr["total"].ToString());
                    objPGDC.cgst_perc = Convert.ToDecimal(sdr["cgst_perc"].ToString());
                    objPGDC.cgst_amt = Convert.ToDecimal(sdr["cgst_amt"].ToString());
                    objPGDC.sgst_perc = Convert.ToDecimal(sdr["sgst_perc"].ToString());
                    objPGDC.sgst_amt = Convert.ToDecimal(sdr["sgst_amt"].ToString());
                    objPGDC.igst_perc = Convert.ToDecimal(sdr["igst_perc"].ToString());
                    objPGDC.igst_amt = Convert.ToDecimal(sdr["igst_amt"].ToString());
                    objPGDC.grand_total = Convert.ToDecimal(sdr["grand_total"].ToString());
                    objPGDC.CreatedBy = sdr["CreatedBy"].ToString();
                    objPGDC.CreatedOn = Convert.ToDateTime(sdr["CreatedOn"].ToString());
                    objPGDC.UpdatedBy = sdr["UpdatedBy"].ToString();
                    objPGDC.UpdatedOn = Convert.ToDateTime(sdr["UpdatedOn"].ToString());
                    objPGDC.status = Convert.ToBoolean(sdr["status"].ToString());
                }
                sdr.Close();


                List<ssmtbl_DeliveryChallan_DetailsModel> objDCDetailsList = new List<ssmtbl_DeliveryChallan_DetailsModel>();
                cmd.Parameters.Clear();
                cmd.CommandText = "ssmsp_GetAllDeliveryChallanDetails";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@dispatch_no", DispatchNo);
                sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_DeliveryChallan_DetailsModel tempobj = new ssmtbl_DeliveryChallan_DetailsModel();
                    tempobj.dc_det_auto_id = Convert.ToInt32(sdr["dc_det_auto_id"].ToString());
                    tempobj.dispatch_no = sdr["dispatch_no"].ToString();
                    tempobj.wo = sdr["wo"].ToString();
                    tempobj.material_grade = sdr["material_grade"].ToString();
                    tempobj.section = sdr["section"].ToString();
                    tempobj.cut_weight = sdr["cut_weight"].ToString();
                    tempobj.hardness = sdr["hardness"].ToString();
                    tempobj.finish_weight = sdr["finish_weight"].ToString();
                    tempobj.heat_code = sdr["heat_code"].ToString();
                    tempobj.wo_balance = Convert.ToDecimal(sdr["wo_balance"].ToString());
                    tempobj.description = sdr["description"].ToString();
                    tempobj.hsn_sac_code = sdr["hsn_sac_code"].ToString();
                    tempobj.qty = Convert.ToDecimal(sdr["qty"].ToString());
                    tempobj.units = sdr["units"].ToString();
                    tempobj.taxable_value = Convert.ToDecimal(sdr["taxable_value"].ToString());

                    objDCDetailsList.Add(tempobj);
                }
                sdr.Close();



                List<ssmtbl_Feasibility_RawMaterialTestModel> objDCFeaList = new List<ssmtbl_Feasibility_RawMaterialTestModel>();
                cmd.Parameters.Clear();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select isnull(auto_id,0) as auto_id,isnull(dispatch_code,'') as dispatch_code, isnull(id,0) "
                + " as RawMaterialTestFisID, type from ssmtbl_DeliveryChallan_TestingType dc right outer join LKP_RawMaterialTestFis rm"
                + " on dc.RawMaterialTestFisID=rm.id and dispatch_code=@dispatch_code";
                cmd.Parameters.AddWithValue("@dispatch_code", DispatchNo);
                sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_Feasibility_RawMaterialTestModel tempobj = new ssmtbl_Feasibility_RawMaterialTestModel();
                    tempobj.auto_id = Convert.ToInt32(sdr["auto_id"].ToString());
                    tempobj.Raw_Material_Test = Convert.ToInt32(sdr["RawMaterialTestFisID"].ToString());
                    tempobj.Raw_Material_Test_Text = sdr["type"].ToString();
                    if(Convert.ToInt32(sdr["auto_id"].ToString()) >0)
                    {
                        tempobj.Raw_Material_Test_Select = true;
                    }
                    objDCFeaList.Add(tempobj);
                }
                sdr.Close();


                connection.Close();

                objPGDC.ssmtbl_DeliveryChallan_DetailsModelList = objDCDetailsList;
                objPGDC.ssmtbl_Feasibility_RawMaterialTestModel = objDCFeaList;
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return objPGDC;
        }

        #endregion

    }
}