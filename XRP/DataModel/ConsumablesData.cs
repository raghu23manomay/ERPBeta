using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Mvc;
using XRP.Global;
using XRP.Models;


namespace XRP.DataModel
{
    public class ConsumablesData
    {       
        #region Get All Consumables List

        public List<ssmtbl_ConsumableModel> GetAllConsumablesList()
        {
            List<ssmtbl_ConsumableModel> objConsumablesList = new List<ssmtbl_ConsumableModel>();
            try
            {
                string sqlstr = "ssmsp_Lkp_Consumables";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "select");
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_ConsumableModel objtemp = new ssmtbl_ConsumableModel();
                    objtemp.Code = sdr["Code"].ToString();
                    objtemp.Description = sdr["Description"].ToString();
                    objtemp.Specification = sdr["Specification"].ToString();
                    objtemp.Applicationcenter_CostCenter = (sdr["Applicationcenter_CostCenter"].ToString());
                    objtemp.MaxQunatity = float.Parse(sdr["MaxQunatity"].ToString());
                    var qty = float.Parse(sdr["MaxQunatity"].ToString());
                    //objtemp.MaxQunatity = (qty).toFixed(2);
                    // objtemp.MaxQunatity = qty == "" ? "0" : qty;
                    objtemp.StorageLevelMin = float.Parse(sdr["StorageLevelMin"].ToString());
                    objtemp.BalanceQunatity = float.Parse(sdr["BalanceQunatity"].ToString());
                    objtemp.Units = sdr["Units"].ToString();
                    objConsumablesList.Add(objtemp);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objConsumablesList;
        }

        #endregion

        #region Insert Consumables

        public string InsertConsumables(ssmtbl_ConsumableModel objConsumableMod)
        {
            string result = "Error Inserting Consumables";            
            try
            {              
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Lkp_Consumables";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Code", objConsumableMod.Code);
                cmd.Parameters.AddWithValue("@Description", objConsumableMod.Description);
                cmd.Parameters.AddWithValue("@Specification", objConsumableMod.Specification);
                cmd.Parameters.AddWithValue("@Applicationcenter_CostCenter", objConsumableMod.Applicationcenter_CostCenter);
                cmd.Parameters.AddWithValue("@Rate", objConsumableMod.Rate);
                cmd.Parameters.AddWithValue("@StorageLevelMin", objConsumableMod.StorageLevelMin);
                cmd.Parameters.AddWithValue("@MaxQunatity", objConsumableMod.MaxQunatity);
                cmd.Parameters.AddWithValue("@BalanceQunatity", objConsumableMod.BalanceQunatity);
                cmd.Parameters.AddWithValue("@Flag", objConsumableMod.Flag);
                cmd.Parameters.AddWithValue("@CreatedBy", objConsumableMod.CreatedBy);
                cmd.Parameters.AddWithValue("@CreatedDate", StandardDateTime.GetDateTime());
                cmd.Parameters.AddWithValue("@UpdatedBy", objConsumableMod.UpdatedBy);
                cmd.Parameters.AddWithValue("@UpdatedDate", objConsumableMod.UpdatedDate);
                cmd.Parameters.AddWithValue("@Units", objConsumableMod.Units);
                cmd.Parameters.AddWithValue("@OpeningStock", objConsumableMod.OpeningStock);
                cmd.Parameters.AddWithValue("@OpeningDate", StandardDateTime.GetDateTime());
                cmd.Parameters.AddWithValue("@Action ", "insert");

                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Consumables Created Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }

        #endregion

        #region Get Code

        public List<ssmtbl_ConsumableModel> GetCode(string Code)
        {
            List<ssmtbl_ConsumableModel> objConsumablesList = new List<ssmtbl_ConsumableModel>();
            try
            {
                string sqlstr = "ssmsp_Lkp_Consumables";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Code", Code);
                cmd.Parameters.AddWithValue("@Action", "selectConsumable");                
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_ConsumableModel objtemp = new ssmtbl_ConsumableModel();
                    objtemp.Code = sdr["Code"].ToString();                   
                    objConsumablesList.Add(objtemp);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objConsumablesList;
        }

        #endregion

        #region Get Cost Center

        public List<ssmtbl_ConsumableModel> GetCostCenter(string startwith)
        {
            List<ssmtbl_ConsumableModel> objConsumablesList = new List<ssmtbl_ConsumableModel>();
            try
            {
                string sqlstr = "ssmsp_Lkp_Consumables";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@startwith", startwith);
                cmd.Parameters.AddWithValue("@Action", "getcostcenter");                
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_ConsumableModel objtemp = new ssmtbl_ConsumableModel();
                    objtemp.Applicationcenter_CostCenter = sdr["Name"].ToString();                   
                    objConsumablesList.Add(objtemp);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objConsumablesList;
        }

        #endregion
        #region Get Units

        public List<ssmtbl_ConsumableModel> GetUnits(string startwith)
        {
            List<ssmtbl_ConsumableModel> objConsumablesList = new List<ssmtbl_ConsumableModel>();
            try
            {
                string sqlstr = "ssmsp_Lkp_Consumables";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@startwith", startwith);
                cmd.Parameters.AddWithValue("@Action", "bindUnits");
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_ConsumableModel objtemp = new ssmtbl_ConsumableModel();
                    objtemp.Units = sdr["Units"].ToString();
                    objConsumablesList.Add(objtemp);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objConsumablesList;
        }

        #endregion
    }
}