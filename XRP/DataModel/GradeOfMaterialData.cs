using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using XRP.Global;
using XRP.Models;

namespace XRP.DataModel
{
    public class GradeOfMaterialData
    {
        public List<ssmtbl_LKP_ColorCodeModel> GetAllGradeOfMaterial()
        {
            List<ssmtbl_LKP_ColorCodeModel> objGOFList = new List<ssmtbl_LKP_ColorCodeModel>();
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Get_AllGradeOfMaterial";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "Select");
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_LKP_ColorCodeModel objtemp = new ssmtbl_LKP_ColorCodeModel();
                    objtemp.SrNo = Convert.ToInt32(sdr["SrNo"].ToString());
                    objtemp.Materialgrade = (sdr["Materialgrade"].ToString());
                    objtemp.Colorcode = (sdr["Colorcode"].ToString());                  
                    objGOFList.Add(objtemp);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objGOFList;
        }

        public string UpdateGradeOfMaterial(string srno, string gof, string colorcode)
        {
            string result = "Error Updating GradeOfMaterial";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Get_AllGradeOfMaterial";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@SrNo", srno);
                cmd.Parameters.AddWithValue("@GradeOfMaterial", gof);
                cmd.Parameters.AddWithValue("@ColorCode", colorcode);
                cmd.Parameters.AddWithValue("@Action", "Update");               
                cmd.ExecuteNonQuery();
                connection.Close();
                result = "GradeOfMaterial Updated Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }

        public string InsertGradeOfMaterial(string gof, string colorcode)
        {
            string result = "Error Inserting GradeOfMaterial";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Get_AllGradeOfMaterial";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;             
                cmd.Parameters.AddWithValue("@GradeOfMaterial", gof.Trim());
                cmd.Parameters.AddWithValue("@ColorCode", colorcode.Trim());
                cmd.Parameters.AddWithValue("@Action", "Insert");
                cmd.ExecuteNonQuery();
                connection.Close();
                result = "GradeOfMaterial Inserted Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }
    }
}