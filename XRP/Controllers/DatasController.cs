using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Mvc;
using XRP.Models;

namespace XRP.Controllers
{
    public class DatasController : Controller
    {
        // GET: Datas
        public ActionResult Index()
        {
            return View();
        }
        public JsonResult exec(string procedure, string parameters, string selectorsave = "select")
        {
            List<SqlParameter> lstpr = new List<SqlParameter>();
            if(!string.IsNullOrEmpty(parameters))
            parameters.Split('^').ToList().ForEach(p =>
            {
                var vr = p.Split('~');
                lstpr.Add(new SqlParameter("@" + vr[0], vr[1]));
            });

            try
            {
                if (selectorsave != "select")
                {
                    int maxwono = DataOpration.SaveData(procedure, lstpr.ToArray());
                    return Json(maxwono, JsonRequestBehavior.AllowGet);
                }
                else if (selectorsave == "select")
                {
                    DataTable dt = DataOpration.GetDataTable(procedure, lstpr.ToArray());
                    return Json(DataOpration.DataTableTojsonstring(dt), JsonRequestBehavior.AllowGet);

                }
            }
            catch (Exception ex)
            {
              //  TempData["msg"] = "<script>alert('Error occured contacc to MyCAD!!!');</script>";
                //Logger.LogSendMail(ex.Message + " Stacktrace =  " + ex.StackTrace + " Source= " + ex.InnerException + " " + ex.TargetSite);
                Global.ErrorHandlerClass.LogError(ex);
            }
            return null;
        }

        public List<Dictionary<string, object>> execdList(string procedure, Dictionary<string, object> parameters, string selectorsave = "select")
        {
            List<SqlParameter> lstpr = new List<SqlParameter>();
            parameters.ToList().ForEach(p =>
            {
                lstpr.Add(new SqlParameter("@" + p.Key, p.Value));
            });
            try
            {
                if (selectorsave != "select")
                {
                    //int maxwono = DataOpration.SaveData(procedure, lstpr.ToArray());
                    //return Json(maxwono, JsonRequestBehavior.AllowGet);
                }
                else if (selectorsave == "select")
                {
                    DataTable dt = DataOpration.GetDataTable(procedure, lstpr.ToArray());
                    // string ddd = DataOpration.GetJsonData(procedure, lstpr.ToArray());
                    //return Json(DataOpration.DataTableTojsonstring(dt), JsonRequestBehavior.AllowGet);
                    return DataOpration.DataTableTojsonstring(dt);

                }
            }
            catch (Exception ex)
            {
                // TempData["msg"] = "<script>alert('Error occured contacc to MyCAD!!!');</script>";
                // Logger.LogSendMail(ex.Message + " Stacktrace =  " + ex.StackTrace + " Source= " + ex.InnerException + " " + ex.TargetSite);
                Global.ErrorHandlerClass.LogError(ex);
            }
            return null;
        }
        public JsonResult execd(string procedure, Dictionary<string, object> parameters, string selectorsave = "select")
        {
            List<SqlParameter> lstpr = new List<SqlParameter>();
            parameters.ToList().ForEach(p =>
           {
               lstpr.Add(new SqlParameter("@" + p.Key, p.Value));
           });
            try
            {
                if (selectorsave != "select")
                {
                    int maxwono = DataOpration.SaveData(procedure, lstpr.ToArray());
                    return Json(maxwono, JsonRequestBehavior.AllowGet);
                }
                else if (selectorsave == "select")
                {
                    DataTable dt = DataOpration.GetDataTable(procedure, lstpr.ToArray());
                    // string ddd = DataOpration.GetJsonData(procedure, lstpr.ToArray());
                    return Json(DataOpration.DataTableTojsonstring(dt), JsonRequestBehavior.AllowGet);

                }
            }
            catch (Exception ex)
            {
                // TempData["msg"] = "<script>alert('Error occured contacc to MyCAD!!!');</script>";
                // Logger.LogSendMail(ex.Message + " Stacktrace =  " + ex.StackTrace + " Source= " + ex.InnerException + " " + ex.TargetSite);
                Global.ErrorHandlerClass.LogError(ex);
            }
            return null;
        }

