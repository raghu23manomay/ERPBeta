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
    public class VendorController : Controller
    {
        CustomerData objCustData = new CustomerData();
        VendorData objVendData = new VendorData();
        #region All Vendor Get

        [HttpGet]
        public ActionResult AllVendor()
        {
            Paged_ssmtbl_CustomerModel objPgd = new Paged_ssmtbl_CustomerModel();
            string type ="vendor";
            objPgd.ssmtbl_CustomerModel = objCustData.GetAllVendor(type);
            objPgd.PageSize = 1;
            objPgd.TotalRows = 10;
            return View(objPgd);
        }

        #endregion
        #region Delete Multiple Contact Person
        [HttpPost]
        public JsonResult DeleteMultiCPerson(long id)
        {
            try
            {
                var Data = objVendData.DeleteMultiContactPerson(id);
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
        public JsonResult DeleteMultiAddress(long id)
        {
            try
            {
                var Data = objVendData.DeleteMultiContactPerson(id);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        #region Bind Multiple Contact Person
        public JsonResult Bindmlticp(string id)
        {
            try
            {
                id = (id == null || id == "") ? "0" : id;
                List<ssmtbl_CustomerVendorMasterModel> objVendMod = objVendData.BindmlticpById(Convert.ToInt32(id));
                return Json(objVendMod, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return null;
        }
        #endregion
        public JsonResult Bindaddress(string id)
        {
            try
            {
                id = (id == null || id == "") ? "0" : id;
                List<ssmtbl_CustomerVendorMasterModel> objVendMod = objVendData.Bindaddress(Convert.ToInt32(id));
                return Json(objVendMod, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return null;
        }
        #region New Vendor Get

        [HttpGet]
        public ActionResult NewVendor()
        {
            ssmtbl_CustomerModel objCustMod = new ssmtbl_CustomerModel();
            objCustMod.Vendor_Code=objVendData.GetMaxVendorCode();
            DropDownSelection objDrop = new DropDownSelection();
            ViewData["StateCodeDrpDwn"] = objDrop.State_CodeDropDown();
            GlobalFunction objGFunc = new GlobalFunction();
            objCustMod.VendorTypeListModel = objGFunc.VendorTypeList();
            return View(objCustMod);
        }

        #endregion
        #region New Vendor Post

        [HttpPost]
        public JsonResult NewCustomer(string cname, string gst, string pan, string phno, string remark, string type,string vcode)
        {
            long id = 0;
            try
            {
                var tuple = objCustData.InsertCustomer(cname, gst, pan, phno, remark, type,vcode);
                id = tuple.Item1;
                string result = tuple.Item2;
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return Json(id, JsonRequestBehavior.AllowGet);
        }

        #endregion

        //#region New Vendor Post

        //[HttpPost]
        //public ActionResult NewVendor(ssmtbl_CustomerVendorMasterModel objVendMod)
        //{
        // try
        // {
        // if (ModelState.IsValid)
        // {
        // var tuple = objVendData.InsertVendor(objVendMod);
        // long id = tuple.Item1;
        // string result = tuple.Item2;
        // @ViewBag.scripCall = "insertCPInsideDb(" + id + ");";
        // if (result == "Vendor Created Successfully!")
        // {
        // //objVendData.InsertMultiContactPerson(id, cpname, email, mob, stdcode, phno);

        // ModelState.Clear();
        // objVendMod = new ssmtbl_CustomerVendorMasterModel();
        // objVendMod.Vendor_Code = objVendData.GetMaxVendorCode();
        // @ViewBag.HideClass = "alert alert-success";
        // @ViewBag.Message = result;
        // }
        // else
        // {
        // @ViewBag.HideClass = "alert alert-danger";
        // @ViewBag.Message = result;
        // }

        // }
        // }
        // catch (Exception ex)
        // {
        // Global.ErrorHandlerClass.LogError(ex);
        // @ViewBag.HideClass = "alert alert-danger";
        // @ViewBag.Message = "Vendor Not Saved!";
        // }


        // return View(objVendMod);
        //}

        //#endregion

        #region Edit Vendor Post

        [HttpPost]
        public JsonResult UpdateCustomer(long id, string cname, string phno, string gst, string pan, string remark,string isactive,string type)
        {
            string result = "";
            try
            {

                var tuple = objVendData.UpdateVendor(id, cname, phno, gst, pan, remark, isactive,type);

                result = tuple;

            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return Json(result, JsonRequestBehavior.AllowGet);
        }

        #endregion

        #region Edit Vendor Get

        [HttpGet]
        public ActionResult EditVendor(string id)
        {
            ssmtbl_CustomerModel objCustMod = new ssmtbl_CustomerModel();
            DropDownSelection objDrop = new DropDownSelection();
            ViewData["StateCodeDrpDwn"] = objDrop.State_CodeDropDown();
            id = (id == null || id == "") ? "0" : id;
            objCustMod = objCustData.GetOneCustomer(Convert.ToInt32(id));
            GlobalFunction objGFunc = new GlobalFunction();
            objCustMod.VendorTypeListModel = objGFunc.VendorTypeList();
            //
            var connection = gConnection.Connection();
            connection.Open();
            string sqlstr = "VendorPOType";
            SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", "select");
            cmd.Parameters.AddWithValue("@VendorId", id.Trim());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DataRow[] dr = new DataRow[dt.Rows.Count];
            dt.Rows.CopyTo(dr, 0);
            int[] vtypeid = Array.ConvertAll(dr, new Converter<DataRow, int>(DataRowToDouble));
            connection.Close();
            //

            //int[] proinfo = new int [] { 1, 2 };
            ViewData["vtype"] = vtypeid;
            return View(objCustMod);
        }
        public static int DataRowToDouble(DataRow dr)
        {
            return Convert.ToInt32(dr["Id"].ToString());
        }
        #endregion

        #region BlankView

        [HttpGet]
        public ActionResult BlankView()
        {
            return View();
        }

        #endregion
        //#region Edit Vendor Post

        //[HttpPost]
        //public ActionResult EditVendor(ssmtbl_CustomerVendorMasterModel objVendMod)
        //{
        // try
        // {
        // ModelState.Remove("Mobile_No");
        // ModelState.Remove("STD_Code");
        // ModelState.Remove("Telephone_No");
        // ModelState.Remove("Email_ID");
        // if (ModelState.IsValid)
        // {
        // string result = objVendData.UpdateVendor(objVendMod);
        // if (result == "Vendor Updated Successfully!")
        // {
        // @ViewBag.HideClass = "alert alert-success";
        // @ViewBag.Message = result;
        // }
        // else
        // {
        // @ViewBag.HideClass = "alert alert-danger";
        // @ViewBag.Message = result;
        // }
        // }
        // }
        // catch (Exception ex)
        // {
        // Global.ErrorHandlerClass.LogError(ex);
        // @ViewBag.HideClass = "alert alert-danger";
        // @ViewBag.Message = "Vendor Not Saved!";
        // }

        // return View(objVendMod);
        //}

        //#endregion
        [HttpPost]
        public JsonResult InsertMultiCPerson(long id, string cpname, string email, long mob, string flag)
        {
            try
            {
                var Data = objVendData.InsertMultiContactPerson(id, cpname, email, mob, flag);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        #region Insert Multiple Contact Person
        [HttpPost]
        public JsonResult InsertVPOType(long id, string VpoTypeValues)
        {
            try
            {
                var Data = objVendData.InsertVPOType(id,VpoTypeValues);
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
        public JsonResult getVType(string VId)
        {
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "VendorPOType";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "select");
                cmd.Parameters.AddWithValue("@VendorId", VId.Trim());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                List<Dictionary<string, object>> allvtype = GetTableRows(dt);
                return Json(allvtype, JsonRequestBehavior.AllowGet);

              
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult vendoractive(string VId)
        {
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "VendorPOType";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "vendoractive");
                cmd.Parameters.AddWithValue("@VendorId", VId.Trim());
                cmd.ExecuteNonQuery();
                connection.Close();
                

            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult vendordeactive(string VId)
        {
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "VendorPOType";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "vendordeactive");
                cmd.Parameters.AddWithValue("@VendorId", VId.Trim());
                cmd.ExecuteNonQuery();
                connection.Close();
                


            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
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
        [HttpPost]
        public JsonResult InsertMultiAddress(long id, string address, int pid,string flag)
        {
            try
            {
                var Data = objVendData.InsertMultiAddress(id, address, pid,flag);
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