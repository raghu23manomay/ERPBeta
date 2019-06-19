using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using XRP.Global;
using XRP.Models;

namespace XRP.DataModel
{
    public class FeasibilityData
    {

        #region Insert Feasibility

        public Tuple<long, string> InsertFeasibility(ssmtbl_FeasibilityModel1 objFea)
        {
            string result = "Error Creating Feasibility";
            int id = 0;
            try
            {
                /////////////
                //var connection1 = gConnection.Connection();

                //string sqlstr1 = "InsertPreferedVendor";
                //SqlCommand cmd1 = new SqlCommand(sqlstr1, GlobalVariables.gConn);
                //cmd1.CommandType = System.Data.CommandType.StoredProcedure;
             
                //cmd1.Parameters.AddWithValue("@Name", objFea.MillTC.Trim());
                

                //cmd1.Parameters.Add("@id", SqlDbType.Int).Direction = ParameterDirection.Output;
                //connection1.Open();
                //cmd1.ExecuteNonQuery();
                //string prefid = cmd1.Parameters["@id"].Value.ToString();
                //int preferedvendorid = Convert.ToInt32(prefid);
                //connection1.Close();
                ////////////
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Insert_Feasibility";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@InquiryNo", objFea.InquiryNo);
                cmd.Parameters.AddWithValue("@FeasibilityConditionSupply", objFea.FeasibilityConditionSupply);
                cmd.Parameters.AddWithValue("@FeasibilityNatureofWork", objFea.FeasibilityNatureofWork);
                cmd.Parameters.AddWithValue("@FeasibilityTypeofJob", objFea.FeasibilityTypeofJob);
                cmd.Parameters.AddWithValue("@FeasibilityHammerRequired", objFea.FeasibilityHammerRequired);
                cmd.Parameters.AddWithValue("@FeasibilityToolingRequirement", objFea.FeasibilityToolingRequirement);
                cmd.Parameters.AddWithValue("@fisdiavalue", objFea.fisdiavalue);
                cmd.Parameters.AddWithValue("@fisdialength", objFea.fisdialength);
                cmd.Parameters.AddWithValue("@fisdiablocklength", objFea.fisdiablocklength);
                cmd.Parameters.AddWithValue("@fisdiablockwidth", objFea.fisdiablockwidth);
                cmd.Parameters.AddWithValue("@fisdiablockheight", objFea.fisdiablockheight);
                cmd.Parameters.AddWithValue("@MillTC", objFea.MillTC);
                cmd.Parameters.AddWithValue("@DieDescription", objFea.DieDescription);
                cmd.Parameters.AddWithValue("@grossweight", objFea.grossweight);
                cmd.Parameters.AddWithValue("@cutweight", objFea.cutweight);
                cmd.Parameters.AddWithValue("@Section", objFea.Section); // Sharad
                cmd.Parameters.AddWithValue("@cutlength", objFea.cutlength);
                cmd.Parameters.AddWithValue("@netweight", objFea.netweight);
                cmd.Parameters.AddWithValue("@materialweights", objFea.materialweights);
                cmd.Parameters.AddWithValue("@FeasibilityLubricantPreferred", objFea.FeasibilityLubricantPreferred);
                cmd.Parameters.AddWithValue("@FeasibilityMaterialGrade", objFea.FeasibilityMaterialGrade);
                cmd.Parameters.AddWithValue("@FeasibilityHeattreatment", objFea.FeasibilityHeattreatment);
                cmd.Parameters.AddWithValue("@Feasibilitystandardapplicable", objFea.Feasibilitystandardapplicable);
                cmd.Parameters.AddWithValue("@hardnessmin", objFea.hardnessmin);
                cmd.Parameters.AddWithValue("@hardnessmax", objFea.hardnessmax);
                cmd.Parameters.AddWithValue("@hardnessunits", objFea.hardnessunits);
                cmd.Parameters.AddWithValue("@micro", objFea.micro);
                cmd.Parameters.AddWithValue("@Status", InquiryStatus.FeasibilityDone);
                cmd.Parameters.AddWithValue("@FeasibilityStatutoryandregulatoryrequirement", objFea.FeasibilityStatutoryandregulatoryrequirement);
                cmd.Parameters.AddWithValue("@FeasibilityRemark", objFea.FeasibilityRemark);
                cmd.Parameters.AddWithValue("@feasibilitycreatedby", HttpContext.Current.Session["userid"].ToString());
                //cmd.Parameters.AddWithValue("@feasibilitycreatedby", Session["UserId"].ToString());
                cmd.Parameters.AddWithValue("@feasibilitycreateddate", StandardDateTime.GetDateTime());
                cmd.Parameters.AddWithValue("@fistotal", objFea.fisdiatotal);
                cmd.Parameters.AddWithValue("@PreferedVendorID", 0);
                
                cmd.Parameters.Add("@Feasid", SqlDbType.Int);
                cmd.Parameters["@Feasid"].Direction = ParameterDirection.Output;


                //DataTable dataTable1 = new DataTable("SampleDataType");            
                //dataTable1.Columns.Add("Operations_Involved", typeof(string));              
                //foreach (var data in objFea.ssmtbl_Feasibility_OperationsInvolvedModel)
                //{
                //    if (data.Operations_Involved_Select == true)
                //    {                        
                //        dataTable1.Rows.Add(data.Operations_Involved);
                //    }
                //}
                //var pList = new SqlParameter("@ssmtbl_Feasibility_OperationsInvolved_", SqlDbType.Structured);
                //pList.TypeName = "dbo.ssmtbl_Feasibility_OperationsInvolved";
                //pList.Value = dataTable1;
                //cmd.Parameters.Add(pList);


                //DataTable dataTable2 = new DataTable("SampleDataType1");           
                //dataTable2.Columns.Add("Raw_Material_Test", typeof(string));

                //foreach (var data in objFea.ssmtbl_Feasibility_RawMaterialTestModel)
                //{
                //    if (data.Raw_Material_Test_Select == true)
                //    {
                //        dataTable2.Rows.Add(data.Raw_Material_Test);
                //    }
                //}
                //var pList1 = new SqlParameter("@ssmtbl_Feasibility_RawMaterialTest_", SqlDbType.Structured);
                //pList1.TypeName = "dbo.ssmtbl_Feasibility_RawMaterialTest";
                //pList1.Value = dataTable2;
                //cmd.Parameters.Add(pList1);



                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    id = Convert.ToInt32(sdr[0].ToString());
                }
                connection.Close();

