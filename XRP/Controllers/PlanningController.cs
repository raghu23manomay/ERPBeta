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
    public class PlanningController : Controller
    {
        RMPlanningData objRMList = new RMPlanningData();

        #region All RMPlanning Get
        [ActionName("GetRMPlanningByGradeOfMaterial")]
        public ActionResult RMPlanning()
        {
            Paged_RMPlanningModel objPgd = new Paged_RMPlanningModel();
            objPgd.RMPlanningModel = objRMList.GetAllRMPlanning();
            objPgd.PageSize = 1;
            objPgd.TotalRows = 10;           
            return View(objPgd);    
        }
        #endregion

      


        #region All RMAllocation Get By status
       [HttpGet]
        public ActionResult RMAllocation(int status)
        {
            Paged_RMAllocationModel objPgd = new Paged_RMAllocationModel();
            objPgd.RMAllocationModel = objRMList.GetAllRMAllocation(status);
            objPgd.PageSize = 1;
            objPgd.TotalRows = 10;
            return View(objPgd);           
        }
        #endregion



        #region All RMAllocation Post
        [HttpPost]

        public JsonResult RMAllocation(string quntity, string heatcode, string gradeOfMaterial, string section, string wono)
        {
            try
            {
                var Data = objRMList.GetAllRMPlanning(quntity, heatcode, gradeOfMaterial, section, wono);
                return Json(Data, JsonRequestBehavior.AllowGet);

            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        #endregion
        #region GET All RMPlanning By GradeOfMaterial
        [HttpGet]       
        public ActionResult RMPlanning(string gradeOfMaterial, string wono, string section, string ht)
        {
            Paged_RMPlanningModel objPgd = new Paged_RMPlanningModel();
            objPgd.RMPlanningModel = objRMList.GetAllRMPlanning(gradeOfMaterial, wono, section, ht);
            objPgd.PageSize = 1;
            objPgd.TotalRows = 10;
            return View(objPgd);
        }
        #endregion

       
    }
}