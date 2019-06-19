using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using XRP.DataModel;
using XRP.Global;
using XRP.Models;

namespace XRP.Controllers
{
    public class WorkorderController : Controller
    {
        WorkorderData objWoData = new WorkorderData();
        CuttingInstructionIssueData objCutData = new CuttingInstructionIssueData();
        DropDownSelection objDrop = new DropDownSelection();
        #region New Workorder Get

        [HttpGet]
        public ActionResult NewWorkorder()
        {
            ssmtbl_WorkorderModel objWoMod = new ssmtbl_WorkorderModel();
            objWoMod.WorkorderNo = objWoData.GetMaxWorkorderNo();
            //ViewData["PoNo"] = objDrop.FrqRepOrder();
            objWoMod.DateOfIssue = DateTime.Now;
            objWoMod.TargetDate = DateTime.Now;
            objWoMod.ProductionStartDate = DateTime.Now;
            return View(objWoMod);
        }

        #endregion


        #region New Workorder Post

        [HttpPost]
        public ActionResult NewWorkorder(ssmtbl_WorkorderModel objWoMod)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    string result = objWoData.InsertWorkorder(objWoMod);
                    if (result == "Workorder Created Successfully!")
                    {
                        ModelState.Clear();
                        objWoMod = new ssmtbl_WorkorderModel();
                        objWoMod.WorkorderNo = objWoData.GetMaxWorkorderNo();
                        objWoMod.DateOfIssue = DateTime.Now;
                        objWoMod.TargetDate = DateTime.Now;
                        objWoMod.ProductionStartDate = DateTime.Now;                       
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
                @ViewBag.Message = "Workorder Not Saved!";
            }


            return View(objWoMod);
        }

        #endregion


        #region All Workorder Get

        [HttpGet]
        public ActionResult AllWorkorder()
        {
            Paged_ssmtbl_WorkorderModel objPgd = new Paged_ssmtbl_WorkorderModel();
            objPgd.ssmtbl_WorkorderModel = objWoData.GetAllWorkorder();
            objPgd.PageSize = 1;
            objPgd.TotalRows = 10;
            return View(objPgd);
        }

