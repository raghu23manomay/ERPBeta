using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using XRP.DataModel;
using XRP.Models;

namespace XRP.Controllers
{
    public class ConsumablesController : Controller
    {
        ConsumablesData objConsumablesList = new ConsumablesData();

        #region All Consumables Get
        [HttpGet]
        public ActionResult ConsumablesList()
        {
            Paged_ssmtbl_ConsumableModel objPgd = new Paged_ssmtbl_ConsumableModel();
            objPgd.ssmtbl_ConsumableModel = objConsumablesList.GetAllConsumablesList();
            objPgd.PageSize = 1;
            objPgd.TotalRows = 10;
            return View(objPgd);
        }
        #endregion


        #region New ConsumableIssued Get

        [HttpGet]
        public ActionResult NewConsumables()
        {
            ssmtbl_ConsumableModel objConsumableMod = new ssmtbl_ConsumableModel();
            //string uname = Session["username"].ToString();
            //objConsumableMod.CreatedBy = uname.Trim();
            return View(objConsumableMod);
        }

        #endregion
        #region New Consumables Post

        [HttpPost]
        public ActionResult NewConsumables(ssmtbl_ConsumableModel objConsumableMod)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    string result = objConsumablesList.InsertConsumables(objConsumableMod);
                    if (result == "Consumables Created Successfully!")
                    {
                        ModelState.Clear();
                        objConsumableMod = new ssmtbl_ConsumableModel();
                        //string uname = Session["username"].ToString();
                        //objConsumableMod.CreatedBy = uname.Trim();
                        @ViewBag.HideClass = "alert alert-success";
                        @ViewBag.Message = result;
                    }
                    else
                    {
                        @ViewBag.HideClass = "alert alert-danger";
                        @ViewBag.Message = result;
                    }
                }

            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
                @ViewBag.HideClass = "alert alert-danger";
                @ViewBag.Message = "Consumables Not Created!";
            }


            return View(objConsumableMod);
        }

        #endregion
        #region Get Code

        [HttpPost]
        public JsonResult GetCode(string Code)
        {
            try
            {
                var Data = objConsumablesList.GetCode(Code);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        #endregion

        #region Get Cost Center

        [HttpPost]
        public JsonResult GetCostCenter(string startwith)
        {
            try
            {
                var Data = objConsumablesList.GetCostCenter(startwith);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        #endregion

        #region Get Units

        [HttpPost]
        public JsonResult GetUnits(string startwith)
        {
            try
            {
                var Data = objConsumablesList.GetUnits(startwith);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        #endregion
       
	}
}