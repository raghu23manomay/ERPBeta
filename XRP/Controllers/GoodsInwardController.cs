using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using XRP.DataModel;
using XRP.Global;
using XRP.Models;

namespace XRP.Controllers
{
    public class GoodsInwardController : Controller
    {

        DropDownSelection objDrop = new DropDownSelection();
        GoodsInwardData objGIData = new GoodsInwardData();
        VendorPurchaseOrderApprovalData objVPOAppData = new VendorPurchaseOrderApprovalData();
        GlobalFunction objGFunc = new GlobalFunction();
        PurchaseOrderData objPOData = new PurchaseOrderData();
        VendorPurchaseOrderData objVPOData = new VendorPurchaseOrderData();


        #region AllGoodsInward (Get)

        [HttpGet]
        public ActionResult AllGoodsInward(string _inward_type)
        {
            @ViewBag.GI_Type = objDrop.GetGoodsInwardTypeList();
            Paged_ssmtbl_GoodsInwardModel objModel = new Paged_ssmtbl_GoodsInwardModel();
            objModel = objGIData.getAllGoodsInward(_inward_type);
            return View(objModel);
            //return View();
        }

        #endregion


        #region All GI Consumables


        [HttpGet]
        public PartialViewResult AllGIConsumables(string _inward_type)
        {
            Paged_ssmtbl_VendorPurchaseOrderModel objList = new Paged_ssmtbl_VendorPurchaseOrderModel();
            objList = objVPOData.AllVPOList(_inward_type);
            @ViewBag.RatePer = objDrop.GetRatePerList();
            @ViewBag.NotAvailable = objDrop.GetNotAvailableList();
            objList.ssmtbl_GoodsInward_DocReceivedModel = objGFunc.GetGIDocReceivedList();
            objList.ginNumber = objGIData.GetMaxGinNo();
            ViewData["VPOTermsAndCondition"] = GlobalFunction.GetLKP_VPOTermsAndCondition();
            return PartialView(objList);
        }
        #endregion


