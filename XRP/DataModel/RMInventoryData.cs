using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using XRP.Global;
using XRP.Models;

namespace XRP.DataModel
{
    public class RMInventoryData
    {

        #region Get All RMInventory

        public List<ssmtbl_RMInventoryModel> GetAllRMInventory()
        {
            List<ssmtbl_RMInventoryModel> objWoList = new List<ssmtbl_RMInventoryModel>();
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_GetAllRMInventory";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "Select");
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_RMInventoryModel objtemp = new ssmtbl_RMInventoryModel();
                    objtemp.ChallanNo = sdr["ChallanNo"].ToString();
                    objtemp.Heatcode = sdr["Heatcode"].ToString();
                    objtemp.Quntity = (sdr["Quntity"].ToString());
                    objtemp.Section = sdr["Section"].ToString();
                    objtemp.Unit = sdr["Unit"].ToString();
                    objtemp.RMUnit = sdr["RMUnit"].ToString();
                    objtemp.GradeOfMaterial = sdr["GradeOfMaterial"].ToString();
                    objWoList.Add(objtemp);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objWoList;
        }

        #endregion

        #region Get All WOBYHeatcode

        public List<ssmtbl_RawMaterialModel> GetAllWOByHeatcode(string heatcode, string quantity)
        {
            List<ssmtbl_RawMaterialModel> objWoList = new List<ssmtbl_RawMaterialModel>();
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_GetAllRMInventory";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "SelectWoByHeatcode");
                cmd.Parameters.AddWithValue("@Heatcode", heatcode);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_RawMaterialModel objtemp = new ssmtbl_RawMaterialModel();
                    objtemp.WorkorderNo = sdr["WorkorderNo"].ToString();
                    objtemp.Heatcode = sdr["Heatcode"].ToString();
                    objtemp.AllocatedRMQty = (sdr["AllocatedRMQty"].ToString());
                    objtemp.PoRM = sdr["PoRM"].ToString();
                    objtemp.PoSection = sdr["PoSection"].ToString();                    
                    objtemp.BalancedRMQty = sdr["BalancedRMQty"].ToString();
                    objtemp.ChallanQty = quantity;            
                    objWoList.Add(objtemp);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objWoList;
        }

        #endregion
    }
}