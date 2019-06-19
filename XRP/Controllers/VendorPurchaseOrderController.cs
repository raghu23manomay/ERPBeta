using iTextSharp.text;
using iTextSharp.text.pdf;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using XRP.DataModel;
using XRP.Global;
using XRP.Models;

namespace XRP.Controllers
{
    public class VendorPurchaseOrderController : Controller
    {
        DropDownSelection objDrop = new DropDownSelection();
        VendorPurchaseOrderData objVPOData = new VendorPurchaseOrderData();
        VendorPurchaseOrderApprovalData objVPOAppData = new VendorPurchaseOrderApprovalData();
        public ActionResult AllVPOList()
        {
           
            Paged_ssmtbl_VendorPurchaseOrderModel objList = new Paged_ssmtbl_VendorPurchaseOrderModel();
            objList = objVPOData.AllVPOList1();
            @ViewBag.RatePer = objDrop.GetRatePerList();
            @ViewBag.NotAvailable = objDrop.GetNotAvailableList();
            ViewData["VPOTermsAndCondition"] = GlobalFunction.GetLKP_VPOTermsAndCondition();
            return View(objList);
        }
        public ActionResult AllVPOFilter(string _inward_type)
        {
            Paged_ssmtbl_VendorPurchaseOrderModel objList = new Paged_ssmtbl_VendorPurchaseOrderModel();
            objList = objVPOData.AllVPOFilter(_inward_type);

            return View("AllVPOList",objList);
        }
        [HttpPost]
        public JsonResult VPOAllSearch(string search)
        {
            try
            {
                string sqlstr = "VPORequisition";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "SearchVPO");
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
        public JsonResult fetchVPO(string id)
        {
            try
            {
                string sqlstr = "VPORequisition";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "GeneratePO");
                cmd.Parameters.AddWithValue("@vpono", id.Trim());
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
        [HttpPost]
        public JsonResult fetchVPODataforApproval(string id)
        {
            try
            {
                string sqlstr = "VPORequisition";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "GeneratePOForPendingApproval");
                cmd.Parameters.AddWithValue("@vpono", id.Trim());
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
        [HttpPost]
        public JsonResult fetchVPODetails(string id)
        {
            try
            {
                string sqlstr = "VPORequisition";
                
               
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "GeneratePOItemselect");
                cmd.Parameters.AddWithValue("@vpono", id.Trim());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                List<Dictionary<string, object>> allvpodetails = GetTableRows(dt);
                return Json(allvpodetails, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult fetchtnc(string rfqid)
        {
            try
            {
                string sqlstr = "VPORequisition";
                string[] tokens = rfqid.Split('-');
                string vpono = tokens[1];
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "fetchtnc");
                cmd.Parameters.AddWithValue("@RfqID", vpono.Trim());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                connection.Close();
              
                List<Dictionary<string, object>> allvpotnc = GetTableRows(dt);
                return Json(allvpotnc, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult fetchtnotes(string PoNo)
        {
            try
            {
                string sqlstr = "AllVPO";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "fetchnotes");
                cmd.Parameters.AddWithValue("@pono", PoNo.Trim());
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
        #region Get All Vendor Purchase Order

        [HttpGet]
        public ActionResult AllVendorPurchaseOrder(string _vendorPO_type)
        {
            //if (_vendorPO_type == null)
            //{
            //    _vendorPO_type = "";
            //}
            //@ViewBag.VPO_Type = objDrop.GetVendorPurchaseOrderTypeList();
            //Paged_ssmtbl_VendorPurchaseOrderModel objList = new Paged_ssmtbl_VendorPurchaseOrderModel();
            //objList = objVPOData.getAllVendorPurchaseOrder(_vendorPO_type);
            return View();
        }

        #endregion




        #region All VPO Consumables

        [HttpGet]
        public PartialViewResult AllVPOConsumables()
        {
            Paged_ssmtbl_VendorPurchaseOrderModel objList = new Paged_ssmtbl_VendorPurchaseOrderModel();
            objList = objVPOData.getAllVendorPurchaseOrder(VendorPurchaseOrderType.Consumables);
            return PartialView(objList);
        }

        #endregion

        #region All VPO RawMaterial

        [HttpGet]
        public PartialViewResult AllVPORawMaterial()
        {
            Paged_ssmtbl_VendorPurchaseOrderModel objList = new Paged_ssmtbl_VendorPurchaseOrderModel();
            objList = objVPOData.getAllVendorPurchaseOrder(VendorPurchaseOrderType.RawMaterial);
            return PartialView(objList);
        }

        #endregion

        #region All VPO MaintananceSpares

        [HttpGet]
        public PartialViewResult AllVPOMaintananceSpares()
        {
            Paged_ssmtbl_VendorPurchaseOrderModel objList = new Paged_ssmtbl_VendorPurchaseOrderModel();
            objList = objVPOData.getAllVendorPurchaseOrder(VendorPurchaseOrderType.MaintainanceSpares);
            return PartialView(objList);
        }

        #endregion

        #region All VPO Outsourcing

        [HttpGet]
        public PartialViewResult AllVPOOutsourcing()
        {
            Paged_ssmtbl_VendorPurchaseOrderModel objList = new Paged_ssmtbl_VendorPurchaseOrderModel();
            objList = objVPOData.getAllVendorPurchaseOrder(VendorPurchaseOrderType.Outsourcing);
            return PartialView(objList);
        }

        #endregion





        #region Consumables Get

        [HttpGet]
        public ActionResult Consumables()
        {
            ssmtbl_VendorPurchaseOrderNew objModel = new ssmtbl_VendorPurchaseOrderNew();
            objModel.ssmtbl_VendorPurchaseOrderModel = objVPOData.GetMaxPONo();
            @ViewBag.RatePer = objDrop.GetRatePerList();
            @ViewBag.NotAvailable = objDrop.GetNotAvailableList();
          
           ViewData["VPOTermsAndCondition"] = GlobalFunction.GetLKP_VPOTermsAndCondition();
            return View(objModel);
        }

        #endregion

        #region Consumables Post

        [HttpPost]
        public ActionResult Consumables(string vpodata, string vpodetailsdata, string vpotandc)
        {
            try
            {
                //ViewData["VPOTermsAndCondition"] = GlobalFunction.GetLKP_VPOTermsAndCondition();
                ssmtbl_VendorPurchaseOrderModel objModel = new ssmtbl_VendorPurchaseOrderModel();
                string result = "";

                //var ser = frm["ssmtbl_VendorPurchaseOrderModel"];
                //var ser1 = frm["ssmtbl_VendorPurchaseOrder_DetailsModelList"];

                var serializeData = JsonConvert.DeserializeObject<List<ssmtbl_VendorPurchaseOrder_DetailsModel>>(vpodetailsdata);
                var poserializeData = JsonConvert.DeserializeObject<ssmtbl_VendorPurchaseOrderModel>(vpodata,new IsoDateTimeConverter());
                var poserializetncData = JsonConvert.DeserializeObject<List<ssmtbl_TermsNCondtionModel>>(vpotandc);


                if (serializeData.Count != 0)
                {
                    if (poserializetncData.Count != 0)
                    {

                        objModel = poserializeData;
                        objModel.ssmtbl_TermsNCondtionModel = poserializetncData;
                        objModel.ssmtbl_VendorPurchaseOrder_DetailsModel = serializeData;


                        var valid = TryUpdateModel(objModel);

                        if (ModelState.IsValid)
                        {
                            result = CheckConsumablesItem(objModel); // Check Duplicacy in item details
                            if (result == "")
                            {
                                objModel.vendor_po_type = VendorPurchaseOrderType.Consumables;
                                result = objVPOData.InsertVendorPurchaseOrder(objModel);
                                var sdata = new
                                {
                                    result,
                                    objModel.po_no
                                };
                                return RedirectToAction("AllVendorPurchaseOrder", "VendorPurchaseOrder");
                                //return Json(sdata, JsonRequestBehavior.AllowGet);
                            }
                            else
                            {
                                var sdata = new
                                {
                                    result,
                                    objModel.po_no
                                };
                                return Json(sdata, JsonRequestBehavior.AllowGet);
                            }
                        }
                        else
                        {
                            result = "Enter Mandatory Fields!";
                            var sdata = new
                            {
                                result,
                                objModel.po_no
                            };
                            return Json(sdata, JsonRequestBehavior.AllowGet);

                        }
                    }
                    else
                    {
                        result = "Select Terms And Condition!";
                        var sdata = new
                        {
                            result,
                            objModel.po_no
                        };
                        return Json(sdata, JsonRequestBehavior.AllowGet);
                    }
                }
                else
                {
                    result = "Select Item Details!";
                    var sdata = new
                    {
                        result,
                        objModel.po_no
                    };
                    return Json(sdata, JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
         //   ViewData["QuotaionTermsAndCondition"] = GlobalFunction.GetLKP_QuotaionTermsAndCondition();
            @ViewBag.RatePer = objDrop.GetRatePerList();
            @ViewBag.NotAvailable = objDrop.GetNotAvailableList();
            // return View();
            return RedirectToAction("AllVendorPurchaseOrder", "VendorPurchaseOrder");
        }


        [HttpPost]
        public ActionResult ConsumablesFileUpload(ssmtbl_VendorPurchaseOrderNew objModel)
        {
            try
            {
                HttpPostedFileBase hpf = objModel.file;
                if (hpf.ContentLength > 0)
                {
                    string savedFileName = Server.MapPath("~/PDFFiles/VendorPODocs/" + objModel.po_no);
                    hpf.SaveAs(savedFileName);
                    objVPOData.UpdateVendorPurchaseOrderFilePath(objModel.po_no, savedFileName);
                    string result = "Data Saved!";
                    var sdata = new
                    {
                        result
                    };
                    return Json(sdata, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Content("Invalid File");
                }
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Content("Invalid File");
        }

        #endregion

        #region Edit Consumables Get

        [HttpGet]
        public ActionResult EditConsumables(string id, string successmsg)
        {
            if (successmsg == null)
            {
                successmsg = "";
            }
            if (successmsg != "")
            {
                if (successmsg == "updatesuccess")
                {
                    @ViewBag.HideClass = "alert alert-success";
                    @ViewBag.Message = "Vendor Purchase Order Updated Successfully!";
                    return RedirectToAction("AllVendorPurchaseOrder", "VendorPurchaseOrder");
                }
                else
                {
                    @ViewBag.HideClass = "alert alert-success";
                    @ViewBag.Message = "Vendor Purchase Order Created Successfully!";
                    return RedirectToAction("AllVendorPurchaseOrder", "VendorPurchaseOrder");
                }
            }
            ssmtbl_VendorPurchaseOrderModel objModel = new ssmtbl_VendorPurchaseOrderModel();
            objModel = objVPOAppData.GetOneVendorPurchaseOrder(id);
            @ViewBag.RatePer = objDrop.GetRatePerList();
            @ViewBag.NotAvailable = objDrop.GetNotAvailableList();
            ViewData["VPOTermsAndConditionEdit"] = GlobalFunction.GetLKP_VPOTermsAndConditionEdit(id);

            return View(objModel);
        }

        #endregion

        #region Edit Consumables Get

        [HttpPost]
        public ActionResult EditConsumables(string vpodata, string vpodetailsdata, string vpotandc)
        {
            try
            {
                ssmtbl_VendorPurchaseOrderModel objModel = new ssmtbl_VendorPurchaseOrderModel();
                string result = "";
                //var ser = frm["ssmtbl_VendorPurchaseOrderModel"];
                //var ser1 = frm["ssmtbl_VendorPurchaseOrder_DetailsModelList"];

                var serializeData = JsonConvert.DeserializeObject<List<ssmtbl_VendorPurchaseOrder_DetailsModel>>(vpodetailsdata);
                var poserializeData = JsonConvert.DeserializeObject<ssmtbl_VendorPurchaseOrderModel>(vpodata,new IsoDateTimeConverter());
                var poserializetncData = JsonConvert.DeserializeObject<List<ssmtbl_TermsNCondtionModel>>(vpotandc);

                if (serializeData.Count != 0)
                {
                    if (poserializetncData.Count != 0)
                    {

                        objModel = poserializeData;
                        objModel.ssmtbl_TermsNCondtionModel = poserializetncData;
                        objModel.ssmtbl_VendorPurchaseOrder_DetailsModel = serializeData;

                        var valid = TryUpdateModel(objModel);

                        if (ModelState.IsValid)
                        {
                            result = CheckConsumablesItem(objModel); // Check Duplicacy in item details
                            if (result == "")
                            {
                                objModel.vendor_po_type = VendorPurchaseOrderType.Consumables;
                                result = objVPOData.UpdateVendorPurchaseOrder(objModel);
                                var sdata = new
                                {
                                    result,
                                    objModel.po_no
                                };
                                return Json(sdata, JsonRequestBehavior.AllowGet);
                                //return RedirectToAction("AllVendorPurchaseOrder", "VendorPurchaseOrder");
                            }
                            else
                            {
                                var sdata = new
                                {
                                    result,
                                    objModel.po_no
                                };
                                return Json(sdata, JsonRequestBehavior.AllowGet);
                            }
                        }
                        else
                        {
                            result = "Fill Mandatory Fields!";
                            var sdata = new
                            {
                                result,
                                objModel.po_no
                            };
                            return Json(sdata, JsonRequestBehavior.AllowGet);
                        }
                    }
                    else
                    {
                        result = "Select Terms And Condition!";

                        var sdata = new
                        {
                            result,
                            objModel.po_no
                        };
                        return Json(sdata, JsonRequestBehavior.AllowGet);
                    }
                }
                else
                {
                    result = "Select Item Details!";
                    var sdata = new
                    {
                        result,
                        objModel.po_no
                    };
                    return Json(sdata, JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
          //  ViewData["QuotaionTermsAndCondition"] = GlobalFunction.GetLKP_QuotaionTermsAndCondition();
            @ViewBag.RatePer = objDrop.GetRatePerList();
            @ViewBag.NotAvailable = objDrop.GetNotAvailableList();
            return View();
        }

        #endregion





        #region RawMaterial Get

        [HttpGet]
        public ActionResult RawMaterial()
        {
            ssmtbl_VendorPurchaseOrderNew objModel = new ssmtbl_VendorPurchaseOrderNew();
            objModel.ssmtbl_VendorPurchaseOrderModel = objVPOData.GetMaxPONo();
            @ViewBag.RatePer = objDrop.GetRatePerList();
            @ViewBag.NotAvailable = objDrop.GetNotAvailableList();

         //   ViewData["QuotaionTermsAndCondition"] = GlobalFunction.GetLKP_QuotaionTermsAndCondition();
            return View(objModel);
        }

        #endregion

        #region RaWMaterial Post

        [HttpPost]
        public ActionResult RawMaterial(string vpodata, string vpodetailsdata, string vpotandc)
        {
            try
            {
                ssmtbl_VendorPurchaseOrderModel objModel = new ssmtbl_VendorPurchaseOrderModel();
                string result = "";

                var serializeData = JsonConvert.DeserializeObject<List<ssmtbl_VendorPurchaseOrder_DetailsModel>>(vpodetailsdata);
                var poserializeData = JsonConvert.DeserializeObject<ssmtbl_VendorPurchaseOrderModel>(vpodata);
                var poserializetncData = JsonConvert.DeserializeObject<List<ssmtbl_TermsNCondtionModel>>(vpotandc);

                if (serializeData.Count != 0)
                {
                    if (poserializetncData.Count != 0)
                    {
                        objModel = poserializeData;
                        objModel.ssmtbl_TermsNCondtionModel = poserializetncData;
                        objModel.ssmtbl_VendorPurchaseOrder_DetailsModel = serializeData;

                        var valid = TryUpdateModel(objModel);

                        if (ModelState.IsValid)
                        {
                            result = CheckRawMaterialsItem(objModel); // Check Duplicacy in item details
                            if (result == "")
                            {
                                objModel.vendor_po_type = VendorPurchaseOrderType.RawMaterial;
                                result = objVPOData.InsertVendorPurchaseOrder(objModel);
                                var sdata = new
                                {
                                    result,
                                    objModel.po_no
                                };
                                return Json(sdata, JsonRequestBehavior.AllowGet);
                            }
                            else
                            {
                                var sdata = new
                                {
                                    result,
                                    objModel.po_no
                                };
                                return Json(sdata, JsonRequestBehavior.AllowGet);
                            }
                        }
                        else
                        {
                            result = "Enter Mandatory Fields!";
                            var sdata = new
                            {
                                result,
                                objModel.po_no
                            };
                            return Json(sdata, JsonRequestBehavior.AllowGet);
                        }
                    }
                    else
                    {
                        result = "Select Terms And Condition!";
                        var sdata = new
                        {
                            result,
                            objModel.po_no
                        };
                        return Json(sdata, JsonRequestBehavior.AllowGet);
                    }
                }
                else
                {
                    result = "Select Item Details!";
                    var sdata = new
                    {
                        result,
                        objModel.po_no
                    };
                    return Json(sdata, JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
        //    ViewData["QuotaionTermsAndCondition"] = GlobalFunction.GetLKP_QuotaionTermsAndCondition();
            @ViewBag.RatePer = objDrop.GetRatePerList();
            @ViewBag.NotAvailable = objDrop.GetNotAvailableList();
            return View();
        }


        [HttpPost]
        public ActionResult RawMaterialFileUpload(ssmtbl_VendorPurchaseOrderNew objModel)
        {

            HttpPostedFileBase hpf = objModel.file;
            if (hpf.ContentLength > 0)
            {
                string savedFileName = Server.MapPath("~/PDFFiles/VendorPODocs/" + objModel.po_no);
                hpf.SaveAs(savedFileName);
                objVPOData.UpdateVendorPurchaseOrderFilePath(objModel.po_no, savedFileName);
                string result = "Data Saved!";
                var sdata = new
                {
                    result
                };
                return Json(sdata, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Content("Invalid File");
            }
        }

        #endregion

        #region Edit RawMaterial Get

        [HttpGet]
        public ActionResult EditRawMaterial(string id, string successmsg)
        {
            if (successmsg == null)
            {
                successmsg = "";
            }
            if (successmsg != "")
            {
                if (successmsg == "updatesuccess")
                {
                    @ViewBag.HideClass = "alert alert-success";
                    @ViewBag.Message = "Vendor Purchase Order Updated Successfully!";
                }
                else
                {
                    @ViewBag.HideClass = "alert alert-success";
                    @ViewBag.Message = "Vendor Purchase Order Created Successfully!";
                }
            }
            ssmtbl_VendorPurchaseOrderModel objModel = new ssmtbl_VendorPurchaseOrderModel();
            objModel = objVPOAppData.GetOneVendorPurchaseOrder(id);
            @ViewBag.RatePer = objDrop.GetRatePerList();
            @ViewBag.NotAvailable = objDrop.GetNotAvailableList();

         //   ViewData["QuotaionTermsAndCondition"] = GlobalFunction.GetLKP_QuotaionTermsAndCondition();
            return View(objModel);
        }

        #endregion

        #region Edit RaWMaterial Post

        [HttpPost]
        public ActionResult EditRawMaterial(string vpodata, string vpodetailsdata, string vpotandc)
        {
            try
            {
                ssmtbl_VendorPurchaseOrderModel objModel = new ssmtbl_VendorPurchaseOrderModel();
                string result = "";

                var serializeData = JsonConvert.DeserializeObject<List<ssmtbl_VendorPurchaseOrder_DetailsModel>>(vpodetailsdata);
                var poserializeData = JsonConvert.DeserializeObject<ssmtbl_VendorPurchaseOrderModel>(vpodata);
                var poserializetncData = JsonConvert.DeserializeObject<List<ssmtbl_TermsNCondtionModel>>(vpotandc);

                if (serializeData.Count != 0)
                {
                    if (poserializetncData.Count != 0)
                    {
                        objModel = poserializeData;
                        objModel.ssmtbl_TermsNCondtionModel = poserializetncData;
                        objModel.ssmtbl_VendorPurchaseOrder_DetailsModel = serializeData;

                        var valid = TryUpdateModel(objModel);

                        if (ModelState.IsValid)
                        {
                            result = CheckRawMaterialsItem(objModel); // Check Duplicacy in item details
                            if (result == "")
                            {
                                objModel.vendor_po_type = VendorPurchaseOrderType.RawMaterial;
                                result = objVPOData.UpdateVendorPurchaseOrder(objModel);
                                var sdata = new
                                {
                                    result,
                                    objModel.po_no
                                };
                                return Json(sdata, JsonRequestBehavior.AllowGet);
                            }
                            else
                            {
                                var sdata = new
                                {
                                    result,
                                    objModel.po_no
                                };
                                return Json(sdata, JsonRequestBehavior.AllowGet);
                            }
                        }
                        else
                        {
                            result = "Enter Mandatory Fields!";
                            var sdata = new
                            {
                                result,
                                objModel.po_no
                            };
                            return Json(sdata, JsonRequestBehavior.AllowGet);
                        }
                    }
                    else
                    {
                        result = "Select Terms And Condition!";

                        var sdata = new
                        {
                            result,
                            objModel.po_no
                        };
                        return Json(sdata, JsonRequestBehavior.AllowGet);
                    }
                }
                else
                {
                    result = "Select Item Details!";
                    var sdata = new
                    {
                        result,
                        objModel.po_no
                    };
                    return Json(sdata, JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
        //    ViewData["QuotaionTermsAndCondition"] = GlobalFunction.GetLKP_QuotaionTermsAndCondition();
            @ViewBag.RatePer = objDrop.GetRatePerList();
            @ViewBag.NotAvailable = objDrop.GetNotAvailableList();
            return View();
        }


        #endregion



        #region Maintainance Spares Get

        [HttpGet]
        public ActionResult MaintainanceSpares()
        {
            @ViewBag.RatePer = objDrop.GetRatePerList();
            @ViewBag.NotAvailable = objDrop.GetNotAvailableList();
            return View();
        }

        #endregion

        public ActionResult EditMaintainanceSpares()
        {
            
            return View();
        }




        #region Outsourcing Get

        [HttpGet]
        public ActionResult Outsourcing()
        {
            ssmtbl_VendorPurchaseOrderNew objModel = new ssmtbl_VendorPurchaseOrderNew();
            objModel.ssmtbl_VendorPurchaseOrderModel = objVPOData.GetMaxPONo();
            @ViewBag.RatePer = objDrop.GetRatePerList();
            @ViewBag.NotAvailable = objDrop.GetNotAvailableList();

       //     ViewData["VendorPOTermsAndCondition"] = GlobalFunction.GetLKP_QuotaionTermsAndCondition();
            return View(objModel);
        }

        #endregion

        #region Outsourcing Post

        [HttpPost]
        public ActionResult Outsourcing(string vpodata, string vpodetailsdata, string vpotandc)
        {
            try
            {
                ssmtbl_VendorPurchaseOrderModel objModel = new ssmtbl_VendorPurchaseOrderModel();
                string result = "";
                var serializeData = JsonConvert.DeserializeObject<List<ssmtbl_VendorPurchaseOrder_DetailsModel>>(vpodetailsdata);
                var poserializeData = JsonConvert.DeserializeObject<ssmtbl_VendorPurchaseOrderModel>(vpodata);
                var poserializetncData = JsonConvert.DeserializeObject<List<ssmtbl_TermsNCondtionModel>>(vpotandc);


                if (serializeData.Count != 0)
                {
                    if (poserializetncData.Count != 0)
                    {
                        objModel = poserializeData;
                        objModel.ssmtbl_TermsNCondtionModel = poserializetncData;
                        objModel.ssmtbl_VendorPurchaseOrder_DetailsModel = serializeData;

                        var valid = TryUpdateModel(objModel);

                        if (ModelState.IsValid)
                        {
                            result = CheckOutsourcingItem(objModel); // Check Duplicacy in item details
                            if (result == "")
                            {
                                objModel.vendor_po_type = VendorPurchaseOrderType.Outsourcing;
                                result = objVPOData.InsertVendorPurchaseOrder(objModel);
                                var sdata = new
                                {
                                    result,
                                    objModel.po_no
                                };
                                return Json(sdata, JsonRequestBehavior.AllowGet);
                            }
                            else
                            {
                                var sdata = new
                                {
                                    result,
                                    objModel.po_no
                                };
                                return Json(sdata, JsonRequestBehavior.AllowGet);
                            }
                        }
                        else
                        {
                            result = "Enter Mandatory Fields!";
                            var sdata = new
                            {
                                result,
                                objModel.po_no
                            };
                            return Json(sdata, JsonRequestBehavior.AllowGet);
                        }
                    }
                    else
                    {
                        result = "Select Terms And Condition!";

                        var sdata = new
                        {
                            result,
                            objModel.po_no
                        };
                        return Json(sdata, JsonRequestBehavior.AllowGet);
                    }
                }
                else
                {
                    result = "Select Item Details!";
                    var sdata = new
                    {
                        result,
                        objModel.po_no
                    };
                    return Json(sdata, JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
         //   ViewData["QuotaionTermsAndCondition"] = GlobalFunction.GetLKP_QuotaionTermsAndCondition();
            @ViewBag.RatePer = objDrop.GetRatePerList();
            @ViewBag.NotAvailable = objDrop.GetNotAvailableList();
            return View();
        }


        [HttpPost]
        public ActionResult OutsourcingFileUpload(ssmtbl_VendorPurchaseOrderNew objModel)
        {

            HttpPostedFileBase hpf = objModel.file;
            if (hpf.ContentLength > 0)
            {
                string savedFileName = Server.MapPath("~/PDFFiles/VendorPODocs/" + objModel.po_no);
                hpf.SaveAs(savedFileName);
                string result = "Data Saved!";
                var sdata = new
                {
                    result
                };
                return Json(sdata, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Content("Invalid File");
            }
        }

        #endregion

        #region Edit Outsourcing Get

        [HttpGet]
        public ActionResult EditOutsourcing(string id, string successmsg)
        {
            if (successmsg == null)
            {
                successmsg = "";
            }
            if (successmsg != "")
            {
                if (successmsg == "updatesuccess")
                {
                    @ViewBag.HideClass = "alert alert-success";
                    @ViewBag.Message = "Vendor Purchase Order Updated Successfully!";
                }
                else
                {
                    @ViewBag.HideClass = "alert alert-success";
                    @ViewBag.Message = "Vendor Purchase Order Created Successfully!";
                }
            }
            ssmtbl_VendorPurchaseOrderModel objModel = new ssmtbl_VendorPurchaseOrderModel();
            objModel = objVPOAppData.GetOneVendorPurchaseOrder(id);
            @ViewBag.RatePer = objDrop.GetRatePerList();
            @ViewBag.NotAvailable = objDrop.GetNotAvailableList();

         //   ViewData["QuotaionTermsAndCondition"] = GlobalFunction.GetLKP_QuotaionTermsAndCondition();
            return View(objModel);
        }

        #endregion

        #region EditOutsourcing Post

        [HttpPost]
        public ActionResult EditOutsourcing(string vpodata, string vpodetailsdata, string vpotandc)
        {
            try
            {
                ssmtbl_VendorPurchaseOrderModel objModel = new ssmtbl_VendorPurchaseOrderModel();
                string result = "";
                var serializeData = JsonConvert.DeserializeObject<List<ssmtbl_VendorPurchaseOrder_DetailsModel>>(vpodetailsdata);
                var poserializeData = JsonConvert.DeserializeObject<ssmtbl_VendorPurchaseOrderModel>(vpodata);
                var poserializetncData = JsonConvert.DeserializeObject<List<ssmtbl_TermsNCondtionModel>>(vpotandc);

                if (serializeData.Count != 0)
                {
                    if (poserializetncData.Count != 0)
                    {
                        objModel = poserializeData;
                        objModel.ssmtbl_TermsNCondtionModel = poserializetncData;
                        objModel.ssmtbl_VendorPurchaseOrder_DetailsModel = serializeData;

                        var valid = TryUpdateModel(objModel);

                        if (ModelState.IsValid)
                        {
                            result = CheckOutsourcingItem(objModel); // Check Duplicacy in item details
                            if (result == "")
                            {
                                objModel.vendor_po_type = VendorPurchaseOrderType.Outsourcing;
                                result = objVPOData.UpdateVendorPurchaseOrder(objModel);
                                var sdata = new
                                {
                                    result,
                                    objModel.po_no
                                };
                                return Json(sdata, JsonRequestBehavior.AllowGet);

                            }
                            else
                            {
                                var sdata = new
                                {
                                    result,
                                    objModel.po_no
                                };
                                return Json(sdata, JsonRequestBehavior.AllowGet);
                            }
                        }
                        else
                        {
                            result = "Enter Mandatory Fields!";
                            var sdata = new
                            {
                                result,
                                objModel.po_no
                            };
                            return Json(sdata, JsonRequestBehavior.AllowGet);
                        }
                    }
                    else
                    {
                        result = "Select Terms And Condition!";

                        var sdata = new
                        {
                            result,
                            objModel.po_no
                        };
                        return Json(sdata, JsonRequestBehavior.AllowGet);
                    }
                }
                else
                {
                    result = "Select Item Details!";
                    var sdata = new
                    {
                        result,
                        objModel.po_no
                    };
                    return Json(sdata, JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
       //     ViewData["QuotaionTermsAndCondition"] = GlobalFunction.GetLKP_QuotaionTermsAndCondition();
            @ViewBag.RatePer = objDrop.GetRatePerList();
            @ViewBag.NotAvailable = objDrop.GetNotAvailableList();
            return View();
        }



        #endregion






        #region Get Item Search / Details

        [HttpPost]
        public JsonResult getItemSearch(string Prefix)
        {
            try
            {
                var Data = objVPOData.getItemCode(Prefix);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }


        [HttpPost]
        public JsonResult getItemDetails(string Prefix)
        {
            try
            {
                var retval = objVPOData.getItemDetails(Prefix);
                var Data = new
                {
                    code = retval.code,
                    desc = retval.description,
                    rate = retval.rate
                };
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        #endregion

        #region Get Vendor Name Search / Details

        [HttpPost]
        public JsonResult getVendorName(string Prefix)
        {
            try
            {
                var Data = objVPOData.getVendorName(Prefix);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }


        [HttpPost]
        public JsonResult getVendorDetails(string Id)
        {
            try
            {
                var Data = objVPOData.getVendorDetailsFromId(Id);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        #endregion

        #region Get Vendor Contact Person

        [HttpPost]
        public JsonResult getVendorContactPerson(string Prefix)
        {
            try
            {
                var retdata = objVPOData.getVendorContactPersonFromId(Prefix);
                return Json(retdata, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }


        [HttpPost]
        public JsonResult getVendorContactPersonDetails(string Prefix, string contactPName)
        {
            try
            {
                var retdata = objVPOData.getVendorContactPersonFromId(Prefix, contactPName);
                return Json(retdata, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        #endregion





        #region Get Outsourcing Process Search / Details

        [HttpPost]
        public JsonResult getOutsourcingProcessSearch(string Prefix)
        {
            try
            {
                var Data = objVPOData.GetVendorPOProcessInvolved(Prefix);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }


        #endregion

        #region Get RawMaterial Section Search / Details

        [HttpPost]
        public JsonResult getRawMaterialSectionSearch(string Prefix)
        {
            try
            {
                var Data = objVPOData.GetRawMaterialSection(Prefix);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }


        #endregion

        #region Get RawMaterial Grade Of Material Search / Details

        [HttpPost]
        public JsonResult getRawMaterialGradeofMaterialSearch(string Prefix)
        {
            try
            {
                var Data = objVPOData.GetRawMaterialGradeofMaterial(Prefix);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }


        #endregion








        #region VPO Consumables PDF

        [HttpGet]
        public ActionResult VPOConsumablesPDF(string PONo)
        {
            try
            {
                //string QuotationId = frm["id"].ToString();
                var fpath = HttpContext.Server.MapPath("~/PDFFiles/VendorPODownloads/");

                ssmtbl_VendorPurchaseOrderModel objVPO = new ssmtbl_VendorPurchaseOrderModel();
                objVPO = objVPOAppData.GetOneVendorPurchaseOrder(PONo);

                string str = objVPO.po_no;
                string filenm = str + ".pdf";

                Document doc = new Document(PageSize.A4, 25, 25, 10, 20);
                PdfWriter writer = PdfWriter.GetInstance(doc, new FileStream(fpath + filenm, FileMode.Create));

                doc.Open();
                iTextSharp.text.html.simpleparser.StyleSheet styles = new iTextSharp.text.html.simpleparser.StyleSheet();
                iTextSharp.text.html.simpleparser.HTMLWorker hw = new iTextSharp.text.html.simpleparser.HTMLWorker(doc);

                iTextSharp.text.Image image1 = iTextSharp.text.Image.GetInstance(HttpContext.Server.MapPath("~/NewCssAndTheme/img/ssmlogo.jpg"));
                image1.Alignment = iTextSharp.text.Image.ALIGN_CENTER;
                image1.SetAbsolutePosition(20, 780);
                image1.ScaleToFit(80f, 80f);

                doc.Add(image1);

                string pdfbody = "<div style='text-align:center;>";
                pdfbody += "<font font-family='Times New Roman' size='3'>SHREE SIDDHESHWARI METAL FORGING PRIVATE LIMITED</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:center;>";
                pdfbody += "<font font-family='Times New Roman' size='3'>J-489/490,M.I.D.C BHOSARI, PUNE-26</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:center;>";
                pdfbody += "<font font-family='Times New Roman' size='3'>Email - admin@ssmforge.com             Tel: 020-27130120</font>";
                pdfbody += "</div>";

                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));


                pdfbody = "<div style='text-align:center;>";
                pdfbody += "<font font-family='Times New Roman' size='4'>PURCHASE ORDER</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:center;>";
                pdfbody += "<font font-family='Times New Roman' size='2'>(Note- Please quote this P.O. No. on all Bills, Challans, Correspondence, Document etc)</font>";
                pdfbody += "</div>";

                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));

                pdfbody = "<table border='1' cellpadding='5' cellspacing='0'>";
                pdfbody += "<tbody >";

                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "PO No.:- " + objVPO.po_no;
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Quot Ref No.:- " + objVPO.quotation_ref_no;
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left;' rowspan='2'>";
                pdfbody += "Valid Date:- " + objVPO.valid_date.Date.ToString("dd-MMM-yyyy");
                pdfbody += "</th>";
                pdfbody += "</tr>";

                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Date:- " + objVPO.po_date.Date.ToString("dd-MMM-yyyy");
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Date:- " + objVPO.quotation_ref_date.Date.ToString("dd-MMM-yyyy");
                pdfbody += "</th>";
                pdfbody += "</tr>";

                pdfbody += "</tbody>";
                pdfbody += "</table>";

                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));




                pdfbody = "<table border='1' cellpadding='5' cellspacing='0'>";
                pdfbody += "<tbody >";
                pdfbody += "<tr>";
                pdfbody += "<td>";
                pdfbody += "To,<br>";
                pdfbody += objVPO.vendor_name + "<br>";
                pdfbody += objVPO.vendor_mobile + "<br>";
                pdfbody += "</td>";
                pdfbody += "<td style='text-align:left'>";
                pdfbody += "Contact Person:- " + objVPO.contact_person + "<br />";
                pdfbody += "Contact No. :- " + objVPO.contact_person_mobile + "<br />";
                pdfbody += "Email:- " + objVPO.contact_person_email + "<br />";
                pdfbody += "</td>";
                pdfbody += "</tr>";
                pdfbody += "</tbody>";
                pdfbody += "</table>";


                pdfbody += "<div style='text-align:center;>";
                pdfbody += "<font font-family='Times New Roman' size='2'>With Reference to above, Please Supply the following material as per term &amp; condition mentioned below:</font>";
                pdfbody += "</div>";
                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));


                pdfbody = "<table border='1' cellpadding='5' cellspacing='0'>";
                pdfbody += "<thead >";
                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Sr No.";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Description";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Qty";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Rate";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Rate Per";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Amount";
                pdfbody += "</th>";
                pdfbody += "</tr>";
                pdfbody += "</thead >";
                pdfbody += "<tbody >";
                int srno = 1;
                foreach (var tdata in objVPO.ssmtbl_VendorPurchaseOrder_DetailsModel)
                {
                    pdfbody += "<tr>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += srno;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.item_description;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.qty;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.rate;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.rate_per;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.amount;
                    pdfbody += "</td>";
                    pdfbody += "</tr>";
                    srno = srno + 1;
                }
                pdfbody += "<tr>";
                pdfbody += "<td colspan='5' style='text-align:right'>";
                pdfbody += "Total";
                pdfbody += "</td>";
                pdfbody += "<td style='text-align:left'>";
                pdfbody += objVPO.total;
                pdfbody += "</td>";
                pdfbody += "</tr>";
                pdfbody += "<tr>";
                pdfbody += "<td colspan='5' style='text-align:right'>";
                pdfbody += "CGST(" + objVPO.cgst_perc + ")";
                pdfbody += "</td>";
                pdfbody += "<td style='text-align:left'>";
                pdfbody += objVPO.cgst_amt;
                pdfbody += "</td>";
                pdfbody += "</tr>";
                pdfbody += "<tr>";
                pdfbody += "<td colspan='5' style='text-align:right'>";
                pdfbody += "SGST(" + objVPO.sgst_perc + ")";
                pdfbody += "</td>";
                pdfbody += "<td style='text-align:left'>";
                pdfbody += objVPO.sgst_amt;
                pdfbody += "</td>";
                pdfbody += "</tr>";
                pdfbody += "<tr>";
                pdfbody += "<td colspan='5' style='text-align:right'>";
                pdfbody += "IGST(" + objVPO.igst_perc + ")";
                pdfbody += "</td>";
                pdfbody += "<td style='text-align:left'>";
                pdfbody += objVPO.igst_amt;
                pdfbody += "</td>";
                pdfbody += "</tr>";
                pdfbody += "<tr>";
                pdfbody += "<td colspan='5' style='text-align:right'>";
                pdfbody += "Grand Total";
                pdfbody += "</td>";
                pdfbody += "<td style='text-align:left'>";
                pdfbody += objVPO.grand_total;
                pdfbody += "</td>";
                pdfbody += "</tr>";
                pdfbody += "</tbody>";
                pdfbody += "</table>";


                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));



                pdfbody = "<div style='text-align:left;>";
                pdfbody += "<font font-family='Times New Roman' size='3'>TERMS & CONDITION</font>";
                pdfbody += "</div>";
                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));

                pdfbody = "<table border='1' cellpadding='5' cellspacing='0'>";
                pdfbody += "<tbody >";
                foreach (var tncdata in objVPO.ssmtbl_TermsNCondtionModel)
                {
                    if (tncdata.TermsNConditionID != 0)
                    {
                        pdfbody += "<tr>";

                        pdfbody += "</th>";
                        pdfbody += "<th style='text-align:left'>";
                        pdfbody += tncdata.TermsNConditionContent;
                        pdfbody += "</th>";

                        pdfbody += "</tr>";
                    }
                }
                pdfbody += "</tbody>";
                pdfbody += "</table>";


                // **************
                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));


                pdfbody = "<div style='text-align:left;>";
                pdfbody += "<font font-family='Times New Roman' size='2'>GSTIN-27AARCS5238G1ZX</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:left;>";
                pdfbody += "<font font-family='Times New Roman' size='2'>PAN NO.: AARCS5238G.</font>";
                pdfbody += "</div>";

                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));


                pdfbody = "<div style='text-align:left;>";
                pdfbody += "<font font-family='Times New Roman' size='2'>Thanking You.</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:right;>";
                pdfbody += "<font font-family='Times New Roman' size='3'>For Shree Siddheshwari Metal Forging Pvt. Ltd.</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:left;>";
                pdfbody += "<font font-family='Times New Roman' size='2'>Purchase</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:right;>";
                pdfbody += "<font font-family='Times New Roman' size='3'>Authorised Signatory</font>";
                pdfbody += "</div>";

                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));


                pdfbody = "<div style='text-align:left;>";
                pdfbody += "<font font-family='Times New Roman' size='2'>PO/WO Received, Reviewed & Accepted by:</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:right;>";
                pdfbody += "<font font-family='Times New Roman' size='3'>MT/FM-08</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:right;>";
                pdfbody += "<font font-family='Times New Roman' size='3'>This is autogenerated</font>";
                pdfbody += "</div>";

                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));


                doc.Close();

                string contentType = "application/pdf";

                return File(HttpContext.Server.MapPath("~/PDFFiles/VendorPODownloads/") + filenm, contentType, filenm);


            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return View();
        }

        #endregion

        #region VPO Raw Material PDF

        [HttpGet]
        public ActionResult VPORawMaterialPDF(string PONo)
        {
            try
            {
                //string QuotationId = frm["id"].ToString();
                var fpath = HttpContext.Server.MapPath("~/PDFFiles/VendorPODownloads/");

                ssmtbl_VendorPurchaseOrderModel objVPO = new ssmtbl_VendorPurchaseOrderModel();
                objVPO = objVPOAppData.GetOneVendorPurchaseOrder(PONo);

                string str = objVPO.po_no;
                string filenm = str + ".pdf";

                Document doc = new Document(PageSize.A4, 25, 25, 10, 20);
                PdfWriter writer = PdfWriter.GetInstance(doc, new FileStream(fpath + filenm, FileMode.Create));

                doc.Open();
                iTextSharp.text.html.simpleparser.StyleSheet styles = new iTextSharp.text.html.simpleparser.StyleSheet();
                iTextSharp.text.html.simpleparser.HTMLWorker hw = new iTextSharp.text.html.simpleparser.HTMLWorker(doc);

                iTextSharp.text.Image image1 = iTextSharp.text.Image.GetInstance(HttpContext.Server.MapPath("~/NewCssAndTheme/img/ssmlogo.jpg"));
                image1.Alignment = iTextSharp.text.Image.ALIGN_CENTER;
                image1.SetAbsolutePosition(20, 780);
                image1.ScaleToFit(80f, 80f);

                doc.Add(image1);

                string pdfbody = "<div style='text-align:center;>";
                pdfbody += "<font font-family='Times New Roman' size='3'>SHREE SIDDHESHWARI METAL FORGING PRIVATE LIMITED</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:center;>";
                pdfbody += "<font font-family='Times New Roman' size='3'>J-489/490,M.I.D.C BHOSARI, PUNE-26</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:center;>";
                pdfbody += "<font font-family='Times New Roman' size='3'>Email - admin@ssmforge.com             Tel: 020-27130120</font>";
                pdfbody += "</div>";

                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));


                pdfbody = "<div style='text-align:center;>";
                pdfbody += "<font font-family='Times New Roman' size='4'>PURCHASE ORDER</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:center;>";
                pdfbody += "<font font-family='Times New Roman' size='2'>(Note- Please quote this P.O. No. on all Bills, Challans, Correspondence, Document etc)</font>";
                pdfbody += "</div>";

                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));

                pdfbody = "<table border='1' cellpadding='5' cellspacing='0'>";
                pdfbody += "<tbody >";

                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "PO No.:- " + objVPO.po_no;
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Quot Ref No.:- " + objVPO.quotation_ref_no;
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left;' rowspan='2'>";
                pdfbody += "Valid Date:- " + objVPO.valid_date.Date.ToString("dd-MMM-yyyy");
                pdfbody += "</th>";
                pdfbody += "</tr>";

                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Date:- " + objVPO.po_date.Date.ToString("dd-MMM-yyyy");
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Date:- " + objVPO.quotation_ref_date.Date.ToString("dd-MMM-yyyy");
                pdfbody += "</th>";
                pdfbody += "</tr>";

                pdfbody += "</tbody>";
                pdfbody += "</table>";

                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));




                pdfbody = "<table border='1' cellpadding='5' cellspacing='0'>";
                pdfbody += "<tbody >";
                pdfbody += "<tr>";
                pdfbody += "<td>";
                pdfbody += "To,<br>";
                pdfbody += objVPO.vendor_name + "<br>";
                pdfbody += objVPO.vendor_mobile + "<br>";
                pdfbody += "</td>";
                pdfbody += "<td style='text-align:left'>";
                pdfbody += "Contact Person:- " + objVPO.contact_person + "<br />";
                pdfbody += "Contact No. :- " + objVPO.contact_person_mobile + "<br />";
                pdfbody += "Email:- " + objVPO.contact_person_email + "<br />";
                pdfbody += "</td>";
                pdfbody += "</tr>";
                pdfbody += "</tbody>";
                pdfbody += "</table>";


                pdfbody += "<div style='text-align:center;>";
                pdfbody += "<font font-family='Times New Roman' size='2'>With Reference to above, Please Supply the following material as per term &amp; condition mentioned below:</font>";
                pdfbody += "</div>";
                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));


                pdfbody = "<table border='1' cellpadding='5' cellspacing='0'>";
                pdfbody += "<thead >";
                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Sr No.";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Section";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Grade of Material";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Qty";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Rate";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Rate Per";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Amount";
                pdfbody += "</th>";
                pdfbody += "</tr>";
                pdfbody += "</thead >";
                pdfbody += "<tbody >";
                int srno = 1;
                foreach (var tdata in objVPO.ssmtbl_VendorPurchaseOrder_DetailsModel)
                {
                    pdfbody += "<tr>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += srno;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.rm_section;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.rm_gradeofmaterial;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.qty;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.rate;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.rate_per;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.amount;
                    pdfbody += "</td>";
                    pdfbody += "</tr>";
                    srno = srno + 1;
                }
                pdfbody += "<tr>";
                pdfbody += "<td colspan='6' style='text-align:right'>";
                pdfbody += "Total";
                pdfbody += "</td>";
                pdfbody += "<td style='text-align:left'>";
                pdfbody += objVPO.total;
                pdfbody += "</td>";
                pdfbody += "</tr>";
                pdfbody += "<tr>";
                pdfbody += "<td colspan='6' style='text-align:right'>";
                pdfbody += "CGST(" + objVPO.cgst_perc + ")";
                pdfbody += "</td>";
                pdfbody += "<td style='text-align:left'>";
                pdfbody += objVPO.cgst_amt;
                pdfbody += "</td>";
                pdfbody += "</tr>";
                pdfbody += "<tr>";
                pdfbody += "<td colspan='6' style='text-align:right'>";
                pdfbody += "SGST(" + objVPO.sgst_perc + ")";
                pdfbody += "</td>";
                pdfbody += "<td style='text-align:left'>";
                pdfbody += objVPO.sgst_amt;
                pdfbody += "</td>";
                pdfbody += "</tr>";
                pdfbody += "<tr>";
                pdfbody += "<td colspan='6' style='text-align:right'>";
                pdfbody += "IGST(" + objVPO.igst_perc + ")";
                pdfbody += "</td>";
                pdfbody += "<td style='text-align:left'>";
                pdfbody += objVPO.igst_amt;
                pdfbody += "</td>";
                pdfbody += "</tr>";
                pdfbody += "<tr>";
                pdfbody += "<td colspan='6' style='text-align:right'>";
                pdfbody += "Grand Total";
                pdfbody += "</td>";
                pdfbody += "<td style='text-align:left'>";
                pdfbody += objVPO.grand_total;
                pdfbody += "</td>";
                pdfbody += "</tr>";
                pdfbody += "</tbody>";
                pdfbody += "</table>";


                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));



                pdfbody = "<div style='text-align:left;>";
                pdfbody += "<font font-family='Times New Roman' size='3'>TERMS & CONDITION</font>";
                pdfbody += "</div>";
                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));

                pdfbody = "<table border='1' cellpadding='5' cellspacing='0'>";
                pdfbody += "<tbody >";
                foreach (var tncdata in objVPO.ssmtbl_TermsNCondtionModel)
                {
                    if (tncdata.TermsNConditionID != 0)
                    {
                        pdfbody += "<tr>";

                        pdfbody += "</th>";
                        pdfbody += "<th style='text-align:left'>";
                        pdfbody += tncdata.TermsNConditionContent;
                        pdfbody += "</th>";

                        pdfbody += "</tr>";
                    }
                }
                pdfbody += "</tbody>";
                pdfbody += "</table>";


                // **************
                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));


                pdfbody = "<div style='text-align:left;>";
                pdfbody += "<font font-family='Times New Roman' size='2'>GSTIN-27AARCS5238G1ZX</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:left;>";
                pdfbody += "<font font-family='Times New Roman' size='2'>PAN NO.: AARCS5238G.</font>";
                pdfbody += "</div>";

                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));


                pdfbody = "<div style='text-align:left;>";
                pdfbody += "<font font-family='Times New Roman' size='2'>Thanking You.</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:right;>";
                pdfbody += "<font font-family='Times New Roman' size='3'>For Shree Siddheshwari Metal Forging Pvt. Ltd.</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:left;>";
                pdfbody += "<font font-family='Times New Roman' size='2'>Purchase</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:right;>";
                pdfbody += "<font font-family='Times New Roman' size='3'>Authorised Signatory</font>";
                pdfbody += "</div>";

                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));


                pdfbody = "<div style='text-align:left;>";
                pdfbody += "<font font-family='Times New Roman' size='2'>PO/WO Received, Reviewed & Accepted by:</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:right;>";
                pdfbody += "<font font-family='Times New Roman' size='3'>MT/FM-08</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:right;>";
                pdfbody += "<font font-family='Times New Roman' size='3'>This is autogenerated</font>";
                pdfbody += "</div>";

                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));


                doc.Close();

                string contentType = "application/pdf";

                return File(HttpContext.Server.MapPath("~/PDFFiles/VendorPODownloads/") + filenm, contentType, filenm);


            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return View();
        }

        #endregion

        #region VPO Outsourcing PDF

        [HttpGet]
        public ActionResult VPOOutsourcingPDF(string PONo)
        {
            try
            {
                //string QuotationId = frm["id"].ToString();
                var fpath = HttpContext.Server.MapPath("~/PDFFiles/VendorPODownloads/");

                ssmtbl_VendorPurchaseOrderModel objVPO = new ssmtbl_VendorPurchaseOrderModel();
                objVPO = objVPOAppData.GetOneVendorPurchaseOrder(PONo);

                string str = objVPO.po_no;
                string filenm = str + ".pdf";

                Document doc = new Document(PageSize.A4, 25, 25, 10, 20);
                PdfWriter writer = PdfWriter.GetInstance(doc, new FileStream(fpath + filenm, FileMode.Create));

                doc.Open();
                iTextSharp.text.html.simpleparser.StyleSheet styles = new iTextSharp.text.html.simpleparser.StyleSheet();
                iTextSharp.text.html.simpleparser.HTMLWorker hw = new iTextSharp.text.html.simpleparser.HTMLWorker(doc);

                iTextSharp.text.Image image1 = iTextSharp.text.Image.GetInstance(HttpContext.Server.MapPath("~/NewCssAndTheme/img/ssmlogo.jpg"));
                image1.Alignment = iTextSharp.text.Image.ALIGN_CENTER;
                image1.SetAbsolutePosition(20, 780);
                image1.ScaleToFit(80f, 80f);

                doc.Add(image1);

                string pdfbody = "<div style='text-align:center;>";
                pdfbody += "<font font-family='Times New Roman' size='3'>SHREE SIDDHESHWARI METAL FORGING PRIVATE LIMITED</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:center;>";
                pdfbody += "<font font-family='Times New Roman' size='3'>J-489/490,M.I.D.C BHOSARI, PUNE-26</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:center;>";
                pdfbody += "<font font-family='Times New Roman' size='3'>Email - admin@ssmforge.com             Tel: 020-27130120</font>";
                pdfbody += "</div>";

                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));


                pdfbody = "<div style='text-align:center;>";
                pdfbody += "<font font-family='Times New Roman' size='4'>PURCHASE ORDER</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:center;>";
                pdfbody += "<font font-family='Times New Roman' size='2'>(Note- Please quote this P.O. No. on all Bills, Challans, Correspondence, Document etc)</font>";
                pdfbody += "</div>";

                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));

                pdfbody = "<table border='1' cellpadding='5' cellspacing='0'>";
                pdfbody += "<tbody >";

                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "PO No.:- " + objVPO.po_no;
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Quot Ref No.:- " + objVPO.quotation_ref_no;
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left;' rowspan='2'>";
                pdfbody += "Valid Date:- " + objVPO.valid_date.Date.ToString("dd-MMM-yyyy");
                pdfbody += "</th>";
                pdfbody += "</tr>";

                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Date:- " + objVPO.po_date.Date.ToString("dd-MMM-yyyy");
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Date:- " + objVPO.quotation_ref_date.Date.ToString("dd-MMM-yyyy");
                pdfbody += "</th>";
                pdfbody += "</tr>";

                pdfbody += "</tbody>";
                pdfbody += "</table>";

                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));




                pdfbody = "<table border='1' cellpadding='5' cellspacing='0'>";
                pdfbody += "<tbody >";
                pdfbody += "<tr>";
                pdfbody += "<td>";
                pdfbody += "To,<br>";
                pdfbody += objVPO.vendor_name + "<br>";
                pdfbody += objVPO.vendor_mobile + "<br>";
                pdfbody += "</td>";
                pdfbody += "<td style='text-align:left'>";
                pdfbody += "Contact Person:- " + objVPO.contact_person + "<br />";
                pdfbody += "Contact No. :- " + objVPO.contact_person_mobile + "<br />";
                pdfbody += "Email:- " + objVPO.contact_person_email + "<br />";
                pdfbody += "</td>";
                pdfbody += "</tr>";
                pdfbody += "</tbody>";
                pdfbody += "</table>";


                pdfbody += "<div style='text-align:center;>";
                pdfbody += "<font font-family='Times New Roman' size='2'>With Reference to above, Please Supply the following material as per term &amp; condition mentioned below:</font>";
                pdfbody += "</div>";
                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));


