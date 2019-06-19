using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using XRP.DataModel;
using XRP.Global;
using XRP.Models;

namespace XRP.Controllers
{
    public class DailyConsumptionsController : Controller
    {
        DailyCosumptionsData objDailyConsumpData = new DailyCosumptionsData();
        DropDownSelection objDrop = new DropDownSelection();
        #region Get  DailyConsumptions
        [HttpGet]
        public ActionResult DailyConsumptions()
        {
            ViewData["DailyConsumable"] = objDrop.DailyConsumables();
            return View();

        }
        #endregion
        #region Get All DailyConsumptions
        [HttpGet]
        public ActionResult AllDailyConsumptions()
        {
            return View();
          
        }
        #endregion

        #region Get GetDailyConsumption Per Unit
        [HttpGet]
        public ActionResult GetDailyConsumptionPerUnit()
        {
            try
            {
                var Data = objDailyConsumpData.GetDailyConsumptionPerUnit();
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        #endregion
         #region Get GetDailyConsumption Per Unit
        [HttpPost]
        public ActionResult GetInDatedDailyConsumptions(string datefrom, string dateto)
        {
            try
            {
                var Data = objDailyConsumpData.GetInDatedDailyConsumptions(datefrom, dateto);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        #endregion

   
        #region Insert GetDailyConsumption
        [HttpPost]
        public ActionResult SaveDailyConsumptions(string userid, string electricity, string water, string gas)
        {
            try
            {
                DatasController DatasController = new DatasController();
                Dictionary<string, object> parameters = new Dictionary<string, object>();
                parameters.Add("Action", "Insert");
                parameters.Add("CreatedBy", Convert.ToInt32(userid));
                parameters.Add("Electricity", electricity.Trim());
                parameters.Add("Water", water.Trim());
                parameters.Add("Gas", gas.Trim());
                DatasController.Dispose();
                return DatasController.execd("uspDailyConsumptions", parameters);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        #endregion

        #region Save Daily Consumables
        [HttpPost]
        public ActionResult SaveDailyConsumables(string dailyConsumableTypeId, string ratePerUnit, string startReading)
        {
            try
            {
                DatasController DatasController = new DatasController();
                Dictionary<string, object> parameters = new Dictionary<string, object>();
                parameters.Add("Action", "InsertDailyCosumable");
                parameters.Add("dailyConsumableTypeId", Convert.ToInt32(dailyConsumableTypeId));
                parameters.Add("RatePerUnit", Convert.ToDecimal(ratePerUnit));
                parameters.Add("StartReading", Convert.ToDecimal(startReading));
              
                DatasController.Dispose();
                return DatasController.execd("uspDailyConsumptions", parameters);
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