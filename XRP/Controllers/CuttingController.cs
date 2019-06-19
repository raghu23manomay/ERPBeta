using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using XRP.DataModel;
using XRP.Global;

namespace XRP.Controllers
{
    public class CuttingController : Controller
    {
        CuttingSlipData objCuttData = new CuttingSlipData();
        // GET: Cutting
        public ActionResult AllCutting()
        {
            return View();
        }
        [HttpPost]
        public JsonResult BindCuttingList(string id)
        {
            try
            {
                var Data = objCuttData.GetCuttingSlipList();
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);

           
        }

        #region Get Max Cuttin Slip Number
        public string GetMaxCuttingSlipNo(string ID) {
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
        public JsonResult updateReceivedQty(string CuttingID, string ReceivedQty, string ReceivedRemark)
        {
            try
            {
                var Data = objCuttData.updateReceivedQty(CuttingID,  ReceivedQty,  ReceivedRemark);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);

        }

        [HttpPost]
        public JsonResult BindsingleCutting(string id)
        {
            try
            {
                var Data = objCuttData.GetOneCuttingSlip(id);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
           
        }
        public ActionResult GenerateCuttingSlip(string workorderNo, string quantity, string totalWeight, string CtSlipNo, string goodsIssuedno)
        {
            try
            {
                var Data = objCuttData.GenerateCuttingSlip(workorderNo, quantity, totalWeight, CtSlipNo, goodsIssuedno);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }


        public ActionResult SaveCuttingDetails(string cutId, string OkCutPcs, string OkCutPcsKgs, string EndPcs, string EndPcsKgs, string RejectedPcs, string RejectedPcsKgs, string McIdleFrom, string McIdleTo, string McBrkDwnReason, string nextOperationName,string sec,string rm)
        {
            try
            {
                var Data = objCuttData.SaveCuttingDetails(cutId, OkCutPcs, OkCutPcsKgs, EndPcs, EndPcsKgs, RejectedPcs, RejectedPcsKgs, McIdleFrom, McIdleTo, McBrkDwnReason, nextOperationName,sec,rm);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        public ActionResult SaveAddCutDetails(string CuttingID, string Cutting1, string Cutting2, string Cutting3, string Cutting4, string Cutting5, string Avg)
        {
            try
            {
                var Data = objCuttData.SaveAddCuttingDetails(CuttingID, Cutting1, Cutting2, Cutting3, Cutting4, Cutting5, Avg);
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