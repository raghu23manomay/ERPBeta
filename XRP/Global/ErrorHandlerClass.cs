using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Net;

namespace XRP.Global
{
    public class ErrorHandlerClass
    {        
        public static void LogError1(Exception ex)
        {
            ConnectionStringSettings connSettings = ConfigurationManager.ConnectionStrings["DbDetails"];
            string connString = connSettings.ConnectionString;
            
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            try
            {
                string sqlstr = "insert into ssmtbl_exception_error(stack_trace, exception_message , inner_exception , created_on , created_by)values(";
                sqlstr = sqlstr + "@StackTrace,@ExceptionMessage,@InnerException,@created_on,@created_by)";
                SqlCommand cmd = new SqlCommand(sqlstr, con);
                //cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@StackTrace", ex.StackTrace);
                cmd.Parameters.AddWithValue("@ExceptionMessage", ex.Message);
                cmd.Parameters.AddWithValue("@InnerException", ex.InnerException != null
                    ? ex.InnerException.Message
                    : "");
                cmd.Parameters.AddWithValue("@created_on", DateTime.Now);
                cmd.Parameters.AddWithValue("@created_by", "");
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception)
            {
            }
            finally
            {
                con.Close();
            }
        }
        private static void Log(string Errmsg)
        {
            try
            {
                System.IO.FileStream fs = new System.IO.FileStream((ConfigurationManager.AppSettings["logPath"].ToString()), System.IO.FileMode.OpenOrCreate, System.IO.FileAccess.ReadWrite);
                System.IO.StreamWriter s = new System.IO.StreamWriter(fs);
                s.BaseStream.Seek(0, System.IO.SeekOrigin.End);
                s.WriteLine("ERROR DATE: " + System.DateTime.Now.ToString(System.Globalization.CultureInfo.InvariantCulture) + " \nERROR MESSAGE: " + Errmsg);
                s.WriteLine("-------------------------------------------------------------------------------------------------------------");
                s.Close();
            }
            catch
            {
                throw;
            }

        }
        // method to send mail 
        private static void SendMail(string ErrMessage)
        {
            try
            {
                //code for sending mail ..

                System.Net.Mail.MailMessage mm = new System.Net.Mail.MailMessage();
                mm.To.Add(new System.Net.Mail.MailAddress("mycadtech123@gmail.com", "MyCad"));
                mm.From = new System.Net.Mail.MailAddress("mycadtech123@gmail.com");
                mm.Sender = new System.Net.Mail.MailAddress("mycadtech123@gmail.com", "MyCad");
                mm.Subject = "This is Test Email";  //This is Test Email
                mm.Body = "Dear Sir," + "<br/>Please note the following error which has been occured in the system :" + "<br/><br/>" + ErrMessage + "<br/><br/>Best Regards,<br/>This is a system generated mail, So do not reply.";//"<h3>This is Testing SMTP Mail Send By Mycad to NPK</h3>";
                mm.IsBodyHtml = true;
                mm.Priority = System.Net.Mail.MailPriority.High; // Set Priority to sending mail
                System.Net.Mail.SmtpClient smtCliend = new System.Net.Mail.SmtpClient();
                smtCliend.Host = "smtp.gmail.com";
                smtCliend.Port = 587;    // SMTP port no            
                smtCliend.Credentials = new NetworkCredential("mycadtech123@gmail.com", "testing115");
                smtCliend.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtCliend.EnableSsl = true;

                smtCliend.Send(mm);
            }
            catch 
            {
                throw;
            }
        }
        public static void LogError(Exception ex)
        {
            try
            {
                Log(ex.ToString());
               // SendMail(ex.Message);
            }
            catch
            {
                throw;
            }
        }
    }
    
}