using iTextSharp.text;
using iTextSharp.text.pdf;
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
    public class DeliveryChallanController : Controller
    {

        DeliveryChallanData objDCData = new DeliveryChallanData();
        DropDownSelection objDrop = new DropDownSelection();
        GlobalFunction objGFunc = new GlobalFunction();

        #region All Delivery Challan

        [HttpGet]
        public ActionResult AllDeliveryChallan()
        {
            return View();
        }

        #endregion


        #region All DC Job Dispatch

        [HttpGet]
        public PartialViewResult AllDCJobDispatch(string DispatchNo)
        //public PartialViewResult AllDCJobDispatch()
        {
            Paged_ssmtbl_DeliveryChallanModel objModel = new Paged_ssmtbl_DeliveryChallanModel();
            ssmtbl_DeliveryChallanModel objDCModel = new ssmtbl_DeliveryChallanModel();
            objModel = objDCData.GetAllDeliveryChallan(DeliveryChallanType.JobDispatch);

            if (DispatchNo != null)
            {
                objModel = objDCData.GetDeliveryChallanByDispatchNo(DispatchNo);
            }
            else
            {

            }
            //objModel = objDCData.GetDeliveryChallanByDispatchNo(DispatchNo);
            @ViewBag.RatePer = objDrop.GetRatePerList();
            objModel.ssmtbl_Feasibility_RawMaterialTestModel = objGFunc.FeasibilityRawMaterial();
            objModel.expected_report_date = StandardDateTime.GetDateTime();
            ViewBag.dispatch_no1 = objDCData.GetMaxDeliveryChallanNo1();
            return PartialView(objModel);

        }

        #endregion


        #region All DC Outsourcing

        [HttpGet]
        public PartialViewResult AllDCOutsourcing()
        {
            Paged_ssmtbl_DeliveryChallanModel objModel = new Paged_ssmtbl_DeliveryChallanModel();
            objModel = objDCData.GetAllDeliveryChallan(DeliveryChallanType.Outsourcing);
            return PartialView(objModel);
        }

        #endregion


        #region All DC Lab Testing

        [HttpGet]
        public PartialViewResult AllDCLabTesting()
        {
            Paged_ssmtbl_DeliveryChallanModel objModel = new Paged_ssmtbl_DeliveryChallanModel();
            objModel = objDCData.GetAllDeliveryChallan(DeliveryChallanType.LabTesting);
            return PartialView(objModel);
        }

        #endregion


        #region All DC Repair

        [HttpGet]
        public PartialViewResult AllDCRepair()
        {
            Paged_ssmtbl_DeliveryChallanModel objModel = new Paged_ssmtbl_DeliveryChallanModel();
            objModel = objDCData.GetAllDeliveryChallan(DeliveryChallanType.Repair);
            return PartialView(objModel);
        }

        #endregion


        #region Insert Lab Testing
        [HttpPost]
        public string InsertDeliveryChallan(string cstId, string DCNo, string DCType, string PONumber, string expectReportDate, string remark, string RawMaterialTest,string dcid)
        {
            var result = "";
            try
            {
                result = objDCData.InsertDeliveryChallanLabTesting(Convert.ToInt32(cstId), DCNo, DCType, PONumber, expectReportDate, remark, RawMaterialTest, dcid);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return result;
        }
        #endregion

        #region New DC Job Dispatch (Get)

        [HttpGet]
        public ActionResult NewDCJobDispatch()
        {
            ssmtbl_DeliveryChallanModel objDCModel = new ssmtbl_DeliveryChallanModel();
            objDCModel = objDCData.GetMaxDeliveryChallanNo();
            @ViewBag.RatePer = objDrop.GetRatePerList();

            return View(objDCModel);
        }

        #endregion

        #region New DC Job Dispatch (Post)

        [HttpPost]
        public ActionResult NewDCJobDispatch(string dcjobdispatch, string dcjobdispatchdetails)
        {
            ssmtbl_DeliveryChallanModel objModel = new ssmtbl_DeliveryChallanModel();
            string result = "";
            try
            {
                var serializeData = JsonConvert.DeserializeObject<List<ssmtbl_DeliveryChallan_DetailsModel>>(dcjobdispatchdetails);
                var poserializeData = JsonConvert.DeserializeObject<ssmtbl_DeliveryChallanModel>(dcjobdispatch);

                objModel = poserializeData;
                objModel.ssmtbl_DeliveryChallan_DetailsModelList = serializeData;
                objModel.expected_date = StandardDateTime.GetDateTime();
                objModel.expected_report_date = StandardDateTime.GetDateTime();

                var valid = TryUpdateModel(objModel);

                if (serializeData.Count != 0)
                {
                    if (ModelState.IsValid)
                    {
                        objModel.delivery_challan_type = DeliveryChallanType.JobDispatch;
                        result = objDCData.InsertDeliveryChallan(objModel);
                        var sdata = new
                        {
                            result
                        };
                        return Json(sdata, JsonRequestBehavior.AllowGet);
                    }
                    else
                    {
                        result = "Enter Mandatory Fields!";
                        var sdata = new
                        {
                            result
                        };
                        return Json(sdata, JsonRequestBehavior.AllowGet);
                    }
                }
                else
                {
                    result = "Enter WO Details!";
                    var sdata = new
                    {
                        result
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
                    result
                };
                return Json(sdata, JsonRequestBehavior.AllowGet);
            }

            ssmtbl_DeliveryChallanModel objDCModel = new ssmtbl_DeliveryChallanModel();
            objDCModel = objDCData.GetMaxDeliveryChallanNo();
            @ViewBag.RatePer = objDrop.GetRatePerList();
            return View(objDCModel);
        }

        #endregion

        #region Edit DC Job Dispatch (Get)

        [HttpGet]
        public ActionResult EditDCJobDispatch(string DispatchNo, string successmsg)
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
                    @ViewBag.Message = "Delivery Challan Updated Successfully!";
                }
                else
                {
                    @ViewBag.HideClass = "alert alert-success";
                    @ViewBag.Message = "Delivery Challan Created Successfully!";
                }
            }
            ssmtbl_DeliveryChallanModel objDCModel = new ssmtbl_DeliveryChallanModel();
            objDCModel = objDCData.GetOneDeliveryChallan(DispatchNo);
            @ViewBag.RatePer = objDrop.GetRatePerList();

            return View(objDCModel);
        }

        #endregion

        #region Edit DC Job Dispatch (Post)

        [HttpPost]
        public ActionResult EditDCJobDispatch(string dcjobdispatch, string dcjobdispatchdetails, string tdata)
        {
            ssmtbl_DeliveryChallanModel objModel = new ssmtbl_DeliveryChallanModel();
            string result = "";
            try
            {
                var serializeData = JsonConvert.DeserializeObject<List<ssmtbl_DeliveryChallan_DetailsModel>>(dcjobdispatchdetails);
                var poserializeData = JsonConvert.DeserializeObject<ssmtbl_DeliveryChallanModel>(dcjobdispatch);

                objModel = poserializeData;
                objModel.ssmtbl_DeliveryChallan_DetailsModelList = serializeData;
                objModel.expected_date = StandardDateTime.GetDateTime();
                objModel.expected_report_date = StandardDateTime.GetDateTime();

                var valid = TryUpdateModel(objModel);

                if (serializeData.Count != 0)
                {
                    if (ModelState.IsValid)
                    {
                        objModel.delivery_challan_type = DeliveryChallanType.JobDispatch;
                        result = objDCData.UpdateDeliveryChallan(objModel);
                        var sdata = new
                        {
                            result
                        };
                        return Json(sdata, JsonRequestBehavior.AllowGet);
                    }
                    else
                    {
                        result = "Enter Mandatory Fields!";
                        var sdata = new
                        {
                            result
                        };
                        return Json(sdata, JsonRequestBehavior.AllowGet);
                    }
                }
                else
                {
                    result = "Enter WO Details!";
                    var sdata = new
                    {
                        result
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
                    result
                };
                return Json(sdata, JsonRequestBehavior.AllowGet);
            }

            ssmtbl_DeliveryChallanModel objDCModel = new ssmtbl_DeliveryChallanModel();
            objDCModel = objDCData.GetMaxDeliveryChallanNo();
            @ViewBag.RatePer = objDrop.GetRatePerList();
            return View(objDCModel);
        }

        #endregion

        #region DC Job Dispatch PDF

        [HttpGet]
        public FileResult DCJobDispatchPDF(string DispatchNo)
        {
            string filenm = "";
            var fpath = "";
            var contentType = "";
            try
            {
                //string QuotationId = frm["id"].ToString();
                fpath = HttpContext.Server.MapPath("~/PDFFiles/DeliveryChallanPDF/");

                ssmtbl_DeliveryChallanModel objDCModel = new ssmtbl_DeliveryChallanModel();
                objDCModel = objDCData.GetOneDeliveryChallan(DispatchNo);

                string str = objDCModel.dispatch_no;
                filenm = str + ".pdf";

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
                pdfbody += "<font font-family='Times New Roman' size='4'>DELIVERY CHALLAN</font>";
                pdfbody += "</div>";

                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));

                pdfbody = "<table border='1' cellpadding='5' cellspacing='0'>";
                pdfbody += "<tbody >";

                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Dispatch No.:- " + objDCModel.dispatch_no;
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Customer Name:- " + objDCModel.customer_name;
                pdfbody += "</th>";
                pdfbody += "</tr>";

                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left;'>";
                pdfbody += "Customer PO No.:- " + objDCModel.CustomerPONo;
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "PO Quantity:- " + objDCModel.po_qty;
                pdfbody += "</th>";
                pdfbody += "</tr>";

                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "HSN Code:- " + objDCModel.HSNCode;
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Customer Part No.:- " + objDCModel.Customer_part_no;
                pdfbody += "</th>";
                pdfbody += "</tr>";

                pdfbody += "</tbody>";
                pdfbody += "</table>";

                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));



                pdfbody = "<table border='1' cellpadding='5' cellspacing='0'>";
                pdfbody += "<thead >";
                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Work Order No.";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Material Grade";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Section";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Cut Weight";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Qty";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "HSN/SAC Code";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Unit";
                pdfbody += "</th>";
                pdfbody += "</tr>";
                pdfbody += "</thead >";
                pdfbody += "<tbody >";
                int srno = 1;
                foreach (var tdata in objDCModel.ssmtbl_DeliveryChallan_DetailsModelList)
                {
                    pdfbody += "<tr>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.wo;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.material_grade;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.section;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.cut_weight;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.qty;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.hsn_sac_code;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.units;
                    pdfbody += "</td>";
                    pdfbody += "</tr>";
                    srno = srno + 1;
                }
                //pdfbody += "<tr>";
                //pdfbody += "<td colspan='5' style='text-align:right'>";
                //pdfbody += "Total";
                //pdfbody += "</td>";
                //pdfbody += "<td style='text-align:left'>";
                //pdfbody += objDCModel.total;
                //pdfbody += "</td>";
                //pdfbody += "</tr>";
                //pdfbody += "<tr>";
                //pdfbody += "<td colspan='5' style='text-align:right'>";
                //pdfbody += "CGST(" + objDCModel.cgst_perc + ")";
                //pdfbody += "</td>";
                //pdfbody += "<td style='text-align:left'>";
                //pdfbody += objDCModel.cgst_amt;
                //pdfbody += "</td>";
                //pdfbody += "</tr>";
                //pdfbody += "<tr>";
                //pdfbody += "<td colspan='5' style='text-align:right'>";
                //pdfbody += "SGST(" + objDCModel.sgst_perc + ")";
                //pdfbody += "</td>";
                //pdfbody += "<td style='text-align:left'>";
                //pdfbody += objDCModel.sgst_amt;
                //pdfbody += "</td>";
                //pdfbody += "</tr>";
                //pdfbody += "<tr>";
                //pdfbody += "<td colspan='5' style='text-align:right'>";
                //pdfbody += "IGST(" + objDCModel.igst_perc + ")";
                //pdfbody += "</td>";
                //pdfbody += "<td style='text-align:left'>";
                //pdfbody += objDCModel.igst_amt;
                //pdfbody += "</td>";
                //pdfbody += "</tr>";
                //pdfbody += "<tr>";
                //pdfbody += "<td colspan='5' style='text-align:right'>";
                //pdfbody += "Grand Total";
                //pdfbody += "</td>";
                //pdfbody += "<td style='text-align:left'>";
                //pdfbody += objDCModel.grand_total;
                //pdfbody += "</td>";
                //pdfbody += "</tr>";
                pdfbody += "</tbody>";
                pdfbody += "</table>";


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
                pdfbody += "<font font-family='Times New Roman' size='2'>Delivery Challan Received, Reviewed & Accepted by:</font>";
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

                contentType = "application/pdf";

                return File(HttpContext.Server.MapPath("~/PDFFiles/DeliveryChallanPDF/") + filenm, contentType, filenm);


            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return File(HttpContext.Server.MapPath("~/PDFFiles/DeliveryChallanPDF/") + filenm, contentType, filenm);
        }

        #endregion





        #region New DC Outsourcing (Get)

        [HttpGet]
        public ActionResult NewDCOutsourcing(string id)
        {
            ssmtbl_DeliveryChallanModel objDCModel = new ssmtbl_DeliveryChallanModel();
            objDCModel = objDCData.GetMaxDeliveryChallanNo();
            @ViewBag.RatePer = objDrop.GetRatePerList();

            return View(objDCModel);
        }

        #endregion

        #region New DC Outsourcing (Post)

        [HttpPost]
        public ActionResult NewDCOutsourcing(string dcjobdispatch, string dcjobdispatchdetails)
        {
            string result = "";
            try
            {
                ssmtbl_DeliveryChallanModel objModel = new ssmtbl_DeliveryChallanModel();

                var serializeData = JsonConvert.DeserializeObject<List<ssmtbl_DeliveryChallan_DetailsModel>>(dcjobdispatchdetails);
                var poserializeData = JsonConvert.DeserializeObject<ssmtbl_DeliveryChallanModel>(dcjobdispatch);

                objModel = poserializeData;
                objModel.ssmtbl_DeliveryChallan_DetailsModelList = serializeData;
                //objModel.expected_date = StandardDateTime.GetDateTime();
                objModel.expected_report_date = StandardDateTime.GetDateTime();

                var valid = TryUpdateModel(objModel);

                if (serializeData.Count != 0)
                {

                    if (ModelState.IsValid)
                    {
                        objModel.delivery_challan_type = DeliveryChallanType.Outsourcing;
                        result = objDCData.InsertDeliveryChallan(objModel);
                        var sdata = new
                        {
                            result
                        };
                        return Json(sdata, JsonRequestBehavior.AllowGet);
                    }
                    else
                    {
                        result = "Enter Mandatory Fields!";
                        var sdata = new
                        {
                            result
                        };
                        return Json(sdata, JsonRequestBehavior.AllowGet);
                    }
                }
                else
                {
                    result = "Enter WO Details!";
                    var sdata = new
                    {
                        result
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
                    result
                };
                return Json(sdata, JsonRequestBehavior.AllowGet);
            }

            ssmtbl_DeliveryChallanModel objDCModel = new ssmtbl_DeliveryChallanModel();
            objDCModel = objDCData.GetMaxDeliveryChallanNo();
            @ViewBag.RatePer = objDrop.GetRatePerList();
            return View(objDCModel);
        }

        #endregion

        #region Edit DC Outsourcing (Get)

        [HttpGet]
        public ActionResult EditDCOutsourcing(string DispatchNo, string successmsg)
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
                    @ViewBag.Message = "Delivery Challan Updated Successfully!";
                }
                else
                {
                    @ViewBag.HideClass = "alert alert-success";
                    @ViewBag.Message = "Delivery Challan Created Successfully!";
                }
            }
            ssmtbl_DeliveryChallanModel objDCModel = new ssmtbl_DeliveryChallanModel();
            objDCModel = objDCData.GetOneDeliveryChallan(DispatchNo);
            @ViewBag.RatePer = objDrop.GetRatePerList();

            return View(objDCModel);
        }

        #endregion

        #region Edit DC Outsourcing (Post)

        [HttpPost]
        public ActionResult EditDCOutsourcing(string dcjobdispatch, string dcjobdispatchdetails, string data)
        {
            string result = "";
            try
            {
                ssmtbl_DeliveryChallanModel objModel = new ssmtbl_DeliveryChallanModel();

                var serializeData = JsonConvert.DeserializeObject<List<ssmtbl_DeliveryChallan_DetailsModel>>(dcjobdispatchdetails);
                var poserializeData = JsonConvert.DeserializeObject<ssmtbl_DeliveryChallanModel>(dcjobdispatch);

                objModel = poserializeData;
                objModel.ssmtbl_DeliveryChallan_DetailsModelList = serializeData;
                //objModel.expected_date = StandardDateTime.GetDateTime();
                objModel.expected_report_date = StandardDateTime.GetDateTime();

                var valid = TryUpdateModel(objModel);

                if (serializeData.Count != 0)
                {

                    if (ModelState.IsValid)
                    {
                        objModel.delivery_challan_type = DeliveryChallanType.Outsourcing;
                        result = objDCData.UpdateDeliveryChallan(objModel);
                        var sdata = new
                        {
                            result
                        };
                        return Json(sdata, JsonRequestBehavior.AllowGet);
                    }
                    else
                    {
                        result = "Enter Mandatory Fields!";
                        var sdata = new
                        {
                            result
                        };
                        return Json(sdata, JsonRequestBehavior.AllowGet);
                    }
                }
                else
                {
                    result = "Enter WO Details!";
                    var sdata = new
                    {
                        result
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
                    result
                };
                return Json(sdata, JsonRequestBehavior.AllowGet);
            }

            ssmtbl_DeliveryChallanModel objDCModel = new ssmtbl_DeliveryChallanModel();
            objDCModel = objDCData.GetMaxDeliveryChallanNo();
            @ViewBag.RatePer = objDrop.GetRatePerList();
            return View(objDCModel);
        }

        #endregion

        #region DC Outsourcing PDF

        [HttpGet]
        public ActionResult DCOutsourcingPDF(string DispatchNo)
        {
            try
            {
                //string QuotationId = frm["id"].ToString();
                var fpath = HttpContext.Server.MapPath("~/PDFFiles/DeliveryChallanPDF/");

                ssmtbl_DeliveryChallanModel objDCModel = new ssmtbl_DeliveryChallanModel();
                objDCModel = objDCData.GetOneDeliveryChallan(DispatchNo);

                string str = objDCModel.dispatch_no;
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
                pdfbody += "<font font-family='Times New Roman' size='4'>DELIVERY CHALLAN</font>";
                pdfbody += "</div>";

                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));

                pdfbody = "<table border='1' cellpadding='5' cellspacing='0'>";
                pdfbody += "<tbody >";

                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Dispatch No.:- " + objDCModel.dispatch_no;
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Vendor Name:- " + objDCModel.vendor_name;
                pdfbody += "</th>";
                pdfbody += "</tr>";

                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left;'>";
                pdfbody += "Vendor PO No.:- " + objDCModel.vendor_po_no;
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Die No:- " + objDCModel.die_no;
                pdfbody += "</th>";
                pdfbody += "</tr>";

                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Expected Date:- " + objDCModel.expected_date.Date.ToString("dd/MMM/yyyy");
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Process:- " + objDCModel.process;
                pdfbody += "</th>";
                pdfbody += "</tr>";

                pdfbody += "</tbody>";
                pdfbody += "</table>";

                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));



                pdfbody = "<table border='1' cellpadding='5' cellspacing='0'>";
                pdfbody += "<thead >";
                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "WO";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Material Grade";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Section";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Cut Weight";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Qty";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "HSN/SAC Code";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Unit";
                pdfbody += "</th>";
                pdfbody += "</tr>";
                pdfbody += "</thead >";
                pdfbody += "<tbody >";
                int srno = 1;
                foreach (var tdata in objDCModel.ssmtbl_DeliveryChallan_DetailsModelList)
                {
                    pdfbody += "<tr>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.wo;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.material_grade;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.section;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.cut_weight;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.qty;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.hsn_sac_code;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.units;
                    pdfbody += "</td>";
                    pdfbody += "</tr>";
                    srno = srno + 1;
                }
                //pdfbody += "<tr>";
                //pdfbody += "<td colspan='5' style='text-align:right'>";
                //pdfbody += "Total";
                //pdfbody += "</td>";
                //pdfbody += "<td style='text-align:left'>";
                //pdfbody += objDCModel.total;
                //pdfbody += "</td>";
                //pdfbody += "</tr>";
                //pdfbody += "<tr>";
                //pdfbody += "<td colspan='5' style='text-align:right'>";
                //pdfbody += "CGST(" + objDCModel.cgst_perc + ")";
                //pdfbody += "</td>";
                //pdfbody += "<td style='text-align:left'>";
                //pdfbody += objDCModel.cgst_amt;
                //pdfbody += "</td>";
                //pdfbody += "</tr>";
                //pdfbody += "<tr>";
                //pdfbody += "<td colspan='5' style='text-align:right'>";
                //pdfbody += "SGST(" + objDCModel.sgst_perc + ")";
                //pdfbody += "</td>";
                //pdfbody += "<td style='text-align:left'>";
                //pdfbody += objDCModel.sgst_amt;
                //pdfbody += "</td>";
                //pdfbody += "</tr>";
                //pdfbody += "<tr>";
                //pdfbody += "<td colspan='5' style='text-align:right'>";
                //pdfbody += "IGST(" + objDCModel.igst_perc + ")";
                //pdfbody += "</td>";
                //pdfbody += "<td style='text-align:left'>";
                //pdfbody += objDCModel.igst_amt;
                //pdfbody += "</td>";
                //pdfbody += "</tr>";
                //pdfbody += "<tr>";
                //pdfbody += "<td colspan='5' style='text-align:right'>";
                //pdfbody += "Grand Total";
                //pdfbody += "</td>";
                //pdfbody += "<td style='text-align:left'>";
                //pdfbody += objDCModel.grand_total;
                //pdfbody += "</td>";
                //pdfbody += "</tr>";
                pdfbody += "</tbody>";
                pdfbody += "</table>";


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
                pdfbody += "<font font-family='Times New Roman' size='2'>Delivery Challan Received, Reviewed & Accepted by:</font>";
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

                return File(HttpContext.Server.MapPath("~/PDFFiles/DeliveryChallanPDF/") + filenm, contentType, filenm);


            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return View();
        }

        #endregion






        #region New DC Lab Testing (Get)

        [HttpGet]
        public ActionResult NewDCLabTesting()
        {
            ssmtbl_DeliveryChallanModel objDCModel = new ssmtbl_DeliveryChallanModel();
            objDCModel = objDCData.GetMaxDeliveryChallanNo();
            @ViewBag.RatePer = objDrop.GetRatePerList();
            //@ViewBag.TestingType= objDCData.getTestingType();
            objDCModel.ssmtbl_Feasibility_RawMaterialTestModel = objGFunc.FeasibilityRawMaterial();
            objDCModel.expected_report_date = StandardDateTime.GetDateTime();
            return View(objDCModel);
        }

        #endregion

        #region New DC Lab Testing (Post)

        [HttpPost]
        public ActionResult NewDCLabTesting(string dcjobdispatch, string dcjobdispatchdetails, string dcjobtestigtype)
        {
            string result = "";
            try
            {
                ssmtbl_DeliveryChallanModel objModel = new ssmtbl_DeliveryChallanModel();

                var serializeData = JsonConvert.DeserializeObject<List<ssmtbl_DeliveryChallan_DetailsModel>>(dcjobdispatchdetails);
                var poserializeData = JsonConvert.DeserializeObject<ssmtbl_DeliveryChallanModel>(dcjobdispatch);
                var testingtypeData = JsonConvert.DeserializeObject<List<ssmtbl_Feasibility_RawMaterialTestModel>>(dcjobtestigtype);

                objModel = poserializeData;
                objModel.ssmtbl_DeliveryChallan_DetailsModelList = serializeData;
                objModel.ssmtbl_Feasibility_RawMaterialTestModel = testingtypeData;
                objModel.expected_date = StandardDateTime.GetDateTime();
                //objModel.expected_report_date = StandardDateTime.GetDateTime();

                var valid = TryUpdateModel(objModel);

                if (objModel.expected_report_date.Date > StandardDateTime.GetDateTime().Date)
                {

                    if (testingtypeData.Count != 0)
                    {
                        if (serializeData.Count != 0)
                        {
                            if (ModelState.IsValid)
                            {
                                objModel.delivery_challan_type = DeliveryChallanType.LabTesting;
                                result = objDCData.InsertDeliveryChallanLabTesting(objModel);
                                var sdata = new
                                {
                                    result
                                };
                                return Json(sdata, JsonRequestBehavior.AllowGet);
                            }
                            else
                            {
                                result = "Enter Mandatory Fields!";
                                var sdata = new
                                {
                                    result
                                };
                                return Json(sdata, JsonRequestBehavior.AllowGet);
                            }
                        }
                        else
                        {
                            result = "Enter WO Details!";
                            var sdata = new
                            {
                                result
                            };
                            return Json(sdata, JsonRequestBehavior.AllowGet);
                        }
                    }
                    else
                    {
                        result = "Select Type of Testing!";
                        var sdata = new
                        {
                            result
                        };
                        return Json(sdata, JsonRequestBehavior.AllowGet);
                    }
                }
                else
                {
                    result = "Expected Report Date Should be Greater than Current Date!";
                    var sdata = new
                    {
                        result
                    };
                    return Json(sdata, JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            ssmtbl_DeliveryChallanModel objDCModel = new ssmtbl_DeliveryChallanModel();
            objDCModel = objDCData.GetMaxDeliveryChallanNo();
            @ViewBag.RatePer = objDrop.GetRatePerList();
            objDCModel.ssmtbl_Feasibility_RawMaterialTestModel = objGFunc.FeasibilityRawMaterial();
            return View(objDCModel);
        }

        #endregion

        #region Edit DC Lab Testing (Get)

        [HttpGet]
        public ActionResult EditDCLabTesting(string DispatchNo, string successmsg)
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
                    @ViewBag.Message = "Delivery Challan Updated Successfully!";
                }
                else
                {
                    @ViewBag.HideClass = "alert alert-success";
                    @ViewBag.Message = "Delivery Challan Created Successfully!";
                }
            }
            ssmtbl_DeliveryChallanModel objDCModel = new ssmtbl_DeliveryChallanModel();
            objDCModel = objDCData.GetOneDeliveryChallan(DispatchNo);
            //objDCModel.ssmtbl_Feasibility_RawMaterialTestModel = objGFunc.FeasibilityRawMaterial();
            @ViewBag.RatePer = objDrop.GetRatePerList();

            return View(objDCModel);
        }

        #endregion

        #region Edit DC Lab Testing (Post)

        [HttpPost]
        public ActionResult EditDCLabTesting(string dcjobdispatch, string dcjobdispatchdetails, string dcjobtestigtype)
        {
            string result = "";
            try
            {
                ssmtbl_DeliveryChallanModel objModel = new ssmtbl_DeliveryChallanModel();

                var serializeData = JsonConvert.DeserializeObject<List<ssmtbl_DeliveryChallan_DetailsModel>>(dcjobdispatchdetails);
                var poserializeData = JsonConvert.DeserializeObject<ssmtbl_DeliveryChallanModel>(dcjobdispatch);
                var testingtypeData = JsonConvert.DeserializeObject<List<ssmtbl_Feasibility_RawMaterialTestModel>>(dcjobtestigtype);

                objModel = poserializeData;
                objModel.ssmtbl_DeliveryChallan_DetailsModelList = serializeData;
                objModel.ssmtbl_Feasibility_RawMaterialTestModel = testingtypeData;
                objModel.expected_date = StandardDateTime.GetDateTime();
                //objModel.expected_report_date = StandardDateTime.GetDateTime();

                var valid = TryUpdateModel(objModel);

                if (objModel.expected_report_date.Date > StandardDateTime.GetDateTime().Date)
                {
                    if (testingtypeData.Count != 0)
                    {
                        if (serializeData.Count != 0)
                        {
                            if (ModelState.IsValid)
                            {
                                objModel.delivery_challan_type = DeliveryChallanType.LabTesting;
                                result = objDCData.UpdateDeliveryChallanLabTesting(objModel);
                                var sdata = new
                                {
                                    result
                                };
                                return Json(sdata, JsonRequestBehavior.AllowGet);
                            }
                            else
                            {
                                result = "Enter Mandatory Fields!";
                                var sdata = new
                                {
                                    result
                                };
                                return Json(sdata, JsonRequestBehavior.AllowGet);
                            }
                        }
                        else
                        {
                            result = "Enter WO Details!";
                            var sdata = new
                            {
                                result
                            };
                            return Json(sdata, JsonRequestBehavior.AllowGet);
                        }
                    }
                    else
                    {
                        result = "Select Type of Testing!";
                        var sdata = new
                        {
                            result
                        };
                        return Json(sdata, JsonRequestBehavior.AllowGet);
                    }
                }
                else
                {
                    result = "Expected Report Date Should be Greater than Current Date!";
                    var sdata = new
                    {
                        result
                    };
                    return Json(sdata, JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            ssmtbl_DeliveryChallanModel objDCModel = new ssmtbl_DeliveryChallanModel();
            objDCModel = objDCData.GetMaxDeliveryChallanNo();
            @ViewBag.RatePer = objDrop.GetRatePerList();
            objDCModel.ssmtbl_Feasibility_RawMaterialTestModel = objGFunc.FeasibilityRawMaterial();
            return View(objDCModel);
        }

        #endregion

        #region DC Lab Testing PDF

        [HttpGet]
        public ActionResult DCLabTestingPDF(string DispatchNo)
        {
            try
            {
                //string QuotationId = frm["id"].ToString();
                var fpath = HttpContext.Server.MapPath("~/PDFFiles/DeliveryChallanPDF/");

                ssmtbl_DeliveryChallanModel objDCModel = new ssmtbl_DeliveryChallanModel();
                objDCModel = objDCData.GetOneDeliveryChallan(DispatchNo);

                string str = objDCModel.dispatch_no;
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
                pdfbody += "<font font-family='Times New Roman' size='4'>DELIVERY CHALLAN</font>";
                pdfbody += "</div>";

                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));

                pdfbody = "<table border='1' cellpadding='5' cellspacing='0'>";
                pdfbody += "<tbody >";

                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Dispatch No.:- " + objDCModel.dispatch_no;
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Vendor Name:- " + objDCModel.vendor_name;
                pdfbody += "</th>";
                pdfbody += "</tr>";

                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Expected Report Date:- " + objDCModel.expected_report_date.Date.ToString("dd/MMM/yyyy");
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += " ";
                pdfbody += "</th>";
                pdfbody += "</tr>";

                pdfbody += "</tbody>";
                pdfbody += "</table>";

                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));



                pdfbody = "<table border='1' cellpadding='5' cellspacing='0'>";
                pdfbody += "<thead >";
                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Heat Code";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Material Grade";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Section";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Unit";
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Qty";
                pdfbody += "</th>";
                pdfbody += "</tr>";
                pdfbody += "</thead >";
                pdfbody += "<tbody >";
                int srno = 1;
                foreach (var tdata in objDCModel.ssmtbl_DeliveryChallan_DetailsModelList)
                {
                    pdfbody += "<tr>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.wo;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.material_grade;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.section;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.units;
                    pdfbody += "</td>";
                    pdfbody += "<td style='text-align:left'>";
                    pdfbody += tdata.qty;
                    pdfbody += "</td>";
                    pdfbody += "</tr>";
                    srno = srno + 1;
                }
                pdfbody += "<tr>";
                pdfbody += "<td colspan='4' style='text-align:right'>";
                pdfbody += "CGST(" + objDCModel.cgst_perc + ")";
                pdfbody += "</td>";
                pdfbody += "<td style='text-align:left'>";
                pdfbody += objDCModel.cgst_amt;
                pdfbody += "</td>";
                pdfbody += "</tr>";
                pdfbody += "<tr>";
                pdfbody += "<td colspan='4' style='text-align:right'>";
                pdfbody += "SGST(" + objDCModel.sgst_perc + ")";
                pdfbody += "</td>";
                pdfbody += "<td style='text-align:left'>";
                pdfbody += objDCModel.sgst_amt;
                pdfbody += "</td>";
                pdfbody += "</tr>";
                pdfbody += "<tr>";
                pdfbody += "<td colspan='4' style='text-align:right'>";
                pdfbody += "IGST(" + objDCModel.igst_perc + ")";
                pdfbody += "</td>";
                pdfbody += "<td style='text-align:left'>";
                pdfbody += objDCModel.igst_amt;
                pdfbody += "</td>";
                pdfbody += "</tr>";
                pdfbody += "</tbody>";
                pdfbody += "</table>";


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
                pdfbody += "<font font-family='Times New Roman' size='2'>Delivery Challan Received, Reviewed & Accepted by:</font>";
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

                return File(HttpContext.Server.MapPath("~/PDFFiles/DeliveryChallanPDF/") + filenm, contentType, filenm);


            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return View();
        }

        #endregion





        #region New DC Repair (Get)

        [HttpGet]
        public ActionResult NewDCRepair()
        {
            ssmtbl_DeliveryChallanModel objDCModel = new ssmtbl_DeliveryChallanModel();
            objDCModel = objDCData.GetMaxDeliveryChallanNo();
            @ViewBag.RatePer = objDrop.GetRatePerList();

            return View(objDCModel);
        }

        #endregion

        #region New DC Repair (Post)

        [HttpPost]
        public ActionResult NewDCRepair(string dcjobdispatch)
        {
            string result = "";
            try
            {
                ssmtbl_DeliveryChallanModel objModel = new ssmtbl_DeliveryChallanModel();

                var poserializeData = JsonConvert.DeserializeObject<ssmtbl_DeliveryChallanModel>(dcjobdispatch);

                objModel = poserializeData;
                objModel.expected_report_date = StandardDateTime.GetDateTime();

                var valid = TryUpdateModel(objModel);

                if (objModel.expected_date.Date > StandardDateTime.GetDateTime().Date)
                {

                    if (ModelState.IsValid)
                    {
                        objModel.delivery_challan_type = DeliveryChallanType.Repair;
                        result = objDCData.InsertDeliveryChallan(objModel);
                        var sdata = new
                        {
                            result
                        };
                        return Json(sdata, JsonRequestBehavior.AllowGet);
                    }
                    else
                    {
                        result = "Enter Mandatory Fields!";
                        var sdata = new
                        {
                            result
                        };
                        return Json(sdata, JsonRequestBehavior.AllowGet);
                    }
                }
                else
                {
                    result = "Expected Date should be greater than current date!";
                    var sdata = new
                    {
                        result
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
                    result
                };
                return Json(sdata, JsonRequestBehavior.AllowGet);
            }

            ssmtbl_DeliveryChallanModel objDCModel = new ssmtbl_DeliveryChallanModel();
            objDCModel = objDCData.GetMaxDeliveryChallanNo();
            @ViewBag.RatePer = objDrop.GetRatePerList();
            return View(objDCModel);
        }

        #endregion

        #region Edit DC Repair (Get)

        [HttpGet]
        public ActionResult EditDCRepair(string DispatchNo, string successmsg)
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
                    @ViewBag.Message = "Delivery Challan Updated Successfully!";
                }
                else
                {
                    @ViewBag.HideClass = "alert alert-success";
                    @ViewBag.Message = "Delivery Challan Created Successfully!";
                }
            }
            ssmtbl_DeliveryChallanModel objDCModel = new ssmtbl_DeliveryChallanModel();
            objDCModel = objDCData.GetOneDeliveryChallan(DispatchNo);
            objDCModel.ssmtbl_Feasibility_RawMaterialTestModel = objGFunc.FeasibilityRawMaterial();
            @ViewBag.RatePer = objDrop.GetRatePerList();

            return View(objDCModel);
        }

        #endregion

        #region Edit DC Repair (Post)

        [HttpPost]
        public ActionResult EditDCRepair(string dcjobdispatch, string dcjobdispatchdetails, string data)
        {
            string result = "";
            try
            {
                ssmtbl_DeliveryChallanModel objModel = new ssmtbl_DeliveryChallanModel();

                var serializeData = JsonConvert.DeserializeObject<List<ssmtbl_DeliveryChallan_DetailsModel>>(dcjobdispatchdetails);
                var poserializeData = JsonConvert.DeserializeObject<ssmtbl_DeliveryChallanModel>(dcjobdispatch);

                objModel = poserializeData;
                objModel.ssmtbl_DeliveryChallan_DetailsModelList = serializeData;
                objModel.expected_report_date = StandardDateTime.GetDateTime();

                var valid = TryUpdateModel(objModel);

                if (objModel.expected_date.Date > StandardDateTime.GetDateTime().Date)
                {

                    if (ModelState.IsValid)
                    {
                        objModel.delivery_challan_type = DeliveryChallanType.Repair;
                        result = objDCData.UpdateDeliveryChallan(objModel);
                        var sdata = new
                        {
                            result
                        };
                        return Json(sdata, JsonRequestBehavior.AllowGet);
                    }
                    else
                    {
                        result = "Enter Mandatory Fields!";
                        var sdata = new
                        {
                            result
                        };
                        return Json(sdata, JsonRequestBehavior.AllowGet);
                    }
                }
                else
                {
                    result = "Expected Date should be greater than current date!";
                    var sdata = new
                    {
                        result
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
                    result
                };
                return Json(sdata, JsonRequestBehavior.AllowGet);
            }

            ssmtbl_DeliveryChallanModel objDCModel = new ssmtbl_DeliveryChallanModel();
            objDCModel = objDCData.GetMaxDeliveryChallanNo();
            @ViewBag.RatePer = objDrop.GetRatePerList();
            return View(objDCModel);
        }

        #endregion

        #region DC Repair PDF

        [HttpGet]
        public ActionResult DCRepairPDF(string DispatchNo)
        {
            try
            {
                //string QuotationId = frm["id"].ToString();
                var fpath = HttpContext.Server.MapPath("~/PDFFiles/DeliveryChallanPDF/");

                ssmtbl_DeliveryChallanModel objDCModel = new ssmtbl_DeliveryChallanModel();
                objDCModel = objDCData.GetOneDeliveryChallan(DispatchNo);

                string str = objDCModel.dispatch_no;
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
                pdfbody += "<font font-family='Times New Roman' size='4'>DELIVERY CHALLAN</font>";
                pdfbody += "</div>";

                doc.Add(Chunk.NEWLINE);
                hw.Parse(new StringReader(pdfbody));

                pdfbody = "<table border='1' cellpadding='5' cellspacing='0'>";
                pdfbody += "<tbody >";

                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Dispatch No.:- " + objDCModel.dispatch_no;
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Vendor Name:- " + objDCModel.vendor_name;
                pdfbody += "</th>";
                pdfbody += "</tr>";

                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Expected Report Date:- " + objDCModel.expected_date.Date.ToString("dd/MMM/yyyy");
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Part Description:- " + objDCModel.part_description;
                pdfbody += "</th>";
                pdfbody += "</tr>";

                pdfbody += "<tr>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += "Remark:- " + objDCModel.remark;
                pdfbody += "</th>";
                pdfbody += "<th style='text-align:left'>";
                pdfbody += " ";
                pdfbody += "</th>";
                pdfbody += "</tr>";

                pdfbody += "</tbody>";
                pdfbody += "</table>";

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
                pdfbody += "<font font-family='Times New Roman' size='2'>Delivery Challan Received, Reviewed & Accepted by:</font>";
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

                return File(HttpContext.Server.MapPath("~/PDFFiles/DeliveryChallanPDF/") + filenm, contentType, filenm);


            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return View();
        }

        #endregion





        [HttpPost]
        public JsonResult getCustomernameandid(string Prefix)
        {
            try
            {
                var Data = objDCData.getCustomerNameAndId(Prefix);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult getVendorNameAndId(string Prefix)
        {
            try
            {
                var Data = objDCData.getVendorNameAndId(Prefix);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }



        [HttpPost]
        public JsonResult getHeatCode(string Prefix)
        {
            try
            {
                var Data = objDCData.getHeatCode(Prefix);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult getHeatCodeDetail(string heat_code)
        {
            try
            {
                var Data = objDCData.getHeatCodeDetail(heat_code);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }



        [HttpPost]
        public ActionResult getCustomerPoNo(string Prefix, string CustomerName)
        {
            try
            {

                //ViewData["CustomerPoNo"] = objDCData.getCustomerPONo(Prefix, CustomerName);
                var Data = objDCData.getCustomerPONo(Prefix, CustomerName);
                return Json(Data, JsonRequestBehavior.AllowGet);
                //ViewData["CustomerPoNo"];
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }


        [HttpPost]
        public JsonResult getVendorDetails(string Prefix, string vendor_name)
        {
            try
            {
                var Data = objDCData.getVendorPONo(Prefix, vendor_name);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }


        [HttpPost]
        public JsonResult getVendorDetailsByID(string ID)
        {
            try
            {
                var Data = objDCData.getVendorPONoByID(ID);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult getCustomerPoDetails(string CustomerPONo)
        {
            try
            {
                var Data = objDCData.GetOnePurchaseOrderFromPONo(CustomerPONo);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult GetOneDelivery(string DispatchId, string DeliveryChallanType)
        {
            try
            {
                var Data = objDCData.GetOneDelivery(DispatchId, DeliveryChallanType);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult Getfisrmtest(string DispatchId, string DeliveryChallanType)
        {
            try
            {
                string sqlstr = "uspgetrmtestfordispatch";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@DispatchId", DispatchId.Trim());
                cmd.Parameters.AddWithValue("@DeliveryChallanType", DeliveryChallanType.Trim());
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
        public JsonResult GetOneDeliveryDetails(string DispatchNo)
        {
            try
            {
                var Data = objDCData.GetOneDeliveryDetails(DispatchNo);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }


        [HttpPost]
        public JsonResult getVendorPurchaseOrder(string CustomerPONo)
        {
            try
            {
                var Data = objDCData.GetVendorPurchaseOrder(CustomerPONo);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }



        [HttpPost]
        public JsonResult getWoNo(string Prefix, string pono)
        {
            try
            {
                var Data = objDCData.getWONo(Prefix, pono);
                return Json(Data, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }


        [HttpPost]
        public JsonResult getWoNoDetails(string Wono)
        {
            try
            {
                var Data = objDCData.getWONoDetails(Wono);
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