        #endregion
        [HttpPost]
        public JsonResult searchbyall(string search)
        {
            try
            {
                string sqlstr = "uspGetAllPO";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "Search");
                cmd.Parameters.AddWithValue("@txtsearch", search.Trim());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                List<Dictionary<string, object>> rfqlist = GetTableRows(dt);
                return Json(rfqlist, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult searchbyallActiveWO(string search)
        {
            try
            {
                string sqlstr = "ssmsp_Get_AllWorkorder";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "Search");
                cmd.Parameters.AddWithValue("@txtsearch", search.Trim());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                List<Dictionary<string, object>> rfqlist = GetTableRows(dt);
                return Json(rfqlist, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        #region All PO Get

        [HttpGet]
        public ActionResult AllPO()
        {
            Paged_ssmtbl_PurchaseOrderModel objPgd = new Paged_ssmtbl_PurchaseOrderModel();
            objPgd.WorkorderNo = objWoData.GetMaxWorkorderNo();
            objPgd.ssmtbl_PurchaseOrderModel = objWoData.GetAllPO(objPgd.WorkorderNo);
            //objPgd.ssmtbl_PurchaseOrderModelWoNO = objWoData.GetAllWoByPONo();
            ViewData["FeasibilityHR"] = objDrop.FeasibilityHammerrequired();
            ViewData["Section"] = objDrop.CuutingCalculation();
            objPgd.PageSize = 1;
            objPgd.TotalRows = 10;
            return View("AllWorkorder",objPgd);
        }
        #endregion

        #region All Active WO Get

        [HttpGet]
        public ActionResult ActiveWorkorder()
        {
            Paged_ssmtbl_WorkorderModel objPgd = new Paged_ssmtbl_WorkorderModel();
            objPgd.ssmtbl_WorkorderModel = objWoData.GetAllWorkorder();
            objPgd.PageSize = 1;
            objPgd.TotalRows = 10;
            return View(objPgd);
        }

        #endregion

        #region Update Workorder Status
        public JsonResult updateWOStatus(string POID)
        {           
            try
            {
                var Data  = objWoData.updateWOStatus(POID);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        #endregion

        #region  Workorder Planning Get

        [HttpGet]
        public ActionResult WorkorderPlanning(string wono, string gof, string ht, string section)
        {
            try
            {
                TempData["gof"] = gof.Trim();
                TempData["ht"] = ht.Trim();
               TempData["section"] = section.Trim();
               TempData["wono"] = wono;
               TempData.Keep();
                return View();   
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return null;   
        }

        #endregion

        #region  CuttingInstructioIssue Get

        [HttpGet]
        public ActionResult CuttingInstructionIssue(string wono)
        {
            ssmtbl_CuttingInstructionIssueModel objCutMod = new ssmtbl_CuttingInstructionIssueModel();
           objCutMod = objCutData.GetCutInstrIssueByWoNo(wono);
            return View(objCutMod);

        }

        #endregion

        #region Get data by pono

        [HttpPost]
        public JsonResult GetWoDataByPONo(string pono)
        {
            try
            {
                var Data = objWoData.GetWoDataByPO(pono);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        #endregion
        [HttpPost]
        public JsonResult checkpoidstatus(string poid)
        {
            try
            {
                string sqlstr = "VPORequisition";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "checkpoidstatus");
                cmd.Parameters.AddWithValue("@poid", poid.ToString());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                List<Dictionary<string, object>> allvpo = GetTableRows(dt);
                return Json(allvpo, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);

            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        public List<Dictionary<string, object>> GetTableRows(DataTable dtData)
        {
            List<Dictionary<string, object>>
            lstRows = new List<Dictionary<string, object>>();
            Dictionary<string, object> dictRow = null;

            foreach (DataRow dr in dtData.Rows)
            {
                dictRow = new Dictionary<string, object>();
                foreach (DataColumn col in dtData.Columns)
                {
                    dictRow.Add(col.ColumnName, dr[col]);
                }
                lstRows.Add(dictRow);
            }
            return lstRows;
        }
        #region Generate Workorder

        [HttpPost]
        public JsonResult GenerateWorkorder(string workorderNo, string customerName, string poNumber, string dieNo, string rawMaterial, string heatcode, string section,
            string cutLength,string dateOfIssue, string targetDate, string hammerNo, string dieSts, string dieLife, string cutWt, string poQty, string productionStartDate,string planQty,
            string availableRM,string quantity,string reqType,string partName,string partDescription,string remark, string woPOID, string CuttingMc, string ForgingMc, string weight, string createdBy)
        {
            try
            {
                var Data = objWoData.GenerateWorkorder(workorderNo, customerName, poNumber ,dieNo, rawMaterial, heatcode, section, 
                    cutLength, dateOfIssue, targetDate, hammerNo, dieSts, dieLife, cutWt,   poQty, productionStartDate, planQty, 
                    availableRM, quantity, reqType, partName, partDescription, remark, woPOID, CuttingMc, ForgingMc, weight, createdBy);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        #endregion


        #region Send Requisition
        [HttpPost]
        public JsonResult SendRequisition(string ReqType, string CustomerName, string PartName, string partNumber, string RawMaterial, string TotalWt, string Section, string Quantity, string DieDescription, string PartDescription, string WorkorderNo, string Remark,string poid, string userID, string Department)
        {
            long id = 0;
            try
            {
                var tuple = objWoData.SendRequisition( ReqType,  CustomerName,  PartName, partNumber, RawMaterial, TotalWt, Section,  Quantity, DieDescription,  PartDescription, WorkorderNo, Remark, poid, userID, Department);
                id = tuple.Item1;
                string result = tuple.Item2;
               
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(id, JsonRequestBehavior.AllowGet);
        }

        #endregion
        #region Insert Requisition Details
        [HttpPost]
        public JsonResult insertRequisitionDetails(string RFQId, string RawMaterial, string Section, string Quantity, string TotalWt, string Req)
        {
            var data = "";
           
            try
            {
                data = objWoData.InsertRequisitionDetails(RFQId, RawMaterial, Section, Quantity, TotalWt, Req);
              

            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(data, JsonRequestBehavior.AllowGet);
        }


        #endregion

        
             public JsonResult bindForgingMachine(string poID)
        {
            try
            {
                var Data = objWoData.GetForgingMachine();
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        #region bind Cutting Machine
        public JsonResult bindCuttingMachine(string poID) {
            try
            {
                var Data = objWoData.GetCuttingMachine();
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        #endregion
        #region Get data by WO ID

        [HttpPost]
        public JsonResult GetWoDataByWOID(string woID)
        {
            try
            {
                var Data = objWoData.GetWoDataByWOID(woID);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        #endregion
        #region Send Die Requisition
        [HttpPost]
        public JsonResult SendDieRequisition(string DieDescription, string DieRemark, string WorkorderNo, string DieNo)
        {
            try
            {
                var Data = objWoData.SendDieRequisition(DieDescription, DieRemark, WorkorderNo, DieNo);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        #endregion

        #region Get Dispatch Qty
        [HttpPost]
        public JsonResult getDispatchQty(string PoID)
        {
            float[] Data= new float [2];
            try
            {
                 Data = objWoData.getDispatchQty(PoID);
            
               
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(Data, JsonRequestBehavior.AllowGet);
        }

        #endregion
        #region Get data by PO ID

        [HttpPost]
        public JsonResult GetWoDataByPOID(string poID)
        {
            try
            {
                var Data = objWoData.GetWoDataByPOID(poID);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        #endregion

        #region Get Operations Involved By PoID
        [HttpPost]
        public JsonResult getOpsInvolved(string poID)
        {
            try
            {
                var Data = objWoData.getOpsInvolvedByPOId(poID);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        #endregion

        #region Get WO List By PoID
        [HttpPost]
        public JsonResult getWOListByPOID(string poID)
        {
            try
            {
                var Data = objWoData.getWOListPOId(poID);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        #endregion

        #region Get Die Availability
        [HttpPost]
        public JsonResult GetDieAvailability(string DieNumber)
        {
            try
            {
                var Data = objWoData.GetDieAvailability(DieNumber);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        #endregion

        #region Get RM Avialbility

        [HttpPost]
        public JsonResult GetRMAvialbility(string RawMaterial, string Section)
        {
            try
            {
                var Data = objWoData.GetRMAvailabiltyByRMNSection(RawMaterial, Section);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        #endregion
        [HttpPost]
        public JsonResult BindPOByCustomerName(string cstnme)
        {
            try
            {
                var Data = objWoData.getPOByCstName(cstnme);
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