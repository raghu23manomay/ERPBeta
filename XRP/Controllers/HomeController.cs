using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using XRP.Models;
using static XRP.Models.SessionClassModel;

namespace XRP.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public JsonResult checkSession()
        {
            sessionClass s = new sessionClass();
            if (Session["username"] != null)
            {
                s.sessionValue = true;
            }
            else
            {
                s.sessionValue = false;

            }
            return Json(s, JsonRequestBehavior.AllowGet);
        }
    }
}