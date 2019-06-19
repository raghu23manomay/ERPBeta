using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using XRP.DataModel;
using XRP.Models;

namespace XRP.Controllers
{
    public class DieRequisitionApprovalController : Controller
    {
        DieDescriptionData DieData = new DieDescriptionData();
        // GET: DieRequisitionApproval
        public ActionResult DieRequisitionList()
        {
            List<ssmtbl_WorkorderModel> objList = new List<ssmtbl_WorkorderModel>();
            objList = DieData.GetWorkorderApprovalList("Pending For Approval");
            return View(objList);
        }

        // GET: One Die For Approval 
        [HttpPost]
        public JsonResult GetOneDieRequisitionApproval(string DieReqId)
        {
            try
            {
                List<Dictionary<string, object>> objList = new List<Dictionary<string, object>>();
                objList = DieData.GetOneDieForApproval(DieReqId);

                return Json(objList, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        public ActionResult DieRequisitionApproval(string DieReqId)
        {
            return View();
        }

        public JsonResult ApproveDie(string DieReqId)
        {
            string data = "";
            try
            {
                data = DieData.ApproveDieRequisition(DieReqId);
                return Json(data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        public JsonResult RejectDie(string DieReqId, string Comment)
        {
            string data = "";
            try
            {
                data = DieData.RejectDieRequisition(DieReqId, Comment);
                return Json(data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {

                Global.ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public int GetApprovalCount()
        {
            var count = DieData.GetPendingDie();
            return count;

        }
    }
}