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
    public class QuotationApprovalController : Controller
    {

        QuotationApprovalData objQuotAppData = new QuotationApprovalData();


        #region Quotation List Get

        [HttpGet]
        public ActionResult QuotationList()
        {
            List<ssmtbl_QuotationModel> objList = new List<ssmtbl_QuotationModel>();
            objList = objQuotAppData.GetAllQuotationForApproval();
            return View(objList);
        }

        #endregion


        #region Quotation View For Approval Get
        
        [HttpGet]
        public PartialViewResult QuotationViewForApproval(string QuotationId)
        {
            ssmtbl_QuotationModel objQuot = new ssmtbl_QuotationModel();
            objQuot = objQuotAppData.GetOneQuotationForApproval(QuotationId);
           
            //
            string sqlstr = "uspMultislectTag";
            var connection = gConnection.Connection();
            connection.Open();
            SqlCommand cmd = new SqlCommand(sqlstr, connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", "FisibilityOperationInvolvedSequence");
            cmd.Parameters.AddWithValue("@QuotationId", QuotationId.Trim());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            connection.Close();
            ViewData["fisopvinvseqlist"] = dt;
            //
            return PartialView(objQuot);
        }

        #endregion


        #region Quotation Download Get

        [HttpGet]
        public PartialViewResult QuotationDownload(string QuotationId)
        {
            ssmtbl_QuotationModel objQuot = new ssmtbl_QuotationModel();
            objQuot = objQuotAppData.GetOneQuotationForApproval(QuotationId);
            return PartialView(objQuot);
        }

        #endregion


        #region Approve Quotation Post

        [HttpPost]
        public JsonResult ApproveQuotation(string QuotationNo, string Comment, string VersionNo, string InquiryNo)
        {
            try
            {
                var Data = objQuotAppData.ApproveQuotation(QuotationNo, Comment, VersionNo, "Admin", InquiryNo);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        #endregion

        #region Approve Conditional Quotation Post

        [HttpPost]
        public JsonResult ApproveConditionalQuotation(string QuotationNo, string Comment, string VersionNo, string InquiryNo)
        {
            try
            {
                var Data = objQuotAppData.ApproveConditionalQuotation(QuotationNo, Comment, VersionNo, "Admin", InquiryNo);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        #endregion 


        #region Reject Quotation

        [HttpPost]
        public JsonResult RejectQuotation(string QuotationNo, string Comment, string VersionNo, string InquiryNo)
        {
            try
            {
                var Data = objQuotAppData.RejectQuotation(QuotationNo, Comment, VersionNo, Session["username"].ToString(), InquiryNo);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }


        #endregion


        #region Get All Version Of One Quotation

        [HttpGet]
        public PartialViewResult GetAllVersionOfOneQuotation(string QuotationNo, string QuotId)
        {
            ViewData["QuotId"] = QuotId;
            List<ssmtbl_QuotationModel> objList = new List<ssmtbl_QuotationModel>();
            objList = objQuotAppData.GetAllVersionOfOneQuotation(QuotationNo);
            return PartialView(objList);
        }

        #endregion

    }
}
