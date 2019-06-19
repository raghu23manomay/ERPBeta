using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using XRP.Models;

namespace XRP.Global
{
    public class GlobalFunction
    {
        public List<ssmtbl_Feasibility_RawMaterialTestModel> FeasibilityRawMaterial()
        {
            List<ssmtbl_Feasibility_RawMaterialTestModel> objList = new List<ssmtbl_Feasibility_RawMaterialTestModel>();
            try
            {

                string sqlstr = "select Isnull(id,0) as id,Isnull(type,'') as type from LKP_RawMaterialTestFis";

                var connection = gConnection.Connection();
                connection.Open();

                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objList.Add(new ssmtbl_Feasibility_RawMaterialTestModel
                    {
                        Raw_Material_Test = Convert.ToInt32(sdr["id"].ToString().Trim()),
                        Raw_Material_Test_Text = sdr["type"].ToString().Trim()
                    });
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }


        public List<ssmtbl_Feasibility_OperationsInvolvedModel> FeasibilityOperationsInvolved()
        {
            List<ssmtbl_Feasibility_OperationsInvolvedModel> objList = new List<ssmtbl_Feasibility_OperationsInvolvedModel>();
            try
            {

                //string sqlstr = "select Isnull(ID,0) As ID, Isnull(Options,'') As Options from LKP_Inquiry_Tb where Type='Operation involved' ";
                string sqlstr = "select Isnull(ID,0) As ID,Isnull(operationinvolvedname,'') As operationinvolvedname ,Isnull(seqforfeasoperationinvolved,'') As seqforfeasoperationinvolved from [LKP_Quotationoperationinvolved] where type='Quotation'order by seqforfeasoperationinvolved";

                var connection = gConnection.Connection();
                connection.Open();

                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objList.Add(new ssmtbl_Feasibility_OperationsInvolvedModel
                    {
                        Operations_Involved = Convert.ToInt32(sdr["ID"].ToString().Trim()),
                        Operations_Involved_Text = sdr["operationinvolvedname"].ToString().Trim()
                    });
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }

        public List<ssmtbl_Feasibility_MultiVendorModel> FeasibilityRMVendors()
        {
            List<ssmtbl_Feasibility_MultiVendorModel> objList = new List<ssmtbl_Feasibility_MultiVendorModel>();
            try
            {
                
                 var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspGetVendorByVType";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objList.Add(new ssmtbl_Feasibility_MultiVendorModel
                    {
                        VendorID = Convert.ToInt32(sdr["VendorID"].ToString().Trim()),
                        VendorName = sdr["VendorName"].ToString().Trim(),
                        auto_id= Convert.ToInt32(sdr["auto_id"].ToString().Trim())

                    });
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }
        public List<VendorTypeList> VendorTypeList()
        {
            List<VendorTypeList> objList = new List<VendorTypeList>();
            try
            {

                //string sqlstr = "select Isnull(ID,0) As ID, Isnull(Options,'') As Options from LKP_Inquiry_Tb where Type='Operation involved' ";
                string sqlstr = "select * from Lkp_VPOType order by Id";

                var connection = gConnection.Connection();
                connection.Open();

                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objList.Add(new VendorTypeList
                    {
                        Id = Convert.ToInt32(sdr["Id"].ToString().Trim()),
                        Type = sdr["Type"].ToString().Trim()
                    });
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
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


        public static List<ssmtbl_LKP_TermsAndConditionModel> GetLKP_QuotaionTermsAndCondition(long inqno)
        {
            List<ssmtbl_LKP_TermsAndConditionModel> objList = new List<ssmtbl_LKP_TermsAndConditionModel>();
            try
            {

                string sqlstr = "SELECT * FROM  ssmtbl_TermsNCondtion where InquiryNo=@InquiryNo";

                var connection = gConnection.Connection();
                connection.Open();

                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@InquiryNo", inqno);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objList.Add(new ssmtbl_LKP_TermsAndConditionModel
                    {
                        id = Convert.ToInt32(sdr["id"].ToString().Trim()),
                        description = sdr["TermsNConditionContent"].ToString().Trim(),
                        flag = Convert.ToBoolean(sdr["flag"].ToString())
                    });
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }
        public static List<ssmtbl_LKP_TermsAndConditionModel> GetLKP_VPOTermsAndCondition()
        {
            List<ssmtbl_LKP_TermsAndConditionModel> objList = new List<ssmtbl_LKP_TermsAndConditionModel>();
            try
            {

                string sqlstr = "SELECT * FROM  LKPVPOTermandCondition";

                var connection = gConnection.Connection();
                connection.Open();

                SqlCommand cmd = new SqlCommand(sqlstr, connection);
               
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objList.Add(new ssmtbl_LKP_TermsAndConditionModel
                    {
                        id = Convert.ToInt32(sdr["Id"].ToString().Trim()),
                        description = sdr["Termandcondition"].ToString().Trim(),
                        
                    });
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }
        public static List<ssmtbl_LKP_TermsAndConditionModel> GetLKP_VPOTermsAndConditionEdit(string vpono)
        {
            List<ssmtbl_LKP_TermsAndConditionModel> objList = new List<ssmtbl_LKP_TermsAndConditionModel>();
            try
            {

                string sqlstr = "SELECT * FROM  ssmtbl_VendorPurchaseOrderTermsNCondtion where po_no=@po_no";

                var connection = gConnection.Connection();
                connection.Open();

                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@po_no", vpono.Trim());
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objList.Add(new ssmtbl_LKP_TermsAndConditionModel
                    {
                        id = Convert.ToInt32(sdr["TermsNConditionID"].ToString().Trim()),
                        description = sdr["TermsNConditionContent"].ToString().Trim(),
                        flag=Convert.ToBoolean(sdr["flag"]),
                    });
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }
        public static List<ssmtbl_LKP_TermsAndConditionModel> GetSelectedQuotaionTermsAndCondition(long QuotationID)
        {
            List<ssmtbl_LKP_TermsAndConditionModel> objList = new List<ssmtbl_LKP_TermsAndConditionModel>();
            try
            {
                string sqlstr = "SELECT ssmtbl_TermsNCondtion.TermsNConditionContent, ssmtbl_TermsNCondtion.TermsNConditionID, ssmtbl_TermsNCondtion.QuotationID, "
                + " LKP_TermsAndCondition.id,LKP_TermsAndCondition.description"
                + " FROM LKP_TermsAndCondition LEFT OUTER JOIN"
                + " ssmtbl_TermsNCondtion ON LKP_TermsAndCondition.id = ssmtbl_TermsNCondtion.TermsNConditionID AND ssmtbl_TermsNCondtion.QuotationID = @QuotationID";

                var connection = gConnection.Connection();
                connection.Open();

                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@QuotationID", QuotationID);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_LKP_TermsAndConditionModel obj = new ssmtbl_LKP_TermsAndConditionModel();

                    obj.id = Convert.ToInt32(sdr["id"].ToString().Trim());


                    if (sdr["TermsNConditionID"].ToString() == sdr["id"].ToString())
                    {
                        obj.flag = true;
                        obj.description = sdr["TermsNConditionContent"].ToString().Trim();
                    }
                    else
                    {
                        obj.description = sdr["description"].ToString().Trim();
                    }
                    objList.Add(obj);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }
        


        
        public List<ssmtbl_GoodsInward_DocReceivedModel> GetGIDocReceivedList()
        {
            List<ssmtbl_GoodsInward_DocReceivedModel> objList = new List<ssmtbl_GoodsInward_DocReceivedModel>();

            objList.Add( new ssmtbl_GoodsInward_DocReceivedModel { 
                doc_id=1,
                doc_name="Delivery Challan"
            });
            objList.Add(new ssmtbl_GoodsInward_DocReceivedModel
            {
                doc_id = 2,
                doc_name = "Invoice"
            });
            objList.Add(new ssmtbl_GoodsInward_DocReceivedModel
            {
                doc_id = 3,
                doc_name = "Mill TC"
            });
            objList.Add(new ssmtbl_GoodsInward_DocReceivedModel
            {
                doc_id = 4,
                doc_name = "Weight Slip"
            });
           
            return objList;
        }




        public List<ssmtbl_GoodsInward_DocReceivedModel> GetGIDocSeletedReceivedList(string gin_number)
        {
            List<ssmtbl_GoodsInward_DocReceivedModel> selectedList = new List<ssmtbl_GoodsInward_DocReceivedModel>();
            List<ssmtbl_GoodsInward_DocReceivedModel> deafaultList = GetGIDocReceivedList();
            List<ssmtbl_GoodsInward_DocReceivedModel> objList = new List<ssmtbl_GoodsInward_DocReceivedModel>();

            string sqlstr = "ssmsp_GetGoodsInwardDocRecievedByID";
            var connection = gConnection.Connection();
            connection.Open();
            SqlCommand cmd = new SqlCommand(sqlstr, connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@gin_number", gin_number);
            SqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                ssmtbl_GoodsInward_DocReceivedModel obj = new ssmtbl_GoodsInward_DocReceivedModel();
                obj.gi_dr_auto_id = Convert.ToInt32(sdr["gi_dr_auto_id"]);
                obj.doc_id = Convert.ToInt32(sdr["doc_id"]);
                obj.gin_number = Convert.ToString(sdr["gin_number"]);
                obj.doc_name = Convert.ToString(sdr["doc_name"]);
                selectedList.Add(obj);
            }
            connection.Close();
            foreach (var item1 in deafaultList)
            {
                var obj = new ssmtbl_GoodsInward_DocReceivedModel();
                foreach (var item2 in selectedList)
                {
                    if (item1.doc_id == item2.doc_id)
                    {
                        obj.ischecked = true;
                        break;
                    }

                }
                obj.doc_id = item1.doc_id;
                obj.doc_name = item1.doc_name;
                objList.Add(obj);
            }

            return objList;
        }

    }

    public static class StandardDateTime
    {
        public static DateTime GetDateTime()
        {
            //DateTime serverTime = DateTime.Now; // gives you current Time in server timeZone
            //DateTime utcTime = serverTime.ToUniversalTime(); // convert it to Utc using timezone setting of server computer

            DateTime utcTime = DateTime.UtcNow;
            TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
            DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, tzi);

            return localTime;
        }

    }

}