                result = "Feasibility Created Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return new Tuple<long, string>(id, result);
        }

        #endregion

        #region Update Feasibility

        public Tuple<long, string> UpdateFeasibility(ssmtbl_FeasibilityModel1 objFea)
        {
            string result = "Error Updating Feasibility!";
            long id = 0;
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Update_Feasibility";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@InquiryNo", objFea.InquiryNo);
                cmd.Parameters.AddWithValue("@FeasibilityId", objFea.FeasibilityId);
                cmd.Parameters.AddWithValue("@FeasibilityConditionSupply", objFea.FeasibilityConditionSupply);
                cmd.Parameters.AddWithValue("@FeasibilityNatureofWork", objFea.FeasibilityNatureofWork);
                cmd.Parameters.AddWithValue("@FeasibilityTypeofJob", objFea.FeasibilityTypeofJob);
                cmd.Parameters.AddWithValue("@FeasibilityHammerRequired", objFea.FeasibilityHammerRequired);
                cmd.Parameters.AddWithValue("@FeasibilityToolingRequirement", objFea.FeasibilityToolingRequirement);
                cmd.Parameters.AddWithValue("@fisdiavalue", objFea.fisdiavalue);
                cmd.Parameters.AddWithValue("@fisdialength", objFea.fisdialength);
                cmd.Parameters.AddWithValue("@fisdiablocklength", objFea.fisdiablocklength);
                cmd.Parameters.AddWithValue("@fisdiablockwidth", objFea.fisdiablockwidth);
                cmd.Parameters.AddWithValue("@fisdiablockheight", objFea.fisdiablockheight);
                cmd.Parameters.AddWithValue("@MillTC", objFea.MillTC);
                cmd.Parameters.AddWithValue("@Section", objFea.Section); // Sharad
                cmd.Parameters.AddWithValue("@DieDescription", objFea.DieDescription);
                cmd.Parameters.AddWithValue("@grossweight", objFea.grossweight);
                cmd.Parameters.AddWithValue("@cutweight", objFea.cutweight);
                cmd.Parameters.AddWithValue("@cutlength", objFea.cutlength);
                cmd.Parameters.AddWithValue("@netweight", objFea.netweight);
                cmd.Parameters.AddWithValue("@materialweights", objFea.materialweights);
                cmd.Parameters.AddWithValue("@FeasibilityLubricantPreferred", objFea.FeasibilityLubricantPreferred);
                cmd.Parameters.AddWithValue("@FeasibilityMaterialGrade", objFea.FeasibilityMaterialGrade);
                cmd.Parameters.AddWithValue("@FeasibilityHeattreatment", objFea.FeasibilityHeattreatment);
                cmd.Parameters.AddWithValue("@Feasibilitystandardapplicable", objFea.Feasibilitystandardapplicable);
                cmd.Parameters.AddWithValue("@hardnessmin", objFea.hardnessmin);
                cmd.Parameters.AddWithValue("@hardnessmax", objFea.hardnessmax);
                cmd.Parameters.AddWithValue("@hardnessunits", objFea.hardnessunits);
                cmd.Parameters.AddWithValue("@micro", objFea.micro);
                cmd.Parameters.AddWithValue("@FeasibilityStatutoryandregulatoryrequirement", objFea.FeasibilityStatutoryandregulatoryrequirement);
                cmd.Parameters.AddWithValue("@FeasibilityRemark", objFea.FeasibilityRemark);
                cmd.Parameters.AddWithValue("@feasibilityupdatedby", HttpContext.Current.Session["userid"].ToString());                
                cmd.Parameters.AddWithValue("@feasibilityupdateddate", StandardDateTime.GetDateTime());
                cmd.Parameters.AddWithValue("@Status", InquiryStatus.FeasibilityDone);
                //cmd.Parameters.AddWithValue("@Status",objFea.fisdiatotal);


