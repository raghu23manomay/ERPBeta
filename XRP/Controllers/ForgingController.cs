using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using XRP.DataModel;
using XRP.Global;


namespace XRP.Controllers
{
    public class ForgingController : Controller
    {
        CuttingSlipData objCuttData = new CuttingSlipData();
        ForgingData objForData = new ForgingData();
        public ActionResult FogingList()
        {
            return View();
        }
        [HttpPost]
        public JsonResult BindCuttingDetailsList(string id)
        {
            try
            {
                var Data = objForData.BindCuttingDetailsList(id);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);


        }

        #region Get Max Cuttin Slip Number
        public string GetMaxCuttingSlipNo(string ID)
        {
            string slipNo = "";
            try
            {
                slipNo = objCuttData.GetMaxCuttingSlipNo();
                return slipNo;
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }



            return null;

        }
        #endregion
        [HttpPost]
        public JsonResult BindsingleForging(string id)
        {
            try
            {
                var Data = objForData.GetOneCuttingSlip(id);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);

        }
        [HttpPost]
        public JsonResult UpdateReceivedQuantity(string fid,string recqnt,string remark)
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
        public JsonResult InsertComponentFlash(string forgingid, string comp1, string comp2, string comp3, string comp4, string comp5, string compavg,
            string flash1, string flash2, string flash3, string flash4,string flash5, string flashavg)
        {
            try
            {
                var Data = objForData.InsertComponentFlash(forgingid, comp1, comp2, comp3, comp4, comp5, compavg, flash1, flash2, flash3, flash4, flash5, flashavg);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);

        }
        [HttpPost]
        public JsonResult InsertForgingDetails(string forgingid, string untrimmed, string okqnt, string rejectedqnt, string reworkqnt, string fromtime, string totime, string reason,
            string nextOperationName,string untrimmedkg,string okqntkg,string rejectedqntkg,string reworkqntkg,string sec, string rm)
        {
            try
            {
                var Data = objForData.InsertForgingDetails(forgingid, untrimmed, okqnt, rejectedqnt, reworkqnt, fromtime, totime, reason, nextOperationName,
                    untrimmedkg, okqntkg, rejectedqntkg, reworkqntkg, sec, rm);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);

        }
        //public ActionResult GenerateCuttingSlip(string workorderNo, string quantity, string totalWeight, string CtSlipNo)
        //{
        //    try
        //    {
        //        var Data = objCuttData.GenerateCuttingSlip(workorderNo, quantity, totalWeight, CtSlipNo);
        //        return Json(Data, JsonRequestBehavior.AllowGet);
        //    }
        //    catch (Exception ex)
        //    {
        //        ErrorHandlerClass.LogError(ex);
        //    }
        //    return Json(null, JsonRequestBehavior.AllowGet);
        //}


        //public ActionResult SaveCuttingDetails(string cutId, string workorderNo, string OkCutPcs, string EndPcs, string RejectedPcs, string McBrkDwn)
        //{
        //    try
        //    {
        //        var Data = objCuttData.SaveCuttingDetails(cutId, workorderNo, OkCutPcs, EndPcs, RejectedPcs, McBrkDwn);
        //        return Json(Data, JsonRequestBehavior.AllowGet);
        //    }
        //    catch (Exception ex)
        //    {
        //        ErrorHandlerClass.LogError(ex);
        //    }
        //    return Json(null, JsonRequestBehavior.AllowGet);
        //}
    }
}