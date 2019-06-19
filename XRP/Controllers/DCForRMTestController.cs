using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using XRP.Global;

namespace XRP.Controllers
{
    public class DCForRMTestController : Controller
    {
        // GET: DCForRMTest
        public ActionResult DCForRMTest()
        {
            return View();
        }
        public ActionResult GinDetails()
        {
            return View();
        }
        [HttpPost]
        public JsonResult DCRMFetchDatafromGIN(string ginid)
        {
            try
            {
                string sqlstr = "uspDeliverychallanForRMTest";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "selectpodetails");
                cmd.Parameters.AddWithValue("@GINID", ginid.Trim());
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
        public JsonResult DCRMFetchDatafromDCRMTID(string GINID)
        {
            try
            {
                string sqlstr = "uspDeliverychallanForRMTest";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "selectRMTestdetails");
                cmd.Parameters.AddWithValue("@GINID", Convert.ToInt32(GINID));
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
        public JsonResult BindGinDeatails(string id)
        {
            try
            {
                string sqlstr = "uspBindGindetailsforrmtest";


                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                //cmd.Parameters.AddWithValue("@Action", "GeneratePOItemselect");
               
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                List<Dictionary<string, object>> allvpodetails = GetTableRows(dt);
                return Json(allvpodetails, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult InsertDCRMFetchDatafromGIN( string ginid, string suppliergrade, string heatno, string chemicaltestpcs, string chemicalpara, string micro,
            string macro, string inclusion, string grainsize, string mechnooftestpcs, string impactmin, string impactmax, string utsmin, string utsmax,
            string ysmin, string ysmax, string reductionmin, string reductionmax, string charpymax, string charpymin, string jominaymin, string jominymax, string remarks, string mechnooftestpcskg, string chemicaltestpcskg, string grade, string section, string heatCode, string qtyTonne)
        {
            try
            {
                string sqlstr = "uspDeliverychallanForRMTest";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "Insert");
                cmd.Parameters.AddWithValue("@GINID", ginid.Trim());
                cmd.Parameters.AddWithValue("@SupplierGrade", suppliergrade.Trim());
                cmd.Parameters.AddWithValue("@HeatNumber", heatno.Trim());
                cmd.Parameters.AddWithValue("@ChemicalNoofTestPcs", chemicaltestpcs.Trim());
                cmd.Parameters.AddWithValue("@ChemicalNoofTestPcsKg", Convert.ToDecimal(chemicaltestpcskg.ToString()));
                cmd.Parameters.AddWithValue("@ChemicalParameter", chemicalpara.Trim());
                cmd.Parameters.AddWithValue("@Micro", micro.Trim());
                cmd.Parameters.AddWithValue("@Macro", macro.Trim());
                cmd.Parameters.AddWithValue("@Inclusion", inclusion.Trim());
                cmd.Parameters.AddWithValue("@GrainSize", grainsize.Trim());
                cmd.Parameters.AddWithValue("@MechanicalNoofTestPcs", mechnooftestpcs.Trim());
                cmd.Parameters.AddWithValue("@MechanicalNoofTestPcsKg", Convert.ToDecimal(mechnooftestpcskg.ToString()));
                cmd.Parameters.AddWithValue("@ImpactMin", impactmin.Trim());
                cmd.Parameters.AddWithValue("@ImpactMax", impactmax.Trim());
                cmd.Parameters.AddWithValue("@UtsMin", utsmin.Trim());
                cmd.Parameters.AddWithValue("@UtsMax", utsmax.Trim());
                cmd.Parameters.AddWithValue("@YSMin", ysmin.Trim());
                cmd.Parameters.AddWithValue("@YSMax", ysmax.Trim());
                cmd.Parameters.AddWithValue("@ReductionMin", reductionmin.Trim());
                cmd.Parameters.AddWithValue("@ReductionMax", reductionmax.Trim());
                cmd.Parameters.AddWithValue("@CharpyMin", charpymin.Trim());
                cmd.Parameters.AddWithValue("@CharpyMax", charpymax.Trim());
                cmd.Parameters.AddWithValue("@JominyMin", jominaymin.Trim());
                cmd.Parameters.AddWithValue("@JominyMax", jominymax.Trim());
                cmd.Parameters.AddWithValue("@Remarks", remarks.Trim());
                cmd.Parameters.AddWithValue("@grade", grade.Trim());
                cmd.Parameters.AddWithValue("@section", section.Trim());
                cmd.Parameters.AddWithValue("@heatCode", heatCode.Trim());
                cmd.Parameters.AddWithValue("@qtyTonne", Convert.ToDecimal(qtyTonne.ToString()));
                cmd.ExecuteNonQuery();
                connection.Close();
                
                return Json("Insert", JsonRequestBehavior.AllowGet);
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