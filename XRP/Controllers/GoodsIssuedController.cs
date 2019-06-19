using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using XRP.DataModel;
using XRP.Global;

namespace XRP.Controllers
{
    public class GoodsIssuedController : Controller
    {
        GoodsIssuedData objGoodsIssuedData = new GoodsIssuedData();
        // GET: GoodsIssued
        public ActionResult AllGoodsIssued()
        {
            return View();
        }
        public JsonResult GoodsIssuedList()
        {
            try
            {
                var Data = objGoodsIssuedData.AllGoodsIssued();
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);

        }

        [HttpPost]
        public JsonResult GetOneGoodsIssued(string id)
        {
            try
            {
                var Data = objGoodsIssuedData.GetOneGoodsIssued(id);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);

        }

        #region Get Max GIS Number
        public string GetMaxGoodsIssuedNo(string ID)
        {
            string GISNo = "";
            try
            {
                GISNo = objGoodsIssuedData.GetMaxGISNo();
                return GISNo;
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return null;
        }
        #endregion
        
             public ActionResult GenerateGoodsIssued(string gisId, string issuedWt, string remark, string goodsIssuedno)
        {
            try
            {
                var Data = objGoodsIssuedData.GenerateGoodsIssued(gisId, issuedWt, remark, goodsIssuedno);
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