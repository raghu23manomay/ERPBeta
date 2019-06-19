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
    public class ConsumableIssuedController : Controller
    {
        ConsumableIssuedData objConsumableList = new ConsumableIssuedData();

        #region New ConsumableIssued Get

        [HttpGet]
        public ActionResult NewConsumableIssued()
        {
            ssmtbl_ConsumablesIssuedModel objConsumeMod = new ssmtbl_ConsumablesIssuedModel();
            objConsumeMod.IssuedDate = DateTime.Now;
            return View(objConsumeMod);
        }

        #endregion

        #region New ConsumableIssued Post

        [HttpPost]
        public ActionResult NewConsumableIssued(ssmtbl_ConsumablesIssuedModel objConsumeMod)
        {
            try
            {
                if (ModelState.IsValid)
                {
                   string result = objConsumableList.InsertConsumableIssued(objConsumeMod);
                   if (result == "ConsumableIssued Created Successfully!")
                   {
                       ModelState.Clear();
                       objConsumeMod = new ssmtbl_ConsumablesIssuedModel();
                       objConsumeMod.IssuedDate = DateTime.Now;
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
                @ViewBag.Message = "ConsumableIssued Not Created!";
            }


            return View(objConsumeMod);
        }

        #endregion

        #region All ConsumableIssued Get
        public ActionResult ConsumableIssuedList()
        {
            Paged_ssmtbl_ConsumablesIssuedModel objPgd = new Paged_ssmtbl_ConsumablesIssuedModel();
            objPgd.ssmtbl_ConsumablesIssuedModel = objConsumableList.GetAllConsumablesIssuedList();
            objPgd.PageSize = 1;
            objPgd.TotalRows = 10;
            return View(objPgd);
        }
        #endregion

        public JsonResult GetItemsByCode(string Prefix)
        {
            var Data = objConsumableList.GetItemsByCode(Prefix);
            return Json(Data, JsonRequestBehavior.AllowGet);
        }
    }
}