        public List< Dictionary<string ,object> >GetDictionary(string procedure, string  parameters, string selectorsave = "select")
        {
           List< Dictionary<string, object> >result = new List< Dictionary<string, object>>();
            List<SqlParameter> lstpr = new List<SqlParameter>();
            if (!string.IsNullOrEmpty(parameters))
                parameters.Split('^').ToList().ForEach(p =>
                {
                    var vr = p.Split('~');
                    lstpr.Add(new SqlParameter("@" + vr[0], vr[1]));
                });

            try
            {
                if (selectorsave != "select")
                {
                    int maxwono = DataOpration.SaveData(procedure, lstpr.ToArray());
                   Dictionary<string, object> art=new  Dictionary<string, object>();
                    art.Add( "maxid", maxwono);
                    result.Add(art) ;
                    return result  ;
                }
                else if (selectorsave == "select")
                {
                    DataTable dt = DataOpration.GetDataTable(procedure, lstpr.ToArray());
                    result =  DataOpration.DataTableTojsonstring(dt)  ; 
                    return result;

                }
            }
            catch (Exception ex)
            {
                //TempData["msg"] = "<script>alert('Error occured contacc to MyCAD!!!');</script>";
                // Logger.LogSendMail(ex.Message + " Stacktrace =  " + ex.StackTrace + " Source= " + ex.InnerException + " " + ex.TargetSite);
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }
        public List< Dictionary<string ,object> >GetDictionarys(string procedure, Dictionary<string, object> parameters, string selectorsave = "select")
        {
           List< Dictionary<string, object> >result = new List< Dictionary<string, object>>();
            List<SqlParameter> lstpr = new List<SqlParameter>();
            parameters.ToList().ForEach(p =>
            {
                lstpr.Add(new SqlParameter("@" + p.Key, p.Value));
            });

            try
            {
                if (selectorsave != "select")
                {
                    int maxwono = DataOpration.SaveData(procedure, lstpr.ToArray());
                   Dictionary<string, object> art=new  Dictionary<string, object>();
                    art.Add( "maxid", maxwono);
                    result.Add(art) ;
                    return result  ;
                }
                else if (selectorsave == "select")
                {
                    DataTable dt = DataOpration.GetDataTable(procedure, lstpr.ToArray());
                    result =  DataOpration.DataTableTojsonstring(dt)  ; 
                    return result;

                }
            }
            catch (Exception ex)
            {
                // TempData["msg"] = "<script>alert('Error occured contacc to MyCAD!!!');</script>";
                //  Logger.LogSendMail(ex.Message + " Stacktrace =  " + ex.StackTrace + " Source= " + ex.InnerException + " " + ex.TargetSite);
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }
   
        public JsonResult Getpagging(string spname, int pq_curPage, int pq_rPP, string action = "select")
        {
            DataTable dt1 = DataOpration.GetDataTable(spname, new SqlParameter("@Action", "select"));
            DataTable sm = DataOpration.GetDataTable(spname, new SqlParameter("@Action", "selectpageing"), new SqlParameter("@currentpage", pq_curPage), new SqlParameter("@recordperpage", pq_rPP));
            Dictionary<string, object> rjson = new Dictionary<string, object>();
            rjson.Add("totalRecords", dt1.Rows.Count);
            rjson.Add("curPage", pq_curPage);
            rjson.Add("data", DataOpration.DataTableTojsonstring(sm));
            return Json(rjson, JsonRequestBehavior.AllowGet);

            //string sm = DataOpration.GetJsonData("GoodsInward_sp", new SqlParameter("@Action", "selectpageing"), new SqlParameter("@currentpage", pq_curPage), new SqlParameter("@recordperpage", pq_rPP));
            //StringBuilder sb = new StringBuilder(@"{""totalRecords"":" + dt1.Rows.Count + @",""curPage"":" + pq_curPage + @",""data"":" + sm);
            //JavaScriptSerializer js = new JavaScriptSerializer();
            //sb.Append("}");
            //   return this.Content(sb.ToString(), "text/text");
        }

        public JsonResult Getpaggingjson(string spname, int pq_curPage, int pq_rPP, string action = "select")
        {
            DataTable dt1 = DataOpration.GetDataTable(spname, new SqlParameter("@Action", "select"));
            DataTable sm = DataOpration.GetDataTable(spname, new SqlParameter("@Action", "selectpageing"), new SqlParameter("@currentpage", pq_curPage), new SqlParameter("@recordperpage", pq_rPP));
            Dictionary<string, object> rjson = new Dictionary<string, object>();
            rjson.Add("totalRecords", dt1.Rows.Count);
            rjson.Add("curPage", pq_curPage);
            rjson.Add("data", DataOpration.DataTableTojsonstring(sm));
            return Json(rjson, JsonRequestBehavior.AllowGet);

            //string sm = DataOpration.GetJsonData("GoodsInward_sp", new SqlParameter("@Action", "selectpageing"), new SqlParameter("@currentpage", pq_curPage), new SqlParameter("@recordperpage", pq_rPP));
            //StringBuilder sb = new StringBuilder(@"{""totalRecords"":" + dt1.Rows.Count + @",""curPage"":" + pq_curPage + @",""data"":" + sm);
            //JavaScriptSerializer js = new JavaScriptSerializer();
            //sb.Append("}");
            //   return this.Content(sb.ToString(), "text/text");
        }


        public JsonResult getid(string type)
        {
            string ids = "";
            var dt = DataOpration.GetDataTable("DeliveryChallan_sp", new SqlParameter("@Action", "lastdispachno"), new SqlParameter("@dctype", type.Trim()));
            var result = DataOpration.DataTableTojsonstring(dt);
            //  result[0].Values;


        
            if (type == "Job Disptach")
            {
                if (result.Count!=0)
                {

                    foreach (DataRow row in dt.Rows)
                    {


                        string value = row["dispachno"].ToString();

                        string[] split = Regex.Split(value, "-");
                        Int64 lastno = (Convert.ToInt64(split[1])) + 1;
                        ids = "JDISP-" + lastno.ToString("00000");
                    }
                }
                else
                {
                    ids = "JDISP-00001";
                }
            }
            else
            {
                if (result.Count != 0)
                {
                    foreach (DataRow row in dt.Rows)
                    {

                        string value = row["dispachno"].ToString();

                        string[] split = Regex.Split(value, "-");
                        Int64 lastno = (Convert.ToInt64(split[1]))+1;
                        ids = "DISP-" + lastno.ToString("00000");

                    }

                    
                }
                else
                {
                    
                    ids = "DISP-00001";
                }
            }
           

            return Json(ids, JsonRequestBehavior.AllowGet);
        }
    }
}