                //DataTable dataTable1 = new DataTable("SampleDataType");
                //dataTable1.Columns.Add("Operations_Involved", typeof(string));
                //foreach (var data in objFea.ssmtbl_Feasibility_OperationsInvolvedModel)
                //{
                //    if (data.Operations_Involved_Select == true)
                //    {
                //        dataTable1.Rows.Add(data.Operations_Involved);
                //    }
                //}
                //var pList = new SqlParameter("@ssmtbl_Feasibility_OperationsInvolved_", SqlDbType.Structured);
                //pList.TypeName = "dbo.ssmtbl_Feasibility_OperationsInvolved";
                //pList.Value = dataTable1;
                //cmd.Parameters.Add(pList);


                //DataTable dataTable2 = new DataTable("SampleDataType1");
                //dataTable2.Columns.Add("Raw_Material_Test", typeof(string));
                //foreach (var data in objFea.ssmtbl_Feasibility_RawMaterialTestModel)
                //{
                //    if (data.Raw_Material_Test_Select == true)
                //    {
                //        dataTable2.Rows.Add(data.Raw_Material_Test);
                //    }
                //}
                //var pList1 = new SqlParameter("@ssmtbl_Feasibility_RawMaterialTest_", SqlDbType.Structured);
                //pList1.TypeName = "dbo.ssmtbl_Feasibility_RawMaterialTest";
                //pList1.Value = dataTable2;
                //cmd.Parameters.Add(pList1);

                SqlDataReader sdr = cmd.ExecuteReader();

