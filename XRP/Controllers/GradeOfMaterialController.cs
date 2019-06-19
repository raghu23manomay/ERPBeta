using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using XRP.DataModel;
using XRP.Global;
using XRP.Models;


namespace XRP.Controllers
{
    public class GradeOfMaterialController : Controller
    {
        GradeOfMaterialData objGOFData = new GradeOfMaterialData();
        #region Get All GradeOfMaterial
        [HttpGet]
        public ActionResult AllGradeOfMaterial()
        {
            Paged_ssmtbl_LKP_ColorCodeModel objPgd = new Paged_ssmtbl_LKP_ColorCodeModel();
            objPgd.ssmtbl_LKP_ColorCodeModel = objGOFData.GetAllGradeOfMaterial();
            objPgd.PageSize = 1;
            objPgd.TotalRows = 10;
            return View(objPgd);

        }
        #endregion
        #region Update GradeOfMaterial
        
            [HttpPost]
         public JsonResult UpdateGradeOfMaterial(string srno, string gof, string colorcode)
        {
            try
            {
                var Data = objGOFData.UpdateGradeOfMaterial(srno,gof,colorcode);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }


        #endregion


            #region Insert GradeOfMaterial  
        [HttpPost]
            public JsonResult InsertGradeOfMaterial(string gof, string colorcode)
            {
                try
                {
                    var Data = objGOFData.InsertGradeOfMaterial(gof, colorcode);
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