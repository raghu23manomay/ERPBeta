using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using XRP.DataModel;
using XRP.Global;

namespace XRP.Controllers
{
    public class HeatTreatmentController : Controller
    {
        HeatTreatmentData objForData=new HeatTreatmentData();
        // GET: HeatTreatment
        public ActionResult HeatTreatmentList()
        {
            return View();
        }
        [HttpPost]
        public JsonResult BindFogingList(string id)
        {
            try
            {
                var Data = objForData.BindFogingList(id);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);


        }
        [HttpPost]
        public JsonResult BindsingleForging(string id)
        {
            try
            {
                var Data = objForData.GetOneForging(id);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);

        }
        [HttpPost]
        public JsonResult UpdateReceivedQuantity(string fid, string recqnt, string remark)
        {
            try
            {
                var Data = objForData.UpdateReceivedQuantity(fid, recqnt, remark);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);

        }
        [HttpPost]
        public JsonResult InsertHeatTreatmentDetails(string htid, string untrimmed, string okqnt, string rejectedqnt, string reworkqnt, string fromtime, string totime, string reason,string sec, string rm)
        {
            try
            {
                var Data = objForData.InsertHeatTreatmentDetails(htid, untrimmed, okqnt, rejectedqnt, reworkqnt, fromtime, totime, reason, sec, rm);
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