                pdfbody = "<table border='1' cellpadding='5' cellspacing='0'>";
                pdfbody += "<thead >";
                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Sr No.";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Process";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Unit";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Rate";
                pdfbody += "</th>";
                pdfbody += "</tr>";
                pdfbody += "</thead >";
                pdfbody += "<tbody >";
                int srno = 1;
                foreach (var tdata in objVPO.ssmtbl_VendorPurchaseOrder_DetailsModel)
                {
                    pdfbody += "<tr>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += srno;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.process;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.rate_per;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.rate;
                    pdfbody += "</td>";
                    pdfbody += "</tr>";
                    srno = srno + 1;
                }
                pdfbody += "<tr>";
                pdfbody += "<td colspan='3' style='text-align:right'>";
                pdfbody += "CGST(" + objVPO.cgst_perc + ")";
                pdfbody += "</td>";
                pdfbody += "<td style='text-align:left'>";
                pdfbody += objVPO.cgst_amt;
                pdfbody += "</td>";
                pdfbody += "</tr>";
                pdfbody += "<tr>";
                pdfbody += "<td colspan='3' style='text-align:right'>";
                pdfbody += "SGST(" + objVPO.sgst_perc + ")";
                pdfbody += "</td>";
                pdfbody += "<td style='text-align:left'>";
                pdfbody += objVPO.sgst_amt;
                pdfbody += "</td>";
                pdfbody += "</tr>";
                pdfbody += "<tr>";
                pdfbody += "<td colspan='3' style='text-align:right'>";
                pdfbody += "IGST(" + objVPO.igst_perc + ")";
                pdfbody += "</td>";
                pdfbody += "<td style='text-align:left'>";
                pdfbody += objVPO.igst_amt;
                pdfbody += "</td>";
                pdfbody += "</tr>";
                pdfbody += "</tbody>";
                pdfbody += "</table>";


                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));



                pdfbody = "<div style='text-align:left;>";
                pdfbody += "<font font-family='Times New Roman' size='3'>TERMS & CONDITION</font>";
                pdfbody += "</div>";
                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));

                pdfbody = "<table border='1' cellpadding='5' cellspacing='0'>";
                pdfbody += "<tbody >";
                foreach (var tncdata in objVPO.ssmtbl_TermsNCondtionModel)
                {
                    if (tncdata.TermsNConditionID != 0)
                    {
                        pdfbody += "<tr>";

                        pdfbody += "</th>";
                        pdfbody += "<th style='text-align:left'>";
                        pdfbody += tncdata.TermsNConditionContent;
                        pdfbody += "</th>";

                        pdfbody += "</tr>";
                    }
                }
                pdfbody += "</tbody>";
                pdfbody += "</table>";


                // **************
                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));


                pdfbody = "<div style='text-align:left;>";
                pdfbody += "<font font-family='Times New Roman' size='2'>GSTIN-27AARCS5238G1ZX</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:left;>";
                pdfbody += "<font font-family='Times New Roman' size='2'>PAN NO.: AARCS5238G.</font>";
                pdfbody += "</div>";

                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));


                pdfbody = "<div style='text-align:left;>";
                pdfbody += "<font font-family='Times New Roman' size='2'>Thanking You.</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:right;>";
                pdfbody += "<font font-family='Times New Roman' size='3'>For Shree Siddheshwari Metal Forging Pvt. Ltd.</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:left;>";
                pdfbody += "<font font-family='Times New Roman' size='2'>Purchase</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:right;>";
                pdfbody += "<font font-family='Times New Roman' size='3'>Authorised Signatory</font>";
                pdfbody += "</div>";

                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));


                pdfbody = "<div style='text-align:left;>";
                pdfbody += "<font font-family='Times New Roman' size='2'>PO/WO Received, Reviewed & Accepted by:</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:right;>";
                pdfbody += "<font font-family='Times New Roman' size='3'>MT/FM-08</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:right;>";
                pdfbody += "<font font-family='Times New Roman' size='3'>This is autogenerated</font>";
                pdfbody += "</div>";

                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));


                doc.Close();

                string contentType = "application/pdf";

                return File(HttpContext.Server.MapPath("~/PDFFiles/VendorPODownloads/") + filenm, contentType, filenm);


            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return View();
        }

        #endregion




        #region VPO Checks

        private string CheckConsumablesItem(ssmtbl_VendorPurchaseOrderModel objModel)
        {
            string result = "";
            try
            {
                if (objModel.valid_date.Date > objModel.po_date.Date)
                {

                    foreach (var item in objModel.ssmtbl_VendorPurchaseOrder_DetailsModel)
                    {
                        string itemcode = item.item_code;
                        int chk = 0;
                        foreach (var chkitem in objModel.ssmtbl_VendorPurchaseOrder_DetailsModel)
                        {
                            if (chkitem.item_code == itemcode)
                            {
                                chk = chk + 1;
                                if (chk > 1)
                                {
                                    result = "Item Code " + chkitem.item_code + " has duplicacy in list, Please remove one!";
                                    return result;
                                }
                            }
                        }
                    }
                }
                else
                {
                    result = "Valid date should be greater than PO Date!";
                }
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return result;
        }


        private string CheckRawMaterialsItem(ssmtbl_VendorPurchaseOrderModel objModel)
        {
            string result = "";
            try
            {
                if (objModel.valid_date.Date > objModel.po_date.Date) // Check Valid date with PO Date
                {

                    foreach (var item in objModel.ssmtbl_VendorPurchaseOrder_DetailsModel) // Check Section Repeat
                    {
                        string section = item.rm_section;
                        int chk = 0;
                        foreach (var chkitem in objModel.ssmtbl_VendorPurchaseOrder_DetailsModel)
                        {
                            if (chkitem.rm_section == section)
                            {
                                chk = chk + 1;
                                if (chk > 1)
                                {
                                    result = "Section " + chkitem.rm_section + " has duplicacy in list, Please remove one!";
                                    return result;
                                }
                            }
                        }
                    }
                }
                else
                {
                    result = "Valid date should be greater than PO Date!";
                }
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return result;
        }


        private string CheckOutsourcingItem(ssmtbl_VendorPurchaseOrderModel objModel)
        {
            string result = "";
            try
            {
                if (objModel.valid_date.Date > objModel.po_date.Date) // Check Valid date with PO Date
                {
                    if (objModel.for_all_dia == false)
                    {
                        if (objModel.dia_no == "")
                        {
                            result = "Dia No can't be blank!";
                            return result;
                        }
                    }
                    foreach (var item in objModel.ssmtbl_VendorPurchaseOrder_DetailsModel) // Check Section Repeat
                    {
                        string process = item.process;
                        int chk = 0;
                        foreach (var chkitem in objModel.ssmtbl_VendorPurchaseOrder_DetailsModel)
                        {
                            if (chkitem.process == process)
                            {
                                chk = chk + 1;
                                if (chk > 1)
                                {
                                    result = "Process " + chkitem.process + " has duplicacy in list, Please remove one!";
                                    return result;
                                }
                            }
                        }
                    }

                }
                else
                {
                    result = "Valid date should be greater than PO Date!";
                }
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return result;
        }

        #endregion



    }
}