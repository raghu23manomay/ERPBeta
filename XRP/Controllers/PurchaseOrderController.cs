using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using XRP.DataModel;
using XRP.Global;
using XRP.Models;

namespace XRP.Controllers
{
    public class PurchaseOrderController : Controller
    {
        DropDownSelection objDrop = new DropDownSelection();
        PurchaseOrderData objPOData = new PurchaseOrderData();
        QuotationApprovalData objQuotAppData = new QuotationApprovalData();
        FeasibilityData objFeasiData = new FeasibilityData();
        InquiryData objInqData = new InquiryData();
        [HttpGet]
        public ActionResult NewPurchaseOrder(string QuotationId)
        {
            ssmtbl_Quotation_PoModel objQuotPO = new ssmtbl_Quotation_PoModel();
            objQuotPO.ssmtbl_QuotationModel = objQuotAppData.GetOneQuotationForApproval(QuotationId);

            var modelFeasibility = objFeasiData.GetOneFeasibility(objQuotPO.ssmtbl_QuotationModel.InquiryNo);
            if (modelFeasibility.ssmtbl_Feasibility_OperationsInvolvedModel != null)
            {
                ViewData["OperationsInvolved"] = modelFeasibility.ssmtbl_Feasibility_OperationsInvolvedModel;
                ViewData["NatureOfWork"] = modelFeasibility.FeasibilityNatureofWork; // Sharad
                ViewData["sectionName"] = modelFeasibility.SectionName;
            }
            ViewData["maxInqNo"] = objInqData.GetMaxInquiryNo();
            ViewData["RawMaterial"] = objDrop.FeasibilityMaterialGrade();
            ViewData["Section"] = objDrop.CuutingCalculation();
            return View(objQuotPO);
        }
        #region Get POs For Approval
        [HttpGet]
        public int GetApprovalCount()
        {
            var count = objPOData.GetPendingPOs();
            return count;

        }
        #endregion

        [HttpPost]
        public ActionResult NewPurchaseOrder(ssmtbl_Quotation_PoModel objPO, HttpPostedFileBase filename1)
        {
            try
            {
                string Result = "";

                if (objPO.ssmtbl_PurchaseOrderModel.QtymentionedinPO == null)
                {
                    objPO.ssmtbl_PurchaseOrderModel.QtymentionedinPO = "";
                }
                if (objPO.ssmtbl_PurchaseOrderModel.POQty_Open == false && objPO.ssmtbl_PurchaseOrderModel.QtymentionedinPO == "")
                {

                    @ViewBag.HideClass = "alert alert-danger";
                    @ViewBag.Message = "PO Qty can't be Blank as it is not Open!";

                }
                else
                {
                    if (filename1 != null && filename1.ContentLength > 0)
                    {
                        objPO.ssmtbl_PurchaseOrderModel.Filepath = filename1.ToString(); //getting complete url  
                        var fileName = Path.GetFileName(filename1.FileName); //getting only file name(ex-ganesh.jpg)  
                        var ext = Path.GetExtension(filename1.FileName); //getting the extension(ex-.jpg)  
                        string name = Path.GetFileNameWithoutExtension(fileName); //getting file name without extension  
                        string myfile = name + ext; //appending the name with id  
                        var path = Path.Combine(Server.MapPath("/PDFFiles/PODocs"), myfile);

                        var path1 = "/PDFFiles/PODocs/" + myfile;
                        objPO.ssmtbl_PurchaseOrderModel.Filepath = path1;
                        filename1.SaveAs(path);

                    }
                    Result = objPOData.InsertPurchaseOrder(objPO);
                    if (Result == "Purchase Order Created Successfully!")
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
                if (ModelState.IsValid)
                {


                }
                else
                {
                    @ViewBag.HideClass = "alert alert-danger";
                    @ViewBag.Message = "Enter Mandatory Fields!";
                }

                ssmtbl_Quotation_PoModel objQuotPO = new ssmtbl_Quotation_PoModel();
                objQuotPO.ssmtbl_QuotationModel = objQuotAppData.GetOneQuotationForApproval(objPO.ssmtbl_QuotationModel.id.ToString());

                var modelFeasibility = objFeasiData.GetOneFeasibility(objQuotPO.ssmtbl_QuotationModel.InquiryNo);
                if (modelFeasibility.ssmtbl_Feasibility_OperationsInvolvedModel != null)
                {
                    ViewData["OperationsInvolved"] = modelFeasibility.ssmtbl_Feasibility_OperationsInvolvedModel;
                    ViewData["NatureOfWork"] = modelFeasibility.FeasibilityNatureofWork; // Sharad
                }
                //// return View(objQuotPO); //objQuotPO
                Response.Write("<script>alert('PO Send For Approval Successfully')</script>");
                return RedirectToAction("AllInquiry", "Inquiry");
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
           // return View();
            return RedirectToAction("AllInquiry", "Inquiry");
        }



        [HttpGet]
        public ActionResult ViewOnePurchaseOrder(string InquiryNo)
        {
            ssmtbl_Quotation_PoModel objQuotPO = new ssmtbl_Quotation_PoModel();

            var modelFeasibility = objFeasiData.GetOneFeasibility(Convert.ToInt32(InquiryNo));
            if (modelFeasibility.ssmtbl_Feasibility_OperationsInvolvedModel != null)
            {
                ViewData["OperationsInvolved"] = modelFeasibility.ssmtbl_Feasibility_OperationsInvolvedModel;
                ViewData["NatureOfWork"] = modelFeasibility.FeasibilityNatureofWork; // Sharad
            }

            //ssmtbl_PurchaseOrderModel objPOModel = new ssmtbl_PurchaseOrderModel();
            objQuotPO.ssmtbl_PurchaseOrderModel = objPOData.GetOnePurchaseOrder(InquiryNo);
            objQuotPO.ssmtbl_QuotationModel = objQuotAppData.GetOneQuotationForApproval(objQuotPO.ssmtbl_PurchaseOrderModel.QuotationId.ToString());

            return View(objQuotPO);
        }


    }
}
