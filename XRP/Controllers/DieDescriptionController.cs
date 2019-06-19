using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using XRP.DataModel;
using XRP.Global;
using XRP.Models;

namespace XRP.controllers
{
    public class DieDescriptionController : Controller
    {
        DieDescriptionData DieData = new DieDescriptionData();
      
        // GET: DieDescription
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult AddDie()
        {
            return View();
        }
        public ActionResult AllDieDescription()
        {
            Paged_DieDescription objPgd = new Paged_DieDescription();

            objPgd.DieDescription = DieData.GetAllDieDescription();
            //objPgd.PageSize = 1;
           // objPgd.TotalRows = 10;
            return View(objPgd);
        }

        [HttpPost]
        public ActionResult AddDie(DieDescription objMod)
        {
            try
            {
                
                    string result = DieData.InsertDie(objMod);
                   
                    return RedirectToAction("AllDieDescription", "DieDescription");
                
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
                @ViewBag.HideClass = "alert alert-danger";
                @ViewBag.Message = "Inquiry Not Saved!";
            }
         
            return View(objMod);
        }
    }
}