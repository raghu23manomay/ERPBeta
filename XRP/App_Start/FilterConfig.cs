using System;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace XRP
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
          //  filters.Add(new CheckSessionTimeOutAttribute());
        }
    }
    [AttributeUsage(AttributeTargets.All, Inherited = true, AllowMultiple = false)]
    public class CheckSessionTimeOutAttribute : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            HttpContext ctx = HttpContext.Current;
            if (ctx.Session != null)
            {
                if (ctx.Session.IsNewSession || ctx.Session["username"] == null)
                {
                    string sessionCookie = ctx.Request.Headers["Cookie"];
                    if ((null != sessionCookie) && (sessionCookie.IndexOf("ASP.NET_SessionId") >= 0))
                    {
                        //SessionVariables.Current.User = null;
                        FormsAuthentication.SignOut();
                        filterContext.Result = new RedirectResult("~/Auth/Login");
                        return;
                    }
                }
            }

            base.OnActionExecuting(filterContext);
        }
    }
}
