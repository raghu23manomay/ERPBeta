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
    public class SectionController : Controller
    {
        SectionData objSecData = new SectionData();
        #region Get All Section
        public ActionResult AllSection()
        {
            Paged_ssmtbl_CuutingCalculationModel objPgd = new Paged_ssmtbl_CuutingCalculationModel();
            objPgd.ssmtbl_CuutingCalculationModel = objSecData.GetAllSection();
            objPgd.PageSize = 1;
            objPgd.TotalRows = 10;
            return View(objPgd);
        }
        #endregion

        #region Get Insert Section Post
        public ActionResult InsertSection(string section)
        {
            try
            {
                string Data = objSecData.InsertSection(section);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        #endregion

        #region Get Update Section Post
        public JsonResult UpdateSection(string srno, string section)
        {
            try
            {
                string Data = objSecData.UpdateSection(srno, section);
                return Json(Data, JsonRequestBehavior.AllowGet);
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