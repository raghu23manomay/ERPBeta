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
    public class FeasibilityController : Controller
    {
        DropDownSelection objDrop = new DropDownSelection();
        GlobalFunction objGFunc = new GlobalFunction();
        FeasibilityData objFData = new FeasibilityData();

        #region Create Feasibility Get

        [HttpGet]
        public ActionResult CreateFeasibility(string InquiryNo)
        {
            ssmtbl_FeasibilityModel objFea = new ssmtbl_FeasibilityModel();
            try
            {
                ViewData["FeasibilityCOS"] = objDrop.FeasibilityConditionOfSupply();
                ViewData["FeasibilityHR"] = objDrop.FeasibilityHammerrequired();
                ViewData["FeasibilityNOW"] = objDrop.FeasibilityNatureofwork();
                ViewData["FeasibilityTOJ"] = objDrop.FeasibilityTypeofjob();

                ViewData["FeasibilityLP"] = objDrop.FeasibilityLubricantPreferred();
                ViewData["FeasibilityHT"] = objDrop.FeasibilityHeatTreatment();
                ViewData["FeasibilitySA"] = objDrop.FeasibilityStandardApplicable();
                ViewData["FeasibilityMG"] = objDrop.FeasibilityMaterialGrade();
                ViewData["Section"] = objDrop.CuutingCalculation();
               
                if (InquiryNo != "" || InquiryNo != null)
                {
                    objFea.InquiryNo = Convert.ToInt32(InquiryNo);
                    objFea = objFData.GetOneFeasibility(Convert.ToInt32(InquiryNo));
                    if(objFea.FeasibilityId > 0)
                    {
                        //objFea.ssmtbl_Feasibility_OperationsInvolvedModel = objFData.GetOperationInvolvedByFeasId(Convert.ToInt32(objFea.FeasibilityId));
                        //objFea.ssmtbl_Feasibility_RawMaterialTestModel = objFData.GetFeasibilityRawMaterialByFeasId(Convert.ToInt32(objFea.FeasibilityId));
                        objFea.ssmtbl_Feasibility_OperationsInvolvedModel = objGFunc.FeasibilityOperationsInvolved();
                        objFea.ssmtbl_Feasibility_RawMaterialTestModel = objGFunc.FeasibilityRawMaterial();
                        objFea.ssmtbl_Feasibility_MultiVendorModel=objGFunc.FeasibilityRMVendors();
                        ViewData["Fisibilityprferedvendor"] = objFData.Fisibilityprferedvendor(objFea.FeasibilityId);
                    }
                    else
                    {
                        objFea.ssmtbl_Feasibility_RawMaterialTestModel = objGFunc.FeasibilityRawMaterial();
                        objFea.ssmtbl_Feasibility_OperationsInvolvedModel = objGFunc.FeasibilityOperationsInvolved();
                        objFea.ssmtbl_Feasibility_MultiVendorModel = objGFunc.FeasibilityRMVendors();
                    }
                }
                ViewData["recommVendor"] = objFData.GetRecommendedVendorByFeasId(objFea.FeasibilityId);
                ViewData["rmtest"] = objFData.GetFeasibilityRawMaterialByFeasId(objFea.FeasibilityId);
                ViewData["opsInvolved"] = objFData.GetOperationInvolvedByFeasId(objFea.FeasibilityId);
                ViewData["opsInvolvedgetsequentially"] = objFData.opsInvolvedgetsequentially(objFea.FeasibilityId);
                ViewData["opsInvolvedIDgetsequentially"] = objFData.opsInvolvedIDgetsequentially(objFea.FeasibilityId);
                ViewData["FisibilityRawmaterialtestsequentially"] = objFData.FisibilityRawmaterialtestsequentially(objFea.FeasibilityId);
                ViewData["FisibilityRawmaterialtestIDsequentially"] = objFData.FisibilityRawmaterialtestIDsequentially(objFea.FeasibilityId);
            }
            catch(Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return View(objFea);
        }

        #endregion


        #region Create Feasibility Post

        [HttpPost]
        public JsonResult CreateFeasibility(ssmtbl_FeasibilityModel1 objfea)
        {
            string Result="";
            long id = 0;
            //if(ModelState.IsValid)
            //{
                if (objfea.FeasibilityId > 0)
                {
                var tuple = objFData.UpdateFeasibility(objfea);
                id = tuple.Item1;
                Result = tuple.Item2;
                //Result = objFData.UpdateFeasibility(objFea);
                if (Result == "Feasibility Updated Successfully!")
                {
                    @ViewBag.HideClass = "alert alert-success";
                    @ViewBag.Message = Result;
                }
                else
                {
                    @ViewBag.HideClass = "alert alert-danger";
                    @ViewBag.Message = Result;
                }
            }
                else
                {
                var tuple = objFData.InsertFeasibility(objfea);
               id = tuple.Item1;
                Result = tuple.Item2;
                if (Result == "Feasibility Created Successfully!")
                    {
                   
                        @ViewBag.HideClass = "alert alert-success";
                        @ViewBag.Message = Result;
                    }
                    else
                    {
                        @ViewBag.HideClass = "alert alert-danger";
                        @ViewBag.Message = Result;
                    }
                }
                //return RedirectToAction("AllInquiry", "Inquiry");
            //}
            //else
            //{
            //    @ViewBag.HideClass = "alert alert-danger";
            //    @ViewBag.Message = "Enter Mandatory Fields!";
            //}
            //ViewData["FeasibilityCOS"] = objDrop.FeasibilityConditionOfSupply();
            //ViewData["FeasibilityHR"] = objDrop.FeasibilityHammerrequired();
            //ViewData["FeasibilityNOW"] = objDrop.FeasibilityNatureofwork();
            //ViewData["FeasibilityTOJ"] = objDrop.FeasibilityTypeofjob();

            //ViewData["FeasibilityLP"] = objDrop.FeasibilityLubricantPreferred();
            //ViewData["FeasibilityHT"] = objDrop.FeasibilityHeatTreatment();
            //ViewData["FeasibilitySA"] = objDrop.FeasibilityStandardApplicable();
            //ViewData["FeasibilityMG"] = objDrop.FeasibilityMaterialGrade();
            //ViewData["Section1"] = objDrop.CuutingCalculation();

            //objFea = new ssmtbl_FeasibilityModel();
            //objFea.ssmtbl_Feasibility_RawMaterialTestModel = objGFunc.FeasibilityRawMaterial();
            //objFea.ssmtbl_Feasibility_OperationsInvolvedModel = objGFunc.FeasibilityOperationsInvolved();
            //return View(objFea);
            return Json(id, JsonRequestBehavior.AllowGet);
        }

        #endregion

        #region Insert Operations Involved
        [HttpPost]
        public JsonResult InsertFeasOperationsInvolved(List<ssmtbl_Feasibility_OperationsInvolvedModel> ssmtbl_Feasibility_OperationsInvolvedModel)
        {
            string Data = "";
            foreach (var item in ssmtbl_Feasibility_OperationsInvolvedModel)
            {
                try
                {
                    Data = objFData.InsertFeasOperationsInvolved(item.FeasibilityId, item.Operations_Involved);

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

        #region Insert InsertRawMaterial Test
        [HttpPost]
        public JsonResult InsertRawMaterialTest(List<ssmtbl_Feasibility_RawMaterialTestModel> ssmtbl_Feasibility_RawMaterialTestModel)
        {
            string Data = "";
            foreach (var item in ssmtbl_Feasibility_RawMaterialTestModel)
            {
                try
                {
                    Data = objFData.InsertRawMaterialTest(item.FeasibilityId, item.Raw_Material_Test);

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
        #region  Insert Preffered Vendor
        [HttpPost]
        public JsonResult InsertPrefferedVendor(List<ssmtbl_Feasibility_MultiVendorModel> ssmtbl_Feasibility_MultiVendorModel)
        {
            string Data = "";
            foreach (var item in ssmtbl_Feasibility_MultiVendorModel)
            {
                try
                {
                    Data = objFData.InsertPrefferedVendor(item.FeasibilityId, item.VendorID, item.auto_id);

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
        [HttpPost]
        public JsonResult InsertPrefferedVendorList(string PrefVendorList,string FisibilityID)
        {
            string Data = "";
          
                try
                {
                    Data = objFData.InsertPrefferedVendorList(PrefVendorList,FisibilityID);

                }
                catch (Exception ex)
                {
                    ErrorHandlerClass.LogError(ex);
                    return Json(null, JsonRequestBehavior.AllowGet);
                }

           
            return Json(Data, JsonRequestBehavior.AllowGet);

        }
        //[HttpPost]
        //public JsonResult GetOperationInvolvedByFeasId(int FeasibilityId)
        //{
        //    try
        //    {
        //        var Data = objFData.GetOperationInvolvedByFeasId(FeasibilityId);
        //        return Json(Data, JsonRequestBehavior.AllowGet);
        //    }
        //    catch (Exception ex)
        //    {
        //        ErrorHandlerClass.LogError(ex);
        //    }
        //    return Json(null, JsonRequestBehavior.AllowGet);
        //}

        //[HttpPost]
        //public JsonResult GetRawMaterialTestByFeasId(int FeasibilityId)
        //{
        //    try
        //    {
        //        var Data = objFData.GetFeasibilityRawMaterialByFeasId(FeasibilityId);
        //        return Json(Data, JsonRequestBehavior.AllowGet);
        //    }
        //    catch (Exception ex)
        //    {
        //        ErrorHandlerClass.LogError(ex);
        //    }
        //    return Json(null, JsonRequestBehavior.AllowGet);
        //}

        //[HttpPost]
        //public JsonResult getRecommendedVendorByFeasId(int FeasibilityId)
        //{
        //    try
        //    {
        //        var Data = objFData.GetRecommendedVendorByFeasId(FeasibilityId);
        //        return Json(Data, JsonRequestBehavior.AllowGet);
        //    }
        //    catch (Exception ex)
        //    {
        //        ErrorHandlerClass.LogError(ex);
        //    }
        //    return Json(null, JsonRequestBehavior.AllowGet);
        //}
    }
}