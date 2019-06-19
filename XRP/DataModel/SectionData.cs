using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using XRP.Global;
using XRP.Models;

namespace XRP.DataModel
{
    public class SectionData
    {      
        #region Get All Section

        public List<ssmtbl_CuutingCalculationModel> GetAllSection()
        {
            List<ssmtbl_CuutingCalculationModel> objSecList = new List<ssmtbl_CuutingCalculationModel>();
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_SectionMaster";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "Select");
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_CuutingCalculationModel objtemp = new ssmtbl_CuutingCalculationModel();
                    objtemp.id = Convert.ToInt64(sdr["id"].ToString());  
                    objtemp.xsection = sdr["XSection"].ToString();                    
                    objSecList.Add(objtemp);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objSecList;
        }

        #endregion
      
        #region Insert Section
        public string InsertSection(string section)
        {
            string result = "Error Inserting Section";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_SectionMaster";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@gm", section.Trim());
                cmd.Parameters.AddWithValue("@Action", "Insert");
                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Section Inserted Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }

        #endregion
        #region Update Section
        public string UpdateSection(string srno, string section)
        {
            string result = "Error Updating Section";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_SectionMaster";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@gm", section.Trim());
                cmd.Parameters.AddWithValue("@srno", Convert.ToInt32(srno));
                cmd.Parameters.AddWithValue("@Action", "Update");
                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Section Updated Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }
        #endregion
    }
}