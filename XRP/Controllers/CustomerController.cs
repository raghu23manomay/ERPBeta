using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using XRP.DataModel;
using XRP.Global;
using XRP.Models;

using System.Data;
using System.Text;
using System.Web.Configuration;
using System.Web.Script.Serialization;

namespace XRP.Controllers
{
    public class CustomerController : Controller
    {
        CustomerData objCustData = new CustomerData();
        VendorData objVendData = new VendorData();

        #region All Customer Get

        [HttpGet]
        public ActionResult AllCustomer()
        {
            Paged_ssmtbl_CustomerModel objPgd = new Paged_ssmtbl_CustomerModel();
            string type = "customer";
            objPgd.ssmtbl_CustomerModel = objCustData.GetAllCustomer(type);
            objPgd.PageSize = 1;
            objPgd.TotalRows = 10;
            return View(objPgd);
        }

        #endregion

        #region New Customer Get

        [HttpGet]
        public ActionResult NewCustomer()
        {
            ssmtbl_CustomerModel objCustMod = new ssmtbl_CustomerModel();
            DropDownSelection objDrop = new DropDownSelection();
            ViewData["StateCodeDrpDwn"] = objDrop.State_CodeDropDown();
            return View(objCustMod);
        }

        #endregion

        #region New Customer Post

        [HttpPost]
        public JsonResult NewCustomer(string cname,string gst,string pan,string phno,string remark,string type,string vcode)
        {
            long id = 0;           
            try
            {               
                    var tuple = objCustData.InsertCustomer(cname, gst, pan,phno,remark,type,vcode);
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
      

        #region Edit Customer Get

        [HttpGet]
        public ActionResult EditCustomer(string id)
        {
            ssmtbl_CustomerModel objCustMod = new ssmtbl_CustomerModel();
            DropDownSelection objDrop = new DropDownSelection();
            ViewData["StateCodeDrpDwn"] = objDrop.State_CodeDropDown();
            id = (id == null || id == "") ? "0" : id;
            objCustMod = objCustData.GetOneCustomer(Convert.ToInt32(id));
            return View(objCustMod);
        }

        #endregion

        #region Update Customer
        [HttpPost]
        public JsonResult UpdateCustomer(long id, string cname, string phno,string gst,string pan, string remark,string type)
        {
            string result = "";
            try
            {
                string isactive = "true";
                    var tuple = objCustData.UpdateCustomer(id,cname,phno,gst,pan,remark, isactive,type);
                     
                    result = tuple;
            
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);             
            }
            return Json(result, JsonRequestBehavior.AllowGet);
        }
           

        #endregion

      


        
        #region Insert Multiple Contact Person
        [HttpPost]
        public JsonResult InsertMultiCPerson(long id, string cpname, string email, long mob,string flag)
        {
            try
            {
                var Data = objVendData.InsertMultiContactPerson(id, cpname, email, mob,flag);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
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
    }
}