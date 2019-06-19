using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using XRP.Global;
using XRP.Models;
using XRP.Controllers;
using System.Web.Security;

namespace XRP.Controllers
{
  
    public class AuthController : Controller
    {
       
        DropDownSelection objDrop = new DropDownSelection();
      
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }
        [HttpGet]
        public ActionResult LogOut()
        {
            FormsAuthentication.SignOut();
            Session.Abandon(); 
            Session.Clear();
            return RedirectToAction("Login", "Auth");
        }
        public ActionResult AllUser()
        {
            return View();
        }
        public ActionResult NewUser()
        {
            ViewData["Department"] = objDrop.Department();
            ViewData["UserRoll"] = objDrop.UserRoll();
            return View();
        }
        [HttpPost]
        public ActionResult Login(LoginModel objLog)
            
        {
            try
            {
                if (objLog.UserName != null && objLog.Password != null)
                {
                    FormsAuthentication.SetAuthCookie(objLog.UserName, false);
                    string sqlstr = "uspLogin";
                    var connection = gConnection.Connection();
                    connection.Open();
                    SqlCommand cmd = new SqlCommand(sqlstr, connection);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@username", objLog.UserName.Trim());
                    cmd.Parameters.AddWithValue("@password", objLog.Password.Trim());
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    connection.Close();
                    if (dt.Rows.Count > 0)
                    {
                        int userid = Convert.ToInt32(dt.Rows[0]["UserId"].ToString());
                        Session["userid"] = userid;
                        string username = dt.Rows[0]["UserName"].ToString();
                        Session["username"] = username;
                        string UserType = dt.Rows[0]["UserType"].ToString();
                        string Password = dt.Rows[0]["Password"].ToString();
                        string Email = dt.Rows[0]["Email"].ToString();
                        string deptname = dt.Rows[0]["DepartmentName"].ToString();
                        Session["deptname"] = deptname;
                        var utype = UserType;


                        return RedirectToAction("AllInquiry", "Inquiry");

                    }
                    else
                    {
                        Response.Write("<br/><div role='alert' class='alert alert-warning p-3'><center><strong>Warning! </strong>Invalid Username or Password</center></div>");
                    }
                }
                else {
                    Response.Write("<br/><div role='alert' class='alert alert-warning p-3'><center><strong>Warning! </strong>Username and Password is required..</center></div>");
                }
                //code for layout load

                //string layout = "";
                //if (utype == "Admin")
                //{
                //    layout = "~/Views/Shared/_DesignLayout.cshtml";
                //    Session["layout"] = layout;
                //}
                //else
                //{
                //    layout = "~/Views/Shared/_NewLayout.cshtml";
                //    Session["layout"] = layout;
                //}

                //


            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return View();
        }
        public ActionResult UserPermission()
        {
            return View();
        }
        public JsonResult savedatapermission(string UserId, string submenuid, string isaddcheck, string add, string iseditcheck, 
            string edit, string isdelcheck,string del, string isviewcheck, string view, string isapprovalcheck, string approval, 
            string isprintcheck,string print, string isdownloadcheck, string download, string issendmailcheck, string sendmail)
        {
            if ((isaddcheck!=null) || (add!=null))
            {
                DataOpration.SaveData("uspAuthorizePermission", new SqlParameter("@SubMenuId", submenuid.Trim()),
              new SqlParameter("@IsAction", isaddcheck.Trim()), new SqlParameter("@ActionID", add.Trim()),
              new SqlParameter("@UserID", UserId.Trim()));
            }
            if ((iseditcheck != null) || (edit != null))
            {
                DataOpration.SaveData("uspAuthorizePermission", new SqlParameter("@SubMenuId", submenuid.Trim()),
              new SqlParameter("@IsAction", iseditcheck.Trim()), new SqlParameter("@ActionID", edit.Trim()),
              new SqlParameter("@UserID", UserId.Trim()));
            }
            if ((isdelcheck != null) || (del != null))
            {
                DataOpration.SaveData("uspAuthorizePermission", new SqlParameter("@SubMenuId", submenuid.Trim()),
              new SqlParameter("@IsAction", isdelcheck.Trim()), new SqlParameter("@ActionID", del.Trim()),
              new SqlParameter("@UserID", UserId.Trim()));
            }
            if ((isviewcheck != null) || (view != null))
            {
                DataOpration.SaveData("uspAuthorizePermission", new SqlParameter("@SubMenuId", submenuid.Trim()),
              new SqlParameter("@IsAction", isviewcheck.Trim()), new SqlParameter("@ActionID", view.Trim()),
              new SqlParameter("@UserID", UserId.Trim()));
            }
            if ((isapprovalcheck != null) || (approval != null))
            {
                DataOpration.SaveData("uspAuthorizePermission", new SqlParameter("@SubMenuId", submenuid.Trim()),
              new SqlParameter("@IsAction", isapprovalcheck.Trim()), new SqlParameter("@ActionID", approval.Trim()),
              new SqlParameter("@UserID", UserId.Trim()));
            }
            if ((isprintcheck != null) || (print != null))
            {
                DataOpration.SaveData("uspAuthorizePermission", new SqlParameter("@SubMenuId", submenuid.Trim()),
              new SqlParameter("@IsAction", isprintcheck.Trim()), new SqlParameter("@ActionID", print.Trim()),
              new SqlParameter("@UserID", UserId.Trim()));
            }
            if ((isdownloadcheck != null) || (download != null))
            {
                DataOpration.SaveData("uspAuthorizePermission", new SqlParameter("@SubMenuId", submenuid.Trim()),
              new SqlParameter("@IsAction", isdownloadcheck.Trim()), new SqlParameter("@ActionID", download.Trim()),
              new SqlParameter("@UserID", UserId.Trim()));
            }
            if ((issendmailcheck != null) || (sendmail != null))
            {
                DataOpration.SaveData("uspAuthorizePermission", new SqlParameter("@SubMenuId", submenuid.Trim()),
              new SqlParameter("@IsAction", issendmailcheck.Trim()), new SqlParameter("@ActionID", sendmail.Trim()),
              new SqlParameter("@UserID", UserId.Trim()));
            }
            return Json("", JsonRequestBehavior.AllowGet);
        }
        public JsonResult getUsers()
        {
            DatasController DatasController = new DatasController();
            Dictionary<string, object> parameters = new Dictionary<string, object>();
            parameters.Add("Action", "getUsers");
            DatasController.Dispose();
            return DatasController.execd("uspUser", parameters);
        }
        public JsonResult getRolls()
        {
            DatasController DatasController = new DatasController();
            Dictionary<string, object> parameters = new Dictionary<string, object>();
            parameters.Add("Action", "getrolls");
            DatasController.Dispose();
            return DatasController.execd("Login_sp", parameters);
        }
        public JsonResult getfeatures()
        {
            DatasController DatasController = new DatasController();
            Dictionary<string, object> parameters = new Dictionary<string, object>();
            parameters.Add("Action", "getfeatures");
            DatasController.Dispose();
            return DatasController.execd("Login_sp", parameters);
        }
        [HttpPost]
        public JsonResult getpermission(string UserId,string submenuid)
        {
            DatasController DatasController = new DatasController();
            Dictionary<string, object> parameters = new Dictionary<string, object>();
            parameters.Add("Action", "getpermission");
            parameters.Add("userid", UserId.Trim());
            parameters.Add("submenuid", submenuid.Trim());
            DatasController.Dispose();
            return DatasController.execd("Login_sp", parameters);
        }
        public JsonResult MenuBind(string UserID)
        {
            DatasController DatasController = new DatasController();
            Dictionary<string, object> parameters = new Dictionary<string, object>();
            parameters.Add("Action", "menubind");
            parameters.Add("userid", UserID.Trim());
            DatasController.Dispose();
            return DatasController.execd("Login_sp", parameters);
        }
        public JsonResult submenubind(string UserID)
        {
            DatasController DatasController = new DatasController();
            Dictionary<string, object> parameters = new Dictionary<string, object>();
            parameters.Add("Action", "submenubind");
            parameters.Add("userid", UserID.Trim());
            DatasController.Dispose();
            return DatasController.execd("Login_sp", parameters);
        }
        public JsonResult setpermission(string userid,string features,string actionid)
        {
            DatasController DatasController = new DatasController();
            Dictionary<string, object> parameters = new Dictionary<string, object>();
            parameters.Add("Action", "setpermission");
            parameters.Add("userid", userid.Trim());
            parameters.Add("features", features.Trim());
            parameters.Add("actionm", actionid.Trim());
            DatasController.Dispose();
            return DatasController.execd("Login_sp", parameters);
        }
        public JsonResult insertUser(string fName, string lName, string uName, string password, string uType, string department, string email, string contactNumber)
        {

            try
            {
                int result = 0;
                DataOpration.SaveData("uspUser", new SqlParameter("@Action", "insertUser"),
                 new SqlParameter("@FirstName", fName.Trim()), new SqlParameter("@LastName", lName.Trim()),
                 new SqlParameter("@UserName", uName.Trim()), new SqlParameter("@Password", password.Trim()),
                 new SqlParameter("@UserType", uType.Trim()), new SqlParameter("@DepartmentID", department.Trim()),
                 new SqlParameter("@Email", email.Trim()),
                 new SqlParameter("@ContactNumber", contactNumber.Trim()));
                return Json("", JsonRequestBehavior.AllowGet);
                //DatasController DatasController = new DatasController();
                //Dictionary<string, object> parameters = new Dictionary<string, object>();
                //parameters.Add("Action", "insertUser");
                //parameters.Add("FirstName", fName.Trim());
                //parameters.Add("LastName", lName.Trim());
                //parameters.Add("UserName", uName.Trim());
                //parameters.Add("Password", password.Trim());
                //parameters.Add("UserType", uType.Trim());
                //parameters.Add("DepartmentID", department.Trim());
                //parameters.Add("Email", email.Trim());
                //parameters.Add("ContactNumber", contactNumber.Trim());
                //DatasController.Dispose();
                //return DatasController.execd("uspUser", parameters);
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult NotificationBind(string id)
        {
            try
            {
                string sqlstr = "uspNotification";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@userid", Session["userid"]);
                cmd.Parameters.AddWithValue("@Action","SelectUnreadMsg");
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                string count = "";
                if (dt.Rows.Count>0)
                {
                    count = dt.Rows[0]["cnt"].ToString();
                    ViewData["count"] = count;
                }
                else
                {
                    count = "0";
                    ViewData["count"] = 0;
                }
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
        public JsonResult setUnreadMsg(string NotificationID)
        {
            try
            {
                string sqlstr = "uspNotification";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "setreadtounread");
                cmd.Parameters.AddWithValue("@NotificationID", Convert.ToInt32(NotificationID));
                cmd.ExecuteNonQuery();
                return Json("", JsonRequestBehavior.AllowGet);
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