                connection.Close();
                id = objFea.FeasibilityId;
                result = "Feasibility Updated Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return new Tuple<long, string>(id, result);
        }

       


        #endregion


        #region Get One Feasibility Using Parameter InquiryId

        public ssmtbl_FeasibilityModel GetOneFeasibility(int InquiryNo)
        {
            ssmtbl_FeasibilityModel objFea = new ssmtbl_FeasibilityModel();
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspFeasiblity";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;               
                cmd.Parameters.AddWithValue("@Action", "GetOneFeasiblity");
                cmd.Parameters.AddWithValue("@InquiryNo", InquiryNo);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objFea.FeasibilityId = Convert.ToInt32(sdr["FeasibilityId"].ToString());
                    objFea.InquiryNo = Convert.ToInt32(sdr["InquiryNo"].ToString());
                    objFea.FeasibilityConditionSupply = Convert.ToInt32(sdr["FeasibilityConditionSupply"].ToString());
                    objFea.FeasibilityNatureofWork = Convert.ToInt32(sdr["FeasibilityNatureofWork"].ToString());
                    objFea.FeasibilityTypeofJob = Convert.ToInt32(sdr["FeasibilityTypeofJob"].ToString());
                    objFea.FeasibilityHammerRequired = Convert.ToInt32(sdr["FeasibilityHammerRequired"].ToString());
                    objFea.FeasibilityToolingRequirement = sdr["FeasibilityToolingRequirement"].ToString();
                    objFea.fisdiavalue = Convert.ToInt32(sdr["fisdiavalue"].ToString());
                    objFea.fisdialength = Convert.ToInt32(sdr["fisdialength"].ToString());
                    objFea.fisdiablocklength = Convert.ToInt32(sdr["fisdiablocklength"].ToString());
                    objFea.fisdiablockwidth = Convert.ToInt32(sdr["fisdiablockwidth"].ToString());
                    objFea.fisdiablockheight = Convert.ToInt32(sdr["fisdiablockheight"].ToString());
                    objFea.MillTC = sdr["MillTC"].ToString();
                    objFea.DieDescription = sdr["DieDescription"].ToString();
                    objFea.grossweight = Convert.ToDecimal(sdr["grossweight"].ToString());
                    objFea.cutweight = Convert.ToDecimal(sdr["cutweight"].ToString());
                    objFea.cutlength = Convert.ToDecimal(sdr["cutlength"].ToString());
                    objFea.netweight = Convert.ToDecimal(sdr["netweight"].ToString());
                    objFea.materialweights = Convert.ToDecimal(sdr["materialweights"].ToString());
                    objFea.FeasibilityLubricantPreferred = Convert.ToInt32(sdr["FeasibilityLubricantPreferred"].ToString());
                    objFea.FeasibilityMaterialGrade = Convert.ToInt32(sdr["FeasibilityMaterialGrade"].ToString());
                    objFea.FeasibilityHeattreatment = Convert.ToInt32(sdr["FeasibilityHeattreatment"].ToString());
                    objFea.Feasibilitystandardapplicable = Convert.ToInt32(sdr["Feasibilitystandardapplicable"].ToString());
                    objFea.hardnessmin = sdr["hardnessmin"].ToString();
                    objFea.hardnessmax = sdr["hardnessmax"].ToString();
                    objFea.hardnessunits = sdr["hardnessunits"].ToString();
                    objFea.micro = sdr["micro"].ToString();
                    objFea.FeasibilityStatutoryandregulatoryrequirement = sdr["FeasibilityStatutoryandregulatoryrequirement"].ToString();
                    objFea.FeasibilityRemark = sdr["FeasibilityRemark"].ToString();
                    objFea.Section = Convert.ToInt32(sdr["Section"].ToString());
                    objFea.SectionName = sdr["SectionName"].ToString();
                    objFea.fisdiatotal = Convert.ToDecimal(sdr["fistotal"]);
                }
                sdr.Close();




                List<ssmtbl_Feasibility_RawMaterialTestModel> objListRM = new List<ssmtbl_Feasibility_RawMaterialTestModel>();
                sqlstr = "select Isnull(id,0) as id,Isnull(type,'') as type, Isnull(F.auto_id,0) as auto_id from LKP_RawMaterialTestFis RM "
                    + " Left Join ssmtbl_Feasibility_RawMaterialTest F  On RM.id=F.Raw_Material_Test and FeasibilityId=@FeasibilityId";
                cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@FeasibilityId", objFea.FeasibilityId);
                sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_Feasibility_RawMaterialTestModel tempobj = new ssmtbl_Feasibility_RawMaterialTestModel();
                    tempobj.auto_id = Convert.ToInt32(sdr["auto_id"].ToString());
                    if (tempobj.auto_id > 0)
                    {
                        tempobj.Raw_Material_Test_Select = true;
                    }
                    else
                    {
                        tempobj.Raw_Material_Test_Select = false;
                    }
                    tempobj.Raw_Material_Test = Convert.ToInt32(sdr["id"].ToString());
                    tempobj.Raw_Material_Test_Text = sdr["type"].ToString();
                    objListRM.Add(tempobj);
                }
                sdr.Close();
                objFea.ssmtbl_Feasibility_RawMaterialTestModel = objListRM;

                List<ssmtbl_Feasibility_OperationsInvolvedModel> objListOI = new List<ssmtbl_Feasibility_OperationsInvolvedModel>();
                sqlstr = "select Isnull(ID,0) As ID, Isnull(operationinvolvedname,'') As Options, Isnull(F.auto_id,0) as auto_id from [LKP_Quotationoperationinvolved] OI "
                + " Left Join ssmtbl_Feasibility_OperationsInvolved F On OI.ID=F.Operations_Involved And F.FeasibilityId=@FeasibilityId  "
                + " where Type='Quotation' order by F.auto_id";
                cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@FeasibilityId", objFea.FeasibilityId);
                sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_Feasibility_OperationsInvolvedModel tempobj = new ssmtbl_Feasibility_OperationsInvolvedModel();
                    tempobj.auto_id = Convert.ToInt32(sdr["auto_id"].ToString());
                    if (tempobj.auto_id > 0)
                    {
                        tempobj.Operations_Involved_Select = true;
                    }
                    else
                    {
                        tempobj.Operations_Involved_Select = false;
                    }
                    tempobj.Operations_Involved = Convert.ToInt32(sdr["ID"].ToString());
                    tempobj.Operations_Involved_Text = sdr["Options"].ToString();
                    objListOI.Add(tempobj);
                }
                objFea.ssmtbl_Feasibility_OperationsInvolvedModel = objListOI;

                sdr.Close();

                List<ssmtbl_Feasibility_MultiVendorModel> objListVend = new List<ssmtbl_Feasibility_MultiVendorModel>();
                string sqlstr1 = "uspInsertPrefferedVendor";
                SqlCommand cmd1 = new SqlCommand(sqlstr1, GlobalVariables.gConn);
                cmd1.CommandType = System.Data.CommandType.StoredProcedure;
                cmd1.Parameters.AddWithValue("@Action", "Select");
                cmd1.Parameters.AddWithValue("@FeasiblityId", objFea.FeasibilityId);
                SqlDataReader sdr1 = cmd1.ExecuteReader();
                while (sdr1.Read())
                {
                    ssmtbl_Feasibility_MultiVendorModel tempobj = new ssmtbl_Feasibility_MultiVendorModel();
                    tempobj.auto_id = Convert.ToInt32(sdr1["Id"].ToString());
                    if (tempobj.auto_id > 0)
                    {
                        tempobj.VendorNameSelect = true;
                    }
                    else
                    {
                        tempobj.VendorNameSelect = false;
                    }
                    tempobj.VendorID = Convert.ToInt32(sdr1["ID"].ToString());
                    tempobj.VendorName = sdr1["Name"].ToString();
                    objListVend.Add(tempobj);
                }
                sdr1.Close();
                objFea.ssmtbl_Feasibility_MultiVendorModel = objListVend;

                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objFea;
        }

        #endregion
        public string opsInvolvedgetsequentially(int FeasibilityId)
        {
            //int[] objList = [];
            try
            {
                string sqlstr = "uspMultislectTag";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "FisibilityOperationInvolved");
                cmd.Parameters.AddWithValue("@FeasibilityId", FeasibilityId);
                string getValue = cmd.ExecuteScalar().ToString();

                connection.Close();
                return getValue;

            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return null;
        }
        
             public string opsInvolvedIDgetsequentially(int FeasibilityId)
        {
            //int[] objList = [];
            try
            {
                string sqlstr = "uspMultislectTag";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "FisibilityOperationIDInvolved");
                cmd.Parameters.AddWithValue("@FeasibilityId", FeasibilityId);
                string getValue = cmd.ExecuteScalar().ToString();

                connection.Close();
                return getValue;

            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return null;
        }
        
               public string FisibilityRawmaterialtestIDsequentially(int FeasibilityId)
        {
            //int[] objList = [];
            try
            {
                string sqlstr = "uspMultislectTag";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "FisibilityRawmaterialIDtest");
                cmd.Parameters.AddWithValue("@FeasibilityId", FeasibilityId);
                string getValue = cmd.ExecuteScalar().ToString();

                connection.Close();
                return getValue;

            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return null;
        }
        public string FisibilityRawmaterialtestsequentially(int FeasibilityId)
        {
            //int[] objList = [];
            try
            {
                string sqlstr = "uspMultislectTag";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "FisibilityRawmaterialtest");
                cmd.Parameters.AddWithValue("@FeasibilityId", FeasibilityId);
                string getValue = cmd.ExecuteScalar().ToString();

                connection.Close();
                return getValue;

            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return null;
        }
        public string Fisibilityprferedvendor(int FeasibilityId)
        {
            //int[] objList = [];
            try
            {
                string sqlstr = "uspMultislectTag";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "Fisibilityprferedvendor");
                cmd.Parameters.AddWithValue("@FeasibilityId", FeasibilityId);
                string getValue = cmd.ExecuteScalar().ToString();

                connection.Close();
                return getValue;

            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return null;
        }
        #region Get Operations Involved
        public int[] GetOperationInvolvedByFeasId(int FeasibilityId)
        {
            //int[] objList = [];
            try
            {
                string sqlstr = "select  FeasOps.Operations_Involved, LkpOpsInvovled.operationinvolvedname, LkpOpsInvovled.seqforfeasoperationinvolved "
                    + " from ssmtbl_Feasibility Feas join ssmtbl_Feasibility_OperationsInvolved FeasOps on Feas.FeasibilityId = FeasOps.FeasibilityId "
                    + " join LKP_Quotationoperationinvolved LkpOpsInvovled on FeasOps.Operations_Involved = LkpOpsInvovled.id "
                    + " where type = 'Quotation'and Feas.FeasibilityId = @FeasibilityId order by  FeasOps.auto_id";

                var connection = gConnection.Connection();
                connection.Open();

                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@FeasibilityId", FeasibilityId);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DataRow[] dr = new DataRow[dt.Rows.Count];
                dt.Rows.CopyTo(dr, 0);
                int[] objList = Array.ConvertAll(dr, new Converter<DataRow, int>(DataRowToDoubleOPS));
                connection.Close();
                return objList;

            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return null;
        }
        public static int DataRowToDoubleOPS(DataRow dr)
        {
            return Convert.ToInt32(dr["seqforfeasoperationinvolved"].ToString());
        }
        //public List<Dictionary<string, object>> GetOperationInvolvedByFeasId(int FeasibilityId)
        //{
        //    List<Dictionary<string, object>> objList = new List<Dictionary<string, object>>();
        //    try
        //    {

        //        string sqlstr = "select  FeasOps.Operations_Involved, LkpOpsInvovled.operationinvolvedname, LkpOpsInvovled.seqforfeasoperationinvolved "
        //            + " from ssmtbl_Feasibility Feas join ssmtbl_Feasibility_OperationsInvolved FeasOps on Feas.FeasibilityId = FeasOps.FeasibilityId "
        //            + " join LKP_Quotationoperationinvolved LkpOpsInvovled on FeasOps.Operations_Involved = LkpOpsInvovled.id "
        //            + " where type = 'Quotation'and Feas.FeasibilityId = @FeasibilityId order by seqforfeasoperationinvolved ";
        //        // string sqlstr = "select Isnull(ID,0) As ID,Isnull(operationinvolvedname,'') As operationinvolvedname ,Isnull(seqforfeasoperationinvolved,'') As seqforfeasoperationinvolved from [LKP_Quotationoperationinvolved] where type='Quotation'order by seqforfeasoperationinvolved";

        //        var connection = gConnection.Connection();
        //        connection.Open();

        //        SqlCommand cmd = new SqlCommand(sqlstr, connection);
        //        cmd.Parameters.AddWithValue("@FeasibilityId", FeasibilityId);
        //        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //        DataTable dt = new DataTable();
        //        da.Fill(dt);
        //        connection.Close();
        //        objList = GetTableRows(dt);

        //    }
        //    catch (Exception ex)
        //    {
        //        ErrorHandlerClass.LogError(ex);
        //    }

        //    return objList;
        //}

        #endregion

        #region Get RawMaterial Test 
        public int[] GetFeasibilityRawMaterialByFeasId(int FeasibilityId)
        {
            //int[] objList = [];
            try
            {
                string sqlstr = " select  FeasRaw.Raw_Material_Test, LkpRawTestFis.type "
                     + " from ssmtbl_Feasibility Feas join ssmtbl_Feasibility_RawMaterialTest FeasRaw on Feas.FeasibilityId = FeasRaw.FeasibilityId "
                    + " join LKP_RawMaterialTestFis LkpRawTestFis on FeasRaw.Raw_Material_Test = LkpRawTestFis.id "
                      + " where Feas.FeasibilityId = @FeasibilityId ";

                var connection = gConnection.Connection();
                connection.Open();

                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@FeasibilityId", FeasibilityId);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DataRow[] dr = new DataRow[dt.Rows.Count];
                dt.Rows.CopyTo(dr, 0);
                int[] objList = Array.ConvertAll(dr, new Converter<DataRow, int>(DataRowToDoubleRM));
                connection.Close();
                return objList;

            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return null;
        }

        public static int DataRowToDoubleRM(DataRow dr)
        {
            return Convert.ToInt32(dr["Raw_Material_Test"].ToString());
        }
        //public List<ssmtbl_Feasibility_RawMaterialTestModel> GetFeasibilityRawMaterialByFeasId(int FeasibilityId)
        //{
        //    List<ssmtbl_Feasibility_RawMaterialTestModel> objList = new List<ssmtbl_Feasibility_RawMaterialTestModel>();
        //    try
        //    {

        //        string sqlstr = " select  FeasRaw.Raw_Material_Test, LkpRawTestFis.type "
        //             + " from ssmtbl_Feasibility Feas join ssmtbl_Feasibility_RawMaterialTest FeasRaw on Feas.FeasibilityId = FeasRaw.FeasibilityId "
        //            +" join LKP_RawMaterialTestFis LkpRawTestFis on FeasRaw.Raw_Material_Test = LkpRawTestFis.id "
        //              + " where Feas.FeasibilityId = @FeasibilityId ";

        //        var connection = gConnection.Connection();
        //        connection.Open();

        //        SqlCommand cmd = new SqlCommand(sqlstr, connection);
        //        cmd.Parameters.AddWithValue("@FeasibilityId", FeasibilityId);
        //        SqlDataReader sdr = cmd.ExecuteReader();
        //        while (sdr.Read())
        //        {
        //            objList.Add(new ssmtbl_Feasibility_RawMaterialTestModel
        //            {
        //                Raw_Material_Test = Convert.ToInt32(sdr["Raw_Material_Test"].ToString().Trim()),
        //                Raw_Material_Test_Text = sdr["type"].ToString().Trim()
        //            });
        //        }
        //        connection.Close();
        //    }
        //    catch (Exception ex)
        //    {
        //        ErrorHandlerClass.LogError(ex);
        //    }

        //    return objList;
        //}
        #endregion

        #region Get Preffered Vendor 

        //var connection = gConnection.Connection();
        //connection.Open();
        //    string sqlstr = "VendorPOType";
        //SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
        //cmd.CommandType = System.Data.CommandType.StoredProcedure;
        //    cmd.Parameters.AddWithValue("@Action", "select");
        //    cmd.Parameters.AddWithValue("@VendorId", id.Trim());
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //DataTable dt = new DataTable();
        //da.Fill(dt);
        //    DataRow[] dr = new DataRow[dt.Rows.Count];
        //dt.Rows.CopyTo(dr, 0);
        //    int[] vtypeid = Array.ConvertAll(dr, new Converter<DataRow, int>(DataRowToDouble));
        //connection.Close();
        //    //

        //    //int[] proinfo = new int [] { 1, 2 };
        //    ViewData["vtype"] = vtypeid;

        public int[] GetRecommendedVendorByFeasId(int FeasibilityId)
        {
            //int[] objList = [];
            try
            {

                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr1 = "uspInsertPrefferedVendor";
                SqlCommand cmd1 = new SqlCommand(sqlstr1, GlobalVariables.gConn);
                cmd1.CommandType = System.Data.CommandType.StoredProcedure;
                cmd1.Parameters.AddWithValue("@Action", "Select");
                cmd1.Parameters.AddWithValue("@FeasiblityId", FeasibilityId);
                SqlDataAdapter da = new SqlDataAdapter(cmd1);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DataRow[] dr = new DataRow[dt.Rows.Count];
                dt.Rows.CopyTo(dr, 0);
                int[] objList = Array.ConvertAll(dr, new Converter<DataRow, int>(DataRowToDouble));
                connection.Close();
                return objList;

            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return null;
        }

        public static int DataRowToDouble(DataRow dr)
        {
            return Convert.ToInt32(dr["VSrno"].ToString());
        }
        //public List<Dictionary<string, object>> GetRecommendedVendorByFeasId(int FeasibilityId)
        //{
        //    List<Dictionary<string, object>> objList = new List<Dictionary<string, object>>();
        //    try
        //    {

        //        var connection = gConnection.Connection();
        //        connection.Open();
        //        string sqlstr1 = "uspInsertPrefferedVendor";
        //        SqlCommand cmd1 = new SqlCommand(sqlstr1, GlobalVariables.gConn);
        //        cmd1.CommandType = System.Data.CommandType.StoredProcedure;
        //        cmd1.Parameters.AddWithValue("@Action", "Select");
        //        cmd1.Parameters.AddWithValue("@FeasiblityId", FeasibilityId);
        //        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        //        DataTable dt = new DataTable();
        //        da.Fill(dt);
        //        connection.Close();
        //         objList = GetTableRows(dt);

        //    }
        //    catch (Exception ex)
        //    {
        //        ErrorHandlerClass.LogError(ex);
        //    }

        //    return objList;
        //}

        #endregion
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
        #region Insert Operations Involved

        public string InsertFeasOperationsInvolved(int feasibilityId, int operations_Involved)
        {
            string result = "";
            try
            {

                string sqlstr = "Insert Into ssmtbl_Feasibility_OperationsInvolved ( FeasibilityId , Operations_Involved) "
                   + " values (@FeasibilityNo, @Operations_Involved)";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@FeasibilityNo", feasibilityId);
                cmd.Parameters.AddWithValue("@Operations_Involved", operations_Involved);
                SqlDataReader sdr = cmd.ExecuteReader();
                connection.Close();
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }
        #endregion

        #region Insert RawMaterial Test 
        public string InsertRawMaterialTest(int feasibilityId, int Raw_Material_Test)
        {
            string result = "";
            try
            {

                string sqlstr = "Insert Into ssmtbl_Feasibility_RawMaterialTest( FeasibilityId , Raw_Material_Test) "
                    + " values(@FeasibilityNo, @Raw_Material_Test)";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@FeasibilityNo", feasibilityId);
                cmd.Parameters.AddWithValue("@Raw_Material_Test", Raw_Material_Test);
                SqlDataReader sdr = cmd.ExecuteReader();
                connection.Close();
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }
        #endregion

        #region Insert Preffered Vendor 
        public string InsertPrefferedVendor(int feasibilityId, int vendorID, int auto_id)
        {
            string result = "";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspInsertPrefferedVendor";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "Insert");
                cmd.Parameters.AddWithValue("@FeasiblityId", feasibilityId);
                cmd.Parameters.AddWithValue("@VendorId", vendorID);
                cmd.Parameters.AddWithValue("@VSrno", auto_id);
                SqlDataReader sdr = cmd.ExecuteReader();
                connection.Close();
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }
        #endregion
        public string InsertPrefferedVendorList(string PrefVendorList,string FisibilityID)
        {
            string result = "";
            try
            {
                string[] strCommanSepArray = PrefVendorList.Split(',');
                foreach (var strCommanSepArrays in strCommanSepArray)
                {
                    string w = strCommanSepArrays;
                    if (w!="")
                    {
                        var connection = gConnection.Connection();
                        connection.Open();
                        string sqlstr = "uspInsertPrefferedVendor";
                        SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Action", "Insert");
                        cmd.Parameters.AddWithValue("@FeasiblityId", FisibilityID.Trim());
                        cmd.Parameters.AddWithValue("@PrefVendorName", w.Trim());
                        // cmd.Parameters.AddWithValue("@VendorId", vendorID);
                        // cmd.Parameters.AddWithValue("@VSrno", auto_id);
                        SqlDataReader sdr = cmd.ExecuteReader();
                        connection.Close();
                    }
                }
               
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }
    }
}
