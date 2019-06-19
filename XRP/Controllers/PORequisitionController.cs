using iTextSharp.text;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Net.Mime;
using System.Web;
using System.Web.Mvc;
using XRP.DataModel;
using XRP.Global;
using XRP.Models;

namespace XRP.Controllers
{
    public class PORequisitionController : Controller
    {
        DropDownSelection objDrop = new DropDownSelection();
        VendorPurchaseOrderData objVPOData = new VendorPurchaseOrderData();
        VendorPurchaseOrderApprovalData objVPOAppData = new VendorPurchaseOrderApprovalData();
        // GET: PORequisition
        public ActionResult PORequisitionList()
        {
            ViewData["QuotaionTermsAndCondition"] = GlobalFunction.GetLKP_VPOTermsAndCondition();
            ViewData["VPOType"] = objDrop.VPOType();
            ViewData["Department"] = objDrop.Department();
            ViewData["RawMaterial"] = objDrop.FeasibilityMaterialGrade();
            ViewData["Consumables"] = objDrop.Consumables();
            ViewData["Section"] = objDrop.CuutingCalculation();
            ViewData["DieList"] = objDrop.DieNumber();
            ViewData["Customer"] = objDrop.Customer();
            return View();
        }
        public ActionResult VendorResponse()
        {

            Paged_ssmtbl_VendorPurchaseOrderModel objList = new Paged_ssmtbl_VendorPurchaseOrderModel();
            objList = objVPOData.AllVPOList1();
            @ViewBag.RatePer = objDrop.GetRatePerList();
            @ViewBag.NotAvailable = objDrop.GetNotAvailableList();
            ViewData["VPOTermsAndCondition"] = GlobalFunction.GetLKP_VPOTermsAndCondition();
            return View(objList);
        }
        public JsonResult getConsumables(string Prefix)
        {
            List<SelectListItem> objRowsList = new List<SelectListItem>();
            try
            {
                string sqlstr = "ssmsp_Get_AllConsumableIssuedList";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "autofetchitemcode");
                cmd.Parameters.AddWithValue("@itemcode", Prefix.Trim());
                SqlDataReader sdr = cmd.ExecuteReader();
                List<string> custName = new List<string>();
                while (sdr.Read())
                {
                    objRowsList.Add(new SelectListItem
                    {
                        Text = sdr["Description"].ToString().Trim(),
                        Value = sdr["ID"].ToString().Trim()
                    });
                }
                connection.Close();
                return Json(objRowsList, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);

        }

