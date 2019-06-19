using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Script.Serialization;
using System.Net;
using System.Net.Mail;

namespace XRP.Models
{
    public static  class DataOpration
    {

        public static string DataTableToJSONWithJavaScriptSerializer(DataTable table)
        {
            JavaScriptSerializer jsSerializer = new JavaScriptSerializer();
            List<Dictionary<string, object>> parentRow = new List<Dictionary<string, object>>();
            Dictionary<string, object> childRow;
            foreach (DataRow row in table.Rows)
            {
                childRow = new Dictionary<string, object>();
                foreach (DataColumn col in table.Columns)
                {
                    childRow.Add(col.ColumnName, row[col]);
                }
                parentRow.Add(childRow);
            }
            JavaScriptSerializer js = new JavaScriptSerializer();
            return jsSerializer.Serialize(parentRow);
        }

        public static dynamic RawDataJson(DataTable table)
        {
            JavaScriptSerializer jsSerializer = new JavaScriptSerializer();
            List<Dictionary<string, object>> parentRow = new List<Dictionary<string, object>>();
            Dictionary<string, object> childRow;
            foreach (DataRow row in table.Rows)
            {
                childRow = new Dictionary<string, object>();
                foreach (DataColumn col in table.Columns)
                {
                    childRow.Add(col.ColumnName, row[col]);
                }
                parentRow.Add(childRow);
            }
            JavaScriptSerializer js = new JavaScriptSerializer();
            return jsSerializer.Serialize(parentRow);
        }


        public static DataTable GetDataTable(string StoredProcedureName, params SqlParameter[] parameters)
        {
             DataTable dt = new DataTable();
            try
            {
                SqlConnection con = null;
                con = new SqlConnection(@WebConfigurationManager.ConnectionStrings["DbDetails"].ToString());
                con.Open();
                SqlCommand cmd1 = new SqlCommand(StoredProcedureName, con);
                cmd1.CommandType = CommandType.StoredProcedure;
                if (parameters != null)
                    parameters.ToList().ForEach(p =>
                      cmd1.Parameters.AddWithValue(p.ParameterName, p.Value)
                    );
                SqlDataAdapter da = new SqlDataAdapter(cmd1);
                da.Fill(dt);
                con.Close();
            }
            catch (Exception ex)
            {
                //  TempData["msg"] = "<script>alert('Error occured contacc to MyCAD!!!');</script>";
                // Logger.LogSendMail(ex.Message + " Stacktrace =  " + ex.StackTrace + " Source= " + ex.InnerException + " " + ex.TargetSite);
                Global.ErrorHandlerClass.LogError(ex);
            }
            return dt;


        }

        public static string GetXMLData(string StoredProcedureName, params SqlParameter[] parameters)
        {
            string xmldata = "";
            DataTable dt = new DataTable();
            try
            {
                SqlConnection con = null;
                con = new SqlConnection(@WebConfigurationManager.ConnectionStrings["DbDetails"].ToString());
                con.Open();
                SqlCommand cmd1 = new SqlCommand(StoredProcedureName, con);
                cmd1.CommandType = CommandType.StoredProcedure;
                if (parameters != null)
                    parameters.ToList().ForEach(p =>
                      cmd1.Parameters.AddWithValue(p.ParameterName, p.Value)
                    );
                SqlDataAdapter da = new SqlDataAdapter(cmd1);
                da.Fill(dt);
                con.Close();
                foreach (DataRow dr in dt.Rows)
                {
                    xmldata = xmldata + dr[0].ToString();
                }
            }
            catch (Exception ex)
            {
                //  TempData["msg"] = "<script>alert('Error occured contacc to MyCAD!!!');</script>";
                // Logger.LogSendMail(ex.Message + " Stacktrace =  " + ex.StackTrace + " Source= " + ex.InnerException + " " + ex.TargetSite);
                Global.ErrorHandlerClass.LogError(ex);
            }
            return xmldata;


        }

        public static string GetJsonData(string StoredProcedureName, params SqlParameter[] parameters)
        {
            DataTable dt = GetDataTable(StoredProcedureName, parameters);
            return DataTableToJSONWithJavaScriptSerializer(dt);
        }

