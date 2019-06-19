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
    public class GoodsInwardData
    {


        #region Get All Goods Inward

        public Paged_ssmtbl_GoodsInwardModel getAllGoodsInward(string inward_type)
        {
            Paged_ssmtbl_GoodsInwardModel objPGGI = new Paged_ssmtbl_GoodsInwardModel();
            List<ssmtbl_GoodsInwardModel> objList = new List<ssmtbl_GoodsInwardModel>();
            try
            {
                string sqlstr = "ssmsp_GetAllGoodsInward";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@inward_type", inward_type);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_GoodsInwardModel objModel = new ssmtbl_GoodsInwardModel();
                    objModel.auto_id = Convert.ToInt32(sdr["auto_id"].ToString());
                    objModel.inward_type = sdr["inward_type"].ToString();
                    objModel.gin_number = sdr["gin_number"].ToString();
                    objModel.vendor_name = sdr["vendor_name"].ToString();
                    objModel.vendor_po_no = sdr["vendor_po_no"].ToString();
                    objModel.date_of_arrival = Convert.ToDateTime(sdr["date_of_arrival"].ToString());
                    objModel.gate_entry_no = sdr["gate_entry_no"].ToString();
                    objModel.last_gate_entry_no = sdr["last_gate_entry_no"].ToString();
                    objModel.challan_no = sdr["challan_no"].ToString();
                    objModel.invoice_no = sdr["invoice_no"].ToString();
                    objModel.cost_center = sdr["cost_center"].ToString();
                    objModel.mode_of_transportation = sdr["mode_of_transportation"].ToString();
                    objModel.vehicle_no = sdr["vehicle_no"].ToString();
                    objModel.comment = sdr["comment"].ToString();
                    objModel.received_from = sdr["received_from"].ToString();
                    objModel.customer_name = sdr["customer_name"].ToString();
                    objModel.mill_tc_path = sdr["mill_tc_path"].ToString();
                    objModel.dispatch_code = sdr["dispatch_code"].ToString();

                    objModel.if_no_specify = sdr["if_no_specify"].ToString();
                    objModel.customer_id = Convert.ToInt32(sdr["customer_id"].ToString());
                    objModel.vendor_id = Convert.ToInt32(sdr["vendor_id"].ToString());

                    objModel.created_by = sdr["created_by"].ToString();
                    objModel.created_on = Convert.ToDateTime(sdr["created_on"].ToString());
                    objModel.updated_by = sdr["updated_by"].ToString();
                    objModel.updated_on = Convert.ToDateTime(sdr["updated_on"].ToString());
                    objList.Add(objModel);
                }
                connection.Close();

                objPGGI.ssmtbl_GoodsInwardModelList = objList;
                objPGGI.inward_type = inward_type;
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return objPGGI;
        }

        public List<Dictionary<string, object>> getFileAttched(string ginNumber)
        {
            List<Dictionary<string, object>> allvpo = new List<Dictionary<string, object>>();
            try
            {

                string sqlstr = "uspGINDetails";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "GetGINFileUpload");
                cmd.Parameters.AddWithValue("@giwNumber", ginNumber.Trim());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                allvpo = GetTableRows(dt);
                return (allvpo);



            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return allvpo;
        }
        public int[] getDocReceived(string gin_number)
        {
            int[] vtypeid = { };

            try
            {

                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspGINDetails";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "GetGINDocReceived");
                cmd.Parameters.AddWithValue("@giwNumber", gin_number.Trim());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DataRow[] dr = new DataRow[dt.Rows.Count];
                dt.Rows.CopyTo(dr, 0);
                vtypeid = Array.ConvertAll(dr, new Converter<DataRow, int>(DataRowToDouble));
                connection.Close();

            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return vtypeid;
        }
        public static int DataRowToDouble(DataRow dr)
        {
            return Convert.ToInt32(dr["doc_id"].ToString());
        }
        public string GetMaxGinNo()
        {
            string s = "GIW-00001";
            string gin = "0";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspGetMaxGinNo";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    gin = (sdr["gin_number"].ToString());
                    s = gin == "" ? "GIW-00001" : ("GIW-" + ((Convert.ToInt64(gin.Split('-')[1]) + 1).ToString("00000")));
                    //   s = gin == "" ? "GIW-" + StandardDateTime.GetDateTime().ToString("MMyy") + "-" + "00001" : ("GIW-" + StandardDateTime.GetDateTime().ToString("MMyy") + "-" + ((Convert.ToInt64(gin.Split('-')[1]) + 1).ToString("00000")));
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                s = "GIW-00001";
                ErrorHandlerClass.LogError(ex);
            }
            return s;
        }


        #region Insert GIN Doc Received
        public string InsertGINDocReceived(string gin_number, int doc_id, string doc_name)
        {
            string result = "";
            try
            {

                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspGINDetails";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "InsertGINDocReceived");
                cmd.Parameters.AddWithValue("@gin_number", gin_number);
                cmd.Parameters.AddWithValue("@doc_id", Convert.ToInt32(doc_id));
                cmd.Parameters.AddWithValue("@doc_name", doc_name);
                SqlDataReader sdr = cmd.ExecuteReader();
                connection.Close();
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }
        #endregion


        public ssmtbl_GoodsInwardModel getGoodsInwardByID(string inward_type, string id)
        {
            ssmtbl_GoodsInwardModel objModel = new ssmtbl_GoodsInwardModel();
            try
            {

                string sqlstr = "ssmsp_GetGoodsInwardByID";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@inward_type", inward_type);
                cmd.Parameters.AddWithValue("@auto_id", id);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {

                    objModel.auto_id = Convert.ToInt32(sdr["auto_id"].ToString());
                    objModel.inward_type = sdr["inward_type"].ToString();
                    objModel.gin_char = sdr["gin_char"].ToString();
                    objModel.gin_id = Convert.ToInt32(sdr["gin_id"].ToString());
                    objModel.gin_number = sdr["gin_number"].ToString();
                    objModel.vendor_id = Convert.ToInt32(sdr["vendor_id"]);
                    objModel.vendor_name = sdr["vendor_name"].ToString();
                    objModel.vendor_po_no = sdr["vendor_po_no"].ToString();
                    objModel.date_of_arrival = Convert.ToDateTime(sdr["date_of_arrival"].ToString());
                    objModel.gate_entry_no = sdr["gate_entry_no"].ToString();
                    objModel.last_gate_entry_no = sdr["last_gate_entry_no"].ToString();
                    objModel.challan_no = sdr["challan_no"].ToString();
                    objModel.invoice_no = sdr["invoice_no"].ToString();
                    objModel.cost_center = sdr["cost_center"].ToString();
                    objModel.mode_of_transportation = sdr["mode_of_transportation"].ToString();
                    objModel.vehicle_no = sdr["vehicle_no"].ToString();
                    objModel.comment = sdr["comment"].ToString();
                    objModel.if_no_specify = sdr["if_no_specify"].ToString();
                    objModel.received_from = sdr["received_from"].ToString();
                    objModel.customer_name = sdr["customer_name"].ToString();
                    objModel.customer_id = Convert.ToInt32(sdr["customer_id"].ToString());
                    objModel.mill_tc_path = sdr["mill_tc_path"].ToString();
                    objModel.dispatch_code = sdr["dispatch_code"].ToString();
                    objModel.created_by = sdr["created_by"].ToString();
                    objModel.created_on = Convert.ToDateTime(sdr["created_on"].ToString());
                    objModel.updated_by = (sdr["updated_by"] == null) ? string.Empty : sdr["updated_by"].ToString();
                    if (sdr["updated_on"] != null)
                    {
                        objModel.updated_on = Convert.ToDateTime(sdr["created_on"].ToString()); ;
                    }
                }
                connection.Close();


            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return objModel;
        }

        public string InsertGinDetails(long ginId, string partDesc, string orderedQty, string orderedwt, string ChallanQty, string ReceivedQty, string AcceptedQty, string Remark, string grade, string section, string heatcode, string GinStatus, string heatnumber)
        {

            string result = "Error Inserting Goods Inward Details";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspGINDetails";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "InsertGINDetails");
                cmd.Parameters.AddWithValue("@gin_number", ginId);
                cmd.Parameters.AddWithValue("@item_description", partDesc.Trim());
                cmd.Parameters.AddWithValue("@order_qty", Convert.ToDecimal(orderedQty));
                //cmd.Parameters.AddWithValue("@orderedwt", orderedwt);
                cmd.Parameters.AddWithValue("@challanQty", Convert.ToDecimal(ChallanQty));
                cmd.Parameters.AddWithValue("@receivedQty", Convert.ToDecimal(ReceivedQty));
                cmd.Parameters.AddWithValue("@acceptedQty", Convert.ToDecimal(0));
                cmd.Parameters.AddWithValue("@remark", Remark.Trim());
                cmd.Parameters.AddWithValue("@grade", grade.Trim());
                cmd.Parameters.AddWithValue("@section", section.Trim());
                cmd.Parameters.AddWithValue("@heatcode", heatcode.Trim());
                cmd.Parameters.AddWithValue("@ginStatus", GinStatus.Trim());
                cmd.Parameters.AddWithValue("@heatnumber", heatnumber.Trim());
                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Goods Inward Details inserted Successfully!";

            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }

            return result;

        }
        public long InsertGIN(string poID, string vendorName, string inwardType, string ginNumber, string vpoNo, string arrivalDate, string modeOfTransportation, string challan_no, string invoice_no, string vehicleNo, string Comment, string heatcode, string partyType)
        {
            string result = "Error Generating Goods Inward";
            long id = 0;
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspInsertGIN";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@vendorName", vendorName.Trim());
                cmd.Parameters.AddWithValue("@inwardType", inwardType.Trim());
                cmd.Parameters.AddWithValue("@ginNumber", ginNumber.Trim());
                cmd.Parameters.AddWithValue("@vendor_po_no", vpoNo.Trim());
                cmd.Parameters.AddWithValue("@arrivalDate", Convert.ToDateTime(arrivalDate));
                cmd.Parameters.AddWithValue("@modeOfTransportation", modeOfTransportation.Trim());
                cmd.Parameters.AddWithValue("@challan_no", challan_no.Trim());
                cmd.Parameters.AddWithValue("@invoice_no", invoice_no.Trim());
                cmd.Parameters.AddWithValue("@vehicleNo", vehicleNo.Trim());
                cmd.Parameters.AddWithValue("@Comment", Comment.Trim());
                cmd.Parameters.AddWithValue("@poID", Convert.ToInt32(poID));
                cmd.Parameters.AddWithValue("@heatcode", heatcode.Trim());
                cmd.Parameters.AddWithValue("@partyType", partyType.Trim());
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    id = Convert.ToInt64(sdr[0].ToString());
                }
                connection.Close();
                result = "Goods Inward Generated Successfully!";
                // return Json(id, JsonRequestBehavior.AllowGet);

            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }

            return (id);
        }
        public long DeleteGinDetails(long id)
        {
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspGINDetails";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "DeleteGINDetails");
                cmd.Parameters.AddWithValue("@gin_number", id);
                SqlDataReader sdr = cmd.ExecuteReader();
                connection.Close();
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }

            return (id);
        }
        public long InsertGINc(string vendorName, string inwardType, string ginNumber, string vpoNo, string receivedqnt)
        {
            string result = "Error Generating Goods Inward";
            long id = 0;
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspInsertGINCustomer";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@vendorName", vendorName.Trim());
                cmd.Parameters.AddWithValue("@inwardType", inwardType.Trim());
                cmd.Parameters.AddWithValue("@ginNumber", ginNumber.Trim());
                cmd.Parameters.AddWithValue("@vpoNo", vpoNo.Trim());
                cmd.Parameters.AddWithValue("@receivedqnt", receivedqnt.Trim());
                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Goods Inward Generated Successfully!";
                // return Json(id, JsonRequestBehavior.AllowGet);

            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            // return Json(id, JsonRequestBehavior.AllowGet);
            return (id);
        }
        public ssmtbl_GoodsInwardModel getGoodsInwardByGinNo(string inward_type, string id)
        {
            ssmtbl_GoodsInwardModel objModel = new ssmtbl_GoodsInwardModel();
            try
            {

                string sqlstr = "ssmsp_GetGoodsInwardByGinNo";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@inward_type", inward_type);
                cmd.Parameters.AddWithValue("@gin_number", id);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {

                    objModel.auto_id = Convert.ToInt32(sdr["auto_id"].ToString());
                    objModel.inward_type = sdr["inward_type"].ToString();
                    objModel.gin_char = sdr["gin_char"].ToString();
                    objModel.gin_id = Convert.ToInt32(sdr["gin_id"].ToString());
                    objModel.gin_number = sdr["gin_number"].ToString();
                    objModel.vendor_id = Convert.ToInt32(sdr["vendor_id"]);
                    objModel.vendor_name = sdr["vendor_name"].ToString();
                    objModel.vendor_po_no = sdr["vendor_po_no"].ToString();
                    objModel.date_of_arrival = Convert.ToDateTime(sdr["date_of_arrival"].ToString());
                    objModel.gate_entry_no = sdr["gate_entry_no"].ToString();
                    objModel.last_gate_entry_no = sdr["last_gate_entry_no"].ToString();
                    objModel.challan_no = sdr["challan_no"].ToString();
                    objModel.invoice_no = sdr["invoice_no"].ToString();
                    objModel.cost_center = sdr["cost_center"].ToString();
                    objModel.mode_of_transportation = sdr["mode_of_transportation"].ToString();
                    objModel.vehicle_no = sdr["vehicle_no"].ToString();
                    objModel.comment = sdr["comment"].ToString();
                    objModel.if_no_specify = sdr["if_no_specify"].ToString();
                    objModel.received_from = sdr["received_from"].ToString();
                    objModel.customer_name = sdr["customer_name"].ToString();
                    objModel.customer_id = Convert.ToInt32(sdr["customer_id"].ToString());
                    objModel.mill_tc_path = sdr["mill_tc_path"].ToString();
                    objModel.dispatch_code = sdr["dispatch_code"].ToString();
                    objModel.created_by = sdr["created_by"].ToString();
                    objModel.created_on = Convert.ToDateTime(sdr["created_on"].ToString());
                    objModel.updated_by = (sdr["updated_by"] == null) ? string.Empty : sdr["updated_by"].ToString();
                    if (sdr["updated_on"] != null)
                    {
                        objModel.updated_on = Convert.ToDateTime(sdr["created_on"].ToString()); ;
                    }
                }
                connection.Close();


            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return objModel;
        }



        #endregion


        public ssmtbl_GoodsInwardModel GetOneGINDetails(int POId, string Party)
        {

            ssmtbl_GoodsInwardModel objModel = new ssmtbl_GoodsInwardModel();
            try
            {

                string sqlstr = "uspGetPODetailsByPOID";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@POId", POId);
                cmd.Parameters.AddWithValue("@Party", Party.Trim());
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objModel.gin_number = sdr["gin_number"].ToString();
                    objModel.vendor_po_no = sdr["po_no"].ToString();
                    objModel.date_of_arrival = Convert.ToDateTime(sdr["po_date"].ToString());
                    objModel.vendor_name = sdr["Name"].ToString();
                    objModel.poQty = sdr["qty"].ToString();
                    objModel.dieNumber = sdr["DieNumber"].ToString();
                    objModel.heatCode = sdr["HeatCode"].ToString();
                    objModel.invoice_no = sdr["invoice_no"].ToString();
                    objModel.challan_no = sdr["challan_no"].ToString();
                    objModel.mode_of_transportation = sdr["mode_of_transportation"].ToString();
                    objModel.vehicle_no = sdr["vehicle_no"].ToString();
                    objModel.comment = sdr["comment"].ToString();
                    //objModel.created_on = Convert.ToDateTime(sdr["created_on"].ToString());                   
                }

                connection.Close();


            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return objModel;
        }

        public List<Dictionary<string, object>> GetGINDetailsbyVPO(string vendorpono)
        {
            List<Dictionary<string, object>> allvpo = new List<Dictionary<string, object>>();
            try
            {

                string sqlstr = "uspGetGoodsInwardDetailByVPO";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@vendorpono", vendorpono.Trim());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                allvpo = GetTableRows(dt);
                return (allvpo);



            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return allvpo;
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
        public List<ssmtbl_GoodsInward_DetailsModel> getGoodsInwardDetailByID(string gin_number)
        {
            List<ssmtbl_GoodsInward_DetailsModel> objList = new List<ssmtbl_GoodsInward_DetailsModel>();
            try
            {

                string sqlstr = "ssmsp_GetGoodsInwardDetailByID";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@gin_number", gin_number);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_GoodsInward_DetailsModel objModel = new ssmtbl_GoodsInward_DetailsModel();
                    objModel.gi_det_auto_id = Convert.ToInt32(sdr["gi_det_auto_id"].ToString());
                    objModel.gin_number = sdr["gin_number"].ToString();
                    objModel.item_code = sdr["item_code"].ToString();
                    objModel.item_description = sdr["item_description"].ToString();
                    objModel.order_qty = Convert.ToDecimal(sdr["order_qty"].ToString());
                    objModel.challan_qty = Convert.ToDecimal(sdr["challan_qty"].ToString());
                    objModel.accepted_qty = Convert.ToDecimal(sdr["accepted_qty"].ToString());
                    objModel.rate_per = sdr["rate_per"].ToString();
                    objModel.shortfall = Convert.ToDecimal(sdr["shortfall"].ToString());
                    objModel.reason = sdr["reason"].ToString();
                    objModel.po = sdr["po"].ToString();
                    objModel.grade = sdr["grade"].ToString();
                    objModel.section = sdr["section"].ToString();
                    objModel.heat_code = sdr["heat_code"].ToString();
                    objModel.heat_number = sdr["heat_number"].ToString();
                    objModel.unit = sdr["unit"].ToString();
                    objModel.wo = sdr["wo"].ToString();
                    objModel.dispatch_qty = Convert.ToDecimal(sdr["dispatch_qty"].ToString());
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

        #region Get Max GIN No / Last Gate Entry No

        public ssmtbl_GoodsInwardModel GetMaxGINNo()
        {
            ssmtbl_GoodsInwardModel objPOModel = new ssmtbl_GoodsInwardModel();
            try
            {
                string sqlstr = "select (Isnull(Max(gin_id),0) + 1) as gin_id from ssmtbl_GoodsInward";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.Text;
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objPOModel.gin_id = Convert.ToInt32(sdr["gin_id"].ToString());
                    objPOModel.gin_char = "GIW-" + StandardDateTime.GetDateTime().ToString("MMyy") + "-";
                    objPOModel.gin_number = objPOModel.gin_char + objPOModel.gin_id;

                    objPOModel.date_of_arrival = StandardDateTime.GetDateTime();
                }
                sdr.Close();



                sqlstr = "select isnull(gate_entry_no,'') as gate_entry_no from ssmtbl_GoodsInward where gin_id=(Select Isnull(Max(gin_id),0) from ssmtbl_GoodsInward)";
                cmd.CommandText = sqlstr;
                cmd.Parameters.Clear();
                cmd.Connection = connection;
                sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objPOModel.last_gate_entry_no = sdr["gate_entry_no"].ToString();
                }

                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objPOModel;
        }

        #endregion


        #region Get Last Gate

        public ssmtbl_GoodsInwardModel GetLastGateEntryNo()
        {
            ssmtbl_GoodsInwardModel objPOModel = new ssmtbl_GoodsInwardModel();
            try
            {
                string sqlstr = "select gate_entry_no from ssmtbl_GoodsInward where gin_id=(Select Isnull(Max(gin_id),0) from ssmtbl_GoodsInward)";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.Text;
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objPOModel.gin_id = Convert.ToInt32(sdr["gin_id"].ToString());
                    objPOModel.gin_char = "GIW-" + StandardDateTime.GetDateTime().ToString("MMyy") + "-";
                    objPOModel.gin_number = objPOModel.gin_char + objPOModel.gin_id;

                    objPOModel.date_of_arrival = StandardDateTime.GetDateTime();
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objPOModel;
        }

        #endregion


        #region Get Vendor PO No Using Parameter Prefix and Vendor Name

        public List<SelectListItem> getVendorPONo(string vendor_name, string Prefix, string vpo_type)
        {
            List<SelectListItem> objRowsList = new List<SelectListItem>();
            try
            {
                string sqlstr = "Select po_no from dbo.ssmtbl_VendorPurchaseOrder where vendor_name=@vendor_name and "
                    + " vendor_po_type=@vendor_po_type and vendor_po_status=@vendor_po_status and po_no like @Prefix";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@vendor_name", vendor_name);
                cmd.Parameters.AddWithValue("@vendor_po_type", vpo_type);
                cmd.Parameters.AddWithValue("@vendor_po_status", VendorPurchaseOrderStatus.VPOApproved);
                cmd.Parameters.AddWithValue("@Prefix", System.Data.SqlDbType.NVarChar).Value = "%" + Prefix + "%";
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

        #region Get DispatchNo Using Parameter Prefix and Vendor Name

        public List<SelectListItem> getDispacthNO(string vendor_name, string Prefix, string vpo_type)
        {
            List<SelectListItem> objRowsList = new List<SelectListItem>();
            try
            {
                string sqlstr = "SELECT dispatch_no FROM ssmtbl_DeliveryChallan where "
                + "delivery_challan_type=@delivery_challan_type and vendor_name=@vendor_name  and dispatch_no like @Prefix and status is null";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@vendor_name", vendor_name);
                cmd.Parameters.AddWithValue("@delivery_challan_type", vpo_type);
                cmd.Parameters.AddWithValue("@Prefix", System.Data.SqlDbType.NVarChar).Value = "%" + Prefix + "%";
                SqlDataReader sdr = cmd.ExecuteReader();
                List<string> custName = new List<string>();
                while (sdr.Read())
                {
                    objRowsList.Add(new SelectListItem
                    {
                        Text = sdr["dispatch_no"].ToString(),
                        Value = sdr["dispatch_no"].ToString()
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



        #region Get Customer PO No Using Parameter Prefix and Customer Name

        public List<SelectListItem> getCustomerPONo(string customerName, string Prefix)
        {
            List<SelectListItem> objRowsList = new List<SelectListItem>();
            try
            {
                string sqlstr = "Select CustomerPONo from dbo.ssmtbl_PurchaseOrder where customerName=@customerName and "
                    + " POStatus=@POStatus and CustomerPONo like @Prefix";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@customerName", customerName);
                cmd.Parameters.AddWithValue("@POStatus", InquiryStatus.POApproved);
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




        public string InsertGoodsInward(ssmtbl_GoodsInwardModel model)
        {
            string result = "Error Creating Goods Inward";
            try
            {
                model = NullToBlank(model);

                DataTable dt = new DataTable();
                dt.Columns.Add("item_code");
                dt.Columns.Add("item_description");
                dt.Columns.Add("order_qty");
                dt.Columns.Add("challan_qty");
                dt.Columns.Add("accepted_qty");
                dt.Columns.Add("rate_per");
                dt.Columns.Add("shortfall");
                dt.Columns.Add("reason");
                dt.Columns.Add("po");
                dt.Columns.Add("grade");
                dt.Columns.Add("section");
                dt.Columns.Add("heat_code");
                dt.Columns.Add("heat_number");
                dt.Columns.Add("unit");
                dt.Columns.Add("wo");
                dt.Columns.Add("dispatch_qty");

                for (int i = 0; i < model.ssmtbl_GoodsInward_DetailsModel.Count; i++)
                {
                    dt.Rows.Add(model.ssmtbl_GoodsInward_DetailsModel[i].item_code,
                    model.ssmtbl_GoodsInward_DetailsModel[i].item_description,
                    model.ssmtbl_GoodsInward_DetailsModel[i].order_qty,
                    model.ssmtbl_GoodsInward_DetailsModel[i].challan_qty,
                    model.ssmtbl_GoodsInward_DetailsModel[i].accepted_qty,
                    model.ssmtbl_GoodsInward_DetailsModel[i].rate_per,
                    model.ssmtbl_GoodsInward_DetailsModel[i].shortfall,
                    model.ssmtbl_GoodsInward_DetailsModel[i].reason,
                    model.ssmtbl_GoodsInward_DetailsModel[i].po,
                    model.ssmtbl_GoodsInward_DetailsModel[i].grade,
                    model.ssmtbl_GoodsInward_DetailsModel[i].section,
                    model.ssmtbl_GoodsInward_DetailsModel[i].heat_code,
                    model.ssmtbl_GoodsInward_DetailsModel[i].heat_number,
                    model.ssmtbl_GoodsInward_DetailsModel[i].unit,
                    model.ssmtbl_GoodsInward_DetailsModel[i].wo,
                    model.ssmtbl_GoodsInward_DetailsModel[i].dispatch_qty
                    );
                }


                DataTable dt1 = new DataTable();
                dt1.Columns.Add("doc_id");
                dt1.Columns.Add("doc_name");
                for (int i = 0; i < model.ssmtbl_GoodsInward_DocReceivedModel.Count; i++)
                {
                    if (model.ssmtbl_GoodsInward_DocReceivedModel[i].ischecked == true)
                    {
                        dt1.Rows.Add(model.ssmtbl_GoodsInward_DocReceivedModel[i].doc_id,
                        model.ssmtbl_GoodsInward_DocReceivedModel[i].doc_name);
                    }
                }

                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmSP_Insert_GoodsInward";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@inward_type", model.inward_type);
                cmd.Parameters.AddWithValue("@gin_char", model.gin_char);
                cmd.Parameters.AddWithValue("@gin_id", model.gin_id);
                cmd.Parameters.AddWithValue("@gin_number", model.gin_number);
                cmd.Parameters.AddWithValue("@vendor_name", model.vendor_name);
                cmd.Parameters.AddWithValue("@vendor_id", model.vendor_id);
                cmd.Parameters.AddWithValue("@vendor_po_no", model.vendor_po_no);
                cmd.Parameters.AddWithValue("@date_of_arrival", model.date_of_arrival);
                cmd.Parameters.AddWithValue("@gate_entry_no", model.gate_entry_no);
                cmd.Parameters.AddWithValue("@last_gate_entry_no", model.last_gate_entry_no);
                cmd.Parameters.AddWithValue("@challan_no", model.challan_no);
                cmd.Parameters.AddWithValue("@invoice_no", model.invoice_no);
                cmd.Parameters.AddWithValue("@cost_center", model.cost_center);
                cmd.Parameters.AddWithValue("@mode_of_transportation", model.mode_of_transportation);
                cmd.Parameters.AddWithValue("@vehicle_no", model.vehicle_no);
                cmd.Parameters.AddWithValue("@comment", model.comment);
                cmd.Parameters.AddWithValue("@received_from", model.received_from);
                cmd.Parameters.AddWithValue("@customer_name", model.customer_name);
                cmd.Parameters.AddWithValue("@customer_id", model.customer_id);
                cmd.Parameters.AddWithValue("@if_no_specify", model.if_no_specify);
                cmd.Parameters.AddWithValue("@mill_tc_path", model.mill_tc_path);
                cmd.Parameters.AddWithValue("@dispatch_code", model.dispatch_code);
                cmd.Parameters.AddWithValue("@created_by", "Test");
                cmd.Parameters.AddWithValue("@created_on", StandardDateTime.GetDateTime());

                var pList = new SqlParameter("@ssmtbl_GoodsInward_Details_", SqlDbType.Structured);
                pList.TypeName = "dbo.ssmtbl_GoodsInward_Details";
                pList.Value = dt;
                cmd.Parameters.Add(pList);

                var pList1 = new SqlParameter("@ssmtbl_GoodsInward_DocReceived_", SqlDbType.Structured);
                pList1.TypeName = "dbo.ssmtbl_GoodsInward_DocReceived";
                pList1.Value = dt1;
                cmd.Parameters.Add(pList1);

                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Goods Inward Created Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }

        public string UpdateGoodsInward(ssmtbl_GoodsInwardModel model)
        {
            string result = "Error Creating Goods Inward";
            try
            {
                model = NullToBlank(model);

                DataTable dt = new DataTable();
                dt.Columns.Add("item_code");
                dt.Columns.Add("item_description");
                dt.Columns.Add("order_qty");
                dt.Columns.Add("challan_qty");
                dt.Columns.Add("accepted_qty");
                dt.Columns.Add("rate_per");
                dt.Columns.Add("shortfall");
                dt.Columns.Add("reason");
                dt.Columns.Add("po");
                dt.Columns.Add("grade");
                dt.Columns.Add("section");
                dt.Columns.Add("heat_code");
                dt.Columns.Add("heat_number");
                dt.Columns.Add("unit");
                dt.Columns.Add("wo");
                dt.Columns.Add("dispatch_qty");

                for (int i = 0; i < model.ssmtbl_GoodsInward_DetailsModel.Count; i++)
                {
                    dt.Rows.Add(model.ssmtbl_GoodsInward_DetailsModel[i].item_code,
                    model.ssmtbl_GoodsInward_DetailsModel[i].item_description,
                    model.ssmtbl_GoodsInward_DetailsModel[i].order_qty,
                    model.ssmtbl_GoodsInward_DetailsModel[i].challan_qty,
                    model.ssmtbl_GoodsInward_DetailsModel[i].accepted_qty,
                    model.ssmtbl_GoodsInward_DetailsModel[i].rate_per,
                    model.ssmtbl_GoodsInward_DetailsModel[i].shortfall,
                    model.ssmtbl_GoodsInward_DetailsModel[i].reason,
                    model.ssmtbl_GoodsInward_DetailsModel[i].po,
                    model.ssmtbl_GoodsInward_DetailsModel[i].grade,
                    model.ssmtbl_GoodsInward_DetailsModel[i].section,
                    model.ssmtbl_GoodsInward_DetailsModel[i].heat_code,
                    model.ssmtbl_GoodsInward_DetailsModel[i].heat_number,
                    model.ssmtbl_GoodsInward_DetailsModel[i].unit,
                    model.ssmtbl_GoodsInward_DetailsModel[i].wo,
                    model.ssmtbl_GoodsInward_DetailsModel[i].dispatch_qty
                    );
                }


                DataTable dt1 = new DataTable();
                dt1.Columns.Add("doc_id");
                dt1.Columns.Add("doc_name");
                for (int i = 0; i < model.ssmtbl_GoodsInward_DocReceivedModel.Count; i++)
                {
                    if (model.ssmtbl_GoodsInward_DocReceivedModel[i].ischecked == true)
                    {
                        dt1.Rows.Add(model.ssmtbl_GoodsInward_DocReceivedModel[i].doc_id,
                        model.ssmtbl_GoodsInward_DocReceivedModel[i].doc_name);
                    }
                }

                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmSP_Update_GoodsInward";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@inward_type", model.inward_type);
                cmd.Parameters.AddWithValue("@gin_char", model.gin_char);
                cmd.Parameters.AddWithValue("@gin_id", model.gin_id);
                cmd.Parameters.AddWithValue("@gin_number", model.gin_number);
                cmd.Parameters.AddWithValue("@vendor_name", model.vendor_name);
                cmd.Parameters.AddWithValue("@vendor_id", model.vendor_id);
                cmd.Parameters.AddWithValue("@vendor_po_no", model.vendor_po_no);
                cmd.Parameters.AddWithValue("@date_of_arrival", model.date_of_arrival);
                cmd.Parameters.AddWithValue("@gate_entry_no", model.gate_entry_no);
                cmd.Parameters.AddWithValue("@last_gate_entry_no", model.last_gate_entry_no);
                cmd.Parameters.AddWithValue("@challan_no", model.challan_no);
                cmd.Parameters.AddWithValue("@invoice_no", model.invoice_no);
                cmd.Parameters.AddWithValue("@cost_center", model.cost_center);
                cmd.Parameters.AddWithValue("@mode_of_transportation", model.mode_of_transportation);
                cmd.Parameters.AddWithValue("@vehicle_no", model.vehicle_no);
                cmd.Parameters.AddWithValue("@comment", model.comment);
                cmd.Parameters.AddWithValue("@received_from", model.received_from);
                cmd.Parameters.AddWithValue("@customer_name", model.customer_name);
                cmd.Parameters.AddWithValue("@customer_id", model.customer_id);
                cmd.Parameters.AddWithValue("@if_no_specify", model.if_no_specify);
                cmd.Parameters.AddWithValue("@mill_tc_path", model.mill_tc_path);
                cmd.Parameters.AddWithValue("@dispatch_code", model.dispatch_code);
                cmd.Parameters.AddWithValue("@updated_by", "Test");
                cmd.Parameters.AddWithValue("@updated_on", StandardDateTime.GetDateTime());

                var pList = new SqlParameter("@ssmtbl_GoodsInward_Details_", SqlDbType.Structured);
                pList.TypeName = "dbo.ssmtbl_GoodsInward_Details";
                pList.Value = dt;
                cmd.Parameters.Add(pList);

                var pList1 = new SqlParameter("@ssmtbl_GoodsInward_DocReceived_", SqlDbType.Structured);
                pList1.TypeName = "dbo.ssmtbl_GoodsInward_DocReceived";
                pList1.Value = dt1;
                cmd.Parameters.Add(pList1);

                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Goods Inward Updated Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }


        private ssmtbl_GoodsInwardModel NullToBlank(ssmtbl_GoodsInwardModel objModel)
        {
            if (objModel.challan_no == null)
            {
                objModel.challan_no = "";
            }
            if (objModel.comment == null)
            {
                objModel.comment = "";
            }
            if (objModel.cost_center == null)
            {
                objModel.cost_center = "";
            }
            if (objModel.customer_name == null)
            {
                objModel.customer_name = "";
            }
            if (objModel.customer_id == null)
            {
                objModel.customer_id = 0;
            }
            //if (objModel.date_of_arrival == null)
            //{
            //    objModel.date_of_arrival = "";
            //}
            if (objModel.dispatch_code == null)
            {
                objModel.dispatch_code = "";
            }
            if (objModel.gate_entry_no == null)
            {
                objModel.gate_entry_no = "";
            }
            if (objModel.gin_char == null)
            {
                objModel.gin_char = "";
            }
            if (objModel.if_no_specify == null)
            {
                objModel.if_no_specify = "";
            }
            if (objModel.invoice_no == null)
            {
                objModel.invoice_no = "";
            }
            if (objModel.inward_type == null)
            {
                objModel.inward_type = "";
            }
            if (objModel.last_gate_entry_no == null)
            {
                objModel.last_gate_entry_no = "";
            }
            if (objModel.mill_tc_path == null)
            {
                objModel.mill_tc_path = "";
            }
            if (objModel.mode_of_transportation == null)
            {
                objModel.mode_of_transportation = "";
            }
            if (objModel.received_from == null)
            {
                objModel.received_from = "";
            }
            if (objModel.vehicle_no == null)
            {
                objModel.vehicle_no = "";
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

            for (int i = 0; i < objModel.ssmtbl_GoodsInward_DetailsModel.Count; i++)
            {
                if (objModel.ssmtbl_GoodsInward_DetailsModel[i].accepted_qty == null)
                {
                    objModel.ssmtbl_GoodsInward_DetailsModel[i].accepted_qty = 0;
                }
                if (objModel.ssmtbl_GoodsInward_DetailsModel[i].challan_qty == null)
                {
                    objModel.ssmtbl_GoodsInward_DetailsModel[i].challan_qty = 0;
                }
                if (objModel.ssmtbl_GoodsInward_DetailsModel[i].grade == null)
                {
                    objModel.ssmtbl_GoodsInward_DetailsModel[i].grade = "";
                }
                if (objModel.ssmtbl_GoodsInward_DetailsModel[i].heat_code == null)
                {
                    objModel.ssmtbl_GoodsInward_DetailsModel[i].heat_code = "";
                }
                if (objModel.ssmtbl_GoodsInward_DetailsModel[i].heat_number == null)
                {
                    objModel.ssmtbl_GoodsInward_DetailsModel[i].heat_number = "";
                }
                if (objModel.ssmtbl_GoodsInward_DetailsModel[i].item_code == null)
                {
                    objModel.ssmtbl_GoodsInward_DetailsModel[i].item_code = "";
                }
                if (objModel.ssmtbl_GoodsInward_DetailsModel[i].item_description == null)
                {
                    objModel.ssmtbl_GoodsInward_DetailsModel[i].item_description = "";
                }
                if (objModel.ssmtbl_GoodsInward_DetailsModel[i].order_qty == null)
                {
                    objModel.ssmtbl_GoodsInward_DetailsModel[i].order_qty = 0;
                }
                if (objModel.ssmtbl_GoodsInward_DetailsModel[i].po == null)
                {
                    objModel.ssmtbl_GoodsInward_DetailsModel[i].po = "";
                }
                if (objModel.ssmtbl_GoodsInward_DetailsModel[i].rate_per == null)
                {
                    objModel.ssmtbl_GoodsInward_DetailsModel[i].rate_per = "";
                }
                if (objModel.ssmtbl_GoodsInward_DetailsModel[i].reason == null)
                {
                    objModel.ssmtbl_GoodsInward_DetailsModel[i].reason = "";
                }
                if (objModel.ssmtbl_GoodsInward_DetailsModel[i].section == null)
                {
                    objModel.ssmtbl_GoodsInward_DetailsModel[i].section = "";
                }
                if (objModel.ssmtbl_GoodsInward_DetailsModel[i].shortfall == null)
                {
                    objModel.ssmtbl_GoodsInward_DetailsModel[i].shortfall = 0;
                }

                if (objModel.ssmtbl_GoodsInward_DetailsModel[i].wo == null)
                {
                    objModel.ssmtbl_GoodsInward_DetailsModel[i].wo = "";
                }

                if (objModel.ssmtbl_GoodsInward_DetailsModel[i].unit == null)
                {
                    objModel.ssmtbl_GoodsInward_DetailsModel[i].unit = "";
                }
                if (objModel.ssmtbl_GoodsInward_DetailsModel[i].dispatch_qty == null)
                {
                    objModel.ssmtbl_GoodsInward_DetailsModel[i].dispatch_qty = 0;
                }
            }

            return objModel;
        }



    }
}