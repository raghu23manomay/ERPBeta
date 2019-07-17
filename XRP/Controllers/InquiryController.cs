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
    [CheckSessionTimeOut]
    public class InquiryController : Controller
    {
        DropDownSelection objDrop = new DropDownSelection();
        InquiryData objInqData = new InquiryData();

        #region New Inquiry Get

        [HttpGet]
        public ActionResult NewInquiry()
        {
            ssmtbl_InquiryModel objInqMod = new ssmtbl_InquiryModel();
            objInqMod.InquiryNo = objInqData.GetMaxInquiryNo();
            objInqMod.InquiryDate = DateTime.Now;
            ViewData["FreqRepeatOrder"] = objDrop.FrqRepOrder();
            ViewData["DieNumber"] = objDrop.DieNumber();
            return View(objInqMod);
        }

        #endregion


        #region New Inquiry Post

        [HttpPost]
        public ActionResult NewInquiry(ssmtbl_InquiryModel objInqMod)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    string result = objInqData.InsertInquiry(objInqMod);
                    if (result == "Inquiry Created Successfully!")
                    {
                        ModelState.Clear();
                        objInqMod = new ssmtbl_InquiryModel();
                        objInqMod.InquiryNo = objInqData.GetMaxInquiryNo();
                        objInqMod.InquiryDate = DateTime.Now;
                        @ViewBag.HideClass = "alert alert-success";
                        @ViewBag.Message = result;
                       
                    }
                    else
                    {
                        @ViewBag.HideClass = "alert alert-danger";
                        @ViewBag.Message = result;
                    }
                    return RedirectToAction("AllInquiry", "Inquiry");
                }
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
                @ViewBag.HideClass = "alert alert-danger";
                @ViewBag.Message = "Inquiry Not Saved!";
            }
            ViewData["FreqRepeatOrder"] = objDrop.FrqRepOrder();

            return View(objInqMod);
        }

        #endregion


        #region All Inquiry Get
      
        [HttpGet]
        public ActionResult AllInquiry()
        {
            Paged_ssmtbl_InquiryModel objPgd = new Paged_ssmtbl_InquiryModel();
            objPgd.ssmtbl_InquiryModel = objInqData.GetAllInquiry();
            objPgd.PageSize = 1;
            objPgd.TotalRows = 10;
            return View(objPgd);
        }

        #endregion


        #region Edit Inquiry Get

        [HttpGet]
        public ActionResult EditInquiry(string id)
        {
            ssmtbl_InquiryModel objInqMod = new ssmtbl_InquiryModel();
            if (id == null || id == "")
            {
                id = "0";
            }
            objInqMod = objInqData.GetOneInquiry(Convert.ToInt32(id));
            ViewData["FreqRepeatOrder"] = objDrop.FrqRepOrder();
            ViewData["DieNumber"] = objDrop.DieNumber();
            return View(objInqMod);
        }

        #endregion


        #region Edit Inquiry Post

        [HttpPost]
        public ActionResult EditInquiry(ssmtbl_InquiryModel objInqMod)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    string result = objInqData.UpdateInquiry(objInqMod);
                    if (result == "Inquiry Updated Successfully!")
                    {                        
                        @ViewBag.HideClass = "alert alert-success";
                        @ViewBag.Message = result;
                    }
                    else
                    {
                        @ViewBag.HideClass = "alert alert-danger";
                        @ViewBag.Message = result;
                    }
                    return RedirectToAction("AllInquiry", "Inquiry");
                }
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
                @ViewBag.HideClass = "alert alert-danger";
                @ViewBag.Message = "Inquiry Not Saved!";
            }
            ViewData["FreqRepeatOrder"] = objDrop.FrqRepOrder();

            return View(objInqMod);
        }

        #endregion


        #region Close Inquiry

        [HttpPost]
        public JsonResult CloseInquiry(string InquiryNo, string Comment)
        {
            try
            {
                var Data = objInqData.CloseInquiry(InquiryNo, Comment);
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
        public JsonResult getCustomername(string Prefix)
        {            
            try
            {
                var Data = objInqData.getCustomername(Prefix);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult Fisautocompletepreferedvendor(string Prefix)
        {
            try
            {
                var Data = objInqData.getpreferedvendor(Prefix);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult getVendorname(string Prefix="")
        {
            try
            {
                var Data = objInqData.getVendorname(Prefix);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult getDiaDetails(string DiaID)
        {
            try
            {
                var Data = objInqData.getDiaDetails(DiaID);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult fetchDiaDetails(string dianumber)
        {
            try
            {
                string sqlstr = "uspDieDescription";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "fetchdiafromdiano");
                cmd.Parameters.AddWithValue("@DieNo", dianumber.Trim());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                List<Dictionary<string, object>> allvponotes = GetTableRows(dt);
                return Json(allvponotes, JsonRequestBehavior.AllowGet);
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

    }
}