        public static int SaveData(string StoredProcedureName, params SqlParameter[] parameters)
        {
            int i = -1;

            try
            {
                SqlConnection con = null;
                con = new SqlConnection(@WebConfigurationManager.ConnectionStrings["DbDetails"].ToString());
                con.Open();
                SqlCommand cmd = new SqlCommand(StoredProcedureName, con);
                cmd.CommandType = CommandType.StoredProcedure;
                if (parameters != null)
                    parameters.ToList().ForEach(p =>
                      cmd.Parameters.AddWithValue(p.ParameterName, p.Value)
                    );
                i = cmd.ExecuteNonQuery();
                con.Close();
                i = 1;

            }
            catch (Exception ex)
            {
                //   TempData["msg"] = "<script>alert('Error occured contacc to MyCAD!!!');</script>";
                //Logger.LogSendMail(ex.Message + " Stacktrace =  " + ex.StackTrace + " Source= " + ex.InnerException + " " + ex.TargetSite);
                Global.ErrorHandlerClass.LogError(ex);

                i = -1;
            }
            return i;
        }


        public static List<Dictionary<string, object>> DataTableTojsonstring(DataTable table)
        {
            JavaScriptSerializer jsSerializer = new JavaScriptSerializer();
            List<Dictionary<string, object>> parentRow = new List<Dictionary<string, object>>();
            Dictionary<string, object> childRow;
            foreach (DataRow row in table.Rows)
            {
                childRow = new Dictionary<string, object>();
                foreach (DataColumn col in table.Columns)
                {
                    childRow.Add(col.ColumnName, row[col]);
                }
                parentRow.Add(childRow);
            }
            return parentRow;
          //  JavaScriptSerializer js = new JavaScriptSerializer();
           // return jsSerializer.Serialize(parentRow);
        }

        //public static bool SendEmail(string emailTo, string mailbody, string subject)
        //{
        //    var from = new MailAddress(@WebConfigurationManager.ConnectionStrings["sendmailid"].ToString());
        //    var to = new MailAddress(emailTo);

        //    var useDefaultCredentials = true;
        //    var enableSsl = false;
        //    var replyto = ""; // set here your email; 
        //    var userName = string.Empty;
        //    var password = string.Empty;
        //    var port = 25;
        //    var host = "localhost";

        //    userName = @WebConfigurationManager.ConnectionStrings["sendmailid"].ToString(); // setup here the username; 
        //    password = @WebConfigurationManager.ConnectionStrings["sendmailid"].ToString(); // setup here the password; 
        //    bool.TryParse("true", out useDefaultCredentials); //setup here if it uses defaault credentials 
        //    bool.TryParse("true", out enableSsl); //setup here if it uses ssl 
        //    int.TryParse("25", out port); //setup here the port 
        //    host = "www.google.com"; //setup here the host 

        //    using (var mail = new MailMessage(from, to))
        //    {
        //        mail.Subject = subject;
        //        mail.Body = mailbody;
        //        mail.IsBodyHtml = true;

        //        mail.ReplyToList.Add(new MailAddress(replyto, @WebConfigurationManager.ConnectionStrings["sendmailid"].ToString()));
        //        mail.ReplyToList.Add(from);
        //        mail.DeliveryNotificationOptions = DeliveryNotificationOptions.Delay |
        //                                           DeliveryNotificationOptions.OnFailure |
        //                                           DeliveryNotificationOptions.OnSuccess;

        //        using (var client = new SmtpClient())
        //        {
        //            client.Host = host;
        //            client.EnableSsl = enableSsl;
        //            client.Port = port;
        //            client.UseDefaultCredentials = useDefaultCredentials;

        //            if (!client.UseDefaultCredentials && !string.IsNullOrEmpty(userName) &&
        //                !string.IsNullOrEmpty(password))
        //            {
        //                client.Credentials = new NetworkCredential(userName, password);
        //            }

        //            client.SendMailAsync(mail);
        //        }
        //    }

        //    return true;
        //}

    }
}