        [HttpPost]
        public JsonResult Vendordrpbind(string id)
        {
            try
            {
                string sqlstr = "VPORequisition";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "vendordrpbind");
                cmd.Parameters.AddWithValue("@RfqID", id.ToString());
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
        public JsonResult VendordrpbindforResponse(string id)
        {
            try
            {
                string sqlstr = "VPORequisition";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "VendordrpbindforResponse");
                cmd.Parameters.AddWithValue("@RfqID", id.ToString());
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
        public JsonResult VendorResponseItemFetch(string id)
        {
            try
            {
                string sqlstr = "VPORequisition";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "selectVPOResponseMultiItem");
                cmd.Parameters.AddWithValue("@RfqID", id.ToString());
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
        public ActionResult fileupload(FormCollection formData)
        {

            if (Request.Files.Count > 0)
            {
                try
                {

                    HttpFileCollectionBase files = Request.Files;


                    HttpPostedFileBase file = files[0];
                    var vid = Request.Form[0];
                    var rfqid = Request.Form[1];
                    var flag = Request.Form[2];

                    string vpono = "VPO-" + rfqid;


                    ////

                    //
                    string newfname = DateTime.Now.ToString("dd-MM-yyy-hh-tt-mm-ss");
                    var fileName = Path.GetFileName(file.FileName);

                    string ext = Path.GetExtension(fileName);
                    newfname = newfname + ext + "";
                    string path1 = "/PDFFiles/VendorPOResponse/" + newfname;
                    file.SaveAs(Server.MapPath("~/PDFFiles/VendorPOResponse/") + newfname);
                    //

                    var connection = gConnection.Connection();
                    connection.Open();
                    string sqlstr = "VPORequisition";
                    SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "POResponseFileUpload");
                    cmd.Parameters.AddWithValue("@VendorId", vid.Trim());
                    cmd.Parameters.AddWithValue("@vpono", vpono.Trim());
                    cmd.Parameters.AddWithValue("@flag", flag.Trim());
                    cmd.Parameters.AddWithValue("@filepath", path1.Trim());
                    SqlDataReader sdr = cmd.ExecuteReader();

                    connection.Close();


                    //code for update vndor id in vpo table
                    if (flag == "true")
                    {
                        var connection1 = gConnection.Connection();
                        connection1.Open();
                        string sqlstr1 = "VPORequisition";
                        SqlCommand cmd1 = new SqlCommand(sqlstr1, GlobalVariables.gConn);
                        cmd1.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd1.Parameters.AddWithValue("@Action", "updatevendoridinvendorpo");
                        cmd1.Parameters.AddWithValue("@VendorId", vid.Trim());
                        cmd1.Parameters.AddWithValue("@vpono", vpono.Trim());

                        SqlDataReader sdr1 = cmd1.ExecuteReader();

                        connection.Close();
                    }



                    return Json("File Uploaded Successfully!");
                }
                catch (Exception ex)
                {
                    return Json("Error occurred. Error details: " + ex.Message);
                }
            }


            return View();
        }
        public JsonResult InsertTermsNCondition(string id, string tcdesc, string rfqid, string flag)
        {

            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspInsertVPOTermandCondition";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id", id.Trim());
                cmd.Parameters.AddWithValue("@tcdesc", tcdesc.Trim());
                cmd.Parameters.AddWithValue("@rfqid", rfqid.Trim());
                cmd.Parameters.AddWithValue("@flag", flag.Trim());
                SqlDataReader sdr = cmd.ExecuteReader();

                connection.Close();


                return Json("success", JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);

            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult BindRfqList(string id)
        {
            try
            {
                string sqlstr = "VPORequisition";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "Allrfq");
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
        public JsonResult AllrequistionSearch(string search)
        {
            try
            {
                string sqlstr = "VPORequisition";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "AllrequistionSearch");
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
        public JsonResult BindRfqListforVendorResponse(string id)
        {
            try
            {
                string sqlstr = "VPORequisition";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "BindRfqListforVendorResponse");
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
        public JsonResult BindsingleRfqList(string id)
        {
            try
            {
                string sqlstr = "VPORequisition";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "selectonerfq");
                cmd.Parameters.AddWithValue("@RfqID", id.Trim());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                List<Dictionary<string, object>> rfqonelist = GetTableRows(dt);
                return Json(rfqonelist, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult fetchitemlist(string id)
        {
            try
            {
                string sqlstr = "VPORequisition";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "selectRfqItemDetails");
                cmd.Parameters.AddWithValue("@RfqID", id.Trim());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                List<Dictionary<string, object>> selectRfqItemDetails = GetTableRows(dt);
                return Json(selectRfqItemDetails, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult sendmultirfq(string rfqid, string parentValueToPush, string remark)
        {
            try
            {
                string sqlstr = "VPORequisition";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "sendrfq");
                cmd.Parameters.AddWithValue("@remark", remark.Trim());
                cmd.Parameters.AddWithValue("@RfqID", rfqid.Trim());
                cmd.ExecuteNonQuery();
                connection.Close();

                string[] split = parentValueToPush.Split(',');
                foreach (string i in split)
                {
                    string sqlstr1 = "VPORequisition";
                    var connection1 = gConnection.Connection();
                    connection1.Open();
                    SqlCommand cmd1 = new SqlCommand(sqlstr1, connection1);
                    cmd1.CommandType = CommandType.StoredProcedure;
                    cmd1.Parameters.AddWithValue("@Action", "RfqMultiVendorInsert");
                    cmd1.Parameters.AddWithValue("@RfqID", rfqid.Trim());
                    cmd1.Parameters.AddWithValue("@VendorId", i.Trim());
                    cmd1.ExecuteNonQuery();
                    connection1.Close();
                }
                return Json("success", JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        private string GetImageUrl(string imagePath)
        {
            System.Drawing.Image image = System.Drawing.Image.FromFile(Server.MapPath(imagePath));
            MemoryStream memoryStream = new MemoryStream();
            image.Save(memoryStream, ImageFormat.Jpeg);
            Byte[] bytes = new Byte[memoryStream.Length];
            memoryStream.Position = 0;
            memoryStream.Read(bytes, 0, (int)bytes.Length);
            string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
            string imageUrl = "data:image/png;base64," + base64String;
            return imageUrl;
        }
        [HttpPost]
        public JsonResult SendRFQMail(string vendorWithEmail, string parameters, string tcArray)
        {
            string result = "";
            try
            {
                //string path = Server.MapPath(@"~/NewCssAndTheme/img/ssmlogo.jpg");
                //LinkedResource Img = new LinkedResource(path, System.Net.Mime.MediaTypeNames.Image.Jpeg);
                //Img.ContentId = "MyImage";
                string[] email = vendorWithEmail.Split(',');
                string[] parameter = parameters.Split(',');
                string[] lineItems = parameters.Split('^');
                string[] tcItems = tcArray.Split('^');
                foreach (string item in email)
                {

                    MailMessage mail = new MailMessage();
                    mail.To.Add("mycadtech123@gmail.com");
                    mail.From = new MailAddress("mycadtech123@gmail.com");
                    mail.Subject = "MATERIAL REQUIREMENT";
                    //string imageUrl = GetImageUrl("img/ssmlogo.jpg");
                    //string imageContent = "<img src='" + imageUrl + "' alt='Alternate Text' />";

                    //LinkedResource LinkedImage = new LinkedResource(@"~\NewCssAndTheme\img\ssmlogo.jpg");
                    //LinkedImage.ContentId = "MyPic";
                    ////Added the patch for Thunderbird as suggested by Jorge
                    //LinkedImage.ContentType = new ContentType(MediaTypeNames.Image.Jpeg);

                    //AlternateView htmlView = AlternateView.CreateAlternateViewFromString("<img src=cid:MyPic>",null, "text/html");

                    //htmlView.LinkedResources.Add(LinkedImage);
                    //mail.AlternateViews.Add(htmlView);
                    //string Body = "RfQItemId : " + parameter[0] + "<br/>" + "ItemName : " + parameter[1] + "<br/>"
                    //    + "Section : " + parameter[2] + "<br/>" + "ReqTypeMaterial : " + parameter[3] + "<br/>"
                    //    + "Total Wt:" + parameter[4] + "<br/>" + "Rate : " + parameter[5] + "<br/>"
                    //    + "Amount : " + parameter[6] + "<br/>";                  

                    string pdfbody = "<div style='font: 10px; border: 2px solid black; width:90%'>";
                    pdfbody += "<br/>";
                    pdfbody += "<div style='text-align:left'>";
                    //pdfbody += " "+imageContent+" ";
                    pdfbody += "</div>";
                    pdfbody += "<div style='text-align:center'>";
                    pdfbody += "<font size='3' font-weight='bold'><b>SHREE SIDDHESHWARI METAL FORGING PRIVATE LIMITED</b></font>";
                    pdfbody += "</div>";
                    pdfbody += "<div style='text-align:center'>";
                    pdfbody += "<font size='medium'>PLOT NO. 489/490, 'J' BLOCK, M.I.D.C. BHOSARI, PUNE-411026</font>";
                    pdfbody += "</div>";
                    pdfbody += "<div style='text-align:center'>";
                    pdfbody += "<font size='medium'>PHONE NO. : (020) 27130120   EMAIL: scm@ssmforge.com / admin@ssmforge.com</font>";
                    pdfbody += "</div>";
                    pdfbody += "<br/>";
                    //doc.Add(Chunk.NEWLINE);
                    //hw.Parse(new StringReader(pdfbody));


                    pdfbody += "<div style='text-align:center;'><hr/>";
                    pdfbody += "<br/>";
                    pdfbody += "<font size='3' font-weight='bold'><b>MATERIAL REQUIREMENT</b></font>";
                    pdfbody += "<br/>";
                    pdfbody += "<hr/></div>";                    
                    pdfbody += "<table border='1' cellpadding='5' cellspacing='0' style='font-size: medium'>";
                    pdfbody += "<tbody >";

                    pdfbody += "<tr>";
                    pdfbody += "<th width='5%' style='text-align:left;'>";
                    pdfbody += "<b>REQUISITION NO.</b>";
                    pdfbody += "</th>";
                    pdfbody += "<th width='45%' style='text-align:left;'>";
                    pdfbody += "<b>DESCRIPTION</b>";
                    pdfbody += "</th>";
                    pdfbody += "<th width='5%' style='text-align:center;'>";
                    pdfbody += "<b>QTY</b>";
                    pdfbody += "</th>";
                    pdfbody += "<th width='5%' style='text-align:center;'>";
                    pdfbody += "<b>UOM</b>";
                    pdfbody += "</th>";
                    pdfbody += "<th width='5%' style='text-align:center;'>";
                    pdfbody += "<b>RATE</b>";
                    pdfbody += "</th></tr>";

                    foreach (var items in lineItems)
                    {
                        string[] it = items.Split(',');
                        pdfbody += "<tr>";
                        for (int l = 0; l < it.Length - 1; l++)
                        {
                            pdfbody += "<th style='text-align:left'>";
                            pdfbody += it[l];
                            pdfbody += "</th>";
                        }
                        //foreach (var ite in it)
                        //{

                        //    pdfbody += "<th style='text-align:left'>";
                        //    pdfbody += ite;
                        //    pdfbody += "</th>";
                        //   }
                        pdfbody += "</tr>";
                        //break;
                    }
                    pdfbody += "<tr>";
                    pdfbody += "<th style='text-align:left'>";

                    pdfbody += "</th>";
                    pdfbody += "<th style='text-align:left'>";
                    pdfbody += "Total";
                    pdfbody += "</th>";
                    pdfbody += "<th style='text-align:right'>";
                    pdfbody += "</th>";
                    pdfbody += "<th style='text-align:right'>";
                    pdfbody += "</th>";
                    pdfbody += "<th style='text-align:right'>";
                    pdfbody += "</th>";
                    pdfbody += "</tr>";
                    //pdfbody += "</tbody>";
                    //pdfbody += "</table>";
                    //pdfbody += "</th>";

                    //pdfbody += "</tr>";

                    //pdfbody += "</tbody>";
                    //pdfbody += "</table>";
                    //pdfbody += "<table border='1' cellpadding='2' cellspacing='0' style='font-size: medium'>";
                    //pdfbody += "<tbody >";
                    pdfbody += "<tr>";
                    pdfbody += "<th style='text-align:left' colspan='5'>";
                    pdfbody += "Terms And Conditions: ";
                    pdfbody += "</th>";
                    pdfbody += "</tr>";

                    var i = 1;
                    foreach (var tcitem in tcItems)
                    {
                        string[] it = tcitem.Split(',');
                        for (int l = 0; l < it.Length; l++)
                        {
                            pdfbody += "<tr>";
                            pdfbody += "<th style='text-align:left' colspan='5'>";
                            pdfbody += +i + ". ";
                            //pdfbody += "</th>";
                            //pdfbody += "<th style='text-align:left' colsapan='4'>";
                            pdfbody += it[l];
                            pdfbody += "</th>";
                            i++;
                            pdfbody += "</tr>";
                        }
                    }

                    pdfbody += "<tr>";
                    pdfbody += "<th style='text-align:left' colspan='5'>";
                    pdfbody += "PAN NO.: AARCS5238G.";
                    pdfbody += "</th>";
                    pdfbody += "</tr>";
                    pdfbody += "<tr>";
                    pdfbody += "<th style='text-align:left' colspan='5'>";
                    pdfbody += "GST NO : 27AARCS5238G1ZX";
                    pdfbody += "</th>";
                    pdfbody += "</tr>";
                    pdfbody += "<tr>";
                    pdfbody += "<th style='text-align:right' colspan='5'>";
                    pdfbody += "For SHREE SIDDHESHWARI METAL FORGING PVT.LTD.";
                    pdfbody += "</th>";
                    pdfbody += "</tr>";
                    pdfbody += "<tr rowspan='2' style='border:none;'>";
                    pdfbody += "<th style='text-align:left' colspan='5'>";
                    pdfbody += "&nbsp;";
                    pdfbody += "</th>";
                    pdfbody += "</tr>";
                    pdfbody += "<tr rowspan='2'>";
                    pdfbody += "<th style='text-align:right; padding-right:15px; vertical-align:bottom' colspan='5'>";
                    pdfbody += "Authorised Signatory";
                    pdfbody += "</th>";
                    pdfbody += "</tr>";
                    pdfbody += "</tbody>";
                    pdfbody += "</table>";
                    pdfbody += "</div>";
                    mail.Body = pdfbody;
                    mail.IsBodyHtml = true;
                    mail.Priority = System.Net.Mail.MailPriority.High; // Set Priority to sending mail

                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    // smtp.UseDefaultCredentials = false;
                    smtp.Credentials = new System.Net.NetworkCredential("mycadtech123@gmail.com", "testing115"); // Enter seders User name and password   
                    smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                    smtp.EnableSsl = true;
                    smtp.Send(mail);
                    result = "Thanks For Your Feedback!!";
                    @ViewBag.HideClass = "alert alert-success";
                    @ViewBag.Message = result;
                    return Json(result, JsonRequestBehavior.AllowGet);

                }

            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }

            return Json(null, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult pogenerate(string rfqid, string parentValueToPush, string remark, string parameters)
        {
            try
            {
                string vpono = "VPO-" + rfqid.Trim();
                string sqlstr = "VPORequisition";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "sendpo");
                cmd.Parameters.AddWithValue("@remark", remark.Trim());
                cmd.Parameters.AddWithValue("@RfqID", rfqid.Trim());
                cmd.Parameters.AddWithValue("@VendorId", parentValueToPush.Trim());
                cmd.Parameters.AddWithValue("@vpono", vpono.Trim());
                cmd.ExecuteNonQuery();
                connection.Close();

                string sqlstr1 = "VPORequisition";
                var connection1 = gConnection.Connection();
                connection1.Open();
                SqlCommand cmd1 = new SqlCommand(sqlstr1, connection1);
                cmd1.CommandType = CommandType.StoredProcedure;
                cmd1.Parameters.AddWithValue("@Action", "RfqMultiVendorInsert");
                cmd1.Parameters.AddWithValue("@RfqID", rfqid.Trim());
                cmd1.Parameters.AddWithValue("@VendorId", parentValueToPush.Trim());
                cmd1.ExecuteNonQuery();
                connection1.Close();
                ///code for quantity update
                string remove = parameters.Remove(parameters.Length - 1, 1);
                string[] split = remove.Split('^');
                foreach (string i in split)
                {
                    string capsstr = "";
                    if (i.StartsWith(","))
                    {
                        capsstr = i.Remove(0, 1);
                    }
                    else
                    {
                        capsstr = i;


                    }
                    string[] split1 = capsstr.Split(',');
                    string id = split1[0];
                    string itemcode = split1[1];
                    string itemdesc = split1[2];
                    string qty = split1[3];
                    string rate = split1[4];
                    string unit = split1[5];
                    string amt = split1[6];
                    string sqlstr2 = "VPORequisition";
                    var connection2 = gConnection.Connection();
                    connection2.Open();
                    SqlCommand cmd2 = new SqlCommand(sqlstr2, connection2);
                    cmd2.CommandType = CommandType.StoredProcedure;
                    cmd2.Parameters.AddWithValue("@Action", "updateitemdetails");
                    cmd2.Parameters.AddWithValue("@itemcode", itemcode.Trim());
                    cmd2.Parameters.AddWithValue("@itemdesc", itemdesc.Trim());
                    cmd2.Parameters.AddWithValue("@qty", qty.Trim() == "" ? "0" : qty.Trim());
                    cmd2.Parameters.AddWithValue("@rate", rate.Trim());
                    cmd2.Parameters.AddWithValue("@unit", unit.Trim());
                    cmd2.Parameters.AddWithValue("@amt", amt.Trim() == "" ? "0" : amt.Trim());
                    cmd2.Parameters.AddWithValue("@vpono", vpono.Trim());
                    cmd2.Parameters.AddWithValue("@RfQItemId", id.Trim());
                    cmd2.ExecuteNonQuery();
                    connection2.Close();

                }


                return Json("success", JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult PORPOgenerate(string rfqid, string parentValueToPush, string remark, string parameters)
        {
            try
            {

                string sqlstr = "VPORequisition";
                var connection = gConnection.Connection();
                connection.Open();
                string vpono = "VPO-" + rfqid;
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "sendpo");
                cmd.Parameters.AddWithValue("@remark", remark.Trim());
                cmd.Parameters.AddWithValue("@RfqID", rfqid.Trim());
                cmd.Parameters.AddWithValue("@VendorId", parentValueToPush.Trim());
                cmd.Parameters.AddWithValue("@vpono", vpono.Trim());
                cmd.ExecuteNonQuery();
                connection.Close();


                ///code for quantity update
                string remove = parameters.Remove(parameters.Length - 1, 1);
                string[] split = remove.Split('^');
                foreach (string i in split)
                {
                    string capsstr = "";
                    if (i.StartsWith(","))
                    {
                        capsstr = i.Remove(0, 1);
                    }
                    else
                    {
                        capsstr = i;


                    }
                    string[] split1 = capsstr.Split(',');
                    string id = split1[0];
                    string item = split1[1];
                    string itemdesc = split1[2];
                    string qty = split1[3];
                    string rate = split1[4];
                    string unit = split1[5];
                    string amt = split1[6];
                    string vendorFlag = split1[7];
                    string sqlstr2 = "VPORequisition";
                    var connection2 = gConnection.Connection();
                    connection2.Open();
                    SqlCommand cmd2 = new SqlCommand(sqlstr2, connection2);
                    cmd2.CommandType = CommandType.StoredProcedure;
                    cmd2.Parameters.AddWithValue("@Action", "POResponseItemAdd");
                    cmd2.Parameters.AddWithValue("@item", item.Trim());
                    cmd2.Parameters.AddWithValue("@itemdesc", itemdesc.Trim());
                    cmd2.Parameters.AddWithValue("@qty", qty.Trim());
                    cmd2.Parameters.AddWithValue("@rate", rate.Trim());
                    cmd2.Parameters.AddWithValue("@unit", unit.Trim());
                    cmd2.Parameters.AddWithValue("@amt", amt.Trim());
                    cmd2.Parameters.AddWithValue("@vendorFlag", vendorFlag.Trim());
                    cmd2.Parameters.AddWithValue("@vpono", vpono.Trim());
                    cmd2.Parameters.AddWithValue("@RfQItemId", id.Trim());
                    cmd2.ExecuteNonQuery();
                    connection2.Close();

                }


                return Json("success", JsonRequestBehavior.AllowGet);
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