        [HttpPost]
        public JsonResult GetOneGINDetails(int POId, string Party)
        {
            try
            {
                var Data = objGIData.GetOneGINDetails(POId, Party);
                Session["docReceived"] = objGIData.getDocReceived(Data.gin_number);

                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        //[HttpGet]
        //public ActionResult getDocReceived(string ginNumber)
        //{
        //    try
        //    {
        //        var data = objGIData.getDocReceived(ginNumber);
        //        ViewData["docReceived"] = data;

        //    }
        //    catch (Exception ex)
        //    {
        //        ErrorHandlerClass.LogError(ex);
        //    }
        //    return (null);
        //}
        [HttpPost]
        public JsonResult getFileAttched(string ginNumber)
        {
            try
            {
                var Data = objGIData.getFileAttched(ginNumber);

                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult GetGINDetailsbyCPO(string poid)
        {
            try
            {
                string sqlstr = "VPORequisition";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "rfqdetailsforcustomer");
                cmd.Parameters.AddWithValue("@poid", Convert.ToInt64(poid));
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                List<Dictionary<string, object>> allvpo = GetTableRows(dt);
                return Json(allvpo, JsonRequestBehavior.AllowGet);
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
        public JsonResult GetGINDetailsbyVPO(string vendorpono)
        {
            try
            {
                var Data = objGIData.GetGINDetailsbyVPO(vendorpono);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        #region Insert GIN Doc Received
        [HttpPost]
        public JsonResult InsertGIDocReceived(List<ssmtbl_GoodsInward_DocReceivedModel> ssmtbl_GoodsInward_DocReceivedModel)
        {
            string Data = "";
            foreach (var item in ssmtbl_GoodsInward_DocReceivedModel)
            {
                try
                {
                    Data = objGIData.InsertGINDocReceived(item.gin_number, item.doc_id, item.doc_name);

                }
                catch (Exception ex)
                {
                    ErrorHandlerClass.LogError(ex);
                    return Json(null, JsonRequestBehavior.AllowGet);
                }

            }
            return Json(Data, JsonRequestBehavior.AllowGet);

        }
        #endregion


        public JsonResult fileupload(FormCollection formData)
        {

            if (Request.Files.Count > 0)
            {
                try
                {
                    for (int i = 0; i < Request.Files.Count; i++)
                    {
                        HttpFileCollectionBase files = Request.Files;
                        HttpPostedFileBase file = files[0];
                        var ginId = Request.Form[0];

                        var flag = 0;
                        string ginno = "GIN-" + ginId;
                        string newfname = DateTime.Now.ToString("dd-MM-yyy-hh-mm-ss");
                        var fileName = Path.GetFileName(file.FileName);
                        string ext = Path.GetExtension(fileName);
                        newfname = newfname + ext + "";
                        string path1 = "~/PDFFiles/GoodsInward/" + newfname;
                        file.SaveAs(Server.MapPath("~/PDFFiles/GoodsInward/") + newfname);
                        var connection = gConnection.Connection();
                        connection.Open();
                        string sqlstr = "uspGINDetails";
                        SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Action", "GINFileUpload");
                        cmd.Parameters.AddWithValue("@ginId", ginId.Trim());
                        cmd.Parameters.AddWithValue("@flag", flag);
                        cmd.Parameters.AddWithValue("@filepath", path1.Trim());
                        cmd.Parameters.AddWithValue("@FileNameUpload", fileName.Trim());
                        SqlDataReader sdr = cmd.ExecuteReader();

                        connection.Close();

                    }



                }
                catch (Exception ex)
                {
                    return Json("Error occurred. Error details: " + ex.Message);
                }
            }
            return Json("File Uploaded Successfully!");
        }

        #region All GI RawMaterial

        [HttpGet]
        public PartialViewResult AllGIRawMaterial()
        {
            Paged_ssmtbl_GoodsInwardModel objModel = new Paged_ssmtbl_GoodsInwardModel();
            objModel = objGIData.getAllGoodsInward(GoodsInwardType.RawMaterial);
            return PartialView(objModel);
        }

        #endregion

        #region All GI Outsourcing

        [HttpGet]
        public PartialViewResult AllGIOutsourcing()
        {
            Paged_ssmtbl_GoodsInwardModel objModel = new Paged_ssmtbl_GoodsInwardModel();
            objModel = objGIData.getAllGoodsInward(GoodsInwardType.Outsourcing);
            return PartialView(objModel);
        }

        #endregion

        #region All GI repair

        [HttpGet]
        public PartialViewResult AllGIRepair()
        {
            Paged_ssmtbl_GoodsInwardModel objModel = new Paged_ssmtbl_GoodsInwardModel();
            objModel = objGIData.getAllGoodsInward(GoodsInwardType.Repair);
            return PartialView(objModel);
        }

        #endregion

        #region All GI MaintenanceRepair

        [HttpGet]
        public PartialViewResult AllGIMaintenanceRepair()
        {
            Paged_ssmtbl_GoodsInwardModel objModel = new Paged_ssmtbl_GoodsInwardModel();
            objModel = objGIData.getAllGoodsInward(GoodsInwardType.MaintainanceSpares);
            return PartialView(objModel);
        }

        #endregion







        #region GIConsumables (Get)

        [HttpGet]
        public ActionResult GIConsumables()
        {
            ssmtbl_GoodsInwardModel objModel = new ssmtbl_GoodsInwardModel();
            objModel = objGIData.GetMaxGINNo();
            @ViewBag.RatePer = objDrop.GetRatePerList();
            @ViewBag.CostCenterDet = objDrop.GetCostCenter();
            objModel.inward_type = GoodsInwardType.Consumables;
            objModel.ssmtbl_GoodsInward_DocReceivedModel = objGFunc.GetGIDocReceivedList();
            return View(objModel);
        }

        #endregion
        #region Insert GIN
        [HttpPost]
        public JsonResult InsertGIN(string poID, string vendorName, string inwardType, string ginNumber, string vpoNo, string arrivalDate, string ModeOfTransportation, string challan_no, string invoice_no, string vehicleNo, string Comment, string heatcode, string partyType)
        {
            long id = 0;
            try
            {
                id = objGIData.InsertGIN(poID, vendorName, inwardType, ginNumber, vpoNo, arrivalDate, ModeOfTransportation, challan_no, invoice_no, vehicleNo, Comment, heatcode, partyType);
                //long res=objGIData.DeleteGinDetails(id);
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return Json(id, JsonRequestBehavior.AllowGet);
        }
        #endregion
        [HttpPost]
        public JsonResult InsertGINCustomer(string vendorName, string inwardType, string ginNumber, string vpoNo, string receivedqnt)
        {
            long id = 0;
            try
            {
                id = objGIData.InsertGINc(vendorName, inwardType, ginNumber, vpoNo, receivedqnt);
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return Json(id, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult InsertGinDetails(long ginId, string partDesc, string orderedQty, string orderedwt, string challanQty,
            string receivedQty, string acceptedQty, string remark, string grade, string section, string heatcode, string GinStatus, string heatnumber)
        {

            try
            {
                var Data = objGIData.InsertGinDetails(ginId, partDesc, orderedQty, orderedwt, challanQty, receivedQty, acceptedQty, remark,
                  grade, section, heatcode, GinStatus, heatnumber);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        #region GIConsumables (Post)

        [HttpPost]
        public ActionResult GIConsumables(string gidata, string gidetailsdata, string gidocreceived)
        {
            ssmtbl_GoodsInwardModel objModel = new ssmtbl_GoodsInwardModel();
            string result = "";
            try
            {
                var serializeData = JsonConvert.DeserializeObject<List<ssmtbl_GoodsInward_DetailsModel>>(gidetailsdata);
                var giserializeData = JsonConvert.DeserializeObject<ssmtbl_GoodsInwardModel>(gidata);
                var giserializeDocRecData = JsonConvert.DeserializeObject<List<ssmtbl_GoodsInward_DocReceivedModel>>(gidocreceived);

                objModel = giserializeData;
                objModel.ssmtbl_GoodsInward_DetailsModel = serializeData;
                objModel.ssmtbl_GoodsInward_DocReceivedModel = giserializeDocRecData;
                objModel.inward_type = GoodsInwardType.Consumables;

                var valid = TryUpdateModel(objModel);

                if (serializeData.Count != 0)
                {
                    result = CheckGIConsumables(objModel);
                    if (result == "")
                    {
                        if (ModelState.IsValid)
                        {
                            result = objGIData.InsertGoodsInward(objModel);
                            var sdata = new
                            {
                                result,
                                objModel.gin_number
                            };
                            return Json(sdata, JsonRequestBehavior.AllowGet);
                        }
                        else
                        {
                            result = "Enter Mandatory Fields!";
                            var sdata = new
                            {
                                result,
                                objModel.gin_number
                            };
                            return Json(sdata, JsonRequestBehavior.AllowGet);
                        }
                    }
                    else
                    {
                        var sdata = new
                        {
                            result,
                            objModel.gin_number
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
                        objModel.gin_number
                    };
                    return Json(sdata, JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
                result = "Error while inserting data!";
                var sdata = new
                {
                    result,
                    objModel.gin_number
                };
                return Json(sdata, JsonRequestBehavior.AllowGet);
            }
            @ViewBag.RatePer = objDrop.GetRatePerList();
            @ViewBag.CostCenterDet = objDrop.GetCostCenter();
            return View();
        }

        #endregion

        #region UpdateGIConsumables(Get)

        [HttpGet]
        public ActionResult UpdateGIConsumables(string id, string successmsg)
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
                    @ViewBag.Message = "Goods Inward Updated Successfully!";
                }
                else
                {
                    @ViewBag.HideClass = "alert alert-success";
                    @ViewBag.Message = "Goods Inward Created Successfully!";
                }
            }
            ssmtbl_GoodsInwardModel objModel = new ssmtbl_GoodsInwardModel();
            if (id != null)
            {
                //objModel = objGIData.getGoodsInwardByID(GoodsInwardType.Consumables, id);
                objModel = objGIData.getGoodsInwardByGinNo(GoodsInwardType.Consumables, id);
                objModel.ssmtbl_GoodsInward_DetailsModel = objGIData.getGoodsInwardDetailByID(objModel.gin_number);
                objModel.ssmtbl_GoodsInward_DocReceivedModel = objGFunc.GetGIDocSeletedReceivedList(objModel.gin_number);
                @ViewBag.RatePer = objDrop.GetRatePerList();
                @ViewBag.CostCenterDet = objDrop.GetCostCenter();
                return View(objModel);
            }

            return RedirectToAction("GIConsumables");
        }

        #endregion

        #region UpdateGIConsumables (Post)

        [HttpPost]
        public ActionResult UpdateGIConsumables(string gidata, string gidetailsdata, string gidocreceived)
        {
            ssmtbl_GoodsInwardModel objModel = new ssmtbl_GoodsInwardModel();
            string result = "";
            try
            {
                var serializeData = JsonConvert.DeserializeObject<List<ssmtbl_GoodsInward_DetailsModel>>(gidetailsdata);
                var giserializeData = JsonConvert.DeserializeObject<ssmtbl_GoodsInwardModel>(gidata);
                var giserializeDocRecData = JsonConvert.DeserializeObject<List<ssmtbl_GoodsInward_DocReceivedModel>>(gidocreceived);

                objModel = giserializeData;
                objModel.ssmtbl_GoodsInward_DetailsModel = serializeData;
                objModel.ssmtbl_GoodsInward_DocReceivedModel = giserializeDocRecData;
                objModel.inward_type = GoodsInwardType.Consumables;

                var valid = TryUpdateModel(objModel);

                if (serializeData.Count != 0)
                {

                    result = CheckGIConsumables(objModel);
                    if (result == "")
                    {
                        if (ModelState.IsValid)
                        {
                            result = objGIData.UpdateGoodsInward(objModel);
                            var sdata = new
                            {
                                result,
                                objModel.gin_number
                            };
                            return Json(sdata, JsonRequestBehavior.AllowGet);
                        }
                        else
                        {
                            result = "Enter Mandatory Fields!";
                            var sdata = new
                            {
                                result,
                                objModel.gin_number
                            };
                            return Json(sdata, JsonRequestBehavior.AllowGet);
                        }
                    }
                    else
                    {
                        var sdata = new
                        {
                            result,
                            objModel.gin_number
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
                        objModel.gin_number
                    };
                    return Json(sdata, JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
                result = "Error while inserting data!";
                var sdata = new
                {
                    result,
                    objModel.gin_number
                };
                return Json(sdata, JsonRequestBehavior.AllowGet);
            }
            @ViewBag.RatePer = objDrop.GetRatePerList();
            @ViewBag.CostCenterDet = objDrop.GetCostCenter();
            return View();
        }

        #endregion






        #region GIOutsourcing(Get)

        [HttpGet]
        public ActionResult GIOutsourcing()
        {
            ssmtbl_GoodsInwardModel objModel = new ssmtbl_GoodsInwardModel();
            objModel = objGIData.GetMaxGINNo();
            @ViewBag.RatePer = objDrop.GetRatePerList();
            @ViewBag.CostCenterDet = objDrop.GetCostCenter();
            objModel.inward_type = GoodsInwardType.Outsourcing;
            objModel.ssmtbl_GoodsInward_DocReceivedModel = objGFunc.GetGIDocReceivedList();
            return View(objModel);
        }

        #endregion

        #region GIOutsourcing (Post)

        [HttpPost]
        public ActionResult GIOutsourcing(string gidata, string gidetailsdata, string gidocreceived)
        {
            ssmtbl_GoodsInwardModel objModel = new ssmtbl_GoodsInwardModel();
            string result = "";
            try
            {
                var serializeData = JsonConvert.DeserializeObject<List<ssmtbl_GoodsInward_DetailsModel>>(gidetailsdata);
                var giserializeData = JsonConvert.DeserializeObject<ssmtbl_GoodsInwardModel>(gidata);
                var giserializeDocRecData = JsonConvert.DeserializeObject<List<ssmtbl_GoodsInward_DocReceivedModel>>(gidocreceived);

                objModel = giserializeData;
                objModel.ssmtbl_GoodsInward_DetailsModel = serializeData;
                objModel.ssmtbl_GoodsInward_DocReceivedModel = giserializeDocRecData;
                objModel.inward_type = GoodsInwardType.Outsourcing;

                var valid = TryUpdateModel(objModel);

                if (serializeData.Count != 0)
                {
                    result = CheckGIConsumables(objModel);
                    if (result == "")
                    {
                        if (ModelState.IsValid)
                        {
                            result = objGIData.InsertGoodsInward(objModel);
                            var sdata = new
                            {
                                result,
                                objModel.gin_number
                            };
                            return Json(sdata, JsonRequestBehavior.AllowGet);
                        }
                        else
                        {
                            result = "Enter Mandatory Fields!";
                            var sdata = new
                            {
                                result,
                                objModel.gin_number
                            };
                            return Json(sdata, JsonRequestBehavior.AllowGet);
                        }
                    }
                    else
                    {
                        var sdata = new
                        {
                            result,
                            objModel.gin_number
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
                        objModel.gin_number
                    };
                    return Json(sdata, JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
                result = "Error while inserting data!";
                var sdata = new
                {
                    result,
                    objModel.gin_number
                };
                return Json(sdata, JsonRequestBehavior.AllowGet);
            }
            @ViewBag.RatePer = objDrop.GetRatePerList();
            @ViewBag.CostCenterDet = objDrop.GetCostCenter();
            return View();
        }

        #endregion

        #region UpdateGIOutsourcing(Get)

        [HttpGet]
        public ActionResult UpdateGIOutsourcing(string id, string successmsg)
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
                    @ViewBag.Message = "Goods Inward Updated Successfully!";
                }
                else
                {
                    @ViewBag.HideClass = "alert alert-success";
                    @ViewBag.Message = "Goods Inward Created Successfully!";
                }
            }
            ssmtbl_GoodsInwardModel objModel = new ssmtbl_GoodsInwardModel();
            if (id != null)
            {
                //objModel = objGIData.getGoodsInwardByID(GoodsInwardType.Outsourcing, id);
                objModel = objGIData.getGoodsInwardByGinNo(GoodsInwardType.Outsourcing, id);
                objModel.ssmtbl_GoodsInward_DetailsModel = objGIData.getGoodsInwardDetailByID(objModel.gin_number);
                objModel.ssmtbl_GoodsInward_DocReceivedModel = objGFunc.GetGIDocSeletedReceivedList(objModel.gin_number);
                @ViewBag.RatePer = objDrop.GetRatePerList();
                @ViewBag.CostCenterDet = objDrop.GetCostCenter();
                return View(objModel);
            }
            return RedirectToAction("GIOutsourcing");
        }

        #endregion

        #region UpdateGIOutsourcing (Post)

        [HttpPost]
        public ActionResult UpdateGIOutsourcing(string gidata, string gidetailsdata, string gidocreceived)
        {
            ssmtbl_GoodsInwardModel objModel = new ssmtbl_GoodsInwardModel();
            string result = "";
            try
            {
                var serializeData = JsonConvert.DeserializeObject<List<ssmtbl_GoodsInward_DetailsModel>>(gidetailsdata);
                var giserializeData = JsonConvert.DeserializeObject<ssmtbl_GoodsInwardModel>(gidata);
                var giserializeDocRecData = JsonConvert.DeserializeObject<List<ssmtbl_GoodsInward_DocReceivedModel>>(gidocreceived);

                objModel = giserializeData;
                objModel.ssmtbl_GoodsInward_DetailsModel = serializeData;
                objModel.ssmtbl_GoodsInward_DocReceivedModel = giserializeDocRecData;
                objModel.inward_type = GoodsInwardType.Outsourcing;

                var valid = TryUpdateModel(objModel);

                if (serializeData.Count != 0)
                {

                    if (ModelState.IsValid)
                    {
                        result = CheckGIConsumables(objModel);
                        if (result == "")
                        {
                            result = objGIData.UpdateGoodsInward(objModel);
                            var sdata = new
                            {
                                result,
                                objModel.gin_number
                            };
                            return Json(sdata, JsonRequestBehavior.AllowGet);
                        }
                        else
                        {
                            var sdata = new
                            {
                                result,
                                objModel.gin_number
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
                            objModel.gin_number
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
                        objModel.gin_number
                    };
                    return Json(sdata, JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
                result = "Error while inserting data!";
                var sdata = new
                {
                    result,
                    objModel.gin_number
                };
                return Json(sdata, JsonRequestBehavior.AllowGet);
            }
            @ViewBag.RatePer = objDrop.GetRatePerList();
            @ViewBag.CostCenterDet = objDrop.GetCostCenter();
            return View();
        }

        #endregion







        #region GIRawMaterial (Get)

        [HttpGet]
        public ActionResult GIRawMaterial()
        {
            ssmtbl_GoodsInwardModel objModel = new ssmtbl_GoodsInwardModel();
            objModel = objGIData.GetMaxGINNo();
            @ViewBag.RatePer = objDrop.GetRatePerList();
            @ViewBag.CostCenterDet = objDrop.GetCostCenter();
            objModel.inward_type = GoodsInwardType.RawMaterial;
            objModel.ssmtbl_GoodsInward_DocReceivedModel = objGFunc.GetGIDocReceivedList();
            return View(objModel);
        }

        #endregion

        #region GIRawMaterial (Post)

        [HttpPost]
        public ActionResult GIRawMaterial(string gidata, string gidetailsdata, string gidocreceived)
        {
            ssmtbl_GoodsInwardModel objModel = new ssmtbl_GoodsInwardModel();
            string result = "";
            try
            {
                var serializeData = JsonConvert.DeserializeObject<List<ssmtbl_GoodsInward_DetailsModel>>(gidetailsdata);
                var giserializeData = JsonConvert.DeserializeObject<ssmtbl_GoodsInwardModel>(gidata);
                var giserializeDocRecData = JsonConvert.DeserializeObject<List<ssmtbl_GoodsInward_DocReceivedModel>>(gidocreceived);

                objModel = giserializeData;
                objModel.ssmtbl_GoodsInward_DetailsModel = serializeData;
                objModel.ssmtbl_GoodsInward_DocReceivedModel = giserializeDocRecData;

                var valid = TryUpdateModel(objModel);

                if (serializeData.Count != 0)
                {
                    result = CheckGIConsumables(objModel);
                    if (result == "")
                    {
                        if (ModelState.IsValid)
                        {
                            objModel.inward_type = GoodsInwardType.RawMaterial;
                            result = objGIData.InsertGoodsInward(objModel);
                            var sdata = new
                            {
                                result,
                                objModel.gin_number
                            };
                            return Json(sdata, JsonRequestBehavior.AllowGet);
                        }
                        else
                        {
                            result = "Enter Mandatory Fields!";
                            var sdata = new
                            {
                                result,
                                objModel.gin_number
                            };
                            return Json(sdata, JsonRequestBehavior.AllowGet);
                        }
                    }
                    else
                    {
                        var sdata = new
                        {
                            result,
                            objModel.gin_number
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
                        objModel.gin_number
                    };
                    return Json(sdata, JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
                result = "Error while inserting data!";
                var sdata = new
                {
                    result,
                    objModel.gin_number
                };
                return Json(sdata, JsonRequestBehavior.AllowGet);
            }
            @ViewBag.RatePer = objDrop.GetRatePerList();
            @ViewBag.CostCenterDet = objDrop.GetCostCenter();
            return View();
        }

        #endregion

        #region UpdateGIRawMaterial(Get)

        [HttpGet]
        public ActionResult UpdateGIRawMaterial(string id, string successmsg)
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
                    @ViewBag.Message = "Goods Inward Updated Successfully!";
                }
                else
                {
                    @ViewBag.HideClass = "alert alert-success";
                    @ViewBag.Message = "Goods Inward Created Successfully!";
                }
            }
            ssmtbl_GoodsInwardModel objModel = new ssmtbl_GoodsInwardModel();
            if (id != null)
            {
                //objModel = objGIData.getGoodsInwardByID(GoodsInwardType.RawMaterial, id);
                objModel = objGIData.getGoodsInwardByGinNo(GoodsInwardType.RawMaterial, id);
                objModel.ssmtbl_GoodsInward_DetailsModel = objGIData.getGoodsInwardDetailByID(objModel.gin_number);
                objModel.ssmtbl_GoodsInward_DocReceivedModel = objGFunc.GetGIDocSeletedReceivedList(objModel.gin_number);
                @ViewBag.RatePer = objDrop.GetRatePerList();
                @ViewBag.CostCenterDet = objDrop.GetCostCenter();
                return View(objModel);
            }
            return RedirectToAction("GIRawMaterial");
        }

        #endregion

        #region UpdateGIRawMaterial (Post)

        [HttpPost]
        public ActionResult UpdateGIRawMaterial(string gidata, string gidetailsdata, string gidocreceived)
        {
            ssmtbl_GoodsInwardModel objModel = new ssmtbl_GoodsInwardModel();
            string result = "";
            try
            {
                var serializeData = JsonConvert.DeserializeObject<List<ssmtbl_GoodsInward_DetailsModel>>(gidetailsdata);
                var giserializeData = JsonConvert.DeserializeObject<ssmtbl_GoodsInwardModel>(gidata);
                var giserializeDocRecData = JsonConvert.DeserializeObject<List<ssmtbl_GoodsInward_DocReceivedModel>>(gidocreceived);

                objModel = giserializeData;
                objModel.ssmtbl_GoodsInward_DetailsModel = serializeData;
                objModel.ssmtbl_GoodsInward_DocReceivedModel = giserializeDocRecData;
                objModel.inward_type = GoodsInwardType.RawMaterial;

                var valid = TryUpdateModel(objModel);

                if (serializeData.Count != 0)
                {
                    result = CheckGIConsumables(objModel);
                    if (result == "")
                    {
                        if (ModelState.IsValid)
                        {
                            result = objGIData.UpdateGoodsInward(objModel);
                            var sdata = new
                            {
                                result,
                                objModel.gin_number
                            };
                            return Json(sdata, JsonRequestBehavior.AllowGet);
                        }
                        else
                        {
                            result = "Enter Mandatory Fields!";
                            var sdata = new
                            {
                                result,
                                objModel.gin_number
                            };
                            return Json(sdata, JsonRequestBehavior.AllowGet);
                        }
                    }
                    else
                    {
                        var sdata = new
                        {
                            result,
                            objModel.gin_number
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
                        objModel.gin_number
                    };
                    return Json(sdata, JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
                result = "Error while inserting data!";
                var sdata = new
                {
                    result,
                    objModel.gin_number
                };
                return Json(sdata, JsonRequestBehavior.AllowGet);
            }
            @ViewBag.RatePer = objDrop.GetRatePerList();
            @ViewBag.CostCenterDet = objDrop.GetCostCenter();
            return View();
        }

        #endregion





        #region GIRepair(Get)

        [HttpGet]
        public ActionResult GIRepair()
        {
            ssmtbl_GoodsInwardModel objModel = new ssmtbl_GoodsInwardModel();
            objModel = objGIData.GetMaxGINNo();
            @ViewBag.RatePer = objDrop.GetRatePerList();
            @ViewBag.CostCenterDet = objDrop.GetCostCenter();
            objModel.inward_type = GoodsInwardType.Repair;
            objModel.ssmtbl_GoodsInward_DocReceivedModel = objGFunc.GetGIDocReceivedList();
            return View(objModel);
        }

        #endregion

        #region GIRepair (Post)

        [HttpPost]
        public ActionResult GIRepair(string gidata, string gidetailsdata, string gidocreceived)
        {
            ssmtbl_GoodsInwardModel objModel = new ssmtbl_GoodsInwardModel();
            string result = "";
            try
            {
                var serializeData = JsonConvert.DeserializeObject<List<ssmtbl_GoodsInward_DetailsModel>>(gidetailsdata);
                var giserializeData = JsonConvert.DeserializeObject<ssmtbl_GoodsInwardModel>(gidata);
                var giserializeDocRecData = JsonConvert.DeserializeObject<List<ssmtbl_GoodsInward_DocReceivedModel>>(gidocreceived);

                objModel = giserializeData;
                objModel.ssmtbl_GoodsInward_DetailsModel = serializeData;
                objModel.ssmtbl_GoodsInward_DocReceivedModel = giserializeDocRecData;
                objModel.inward_type = GoodsInwardType.Repair;

                var valid = TryUpdateModel(objModel);


                if (ModelState.IsValid)
                {
                    result = objGIData.InsertGoodsInward(objModel);
                    var sdata = new
                    {
                        result,
                        objModel.gin_number
                    };
                    return Json(sdata, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    result = "Enter Mandatory Fields!";
                    var sdata = new
                    {
                        result,
                        objModel.gin_number
                    };
                    return Json(sdata, JsonRequestBehavior.AllowGet);
                }

            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
                result = "Error while inserting data!";
                var sdata = new
                {
                    result,
                    objModel.gin_number
                };
                return Json(sdata, JsonRequestBehavior.AllowGet);
            }
            @ViewBag.RatePer = objDrop.GetRatePerList();
            @ViewBag.CostCenterDet = objDrop.GetCostCenter();
            return View();
        }

        #endregion

        #region UpdateGIRepair(Get)

        [HttpGet]
        public ActionResult UpdateGIRepair(string id, string successmsg)
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
                    @ViewBag.Message = "Goods Inward Updated Successfully!";
                }
                else
                {
                    @ViewBag.HideClass = "alert alert-success";
                    @ViewBag.Message = "Goods Inward Created Successfully!";
                }
            }
            ssmtbl_GoodsInwardModel objModel = new ssmtbl_GoodsInwardModel();
            if (id != null)
            {
                //objModel = objGIData.getGoodsInwardByID(GoodsInwardType.Repair, id);
                objModel = objGIData.getGoodsInwardByGinNo(GoodsInwardType.Repair, id);
                objModel.ssmtbl_GoodsInward_DetailsModel = objGIData.getGoodsInwardDetailByID(objModel.gin_number);
                objModel.ssmtbl_GoodsInward_DocReceivedModel = objGFunc.GetGIDocSeletedReceivedList(objModel.gin_number);
                @ViewBag.RatePer = objDrop.GetRatePerList();
                @ViewBag.CostCenterDet = objDrop.GetCostCenter();
                return View(objModel);
            }

            return RedirectToAction("GIRepair");
        }

        #endregion

        #region UpdateGIRepair (Post)

        [HttpPost]
        public ActionResult UpdateGIRepair(string gidata, string gidetailsdata, string gidocreceived)
        {
            ssmtbl_GoodsInwardModel objModel = new ssmtbl_GoodsInwardModel();
            string result = "";
            try
            {
                var serializeData = JsonConvert.DeserializeObject<List<ssmtbl_GoodsInward_DetailsModel>>(gidetailsdata);
                var giserializeData = JsonConvert.DeserializeObject<ssmtbl_GoodsInwardModel>(gidata);
                var giserializeDocRecData = JsonConvert.DeserializeObject<List<ssmtbl_GoodsInward_DocReceivedModel>>(gidocreceived);

                objModel = giserializeData;
                objModel.ssmtbl_GoodsInward_DetailsModel = serializeData;
                objModel.ssmtbl_GoodsInward_DocReceivedModel = giserializeDocRecData;
                objModel.inward_type = GoodsInwardType.Repair;

                var valid = TryUpdateModel(objModel);

                if (ModelState.IsValid)
                {
                    result = objGIData.UpdateGoodsInward(objModel);
                    var sdata = new
                    {
                        result,
                        objModel.gin_number
                    };
                    return Json(sdata, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    result = "Enter Mandatory Fields!";
                    var sdata = new
                    {
                        result,
                        objModel.gin_number
                    };
                    return Json(sdata, JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
                result = "Error while inserting data!";
                var sdata = new
                {
                    result,
                    objModel.gin_number
                };
                return Json(sdata, JsonRequestBehavior.AllowGet);
            }
            @ViewBag.RatePer = objDrop.GetRatePerList();
            @ViewBag.CostCenterDet = objDrop.GetCostCenter();
            return View();
        }

        #endregion





        #region Get Vendor PO No Search / Details

        [HttpPost]
        public JsonResult getVendorPONo(string vendor_name, string Prefix, string vpo_type)
        {
            try
            {
                var Data = objGIData.getVendorPONo(vendor_name, Prefix, vpo_type);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }


        [HttpPost]
        public JsonResult getVendorPONoDetails(string Id)
        {
            try
            {
                var Data = objVPOAppData.GetOneVendorPurchaseOrder(Id);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        #endregion

        #region Get Dispatch No Search / Details

        [HttpPost]
        public JsonResult getDispacthNO(string vendor_name, string Prefix, string vpo_type)
        {
            try
            {
                var Data = objGIData.getDispacthNO(vendor_name, Prefix, vpo_type);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }


        [HttpPost]
        public JsonResult getDispacthNODetails(string Id)
        {
            try
            {
                var Data = objVPOAppData.getDispacthNODetails(Id);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        #endregion

        #region Get Customer PO No Search / Details

        [HttpPost]
        public JsonResult getCustomerPONo(string customerName, string Prefix)
        {
            try
            {
                var Data = objGIData.getCustomerPONo(customerName, Prefix);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }


        [HttpPost]
        public JsonResult getCustomerPONoDetails(string Id)
        {
            try
            {
                var Data = objPOData.GetOnePurchaseOrderFromPONo(Id);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        #endregion

        #region Get Material Grade Section Search / Details

        [HttpPost]
        public JsonResult getMaterialGrade(string Prefix)
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


        [HttpPost]
        public JsonResult getSection(string Prefix)
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





        private string CheckGIConsumables(ssmtbl_GoodsInwardModel objModel)
        {
            string result = "";

            if (objModel.if_no_specify == null)
            {
                objModel.if_no_specify = "";
            }
            if (objModel.if_no_specify == "")
            {
                result = "Check Document Received!";
            }

            if (result != "")
            {
                foreach (var itemchk in objModel.ssmtbl_GoodsInward_DocReceivedModel)
                {
                    if (itemchk.ischecked == true)
                    {
                        result = "";
                    }
                }
            }


            foreach (var data in objModel.ssmtbl_GoodsInward_DetailsModel)
            {
                if (data.accepted_qty > data.challan_qty)
                {
                    result = "Accepted Qty cannot be greater than Challan Qty!";
                    return result;
                }
                else if (data.shortfall > 0)
                {
                    if (data.reason == null || data.reason == "")
                    {
                        result = "Put reason for shortfall!";
                        return result;
                    }
                }
            }

            return result;
        }
    }
}