using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using XRP.Global;
using XRP.Models;

namespace XRP.DataModel
{
    public class CuttingInstructionIssueData
    {
        public ssmtbl_CuttingInstructionIssueModel GetCutInstrIssueByWoNo(string wono)
        {
            ssmtbl_CuttingInstructionIssueModel objtemp = new ssmtbl_CuttingInstructionIssueModel();
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_CuttingInstructionIssue";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@WorkorderNo", wono);
                cmd.Parameters.AddWithValue("@Action", "selectCuttingInstructionIssuewithWONo");
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                   
                    objtemp.WorkorderNo = (sdr["WorkorderNo"].ToString());
                    objtemp.CutWeight = (sdr["CutWeight"].ToString());
                    objtemp.CutDate = Convert.ToDateTime(sdr["CutDate"].ToString());
                    objtemp.CutFrom = (sdr["CutFrom"].ToString());
                    objtemp.CutTo = (sdr["CutTo"].ToString());
                    objtemp.Section = (sdr["Section"].ToString());
                    objtemp.Colorcode = (sdr["Colorcode"].ToString());
                    objtemp.CutLength = (sdr["CutLength"].ToString());
                    objtemp.RMRequiredQty = (sdr["RMRequiredQty"].ToString());
                    objtemp.PreparedBy = (sdr["PreparedBy"].ToString());
                    objtemp.ApprovedBy = (sdr["ApprovedBy"].ToString());
                    objtemp.PlanQty = (sdr["PlanQty"].ToString());
                    objtemp.ActualQty = (sdr["ActualQty"].ToString());
                    objtemp.DieNo = (sdr["DieNo"].ToString());
                    objtemp.Heatcode = (sdr["Heatcode"].ToString());
                    objtemp.PartName = (sdr["PartName"].ToString());
                    objtemp.MaterialSpecification = (sdr["MaterialSpecification"].ToString());
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return objtemp;

        }

    }
}