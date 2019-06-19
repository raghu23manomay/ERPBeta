using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using XRP.DataModel;
using XRP.Models;

namespace XRP.Controllers
{
    public class RMInventoryController : Controller
    {
        RMInventoryData objRMInvData = new RMInventoryData();
        #region All RMInventory Get

        [HttpGet]
        public ActionResult AllRMInventory()
        {
            Paged_ssmtbl_RMInventoryModel objPgd = new Paged_ssmtbl_RMInventoryModel();
            objPgd.ssmtbl_RMInventoryModel = objRMInvData.GetAllRMInventory();
            objPgd.PageSize = 1;
            objPgd.TotalRows = 10;
            return View(objPgd);
        }

        #endregion

        #region All WOByHeatcode Get

        [HttpGet]
        public ActionResult Rawmaterial(string heatcode, string quantity)
        {
            Paged_ssmtbl_RawMaterialModel objPgd = new Paged_ssmtbl_RawMaterialModel();
            objPgd.ssmtbl_RawMaterialModel = objRMInvData.GetAllWOByHeatcode(heatcode, quantity);           
            objPgd.PageSize = 1;
            objPgd.TotalRows = 10;
            return View(objPgd);
        }

        #endregion
    }
}