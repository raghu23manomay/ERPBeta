using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.tool.xml;
using iTextSharp.text.html.simpleparser;
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
    public class QuotationController : Controller
    {
        InquiryData objInqData = new InquiryData();
        FeasibilityData objFesiData = new FeasibilityData();
        DropDownSelection objDrop = new DropDownSelection();
        QuotationData objQuotation = new QuotationData();
        QuotationApprovalData objQuotAppData = new QuotationApprovalData();
        public JsonResult InsertTermsNCondition(string id, string tcdesc, string qid, string flag)
        {


            var connection = gConnection.Connection();
            connection.Open();
            string sqlstr = "uspupdatetermandcondition";
            SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@tcdesc", tcdesc.Trim());
            cmd.Parameters.AddWithValue("@qid", qid);
            cmd.Parameters.AddWithValue("@flag", flag);
            SqlDataReader sdr = cmd.ExecuteReader();

            connection.Close();


            return Json("success", JsonRequestBehavior.AllowGet);
        }
        // GET: Quotation
        public ActionResult NewQuotation(string id)
        {
            ssmtbl_QuotationModel modelQuotation = new ssmtbl_QuotationModel();
            ssmtbl_InquiryModel modelInquiry = new ssmtbl_InquiryModel();
            ssmtbl_FeasibilityModel modelFeasibility = new ssmtbl_FeasibilityModel();
            ssmtbl_QuotationModel latestQuotation = objQuotation.GetLetestQuotationID(Convert.ToInt32(id));

            try
            {
                if (id == "" || ModelState.IsValid == false)
                {
                    return View(modelQuotation);
                }
                modelInquiry = objInqData.GetOneInquiry(Convert.ToInt32(id));

                if (latestQuotation.id == 0 || modelInquiry.Status == "Feasibility Done")
                {

                    if (modelInquiry != null)
                    {
                        modelQuotation.InquiryNo = modelInquiry.InquiryNo;
                        //modelQuotation.QuotationNo = "Q-" + modelInquiry.InquiryNo;
                        modelQuotation.QuotationNo = "SSM_" + StandardDateTime.GetDateTime().ToString("yy") + StandardDateTime.GetDateTime().ToString("MM") + "_" + modelInquiry.InquiryNo;
                        modelQuotation.PartDescription = modelInquiry.PartName;
                        modelQuotation.PartNo = modelInquiry.PartNo;
                        modelQuotation.CustomerName = modelInquiry.customerName;
                        modelQuotation.FileStatus = modelInquiry.Status;

                    }

                    modelFeasibility = objFesiData.GetOneFeasibility(Convert.ToInt32(id));
                    if (modelFeasibility != null)
                    {
                        modelQuotation.CutWeight = modelFeasibility.cutweight;
                        modelQuotation.NetWeight = modelFeasibility.netweight;
                        modelQuotation.GrossWeight = modelFeasibility.grossweight;
                        modelQuotation.MachainedWeight = modelFeasibility.materialweights.ToString();
                        modelQuotation.SectionId = Convert.ToInt64(modelFeasibility.Section); // Sharad
                        modelQuotation.Section = objQuotation.getSectionNane(modelFeasibility.Section); // Sharad
                        ViewData["fistotal"] = modelFeasibility.fisdiatotal;
                        string MaterialID = modelFeasibility.FeasibilityMaterialGrade.ToString();
                        var getMaterialGrad = objDrop.FeasibilityMaterialGrade().FirstOrDefault(m => m.Value == MaterialID);
                        if (getMaterialGrad != null)
                        {
                            modelQuotation.Material = getMaterialGrad.Text;
                        }
                        if (modelFeasibility.ssmtbl_Feasibility_MultiVendorModel != null)
                        {
                            ViewData["MultiVendors"] = modelFeasibility.ssmtbl_Feasibility_MultiVendorModel;
                           
                        }
                        string HeattreatmentlID = modelFeasibility.FeasibilityHeattreatment.ToString();
                        var getHeattreatment = objDrop.FeasibilityHeatTreatment().FirstOrDefault(m => m.Value == HeattreatmentlID);
                        if (getHeattreatment != null)
                        {
                            modelQuotation.HeatTreatmentID = getHeattreatment.Value;
                            modelQuotation.HeatTreatmentText = getHeattreatment.Text;

                        }

                    }


                }
                else
                {
                    modelQuotation = latestQuotation;
                    modelQuotation.PerPieceRate = modelInquiry.Qty;
                    modelQuotation.CuttingRate = objQuotation.GetOneCutingCalculation(Convert.ToInt32(modelQuotation.Section)).cuttingrateperpc;
                    // ViewData["QuotaionTermsAndCondition"] = GlobalFunction.GetSelectedQuotaionTermsAndCondition(modelQuotation.id);

                    modelFeasibility = objFesiData.GetOneFeasibility(Convert.ToInt32(latestQuotation.InquiryNo));
                    if (modelFeasibility.ssmtbl_Feasibility_OperationsInvolvedModel != null)
                    {
                        ViewData["OperationsInvolved"] = modelFeasibility.ssmtbl_Feasibility_OperationsInvolvedModel;
                        ViewData["NatureofWork"] = modelFeasibility.FeasibilityNatureofWork;// Sharad
                    }
                    ViewData["QuotaionTermsAndCondition"] = GlobalFunction.GetLKP_QuotaionTermsAndCondition(modelInquiry.InquiryNo);
                    ViewData["Allversion"] = objQuotation.GetAllversion(modelQuotation.InquiryNo);
                    modelQuotation.Material = objQuotation.GetMaterialGradeByID(modelFeasibility.FeasibilityMaterialGrade); // Sharad
                    modelQuotation.SectionId = Convert.ToInt64(modelFeasibility.Section); // Sharad
                    modelQuotation.Section = objQuotation.getSectionNane(modelFeasibility.Section); // Sharad
                    string HeattreatmentlID = modelFeasibility.FeasibilityHeattreatment.ToString();
                    var getHeattreatment = objDrop.FeasibilityHeatTreatment().FirstOrDefault(m => m.Value == HeattreatmentlID);
                    if (getHeattreatment != null)
                    {
                        modelQuotation.HeatTreatmentID = getHeattreatment.Value;
                        modelQuotation.HeatTreatmentText = getHeattreatment.Text;

                    }
                    ViewData["fistotal"] = modelFeasibility.fisdiatotal;
                    ViewData["MultiVendors"] = modelFeasibility.ssmtbl_Feasibility_MultiVendorModel;
                    return View(modelQuotation);
                }

                modelQuotation.PerPieceRate = modelInquiry.Qty;
                modelFeasibility = objFesiData.GetOneFeasibility(Convert.ToInt32(id));
                if (modelFeasibility.ssmtbl_Feasibility_OperationsInvolvedModel != null)
                {
                    ViewData["OperationsInvolved"] = modelFeasibility.ssmtbl_Feasibility_OperationsInvolvedModel;
                    ViewData["NatureofWork"] = modelFeasibility.FeasibilityNatureofWork;// Sharad
                }
                ViewData["QuotaionTermsAndCondition"] = GlobalFunction.GetLKP_QuotaionTermsAndCondition(modelInquiry.InquiryNo);
                ViewData["NatureofWork"] = modelFeasibility.FeasibilityNatureofWork;// Sharad
                ViewData["Allversion"] = objQuotation.GetAllversion(modelQuotation.InquiryNo);
                ViewData["MultiVendors"] = modelFeasibility.ssmtbl_Feasibility_MultiVendorModel;
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return View(modelQuotation);
        }


        [HttpPost]
        //[ValidateAntiForgeryToken]
        //public ActionResult CreateQuotation(ssmtbl_QuotationModel model, FormCollection frmCol)
        public JsonResult CreateQuotation(ssmtbl_QuotationModel model, int QuotationId)
        {
            DataTable dt = new DataTable();

            bool newQuot = model.chk_NewQuotation;
            //bool newQuot = Convert.ToBoolean(frmCol["ChkNewQuotation"].Split(',')[0]);
            //model.id = Convert.ToInt32(frmCol["QuotationId"].ToString());


            //dt.Columns.Add("TermsNConditionID");
            //dt.Columns.Add("TermsNConditionContent");
            //for (int i = 1; i <= Convert.ToInt32(frmCol["TotalTermsNcondition"]); i++)
            //{
            //    string[] selectedVal = frmCol["chkitem" + i].Split(',');
            //    if (selectedVal[0].ToString().ToLower() == "true")
            //    {
            //        dt.Rows.Add(frmCol["chkitemID" + i], frmCol["txtbox" + i]);
            //        //dt.Rows.Add(frmCol["txtbox" + i]);

            //    }
            //}

            string Result = "";
            string Versioncreate = "";
            long id = 0;
            if (newQuot == true)
            {
                //var tuple= objQuotation.InsertQuotataion(model, dt);
                var tuple = objQuotation.InsertQuotataion(model, QuotationId);
                id = tuple.Item1;
                string result = tuple.Item2;

            }
            else
            {
                //Result = objQuotation.UpdateQuotataion(model, dt);
                Result = objQuotation.UpdateQuotataion(model, QuotationId);
            }
            if (Result == "Quotation Created Successfully!")
            {
                TempData["HideClass"] = "alert alert-success";
                TempData["Message"] = Result;


            }
            else if (Result == "Quotation Updated Successfully!")
            {
                TempData["HideClass"] = "alert alert-success";
                TempData["Message"] = Result;

            }
            else
            {
                @ViewBag.HideClass = "alert alert-danger";
                @ViewBag.Message = Result;
            }
            Versioncreate = objQuotation.CreateQVersion(model, QuotationId);
            return Json(id, JsonRequestBehavior.AllowGet);
            //return RedirectToAction("AllInquiry", "Inquiry");
        }


        [HttpPost]
        public JsonResult selectcuttingrate(long section)
        {
            try
            {
                return Json(objQuotation.GetOneCutingCalculation(section));
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return null;
        }



        #region Quotation View For Download

        [HttpGet]
        public PartialViewResult QuotationViewForDownload(string QuotationId)
        {
            ssmtbl_QuotationModel objQuot = new ssmtbl_QuotationModel();
            objQuot = objQuotAppData.GetOneQuotationForApproval(QuotationId);
            return PartialView(objQuot);
        }

        #endregion


        #region Quotation View For Download

        [HttpGet]
        public ActionResult DownloadLatestQuotationFromQuotationNo(string InquiryNo)
        {
            if (InquiryNo == "" || InquiryNo == null)
            {
                InquiryNo = "0";
            }
            var data = objQuotation.GetLetestQuotationID(Convert.ToInt32(InquiryNo));

            return RedirectToAction("QuotationPDF", new { QuotationId = data.id });

        }

        #endregion

        //#region Insert Terms And Conditions
        //[HttpPost]
        //public JsonResult InsertFeasOperationsInvolved(List<ssmtbl_Feasibility_OperationsInvolvedModel> ssmtbl_Feasibility_OperationsInvolvedModel)
        //{
        //    string Data = "";
        //    foreach (var item in ssmtbl_Feasibility_OperationsInvolvedModel)
        //    {
        //        try
        //        {
        //            Data = objQuotation.InsertFeasOperationsInvolved(item.FeasibilityId, item.Operations_Involved);

        //        }
        //        catch (Exception ex)
        //        {
        //            ErrorHandlerClass.LogError(ex);
        //            return Json(null, JsonRequestBehavior.AllowGet);
        //        }

        //    }
        //    return Json(Data, JsonRequestBehavior.AllowGet);

        //}
        //#endregion

        #region Quotation PDF

        [HttpGet]
        // public ActionResult QuotationPDF(string QuotationId)
        public FileResult QuotationPDF(string QuotationId)
        {
            string filenm = "";
            var fpath = "";
            string contentType = "";
            try
            {
                //string QuotationId = frm["id"].ToString();
                fpath = HttpContext.Server.MapPath("~/PDFFiles/Quotation/");

                ssmtbl_QuotationModel objQuot = new ssmtbl_QuotationModel();
                objQuot = objQuotAppData.GetOneQuotationForApproval(QuotationId);

                ssmtbl_FeasibilityModel modelFeasibility = new ssmtbl_FeasibilityModel();
                modelFeasibility = objFesiData.GetOneFeasibility(Convert.ToInt32(objQuot.InquiryNo));

                string str = objQuot.QuotationNo.Substring(0, 8);
                filenm = str + "_" + objQuot.CustomerName + "_" + objQuot.InquiryNo + "_" + objQuot.new_Version_No + ".pdf";

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


                string pdfbody = "<div style='font: 10px; border= 1'>";
                pdfbody += "<div style='text-align:center'>";
                pdfbody += "<font size='3'>SHREE SIDDHESHWARI METAL FORGING PRIVATE LIMITED</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:center;>";
                pdfbody += "<font size='medium'>J-489/490,M.I.D.C BHOSARI, PUNE-26</font>";
                pdfbody += "</div>";
                pdfbody += "<div style='text-align:center;>";
                pdfbody += "<font size='medium'>Email - admin@ssmforge.com             Tel: 020-27130120</font>";
                pdfbody += "</div>";

                //doc.Add(Chunk.NEWLINE);
                //hw.Parse(new StringReader(pdfbody));


                pdfbody += "<div style='text-align:center;'>";
                pdfbody += "<font size='3' font-weight='bold'>QUOTATION</font>";
                pdfbody += "</div>";



                //doc.Add(Chunk.NEWLINE);
                //hw.Parse(new StringReader(pdfbody));

                pdfbody += "<div style='text-align:right; font-size: medium'>";
                pdfbody += "<h4 style='text-align:right'>Quotation # " + objQuot.QuotationNo;
                pdfbody += "</h4>";
                //pdfbody += "<small> Revision Number:" + objQuot.new_Version_No;
                pdfbody += "<small> Date: " + objQuot.CreatedOn.Date.ToString("dd-MMM-yyyy");
                pdfbody += "</small>";
                pdfbody += "</div>";

                //doc.Add(Chunk.NEWLINE);
                //hw.Parse(new StringReader(pdfbody));


                pdfbody += "<div style='text-align:Left; font-size: medium'>";
                pdfbody += "To, <br/>" + objQuot.CustomerName;
                pdfbody += "<br/>" + objQuot.address;
                pdfbody += "</div>";
                // pdfbody += "<table border='0' cellpadding='5' cellspacing='0'>";
                //pdfbody += "<tbody >";

                //pdfbody += "<tr>";
                //pdfbody += "<th style='text-align:left'>";
                //pdfbody += "Quotation Number:- " + objQuot.QuotationNo;
                //pdfbody += "</th>";
                //pdfbody += "<th style='text-align:left'>";
                //pdfbody += "Revision Number:- " + objQuot.new_Version_No;
                //pdfbody += "</th>";
                //pdfbody += "</tr>";

                //pdfbody += "<tr>";
                //pdfbody += "<th style='text-align:left'>";
                //pdfbody += " ";
                //pdfbody += "</th>";
                //pdfbody += "<th style='text-align:left'>";
                //pdfbody += "Date:- " + objQuot.CreatedOn.Date.ToString("dd-MMM-yyyy");
                //pdfbody += "</th>";
                //pdfbody += "</tr>";

                //pdfbody += "</tbody>";
                //pdfbody += "</table>";

                //doc.Add(Chunk.NEWLINE);
                //hw.Parse(new StringReader(pdfbody));
                pdfbody += "<br/> <table border='0' cellpadding='3' cellspacing='0' style='font-size: medium'>";
                pdfbody += "<tbody >";
                pdfbody += "<tr>";
                //pdfbody += "<th width='5%' style='text-align:left; width:5%'>";
                //pdfbody += "<b>I</b>";
                //pdfbody += "</th>";               
                pdfbody += "<th>";
                pdfbody += "Part Description: " + objQuot.PartDescription;
                pdfbody += " | Material: " + objQuot.Material + " | Customer Part No:" + objQuot.PartNo;
                pdfbody += "<br/> Heat Treatment: " + objQuot.HeatTreatmentText + " | Hardness:&nbsp; Min: " + modelFeasibility.hardnessmin;
                pdfbody += " Max: " + modelFeasibility.hardnessmax + " " + modelFeasibility.hardnessunits;
                pdfbody += "</th>";
                pdfbody += "</tr>";
                pdfbody += "</tbody>";
                pdfbody += "</table>";


                //pdfbody = "<table border='1' cellpadding='3' cellspacing='0'>";
                //pdfbody += "<tbody >";

                //pdfbody += "<tr>";
                //pdfbody += "<th width='5%' style='text-align:left; width:5%'>";
                //pdfbody += "<b>I</b>";
                //pdfbody += "</th>";
                //pdfbody += "<th style='text-align:left'>";
                //pdfbody += "Part Description:- " + objQuot.PartDescription + "<br />";
                //pdfbody += "Material:- " + objQuot.Material + "<br />";
                //pdfbody += "Customer:- " + objQuot.CustomerName + "<br />";
                //pdfbody += "</th>";
                //pdfbody += "<th style='text-align:left'>";
                //pdfbody += "Part No:- " + objQuot.PartNo + "<br />";
                //pdfbody += "Heat Treatment:- " + objQuot.HeatTreatmentText + "<br />";
                //pdfbody += "Min:- " + modelFeasibility.hardnessmin + " Max:- " + modelFeasibility.hardnessmax+" "+modelFeasibility.hardnessunits+"" ;
                //pdfbody += "</th>";
                //pdfbody += "</tr>";

                //pdfbody += "</tbody>";
                //pdfbody += "</table>";


                pdfbody += "<table border='1' cellpadding='2' cellspacing='0' style='font-size: medium'>";
                pdfbody += "<tbody>";

                pdfbody += "<tr>";
                pdfbody += "<th width='5%' style='text-align:left; width:5%'>";
                pdfbody += "<b> I</b>";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Component Weight Details <br />";
                //pdfbody += "<br />";
                pdfbody += "Gross Weight (kg): " + objQuot.GrossWeight;
                pdfbody += " Cut Weight (kg): " + objQuot.CutWeight;
                pdfbody += " Forged Net Weight(kg): " + objQuot.NetWeight;
                pdfbody += "</th>";
                pdfbody += "</tr>";

                pdfbody += "</tbody>";
                pdfbody += "</table>";


                pdfbody += "<table border='1' cellpadding='5' cellspacing='0' style='font-size: medium'>";
                pdfbody += "<tbody >";

                pdfbody += "<tr>";
                pdfbody += "<th width='5%' style='text-align:left; width:5%'>";
                pdfbody += "<b>II</b>";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Raw Material Cost Details";


                // table inside th
                pdfbody += "<table border='1' cellpadding='2' cellspacing='0'>";
                pdfbody += "<tbody>";

                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left' bgcolor='#f1f1f1' width='50%'>";
                pdfbody += "Particulars";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left' bgcolor='#f1f1f1'>";
                pdfbody += "Basic Rate (Rs/kg)";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left' bgcolor='#f1f1f1'>";
                pdfbody += "Net Cost (Rs)";
                pdfbody += "</th>";
                pdfbody += "</tr>";

                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Steel Cost";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:right'>";
                pdfbody += objQuot.SteelCost;
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:right'>";
                pdfbody += Convert.ToDecimal(objQuot.SteelCost * objQuot.GrossWeight).ToString("0.00");
                pdfbody += "</th>";
                pdfbody += "</tr>";

                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Transportation";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:right'>";
                pdfbody += objQuot.Transportation;
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:right'>";
                pdfbody += Convert.ToDecimal(objQuot.Transportation * objQuot.GrossWeight).ToString("0.00");
                pdfbody += "</th>";
                pdfbody += "</tr>";

                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Total";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:right'>";
                pdfbody += Convert.ToDecimal(objQuot.SteelCost + objQuot.Transportation).ToString("0.00");
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:right'>";
                pdfbody += objQuot.TotalRowMaterialCost;
                pdfbody += "</th>";
                pdfbody += "</tr>";

                pdfbody += "</tbody>";
                pdfbody += "</table>";
                pdfbody += "</th>";

                pdfbody += "</tr>";

                pdfbody += "</tbody>";
                pdfbody += "</table>";
                // **************
                //doc.Add(Chunk.NEWLINE);
                //hw.Parse(new StringReader(pdfbody));



                pdfbody += "<table border='1' cellpadding='5' cellspacing='0'style='font-size: medium'>";
                pdfbody += "<tbody >";

                pdfbody += "<tr>";
                pdfbody += "<th width='5%' style='text-align:left; width:5%'>";
                pdfbody += "<b>III</b>";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Conversion Rate Details <br />";

                // table inside th
                pdfbody += "<table border='1' cellpadding='2' cellspacing='0'>";
                pdfbody += "<tbody >";

                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left' bgcolor='#f1f1f1' width='50%'>";
                pdfbody += "Particulars";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left' bgcolor='#f1f1f1'>";
                pdfbody += "Basic Rate (Rs/kg)";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left' bgcolor='#f1f1f1'>";
                pdfbody += "Net Cost (Rs)";
                pdfbody += "</th>";
                pdfbody += "</tr>";

                foreach (var item in modelFeasibility.ssmtbl_Feasibility_OperationsInvolvedModel)
                {
                    if (item.Operations_Involved == 1 && item.Operations_Involved_Select)
                    {
                        pdfbody += "<tr>";
                        pdfbody += "<th style='text-align:left'>";
                        pdfbody += "Cutting (Sq In)";
                        pdfbody += "</th>";
                        pdfbody += "<th style='text-align:right'>";
                        pdfbody += objQuot.CuttingSquare1;
                        pdfbody += "</th>";
                        pdfbody += "<th style='text-align:right'>";
                        pdfbody += objQuot.CuttingSquare2;
                        pdfbody += "</th>";
                        pdfbody += "</tr>";
                    }
                    if (item.Operations_Involved == 2 && item.Operations_Involved_Select)
                    {
                        pdfbody += "<tr>";
                        pdfbody += "<th style='text-align:left'>";
                        pdfbody += "Forging";
                        pdfbody += "</th>";
                        pdfbody += "<th style='text-align:right'>";
                        pdfbody += objQuot.Forging1;
                        pdfbody += "</th>";
                        pdfbody += "<th style='text-align:right'>";
                        pdfbody += objQuot.Forging1;
                        pdfbody += "</th>";
                        pdfbody += "</tr>";
                    }
                    if (item.Operations_Involved == 3 && item.Operations_Involved_Select)
                    {
                        pdfbody += "<tr>";
                        pdfbody += "<th style='text-align:left'>";
                        pdfbody += "Heat Treatment Cost (Net Wt)";
                        pdfbody += "</th>";
                        pdfbody += "<th style='text-align:right'>";
                        pdfbody += objQuot.HeatTreatment1;
                        pdfbody += "</th>";
                        pdfbody += "<th style='text-align:right'>";
                        pdfbody += objQuot.HeatTreatment2;
                        pdfbody += "</th>";
                        pdfbody += "</tr>";
                    }
                    if (item.Operations_Involved == 4 && item.Operations_Involved_Select)
                    {
                        pdfbody += "<tr>";
                        pdfbody += "<th style='text-align:left'>";
                        pdfbody += "Shot Blasting (Net Wt)";
                        pdfbody += "</th>";
                        pdfbody += "<th style='text-align:right'>";
                        pdfbody += objQuot.ShotBlasting1;
                        pdfbody += "</th>";
                        pdfbody += "<th style='text-align:right'>";
                        pdfbody += objQuot.ShotBlasting2;
                        pdfbody += "</th>";
                        pdfbody += "</tr>";
                    }
                    if (item.Operations_Involved == 5 && item.Operations_Involved_Select)
                    {
                        pdfbody += "<tr>";
                        pdfbody += "<th style='text-align:left'>";
                        pdfbody += "MPI";
                        pdfbody += "</th>";
                        pdfbody += "<th style='text-align:right'>";
                        pdfbody += objQuot.MPI1;
                        pdfbody += "</th>";
                        pdfbody += "<th style='text-align:right'>";
                        pdfbody += objQuot.MPI2;
                        pdfbody += "</th>";
                        pdfbody += "</tr>";
                    }
                    if (item.Operations_Involved == 13 && item.Operations_Involved_Select)
                    {
                        pdfbody += "<tr>";
                        pdfbody += "<th style='text-align:left'>";
                        pdfbody += "Grinding (Per Piece)";
                        pdfbody += "</th>";
                        pdfbody += "<th style='text-align:right'>";
                        pdfbody += objQuot.Grinding1;
                        pdfbody += "</th>";
                        pdfbody += "<th style='text-align:right'>";
                        pdfbody += objQuot.Grinding2;
                        pdfbody += "</th>";
                        pdfbody += "</tr>";
                    }
                    if (item.Operations_Involved == 14 && item.Operations_Involved_Select)
                    {
                        pdfbody += "<tr>";
                        pdfbody += "<th style='text-align:left'>";
                        pdfbody += "Cold Coining (Per Piece)";
                        pdfbody += "</th>";
                        pdfbody += "<th style='text-align:right'>";
                        pdfbody += objQuot.ColdCoining1;
                        pdfbody += "</th>";
                        pdfbody += "<th style='text-align:right'>";
                        pdfbody += objQuot.ColdCoining2;
                        pdfbody += "</th>";
                        pdfbody += "</tr>";
                    }
                    if (item.Operations_Involved == 15 && item.Operations_Involved_Select)
                    {
                        pdfbody += "<tr>";
                        pdfbody += "<th style='text-align:left'>";
                        pdfbody += "Machining (Per Piece)";
                        pdfbody += "</th>";
                        pdfbody += "<th style='text-align:right'>";
                        pdfbody += objQuot.Machining1;
                        pdfbody += "</th>";
                        pdfbody += "<th style='text-align:right'>";
                        pdfbody += objQuot.Machining2;
                        pdfbody += "</th>";
                        pdfbody += "</tr>";
                    }
                }

                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Die Maintaince Cost (Per Piece)";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:right'>";
                pdfbody += objQuot.DieMaintenance1;
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:right'>";
                pdfbody += objQuot.DieMaintenance2;
                pdfbody += "</th>";
                pdfbody += "</tr>";

                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Total Coversion Cost";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:right'>";
                // pdfbody += Convert.ToDecimal(objQuot.DieMaintenance1+ objQuot.Machining1+ objQuot.ColdCoining1+ objQuot.Grinding1+ objQuot.MPI1+ objQuot.ShotBlasting1+ objQuot.HeatTreatment1 + objQuot.Forging1+ objQuot.CuttingSquare1).ToString("0.00");
                pdfbody += "";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:right'>";
                pdfbody += objQuot.TotalConverstionCost;
                pdfbody += "</th>";
                pdfbody += "</tr>";


                pdfbody += "</tbody>";
                pdfbody += "</table>";
                pdfbody += "</th>";

                pdfbody += "</tr>";
                pdfbody += "</tbody>";
                pdfbody += "</table>";


                // **************
                //doc.Add(Chunk.NEWLINE);
                //hw.Parse(new StringReader(pdfbody));



                pdfbody += "<table border='1' cellpadding='5' cellspacing='0' style='font-size: medium'>";
                pdfbody += "<tbody >";

                pdfbody += "<tr>";
                pdfbody += "<th width='5%' style='text-align:left; width:5%'>";
                pdfbody += "<b>IV</b>";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Total Component Cost (II+III) ";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:right'>";
                pdfbody += +objQuot.TotalComponentCost;
                pdfbody += "</th>";
                pdfbody += "</tr>";

                pdfbody += "</tbody>";
                pdfbody += "</table>";

                //doc.Add(Chunk.NEWLINE);
                //hw.Parse(new StringReader(pdfbody));
                pdfbody += "<table border='1' cellpadding='5' cellspacing='0' style='font-size: medium'>";
                pdfbody += "<tbody >";

                pdfbody += "<tr>";
                pdfbody += "<th width='5%' style='text-align:left; width:5%'>";
                pdfbody += "<b>V</b>";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Initial Die Cost ";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:right'>";
                pdfbody += +objQuot.InitialDieCost;
                pdfbody += "</th>";
                pdfbody += "</tr>";

                pdfbody += "</tbody>";
                pdfbody += "</table>";
                //if (objQuot.totallycost!="")
                //{
                //    pdfbody += "<table border='1' cellpadding='5' cellspacing='0' style='font-size: medium'>";
                //    pdfbody += "<tbody >";
                //    pdfbody += "<tr>";
                //    pdfbody += "<th width='5%' style='text-align:left; width:5%'>";
                //    pdfbody += "<b>VI</b>";
                //    pdfbody += "</th>";
                //    pdfbody += "<th style='text-align:left'>";
                //    pdfbody += "Total Other Cost ";
                //    pdfbody += "</th>";
                //    pdfbody += "<th style='text-align:right'>";
                //    pdfbody += objQuot.totallycost;
                //    pdfbody += "</th>";
                //    pdfbody += "</tr>";
                //    pdfbody += "</tbody>";
                //    pdfbody += "</table>";
                //}
                
                //
              
                //
                //doc.Add(Chunk.NEWLINE);
                //hw.Parse(new StringReader(pdfbody));
                pdfbody += "<table border='1' cellpadding='2' cellspacing='0' style='font-size: medium'>";
                pdfbody += "<tbody >";
                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Terms And Conditions: ";
                pdfbody += "</th>";
                pdfbody += "</tr>";
                pdfbody += "<tr>";
                var i = 1;
                foreach (var item in objQuot.ssmtbl_TermsNCondtionModel)
                {

                    pdfbody += "<th style='text-align:left'>";
                    pdfbody += +i + ". " + item.TermsNConditionContent;
                    pdfbody += "</th>";

                    i++;
                }
                pdfbody += "</tr>";
                pdfbody += "</tbody>";
                pdfbody += "</table>";

                //doc.Add(Chunk.NEWLINE);
                //hw.Parse(new StringReader(pdfbody));



                //pdfbody += "<table border='1' cellpadding='2' cellspacing='0'>";
                //pdfbody += "<tbody >";

                //pdfbody += "<tr>";
                //pdfbody += "<th style='text-align:left'>";
                //pdfbody += "Prepared By:- " + objQuot.Createdby;
                //pdfbody += "</th>";
                //pdfbody += "<th style='text-align:left'>";
                //pdfbody += "Approved By:- " + objQuot.ApprovedBy;
                //pdfbody += "</th>";
                //pdfbody += "</tr>";

                //pdfbody += "<tr>";
                //pdfbody += "<th style='text-align:left'>";
                //pdfbody += "Prepared Date:- " + objQuot.CreatedOn.Date.ToString("dd-MMM-yyyy");
                //pdfbody += "</th>";
                //pdfbody += "<th style='text-align:left'>";
                //pdfbody += "Approved Date:- " + objQuot.ApprovalDate.Date.ToString("dd-MMM-yyyy");
                //pdfbody += "</th>";
                //pdfbody += "</tr>";

                //pdfbody += "</tbody>";
                //pdfbody += "</table>";
                pdfbody += "</div>";
                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));

                doc.Close();

                contentType = "application/pdf";

                return File(HttpContext.Server.MapPath("~/PDFFiles/Quotation/") + filenm, contentType, filenm);


            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            //   return View();
            return File(HttpContext.Server.MapPath("~/PDFFiles/Quotation/") + filenm, contentType, filenm);
        }

        #endregion

        #region Quotation PDF
        [HttpPost]
        [ValidateInput(false)]
        public FileResult Export(string GridHtml)
        {
            var fpath = "";
            try
            {
                using (MemoryStream stream = new System.IO.MemoryStream())
                {
                    // fpath = HttpContext.Server.MapPath("~/PDFFiles/Quotation/");
                    StringReader sr = new StringReader(GridHtml);
                    Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
                    PdfWriter writer = PdfWriter.GetInstance(pdfDoc, stream);
                    pdfDoc.Open();
                    iTextSharp.text.Image image1 = iTextSharp.text.Image.GetInstance(HttpContext.Server.MapPath("~/NewCssAndTheme/img/ssmlogo.jpg"));
                    image1.Alignment = iTextSharp.text.Image.ALIGN_CENTER;
                    image1.SetAbsolutePosition(20, 780);
                    image1.ScaleToFit(80f, 80f);

                    pdfDoc.Add(image1);
                    XMLWorkerHelper.GetInstance().ParseXHtml(writer, pdfDoc, sr);
                    pdfDoc.Close();
                    return File(stream.ToArray(), "application/pdf", "Quotation.pdf");

                    //  return File(HttpContext.Server.MapPath("~/PDFFiles/Quotation/") , "application/pdf", "Grid.pdf");


                }
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return null;
        }
        #endregion


        //#region Quotation PDF
        //[HttpPost]
        //[ValidateInput(false)]
        //public FileResult Export(string GridHtml)
        //{
        //    using (MemoryStream stream = new System.IO.MemoryStream())
        //    {
        //        StringReader sr = new StringReader(GridHtml);
        //        Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
        //        PdfWriter writer = PdfWriter.GetInstance(pdfDoc, stream);
        //        pdfDoc.Open();
        //        XMLWorkerHelper.GetInstance().ParseXHtml(writer, pdfDoc, sr);
        //        pdfDoc.Close();
        //        return File(stream.ToArray(), "application/pdf", "Grid.pdf");
        //    }
        //}
        //#endregion

        #region Get Quotations For Approval
        [HttpGet]
        public JsonResult GetApprovalCount()
        {
            try
            {
                List<Dictionary<string, object>> objList = new List<Dictionary<string, object>>();
                objList = objQuotation.GetPendingQuotaions();

                return Json(objList, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        #endregion
    }
}