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
    public class RMPlanningData
    {
        #region Get All RMPlanning

        public List<RMPlanningModel> GetAllRMPlanning()
        {
            List<RMPlanningModel> objRMList = new List<RMPlanningModel>();
            try
            {
                string sqlstr = "ssmsp_Get_AllRMByGradeOfMaterial";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    RMPlanningModel objtemp = new RMPlanningModel();

                    objtemp.GradeOfMaterial = sdr["GradeOfMaterial"].ToString();
                    objtemp.HeatCode = sdr["HeatCode"].ToString();
                    objtemp.Section = sdr["Section"].ToString();
                    var qty = (sdr["Quntity"].ToString());
                    objtemp.Qty = qty == "" ? "0" : qty;
                    var Unit = sdr["RMUnit"].ToString();
                    objtemp.Unit = Unit == "" ? "NA" : Unit;
                    objRMList.Add(objtemp);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objRMList;
        }

        #endregion

        //#region Get All RMAllocation

        //public List<RMAllocationModel> GetAllRMAllocation()
        //{
        //    List<RMAllocationModel> objRMAllocateList = new List<RMAllocationModel>();
        //    try
        //    {
        //        string sqlstr = "ssmsp_Get_AllWorkorder";
        //        var connection = gConnection.Connection();
        //        connection.Open();
        //        SqlCommand cmd = new SqlCommand(sqlstr, connection);
        //        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        //        cmd.Parameters.AddWithValue("@Action", "GetAllRMAllocation");               
        //        SqlDataReader sdr = cmd.ExecuteReader();
        //        while (sdr.Read())
        //        {
        //            RMAllocationModel objtemp = new RMAllocationModel();
        //            objtemp.WorkorderNo = sdr["WorkorderNo"].ToString();
        //            objtemp.GradeOfMaterial = sdr["PoRM"].ToString();
        //            objtemp.HeatCode = sdr["HeatCode"].ToString();
        //            objtemp.Section = sdr["PoSection"].ToString();
        //            var qty = (sdr["AllocatedRMQty"].ToString());
        //            objtemp.Qty = qty == "" ? "0" : qty;
        //            objRMAllocateList.Add(objtemp);
        //        }
        //        connection.Close();
        //    }
        //    catch (Exception ex)
        //    {
        //        ErrorHandlerClass.LogError(ex);
        //    }

        //    return objRMAllocateList;
        //}

        //#endregion

        #region Get All RMAllocation By Status

        public List<RMAllocationModel> GetAllRMAllocation(int status)
        {
            List<RMAllocationModel> objRMAllocateList = new List<RMAllocationModel>();
            try
            {
                string sqlstr = "ssmsp_Get_AllWorkorder";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "GetAllRMAllocationByStatus");
                cmd.Parameters.AddWithValue("@Status", status);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    RMAllocationModel objtemp = new RMAllocationModel();
                    objtemp.WorkorderNo = sdr["WorkorderNo"].ToString();
                    objtemp.GradeOfMaterial = sdr["PoRM"].ToString();
                    objtemp.HeatCode = sdr["HeatCode"].ToString();
                    objtemp.Section = sdr["PoSection"].ToString();
                    var qty = (sdr["AllocatedRMQty"].ToString());
                    objtemp.Qty = qty == "" ? "0" : qty;
                    objRMAllocateList.Add(objtemp);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objRMAllocateList;
        }

        #endregion


        #region  RMAllocation Post
        public List<RMAllocationModel> GetAllRMPlanning(string quntity, string heatcode, string gradeOfMaterial, string section, string wono)
        {
            string result = "Error Updating RM Allocation";
            List<RMAllocationModel> objRMAllocateList = new List<RMAllocationModel>();
            try
            {
                string sqlstr = "ssmsp_Get_AllWorkorder";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "UpdateRmQty");
                cmd.Parameters.AddWithValue("@quntity", quntity);
                cmd.Parameters.AddWithValue("@Heatcode", heatcode);
                cmd.Parameters.AddWithValue("@GradeOfMaterial", gradeOfMaterial);
                cmd.Parameters.AddWithValue("@Section", section);
                cmd.Parameters.AddWithValue("@WorkorderNo", wono);
                SqlDataReader sdr = cmd.ExecuteReader();
                connection.Close();
                result = "RM Allocation updated successfully!";
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return objRMAllocateList;
        }

        #endregion
        public List<RMPlanningModel> GetAllRMPlanning(string gradeOfMaterial, string wono, string section, string heatcode)
        {
            List<RMPlanningModel> objRMAllocateList = new List<RMPlanningModel>();
            try
            {
                var gof = gradeOfMaterial.Trim();
                string sqlstr = "ssmsp_Get_AllWorkorder";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "GetWoDataByGofHtSec");
                cmd.Parameters.AddWithValue("@GradeOfMaterial", gof);
                cmd.Parameters.AddWithValue("@section", section);
                cmd.Parameters.AddWithValue("@heatcode", heatcode);                
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    RMPlanningModel objtemp = new RMPlanningModel();
                    objtemp.WorkorderNo = wono;
                    objtemp.GradeOfMaterial = sdr["GradeOfMaterial"].ToString();
                    objtemp.HeatCode = sdr["HeatCode"].ToString();
                    objtemp.Section = sdr["Section"].ToString();
                    var qty = (sdr["Quntity"].ToString());
                    objtemp.Qty = qty == "" ? "0" : qty;
                    var Unit = sdr["RMUnit"].ToString();
                    objtemp.Unit = Unit == "" ? "NA" : Unit;
                    objRMAllocateList.Add(objtemp);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return objRMAllocateList;
        }
    }
}