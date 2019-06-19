using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using XRP.DataModel;
using XRP.Global;
using XRP.Models;

namespace XRP.Controllers
{
    public class PurchaseOrderApprovalController : Controller
    {
        PurchaseOrderApprovalData objPOAppData = new PurchaseOrderApprovalData();
        QuotationApprovalData objQuotAppData = new QuotationApprovalData();
        FeasibilityData objFeasiData = new FeasibilityData();

        #region Purchase Order List Get

        [HttpGet]
        public ActionResult PurchaseOrderList()
        {
            List<ssmtbl_PurchaseOrderModel> objList = new List<ssmtbl_PurchaseOrderModel>();
            objList = objPOAppData.GetAllPurchaseOrderForApproval();
            return View(objList);
        }

        #endregion

        public ActionResult POApprovalView(string PO_Id, string QuotationId)
        {

            ssmtbl_Quotation_PoModel objQuotPO = new ssmtbl_Quotation_PoModel();

            objQuotPO.ssmtbl_QuotationModel = objQuotAppData.GetOneQuotationForApproval(QuotationId);

            var modelFeasibility = objFeasiData.GetOneFeasibility(objQuotPO.ssmtbl_QuotationModel.InquiryNo);
            if (modelFeasibility.ssmtbl_Feasibility_OperationsInvolvedModel != null)
            {
                ViewData["OperationsInvolved"] = modelFeasibility.ssmtbl_Feasibility_OperationsInvolvedModel;
                ViewData["NatureOfWork"] = modelFeasibility.FeasibilityNatureofWork; // Sharad
            }
            if (PO_Id == null || PO_Id == "")
            {
                PO_Id = "0";
            }
            objQuotPO.ssmtbl_PurchaseOrderModel = objPOAppData.GetOnePurchaseOrder(PO_Id);
            ViewData["filepath"] = objQuotPO.ssmtbl_PurchaseOrderModel.Filepath; // Sharad
            return View(objQuotPO);
        }

        public PartialViewResult PurchaseOrderForApproval(string PO_Id, string QuotationId)
        {
            ssmtbl_Quotation_PoModel objQuotPO = new ssmtbl_Quotation_PoModel();
         
            objQuotPO.ssmtbl_QuotationModel = objQuotAppData.GetOneQuotationForApproval(QuotationId);

            var modelFeasibility = objFeasiData.GetOneFeasibility(objQuotPO.ssmtbl_QuotationModel.InquiryNo);
            if (modelFeasibility.ssmtbl_Feasibility_OperationsInvolvedModel != null)
            {
                ViewData["OperationsInvolved"] = modelFeasibility.ssmtbl_Feasibility_OperationsInvolvedModel;
                ViewData["NatureOfWork"] = modelFeasibility.FeasibilityNatureofWork; // Sharad
            }
            if (PO_Id == null || PO_Id == "")
            {
                PO_Id = "0";
            }
            objQuotPO.ssmtbl_PurchaseOrderModel = objPOAppData.GetOnePurchaseOrder(PO_Id);

            return PartialView(objQuotPO);
        }



        #region Approve Purchase Order Post

        [HttpPost]
        public JsonResult ApprovePurchaseOrder(string PO_Id, string InquiryNo, string Comment)
        {
            try
            {
                var Data = objPOAppData.ApprovePurchaseOrder(PO_Id, InquiryNo, "Admin", Comment);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        #endregion 



        #region Reject Purchase Order Post

        [HttpPost]
        public JsonResult RejectPurchaseOrder(string PO_Id, string InquiryNo, string Comment)
        {
            try
            {
                var Data = objPOAppData.RejectPurchaseOrder(PO_Id, InquiryNo, "Admin", Comment);
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