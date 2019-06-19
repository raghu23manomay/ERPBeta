using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using XRP.DataModel;
using XRP.Models;

namespace XRP.Controllers
{
    public class RMRequisitionApprovalController : Controller
    {
        WorkorderData WOData = new WorkorderData();
        // GET:RM Approval List
        public ActionResult RMRequisitionList()
        {
                 List<ssmtbl_WorkorderModel> objList = new List<ssmtbl_WorkorderModel>();
            objList = WOData.GetWorkorderApprovalList("Pending For Approval");
            return View(objList);
           
        }

        // GET: One RM For Approval 
       [HttpPost]
        public JsonResult GetOneRMRequisitionApproval(string RFQId)
        {
            try
            {
                List<Dictionary<string, object>> objList = new List<Dictionary<string, object>>();
                objList = WOData.GetOneRFQForApproval(RFQId);

                return Json(objList, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        public ActionResult RMRequisitionApproval(string RFQId)
        {
            return View();
        }
        public JsonResult ApproveRM(string RFQId) {
            string data = "";
            try
            {
                data = WOData.ApproveRmRequisition(RFQId);
                return Json(data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        public JsonResult RejectRM(string RFQId, string Comment)
        {
            string data = "";
            try
            {
                data = WOData.RejectRmRequisition(RFQId, Comment);
                return Json(data, JsonRequestBehavior.AllowGet);
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
            var count = WOData.GetPendingRMs();
            return count;

        }
        #endregion
    }
}