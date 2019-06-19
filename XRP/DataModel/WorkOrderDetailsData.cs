using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using XRP.Global;
using XRP.Models;

namespace XRP.DataModel
{
    public class WorkOrderDetailsData
    {
        public List<ssmtbl_WorkorderDetailsModel> GetAllOprations()
        {
             List<ssmtbl_WorkorderDetailsModel> objWoDeatailsList = new List<ssmtbl_WorkorderDetailsModel>();
             try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_WorkOrderDetails";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                  cmd.Parameters.AddWithValue("@Action", "selectallopration");
                cmd.CommandType = System.Data.CommandType.StoredProcedure;  
                SqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
                {
                    ssmtbl_WorkorderDetailsModel objtemp = new ssmtbl_WorkorderDetailsModel();
                    objtemp.id = Convert.ToInt32(sdr["id"]);
                    objtemp.operationinvolvedname = sdr["operationinvolvedname"].ToString();
                    objtemp.type = (sdr["type"].ToString());
                    objtemp.seqno = Convert.ToInt32(sdr["seqno"].ToString());
                    objtemp.serialno = Convert.ToInt32(sdr["serialno"].ToString());
                    objtemp.previousopid = Convert.ToInt32(sdr["previousopid"].ToString());
                   
                    objWoDeatailsList.Add(objtemp);
                }
            connection.Close();
            }
             catch (Exception ex)
             {
                 ErrorHandlerClass.LogError(ex);
             }

             return objWoDeatailsList;
            
           
        }

        public List<ssmtbl_WorkorderDetailsModel> GetAllTotalAndUpdatetime(string wono)
        {
            List<ssmtbl_WorkorderDetailsModel> objWoDeatailsList = new List<ssmtbl_WorkorderDetailsModel>();
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_WorkOrderDetails";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@Action", "selecttotalandtime");
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_WorkorderDetailsModel objtemp = new ssmtbl_WorkorderDetailsModel();
                    objtemp.ID = Convert.ToInt32(sdr["ID"]);
                    objtemp.WorkorderNo = sdr["WorkorderNo"].ToString();
                    objtemp.type = (sdr["Pono"].ToString());
                    objtemp.seqno = Convert.ToInt32(sdr["Operationid"].ToString());
                    objtemp.serialno = Convert.ToInt32(sdr["total"].ToString());
                   // var preid = (sdr["preopids"].ToString());
                    //preid = (preid == null) ? "NA" : preid;
                    //if (preid == null || preid == "")
                    //{

                    //}
                    //else
                    //{
                    //    objtemp.previousopid = Convert.ToInt32(sdr["preopids"].ToString());
                    //}
                    
                    var dt = (sdr["updatedate"].ToString());
                  //   dt = (dt == null) ? "NA" : dt;
                     if (dt == null || dt == "")
                     {
                         
                     }
                     else
                     {
                         objtemp.updatedate = Convert.ToDateTime(sdr["updatedate"].ToString());
                     }
                     
                   // objtemp.updatedate = Convert.ToDateTime(sdr["updatedate"].ToString());
                    //objtemp.Dispatchqtyfromdc = Convert.ToInt32(sdr["Dispatchqtyfromdc"].ToString());
                                     
                    objWoDeatailsList.Add(objtemp);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objWoDeatailsList;


        }

        #region Get WO Using Parameter WO NO
        public ssmtbl_WorkorderDetailsModelNew GetWOByWoNo(string wono)
        {
            ssmtbl_WorkorderDetailsModelNew objtemp = new ssmtbl_WorkorderDetailsModelNew();
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_WorkOrder";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@wonumber", wono);
                cmd.Parameters.AddWithValue("@Action", "selectwobywo");
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objtemp.ID = Convert.ToInt32(sdr["ID"].ToString());
                    objtemp.WorkorderNo = (sdr["WorkorderNo"].ToString());
                   // objtemp.RawMaterial = (sdr["RawMaterial"].ToString());
                    objtemp.HeatCode = (sdr["HeatCode"].ToString());
                    //objtemp.Section = (sdr["Section"].ToString());
                    //objtemp.DateOfIssue = Convert.ToDateTime(sdr["DateOfIssue"].ToString());
                    objtemp.TargetDate = Convert.ToDateTime(sdr["TargetDate"].ToString());
                    objtemp.CutWeight = (sdr["CutWeight"].ToString());
                    objtemp.ColorCode = (sdr["ColorCode"].ToString());
                    objtemp.PoNo = (sdr["PoNo"].ToString());
                    objtemp.CustomerName = (sdr["CustomerName"].ToString());
                    objtemp.RMQty = (sdr["AllocatedRMQty"].ToString());
                    objtemp.Status = (sdr["Status"].ToString());
                    objtemp.AllocatedRM = Convert.ToInt32(sdr["AllocatedRM"].ToString());
                    objtemp.AllocatedSection = (sdr["AllocatedSection"].ToString());
                    objtemp.PoRM = (sdr["PoRM"].ToString());
                    objtemp.PoSection = (sdr["PoSection"].ToString());
                    objtemp.ProductionUnit = (sdr["ProductionUnit"].ToString());
                    objtemp.statusname = (sdr["statusname"].ToString());
                    objtemp.partname = (sdr["partname"].ToString());

                    
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return objtemp;

        }


        #endregion
       
        public List<ssmtbl_WorkorderDetailsModel> GetAllWorkOrders()
        {
            List<ssmtbl_WorkorderDetailsModel> objWoDeatailsList = new List<ssmtbl_WorkorderDetailsModel>();
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Get_AllWorkorder";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@Action", "SelectAllWo");
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_WorkorderDetailsModel objtemp = new ssmtbl_WorkorderDetailsModel();
                    objtemp.status = (sdr["status"]).ToString();
                    objtemp.Hc = sdr["HeatCode"].ToString();
                    //objtemp.calbalance = (sdr["calbalance"].ToString());
                    objtemp.ID = Convert.ToInt32(sdr["ID"].ToString());
                    objtemp.WorkorderNo = sdr["WorkorderNo"].ToString();
                    objtemp.Dieno = sdr["Dieno"].ToString();
                    objtemp.Targetdate = Convert.ToDateTime(sdr["TargetDate"]);
                    //objtemp.opearationinvolved1 =sdr["opearationinvolved1"].ToString();
                    objtemp.pendingbal = Convert.ToInt32(sdr["pendingbal"].ToString());
                    objtemp.Rawmaterial = (sdr["PoRM"].ToString());
                    objtemp.RMQty = Convert.ToInt32(sdr["AllocatedRMQty"].ToString());
                    objtemp.ProductionUnit = Convert.ToInt32(sdr["ProductionUnit"].ToString());
                    objWoDeatailsList.Add(objtemp);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objWoDeatailsList;


        }
    }
}