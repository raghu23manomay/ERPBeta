using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using XRP.DataModel;
using XRP.Global;
using XRP.Models;

namespace XRP.Controllers
{
    public class VendorPurchaseOrderApprovalController : Controller
    {

        VendorPurchaseOrderApprovalData objVPOAppData = new VendorPurchaseOrderApprovalData();

        #region Vendor PO List For Approval Get

        [HttpGet]
        public ActionResult VendorPurchaseOrderList()
        {
            List<ssmtbl_VendorPurchaseOrderModel> objList = new List<ssmtbl_VendorPurchaseOrderModel>();
            objList = objVPOAppData.GetAllVendorPurchaseOrder(VendorPurchaseOrderStatus.VPOPendingForApproval);
            return View(objList);
        }

        #endregion

        public ActionResult VPOApproval()
        {
           
            return View();
        }
        [HttpPost]
        public JsonResult ApproveResponsePurchaseOrder(string id)
        {
            try
            {
                id = id.Trim();
                string sqlstr = "VPORequisition";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "ApproveResponsePurchaseOrder");
                cmd.Parameters.AddWithValue("@vpono", id.Trim());
                cmd.ExecuteNonQuery();
                connection.Close();
                return Json("Insert", JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult RejectResponsePurchaseOrder(string id,string Comment)
        {
            try
            {
                id = id.Trim();
                string sqlstr = "VPORequisition";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "RejectResponsePurchaseOrder");
                cmd.Parameters.AddWithValue("@vpono", id.Trim());
                cmd.Parameters.AddWithValue("@comment", Comment.Trim());
                cmd.ExecuteNonQuery();
                connection.Close();
                
                return Json("Insert", JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        #region Get POs For Approval
        [HttpGet]
        public int GetApprovalCount()
        {
            var count = objVPOAppData.GetPendingVPOs();
            return count;

        }
        #endregion
        [HttpPost]
        public JsonResult fetchVPODataforApproval(string id)
        {
            try
            {
                id = id.Trim();
                string sqlstr = "VPORequisition";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "GeneratePOForPendingApproval");
                cmd.Parameters.AddWithValue("@vpono", id.Trim());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                List<Dictionary<string, object>> allvpo = GetTableRows(dt);
                return Json(allvpo, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        #region Consumables Vendor PO View

        public PartialViewResult ConsumablesVendorPOView(string PO_No)
        {
            ssmtbl_VendorPurchaseOrderModel objModel = new ssmtbl_VendorPurchaseOrderModel();
            objModel = objVPOAppData.GetOneVendorPurchaseOrder(PO_No);
            return PartialView(objModel);
        }
        [HttpPost]
        public JsonResult displayfilelist(string pono)
        {
            try
            {
                pono = pono.Trim();
                string sqlstr = "VPORequisition";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "displayfilelist");
                cmd.Parameters.AddWithValue("@vpono", pono.Trim());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                List<Dictionary<string, object>> allvpo = GetTableRows(dt);
                return Json(allvpo, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        #endregion
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


        #region Outsourcing Vendor PO View

        public PartialViewResult OutsourcingVendorPOView(string PO_No)
        {
            ssmtbl_VendorPurchaseOrderModel objModel = new ssmtbl_VendorPurchaseOrderModel();
            objModel = objVPOAppData.GetOneVendorPurchaseOrder(PO_No);
            return PartialView(objModel);
        }

        #endregion



        #region RawMaterial Vendor PO View

        public PartialViewResult RawMaterialVendorPOView(string PO_No)
        {
            ssmtbl_VendorPurchaseOrderModel objModel = new ssmtbl_VendorPurchaseOrderModel();
            objModel = objVPOAppData.GetOneVendorPurchaseOrder(PO_No);
            return PartialView(objModel);
        }

        #endregion



        #region Approve Vendor PO Post

        [HttpPost]
        public JsonResult ApproveVendorPO(string PONo, string Comment)
        {
            try
            {
                var Data = objVPOAppData.ApproveVendorPurchaseOrder(PONo, Comment, Session["username"].ToString());
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        #endregion 
        [HttpPost]
        public JsonResult ConditionalApprovedPurchaseOrder(string PONo, string Comment)
        {
            try
            {
                var Data = objVPOAppData.ConditionalApprovedPurchaseOrder(PONo, Comment, Session["username"].ToString());
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }


        #region Reject Vendor PO Post

        [HttpPost]
        public JsonResult RejectVendorPO(string PONo, string Comment)
        {
            try
            {
                var Data = objVPOAppData.RejectVendorPurchaseOrder(PONo, Comment, Session["username"].ToString());
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        #endregion 

    }
}