using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using XRP.DataModel;
using XRP.Global;
using XRP.Models;

namespace XRP.Controllers
{
    public class WorkOrderDetailsController : Controller
    {
        WorkOrderDetailsData WODetailsData = new WorkOrderDetailsData();
        public ActionResult AllWorkOrderDetails()
        {
            return View();

        }
        public JsonResult GetAllOprations()
        {
            try
            {
                var Data = WODetailsData.GetAllOprations();
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetAllTotalAndUpdatetime(string wono = "")
        {
            try
            {
                var Data = WODetailsData.GetAllTotalAndUpdatetime(wono);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public ActionResult WorkorderDetails(string wono)
        {           
            ssmtbl_WorkorderDetailsModelNew objWoMod = new ssmtbl_WorkorderDetailsModelNew();
            objWoMod = WODetailsData.GetWOByWoNo(wono);

            return View(objWoMod);
        }
        public JsonResult GetAllWorkOrders()
        {
            try
            {
                var Data = WODetailsData.GetAllWorkOrders();
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
	}
}