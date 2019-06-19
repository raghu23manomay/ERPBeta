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
    class ConsumableIssuedData
    {
        #region Insert ConsumableIssued

        public string InsertConsumableIssued(ssmtbl_ConsumablesIssuedModel objConsumeMod)
        {
            string result = "Error Inserting ConsumableIssued";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Get_AllConsumableIssuedList";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Code", objConsumeMod.Code);
                cmd.Parameters.AddWithValue("@IssuedTo", objConsumeMod.IssuedTo);
                cmd.Parameters.AddWithValue("@IssuedDate", objConsumeMod.IssuedDate);
                cmd.Parameters.AddWithValue("@IssuedQuantity", objConsumeMod.IssuedQuantity);
                cmd.Parameters.AddWithValue("@IssuedBy", objConsumeMod.IssuedBy);
                cmd.Parameters.AddWithValue("@Flag ", "1");
                cmd.Parameters.AddWithValue("@CreatedBy", objConsumeMod.CreatedBy);
                cmd.Parameters.AddWithValue("@CreatedDate", StandardDateTime.GetDateTime());
                cmd.Parameters.AddWithValue("@UpdatedBy", objConsumeMod.UpdatedBy);
                cmd.Parameters.AddWithValue("@UpdatedDate", StandardDateTime.GetDateTime());
                cmd.Parameters.AddWithValue("@Description ", objConsumeMod.Description);
                cmd.Parameters.AddWithValue("@Action ", "insert");

                cmd.ExecuteNonQuery();
                connection.Close();
                result = "ConsumableIssued Created Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }

        #endregion


        #region Get All ConsumableIssued List

        public List<ssmtbl_ConsumablesIssuedModel> GetAllConsumablesIssuedList()
        {
            List<ssmtbl_ConsumablesIssuedModel> objConsumablesList = new List<ssmtbl_ConsumablesIssuedModel>();
            try
            {
                string sqlstr = "ssmsp_Get_AllConsumableIssuedList";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "select");
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_ConsumablesIssuedModel objtemp = new ssmtbl_ConsumablesIssuedModel();
                    objtemp.ID = sdr["ID"].ToString();
                    objtemp.Code = sdr["Code"].ToString();
                    objtemp.IssuedTo = sdr["IssuedTo"].ToString();
                    objtemp.IssuedDate = Convert.ToDateTime(sdr["IssuedDate"].ToString());
                    var qty = (sdr["IssuedQuantity"].ToString());
                    objtemp.IssuedQuantity = qty == "" ? "0" : qty;
                    objtemp.Flag = sdr["Flag"].ToString();
                    objtemp.Description = sdr["Description"].ToString();
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


        #region Get Items by Code autocomplete

        public List<ssmtbl_ConsumablesIssuedModel> GetItemsByCode(string Prefix)
        {
            List<ssmtbl_ConsumablesIssuedModel> objConsumablesList = new List<ssmtbl_ConsumablesIssuedModel>();
            try
            {
                string sqlstr = "ssmsp_Get_AllConsumableIssuedList";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@itemcode", Prefix);
                cmd.Parameters.AddWithValue("@Action", "autofetchitemcode");
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_ConsumablesIssuedModel objtemp = new ssmtbl_ConsumablesIssuedModel();
                    objtemp.ID = sdr["ID"].ToString();
                    objtemp.Code = sdr["Code"].ToString();
                    var qty = (sdr["BalanceQunatity"].ToString());
                    objtemp.BalanceQunatity = qty == "" ? "0" : qty;
                    objtemp.Description = sdr["Description"].ToString();
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
