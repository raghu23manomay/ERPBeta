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
    public class QuotationData
    {
        string sqlstr = string.Empty;
        string sqlstr1 = string.Empty;
        InquiryData objInqData = new InquiryData();
        FeasibilityData objFesiData = new FeasibilityData();
        DropDownSelection objDrop = new DropDownSelection();

        //public Tuple<long, string> InsertQuotataion(ssmtbl_QuotationModel model, DataTable dt)
        public Tuple<long, string> InsertQuotataion(ssmtbl_QuotationModel model, int QuotationId)
        {
            long id = 0;
            string result = "Error Creating Quotation";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmSP_Insert_Quotation";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@InquiryNo", model.InquiryNo);
                cmd.Parameters.AddWithValue("@QuotationNo", model.QuotationNo.Trim());
                cmd.Parameters.AddWithValue("@CustomerName", model.CustomerName.Trim());

                cmd.Parameters.AddWithValue("@PartDescription", model.PartDescription.Trim());
                cmd.Parameters.AddWithValue("@PartNo", model.PartNo.Trim());
                cmd.Parameters.AddWithValue("@HeatTreatment", model.HeatTreatmentID);

                cmd.Parameters.AddWithValue("@Material", model.Material.Trim());
                cmd.Parameters.AddWithValue("@Section", model.SectionId);
                cmd.Parameters.AddWithValue("@MachainedWeight", model.MachainedWeight.Trim());

                cmd.Parameters.AddWithValue("@GrossWeight", model.GrossWeight);
                cmd.Parameters.AddWithValue("@CutWeight", model.CutWeight);
                cmd.Parameters.AddWithValue("@NetWeight", model.NetWeight);

                cmd.Parameters.AddWithValue("@ForgingCostBased", model.ForgingCostBased.Trim());
                cmd.Parameters.AddWithValue("@MPICostBasedOn", model.MPICostBasedOn.Trim());
                cmd.Parameters.AddWithValue("@SteelCost", model.SteelCost);

                cmd.Parameters.AddWithValue("@Transportation", model.Transportation);
                cmd.Parameters.AddWithValue("@Total", model.Total);
                cmd.Parameters.AddWithValue("@TotalRowMaterialCost", model.TotalRowMaterialCost);

                cmd.Parameters.AddWithValue("@CuttingSquare1", model.CuttingSquare1);
                cmd.Parameters.AddWithValue("@CuttingSquare2", model.CuttingSquare2);

                cmd.Parameters.AddWithValue("@Forging1", model.Forging1);
                cmd.Parameters.AddWithValue("@Forging2", model.Forging2);

                cmd.Parameters.AddWithValue("@HeatTreatment1", model.HeatTreatment1);
                cmd.Parameters.AddWithValue("@HeatTreatment2", model.HeatTreatment2);

                cmd.Parameters.AddWithValue("@ShotBlasting1", model.ShotBlasting1);
                cmd.Parameters.AddWithValue("@ShotBlasting2", model.ShotBlasting2);

                cmd.Parameters.AddWithValue("@MPI1", model.MPI1);
                cmd.Parameters.AddWithValue("@MPI2", model.MPI2);

                cmd.Parameters.AddWithValue("@Grinding1", model.Grinding1);
                cmd.Parameters.AddWithValue("@Grinding2", model.Grinding2);

                cmd.Parameters.AddWithValue("@ColdCoining1", model.ColdCoining1);
                cmd.Parameters.AddWithValue("@ColdCoining2", model.ColdCoining2);

                cmd.Parameters.AddWithValue("@Machining1", model.Machining1);
                cmd.Parameters.AddWithValue("@Machining2", model.Machining2);

                cmd.Parameters.AddWithValue("@DieMaintenance1", model.DieMaintenance1);
                cmd.Parameters.AddWithValue("@DieMaintenance2", model.DieMaintenance2);
                cmd.Parameters.AddWithValue("@Status", InquiryStatus.QuotationPendingForApproval);
                cmd.Parameters.AddWithValue("@FileStatus", InquiryStatus.QuotationPendingForApproval);

                cmd.Parameters.AddWithValue("@TotalConverstionCost", model.TotalConverstionCost);
                cmd.Parameters.AddWithValue("@TotalComponentCost", model.TotalComponentCost);
                cmd.Parameters.AddWithValue("@InitialDieCost", model.InitialDieCost);
                cmd.Parameters.AddWithValue("@UserComment", model.UserComment);
                if (model.iccoverhadrm != " ")
                {
                    cmd.Parameters.AddWithValue("@Iccoverhead", model.iccoverhadrm);
                }
                if (model.totaliccoverhadrm != " ")
                {
                    cmd.Parameters.AddWithValue("@Iccoverheadtotal", model.totaliccoverhadrm);
                }
                if (model.profitonconversion != " ")
                {
                    cmd.Parameters.AddWithValue("@Profitconversion", model.profitonconversion);
                }
                if (model.totalprofitonconversion != " ")
                {
                    cmd.Parameters.AddWithValue("@TotalProfitconversion", model.totalprofitonconversion);
                }
                if (model.rejection != " ")
                {
                    cmd.Parameters.AddWithValue("@Rejection", model.rejection);
                }
                if (model.totalrejection != " ")
                {
                    cmd.Parameters.AddWithValue("@TotalRejection", model.totalrejection);
                }
                if (model.packingtransport != " ")
                {
                    cmd.Parameters.AddWithValue("@Packing", model.packingtransport);
                }
                if (model.totalpackingtransport != " ")
                {
                    cmd.Parameters.AddWithValue("@TotalPacking", model.totalpackingtransport);
                }
                if (model.totallycost != " ")
                {
                    cmd.Parameters.AddWithValue("@TotallyCost", model.totallycost);
                }


                cmd.Parameters.Add("@Quotationid", SqlDbType.Int);
                cmd.Parameters["@Quotationid"].Direction = ParameterDirection.Output;
                //var pList = new SqlParameter("@ssmUT_TermsNCondtion_", SqlDbType.Structured);
                //pList.TypeName = "dbo.ssmUT_TermsNCondtion";
                //pList.Value = dt;
                //cmd.Parameters.Add(pList);

                cmd.Parameters.AddWithValue("@Createdby", "Test");
                cmd.Parameters.AddWithValue("@CreatedOn", StandardDateTime.GetDateTime());
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    id = Convert.ToInt64(sdr[0].ToString());
                }
                connection.Close();
                result = "Quotation Created Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return new Tuple<long, string>(id, result);
        }

        public ssmtbl_CuutingCalculationModel GetOneCutingCalculation(long section)
        {
            var connection = gConnection.Connection();
            ssmtbl_CuutingCalculationModel model = new ssmtbl_CuutingCalculationModel();
            try
            {
                sqlstr = "select * from LKP_CuutingCalculation_Tb where id=@id";
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@id", section);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    model.cuttingrateperpc = Convert.ToDecimal(sdr["cuttingrateperpc"]);
                    model.formula = sdr["cuttingrateperpc"].ToString();
                    model.id = Convert.ToInt32(sdr["id"]);
                    model.qty = Convert.ToDecimal(sdr["cuttingrateperpc"]);
                    model.rate = Convert.ToDecimal(sdr["cuttingrateperpc"]);
                    model.sqin = Convert.ToDecimal(sdr["cuttingrateperpc"]);
                    model.totalcost = Convert.ToDecimal(sdr["cuttingrateperpc"]);
                    model.xsection = sdr["cuttingrateperpc"].ToString();

                }

                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
                connection.Close();
            }
            return model;
        }

        public ssmtbl_QuotationModel GetLetestQuotationID(long id)
        {
            var connection = gConnection.Connection();
            ssmtbl_QuotationModel model = new ssmtbl_QuotationModel();
            ssmtbl_FeasibilityModel fismodel = new ssmtbl_FeasibilityModel();
            try
            {
                sqlstr = "select * from ssmtbl_Quotation where CreatedOn=(select max(CreatedOn) FROM ssmtbl_Quotation where InquiryNo=@InquiryNo )";
                //sqlstr = "SELECT TOP 1 * FROM QuotationVersion  where InquiryNo=77 order by Qid desc";
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@InquiryNo", id);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    model.id = Convert.ToInt32(sdr["id"]);
                    model.QuotationId = Convert.ToInt32(sdr["id"]);
                    model.InquiryNo = Convert.ToInt32(sdr["InquiryNo"].ToString());
                    model.QuotationNo = sdr["QuotationNo"].ToString();
                    model.CustomerName = sdr["CustomerName"].ToString();
                    model.PartDescription = sdr["PartDescription"].ToString();
                    model.PartNo = sdr["PartNo"].ToString();

                    var getMaterialGrad = objDrop.FeasibilityMaterialGrade().FirstOrDefault(m => m.Value == sdr["Material"].ToString());
                    if (getMaterialGrad != null)
                    {
                        model.Material = getMaterialGrad.Text;
                    }

                    var getHeattreatment = objDrop.FeasibilityHeatTreatment().FirstOrDefault(m => m.Value == sdr["HeatTreatment"].ToString());
                    if (getHeattreatment != null)
                    {
                        model.HeatTreatmentID = getHeattreatment.Value;
                        model.HeatTreatmentText = getHeattreatment.Text;

                    }
                    model.VersionNo = sdr["VersionNo"].ToString();
                    model.Section = sdr["Section"].ToString();
                    model.MachainedWeight = sdr["MachainedWeight"].ToString();
                    model.GrossWeight = Convert.ToDecimal(sdr["GrossWeight"].ToString());
                    model.CutWeight = Convert.ToDecimal(sdr["CutWeight"].ToString());
                    model.NetWeight = Convert.ToDecimal(sdr["NetWeight"].ToString());
                    model.ForgingCostBased = sdr["ForgingCostBased"].ToString();
                    model.MPICostBasedOn = sdr["MPICostBasedOn"].ToString();
                    model.SteelCost = Convert.ToDecimal(sdr["SteelCost"].ToString());
                    model.Transportation = Convert.ToDecimal(sdr["Transportation"].ToString());
                    model.Total = Convert.ToDecimal(sdr["Total"].ToString());
                    model.TotalRowMaterialCost = Convert.ToDecimal(sdr["TotalRowMaterialCost"].ToString());
                    model.CuttingSquare1 = (sdr["CuttingSquare1"].ToString());
                    model.CuttingSquare2 = (sdr["CuttingSquare2"].ToString());
                    model.Forging1 = (sdr["Forging1"].ToString());
                    model.Forging2 = (sdr["Forging2"].ToString());
                    model.HeatTreatment1 = (sdr["HeatTreatment1"].ToString());
                    model.HeatTreatment2 = (sdr["HeatTreatment2"].ToString());
                    model.ShotBlasting1 = (sdr["ShotBlasting1"].ToString());
                    model.ShotBlasting2 =(sdr["ShotBlasting2"].ToString());
                    model.MPI1 = (sdr["MPI1"].ToString());
                    model.MPI2 = (sdr["MPI2"].ToString());
                    model.Grinding1 = (sdr["Grinding1"].ToString());
                    model.Grinding2 = (sdr["Grinding2"].ToString());
                    model.ColdCoining1 = (sdr["ColdCoining1"].ToString());
                    model.ColdCoining2 = (sdr["ColdCoining2"].ToString());
                    model.Machining1 = (sdr["Machining1"].ToString());
                    model.Machining2 = (sdr["Machining2"].ToString());
                    model.DieMaintenance1 = (sdr["DieMaintenance1"].ToString());
                    model.DieMaintenance2 = (sdr["DieMaintenance2"].ToString());
                    model.TotalConverstionCost = Convert.ToDecimal(sdr["TotalConverstionCost"].ToString());
                    model.TotalComponentCost = Convert.ToDecimal(sdr["TotalComponentCost"].ToString());
                    model.InitialDieCost = Convert.ToDecimal(sdr["InitialDieCost"].ToString());
                    model.PoNo = sdr["PoNo"].ToString();
                    model.FileStatus = sdr["FileStatus"].ToString();
                    model.Comment = sdr["Comment"].ToString();

                    model.ApprovalDate = (string.IsNullOrEmpty(sdr["ApprovalDate"].ToString())) ? default(DateTime) : Convert.ToDateTime(sdr["ApprovalDate"].ToString());
                    model.ApprovedBy = sdr["ApprovedBy"].ToString();
                    model.CreatedOn = Convert.ToDateTime(sdr["CreatedOn"].ToString());
                    model.Createdby = sdr["Createdby"].ToString();
                    model.UpdatedOn = (string.IsNullOrEmpty(sdr["UpdatedOn"].ToString())) ? default(DateTime) : Convert.ToDateTime(sdr["UpdatedOn"].ToString());
                    model.UpdatedBy = sdr["UpdatedBy"].ToString();
                    model.VersionNo = sdr["VersionNo"].ToString();

                    model.new_Version_No = Convert.ToInt32(sdr["new_Version_No"].ToString());
                    model.UserComment = sdr["UserComment"].ToString();

                    model.iccoverhadrm = sdr["Iccoverhead"].ToString();
                    // sdr["Iccoverhead"] as decimal? ?? default(decimal);

                    model.totaliccoverhadrm = sdr["Iccoverheadtotal"].ToString();
                    //Convert.ToDecimal(sdr["Iccoverheadtotal"].ToString());
                    model.profitonconversion = sdr["Profitconversion"].ToString();
                    //Convert.ToDecimal(sdr["Profitconversion"].ToString());
                    model.totalprofitonconversion = sdr["TotalProfitconversion"].ToString();
                    //Convert.ToDecimal(sdr["TotalProfitconversion"].ToString());
                    model.rejection = sdr["Rejection"].ToString();
                    //Convert.ToDecimal(sdr["Rejection"].ToString());
                    model.totalrejection = sdr["TotalRejection"].ToString();
                    //Convert.ToDecimal(sdr["TotalRejection"].ToString());
                    model.packingtransport = sdr["Packing"].ToString();
                    //Convert.ToDecimal(sdr["Packing"].ToString());
                    model.totalpackingtransport = sdr["TotalPacking"].ToString();
                    //Convert.ToDecimal(sdr["TotalPacking"].ToString());
                    model.totallycost = sdr["TotallyCost"].ToString();

                }

                connection.Close();
                ////////////////
                //sqlstr1 = "select * from ssmtbl_Feasibility where InquiryNo=@InquiryNo";
                //connection.Open();
                //SqlCommand cmd1 = new SqlCommand(sqlstr1, connection);
                //cmd1.Parameters.AddWithValue("@InquiryNo", id);
                //SqlDataReader sdr1 = cmd1.ExecuteReader();
                //while (sdr1.Read())
                //{
                //    fismodel.hardnessmin = sdr1["hardnessmin"].ToString();
                //    fismodel.hardnessmax = sdr1["hardnessmax"].ToString();
                //    fismodel.hardnessunits = sdr1["hardnessunits"].ToString();

                //}
                //connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
                connection.Close();
            }
            return model;
        }



        public ssmtbl_QuotationModel GetOneQuotationForApproval(string QuotationId)
        {
            ssmtbl_QuotationModel objQuot = new ssmtbl_QuotationModel();
            try
            {
                string sqlstr = "Select Isnull(id,0) As id, Isnull(InquiryNo,0) As InquiryNo, Isnull(QuotationNo,'') As QuotationNo, "
                + " Isnull(CustomerName,'') As CustomerName, Isnull(PartDescription,'') As PartDescription, Isnull(PartNo,'') As PartNo, "
                + " (select Options from LKP_Inquiry_Tb IT where IT.ID=ssmtbl_Quotation.HeatTreatment and Type='Heat Treatment')  As HeatTreatment,"
                + " Isnull(Material,'') As Material, Isnull(VersionNo,'') As VersionNo, "
                + " Isnull(Section,'') As Section, Isnull(MachainedWeight,'') As MachainedWeight, Isnull(GrossWeight,0) As GrossWeight, "
                + " Isnull(CutWeight,0) As CutWeight, Isnull(NetWeight,0) As NetWeight, Isnull(ForgingCostBased,'') As ForgingCostBased, "
                + " Isnull(MPICostBasedOn,'') As MPICostBasedOn, Isnull(SteelCost,0) As SteelCost, Isnull(Transportation,0) As Transportation, "
                + " Isnull(Total,0) As Total, Isnull(TotalRowMaterialCost,0) As TotalRowMaterialCost, Isnull(CuttingSquare1,0) As CuttingSquare1, "
                + " Isnull(CuttingSquare2,0) As CuttingSquare2, Isnull(Forging1,0) As Forging1, ISNULL(Forging2,0) As Forging2, "
                + " Isnull(HeatTreatment1,0) As HeatTreatment1, Isnull(HeatTreatment2,0) As HeatTreatment2, Isnull(ShotBlasting1,0) As ShotBlasting1, "
                + " Isnull(ShotBlasting2,0) As ShotBlasting2, Isnull(MPI1,0) As MPI1, Isnull(MPI2,0) As MPI2, Isnull(Grinding1,0) As Grinding1, "
                + " Isnull(Grinding2,0) As Grinding2, Isnull(ColdCoining1,0) As ColdCoining1, Isnull(ColdCoining2,0) As ColdCoining2, "
                + " Isnull(Machining1,0) As Machining1, Isnull(Machining2,0) As Machining2, Isnull(DieMaintenance1,0) As DieMaintenance1, "
                + " Isnull(DieMaintenance2,0) As DieMaintenance2, Isnull(TotalConverstionCost,0) As TotalConverstionCost, "
                + " Isnull(TotalComponentCost,0) As TotalComponentCost, Isnull(InitialDieCost,0) As InitialDieCost,Isnull(PoNo,'') As PoNo, "
                + " Isnull(FileStatus,'') As FileStatus, Isnull(Comment,'') As Comment, Isnull(ApprovalDate,'') As ApprovalDate, "
                + " Isnull(ApprovedBy,'') As ApprovedBy, Isnull(CreatedOn,'') As CreatedOn, Isnull(Createdby,'') As Createdby, "
                + " Isnull(UpdatedOn,'') As UpdatedOn, Isnull(UpdatedBy,'') As UpdatedBy, Isnull(new_Version_No,0) As new_Version_No, "
                + " Isnull(UserComment,'') As UserComment From ssmtbl_Quotation where Isnull(id,0)=@QuotationId";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@QuotationId", QuotationId);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objQuot.id = Convert.ToInt32(sdr["id"].ToString());
                    objQuot.InquiryNo = Convert.ToInt32(sdr["InquiryNo"].ToString());
                    objQuot.QuotationNo = sdr["QuotationNo"].ToString();
                    objQuot.CustomerName = sdr["CustomerName"].ToString();
                    objQuot.PartDescription = sdr["PartDescription"].ToString();
                    objQuot.PartNo = sdr["PartNo"].ToString();
                    objQuot.HeatTreatmentText = sdr["HeatTreatment"].ToString();
                    objQuot.Material = sdr["Material"].ToString();
                    objQuot.VersionNo = sdr["VersionNo"].ToString();
                    objQuot.Section = sdr["Section"].ToString();
                    objQuot.MachainedWeight = sdr["MachainedWeight"].ToString();
                    objQuot.GrossWeight = Convert.ToDecimal(sdr["GrossWeight"].ToString());
                    objQuot.CutWeight = Convert.ToDecimal(sdr["CutWeight"].ToString());
                    objQuot.NetWeight = Convert.ToDecimal(sdr["NetWeight"].ToString());
                    objQuot.ForgingCostBased = sdr["ForgingCostBased"].ToString();
                    objQuot.MPICostBasedOn = sdr["MPICostBasedOn"].ToString();
                    objQuot.SteelCost = Convert.ToDecimal(sdr["SteelCost"].ToString());
                    objQuot.Transportation = Convert.ToDecimal(sdr["Transportation"].ToString());
                    objQuot.Total = Convert.ToDecimal(sdr["Total"].ToString());
                    objQuot.TotalRowMaterialCost = Convert.ToDecimal(sdr["TotalRowMaterialCost"].ToString());
                    objQuot.CuttingSquare1 = (sdr["CuttingSquare1"].ToString());
                    objQuot.CuttingSquare2 = (sdr["CuttingSquare2"].ToString());
                    objQuot.Forging1 = (sdr["Forging1"].ToString());
                    objQuot.Forging2 = (sdr["Forging2"].ToString());
                    objQuot.HeatTreatment1 = (sdr["HeatTreatment1"].ToString());
                    objQuot.HeatTreatment2 = (sdr["HeatTreatment2"].ToString());
                    objQuot.ShotBlasting1 = (sdr["ShotBlasting1"].ToString());
                    objQuot.ShotBlasting2 =(sdr["ShotBlasting2"].ToString());
                    objQuot.MPI1 = (sdr["MPI1"].ToString());
                    objQuot.MPI2 = (sdr["MPI2"].ToString());
                    objQuot.Grinding1 = (sdr["Grinding1"].ToString());
                    objQuot.Grinding2 = (sdr["Grinding2"].ToString());
                    objQuot.ColdCoining1 = (sdr["ColdCoining1"].ToString());
                    objQuot.ColdCoining2 = (sdr["ColdCoining2"].ToString());
                    objQuot.Machining1 = (sdr["Machining1"].ToString());
                    objQuot.Machining2 = (sdr["Machining2"].ToString());
                    objQuot.DieMaintenance1 =(sdr["DieMaintenance1"].ToString());
                    objQuot.DieMaintenance2 = (sdr["DieMaintenance2"].ToString());
                    objQuot.TotalConverstionCost = Convert.ToDecimal(sdr["TotalConverstionCost"].ToString());
                    objQuot.TotalComponentCost = Convert.ToDecimal(sdr["TotalComponentCost"].ToString());
                    objQuot.InitialDieCost = Convert.ToDecimal(sdr["InitialDieCost"].ToString());
                    objQuot.PoNo = sdr["PoNo"].ToString();
                    objQuot.FileStatus = sdr["FileStatus"].ToString();
                    objQuot.Comment = sdr["Comment"].ToString();
                    objQuot.ApprovalDate = Convert.ToDateTime(sdr["ApprovalDate"].ToString());
                    objQuot.ApprovedBy = sdr["ApprovedBy"].ToString();
                    objQuot.CreatedOn = Convert.ToDateTime(sdr["CreatedOn"].ToString());
                    objQuot.Createdby = sdr["Createdby"].ToString();
                    objQuot.UpdatedOn = Convert.ToDateTime(sdr["UpdatedOn"].ToString());
                    objQuot.UpdatedBy = sdr["UpdatedBy"].ToString();
                    objQuot.VersionNo = sdr["VersionNo"].ToString();
                    objQuot.new_Version_No = Convert.ToInt32(sdr["new_Version_No"].ToString());
                    objQuot.UserComment = sdr["UserComment"].ToString();
                }
                sdr.Close();

                List<ssmtbl_TermsNCondtionModel> objTCList = new List<ssmtbl_TermsNCondtionModel>();
                sqlstr = "Select id, Isnull(QuotationID,0) As QuotationID, Isnull(TermsNConditionID,0) As TermsNConditionID, "
                + " Isnull(TermsNConditionContent,'') As TermsNConditionContent From ssmtbl_TermsNCondtion where QuotationID=@id";
                //+" Isnull(TermsNConditionContent,'') As TermsNConditionContent From ssmtbl_TermsNCondtion where id=@id";

                cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@id", objQuot.id);
                sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_TermsNCondtionModel tempobj = new ssmtbl_TermsNCondtionModel();
                    tempobj.id = Convert.ToInt32(sdr["id"].ToString());
                    tempobj.QuotationID = Convert.ToInt32(sdr["QuotationID"].ToString());
                    tempobj.TermsNConditionID = Convert.ToInt32(sdr["TermsNConditionID"].ToString());
                    tempobj.TermsNConditionContent = sdr["TermsNConditionContent"].ToString();
                    objTCList.Add(tempobj);
                }

                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }
            return objQuot;
        }
        public List<ssmtbl_QuotationModel> GetAllversion(long InquiryNo)
        {
            var connection = gConnection.Connection();
            List<ssmtbl_QuotationModel> objList = new List<ssmtbl_QuotationModel>();
            try
            {
                //sqlstr = "SELECT ssmtbl_Inquiry.Status, ssmtbl_Quotation.VersionNo, ssmtbl_Quotation.Comment, ssmtbl_Quotation.CreatedOn, ssmtbl_Quotation.Createdby, "
                //+ " ssmtbl_Quotation.ApprovalDate, ssmtbl_Quotation.ApprovedBy, ssmtbl_Quotation.id,ssmtbl_Quotation.InquiryNo"
                //+ " FROM ssmtbl_Inquiry INNER JOIN"
                //+ " ssmtbl_Quotation ON ssmtbl_Inquiry.InquiryNo = ssmtbl_Quotation.InquiryNo and ssmtbl_Inquiry.InquiryNo=@InquiryNo";

                sqlstr = "SELECT Isnull(FileStatus,'') As Status, ssmtbl_Quotation.VersionNo, ssmtbl_Quotation.Comment, ssmtbl_Quotation.CreatedOn, ssmtbl_Quotation.Createdby, "
                + " ssmtbl_Quotation.ApprovalDate, ssmtbl_Quotation.ApprovedBy, ssmtbl_Quotation.id,ssmtbl_Quotation.InquiryNo"
                + " FROM ssmtbl_Quotation where InquiryNo=@InquiryNo";

                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@InquiryNo", InquiryNo);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_QuotationModel obj = new ssmtbl_QuotationModel();
                    obj.FileStatus = sdr["Status"].ToString();
                    obj.VersionNo = sdr["VersionNo"].ToString();
                    obj.Comment = sdr["Comment"].ToString();
                    obj.CreatedOn = (string.IsNullOrEmpty(sdr["CreatedOn"].ToString())) ? default(DateTime) : Convert.ToDateTime(sdr["CreatedOn"].ToString());
                    obj.Createdby = sdr["Createdby"].ToString();
                    obj.ApprovalDate = (string.IsNullOrEmpty(sdr["ApprovalDate"].ToString())) ? default(DateTime) : Convert.ToDateTime(sdr["ApprovalDate"].ToString());
                    obj.ApprovedBy = sdr["ApprovedBy"].ToString();
                    obj.id = Convert.ToInt32(sdr["id"].ToString());
                    obj.InquiryNo = Convert.ToInt32(sdr["InquiryNo"].ToString());
                    objList.Add(obj);
                }

                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
                connection.Close();
            }
            return objList;

        }



        //public string UpdateQuotataion(ssmtbl_QuotationModel model, DataTable dt)
        public string UpdateQuotataion(ssmtbl_QuotationModel model, int QuotationId)
        {
            string result = "Error Updating Quotataion";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmSP_Update_Quotation";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@id", QuotationId);
                cmd.Parameters.AddWithValue("@InquiryNo", model.InquiryNo);
                cmd.Parameters.AddWithValue("@QuotationNo", model.QuotationNo);
                cmd.Parameters.AddWithValue("@CustomerName", model.CustomerName);

                cmd.Parameters.AddWithValue("@PartDescription", model.PartDescription);
                cmd.Parameters.AddWithValue("@PartNo", model.PartNo);
                cmd.Parameters.AddWithValue("@HeatTreatment", model.HeatTreatmentID);

                cmd.Parameters.AddWithValue("@Material", model.Material);
                // cmd.Parameters.AddWithValue("@Section", model.Section);
                cmd.Parameters.AddWithValue("@Section", model.SectionId); // Sharad
                cmd.Parameters.AddWithValue("@MachainedWeight", model.MachainedWeight);

                cmd.Parameters.AddWithValue("@GrossWeight", model.GrossWeight);
                cmd.Parameters.AddWithValue("@CutWeight", model.CutWeight);
                cmd.Parameters.AddWithValue("@NetWeight", model.NetWeight);

                cmd.Parameters.AddWithValue("@ForgingCostBased", model.ForgingCostBased);
                cmd.Parameters.AddWithValue("@MPICostBasedOn", model.MPICostBasedOn);
                cmd.Parameters.AddWithValue("@SteelCost", model.SteelCost);

                cmd.Parameters.AddWithValue("@Transportation", model.Transportation);
                cmd.Parameters.AddWithValue("@Total", model.Total);
                cmd.Parameters.AddWithValue("@TotalRowMaterialCost", model.TotalRowMaterialCost);

                cmd.Parameters.AddWithValue("@CuttingSquare1", model.CuttingSquare1);
                cmd.Parameters.AddWithValue("@CuttingSquare2", model.CuttingSquare2);

                cmd.Parameters.AddWithValue("@Forging1", model.Forging1);
                cmd.Parameters.AddWithValue("@Forging2", model.Forging2);

                cmd.Parameters.AddWithValue("@HeatTreatment1", model.HeatTreatment1);
                cmd.Parameters.AddWithValue("@HeatTreatment2", model.HeatTreatment2);

                cmd.Parameters.AddWithValue("@ShotBlasting1", model.ShotBlasting1);
                cmd.Parameters.AddWithValue("@ShotBlasting2", model.ShotBlasting2);

                cmd.Parameters.AddWithValue("@MPI1", model.MPI1);
                cmd.Parameters.AddWithValue("@MPI2", model.MPI2);

                cmd.Parameters.AddWithValue("@Grinding1", model.Grinding1);
                cmd.Parameters.AddWithValue("@Grinding2", model.Grinding2);

                cmd.Parameters.AddWithValue("@ColdCoining1", model.ColdCoining1);
                cmd.Parameters.AddWithValue("@ColdCoining2", model.ColdCoining2);

                cmd.Parameters.AddWithValue("@Machining1", model.Machining1);
                cmd.Parameters.AddWithValue("@Machining2", model.Machining2);

                cmd.Parameters.AddWithValue("@DieMaintenance1", model.DieMaintenance1);
                cmd.Parameters.AddWithValue("@DieMaintenance2", model.DieMaintenance2);
                cmd.Parameters.AddWithValue("@Status", InquiryStatus.QuotationPendingForApproval);
                cmd.Parameters.AddWithValue("@FileStatus", InquiryStatus.QuotationPendingForApproval);

                cmd.Parameters.AddWithValue("@TotalConverstionCost", model.TotalConverstionCost);
                cmd.Parameters.AddWithValue("@TotalComponentCost", model.TotalComponentCost);
                cmd.Parameters.AddWithValue("@InitialDieCost", model.InitialDieCost);
                cmd.Parameters.AddWithValue("@UserComment", model.UserComment);

                //var pList = new SqlParameter("@ssmUT_TermsNCondtion_", SqlDbType.Structured);
                //pList.TypeName = "dbo.ssmUT_TermsNCondtion";
                //pList.Value = dt;
                //cmd.Parameters.Add(pList);

                cmd.Parameters.AddWithValue("@Createdby", "Test");
                cmd.Parameters.AddWithValue("@CreatedOn", StandardDateTime.GetDateTime());

                if (model.iccoverhadrm != " ")
                {
                    cmd.Parameters.AddWithValue("@Iccoverhead", model.iccoverhadrm);
                }
                if (model.totaliccoverhadrm != " ")
                {
                    cmd.Parameters.AddWithValue("@Iccoverheadtotal", model.totaliccoverhadrm);
                }
                if (model.profitonconversion != " ")
                {
                    cmd.Parameters.AddWithValue("@Profitconversion", model.profitonconversion);
                }
                if (model.totalprofitonconversion != " ")
                {
                    cmd.Parameters.AddWithValue("@TotalProfitconversion", model.totalprofitonconversion);
                }
                if (model.rejection != " ")
                {
                    cmd.Parameters.AddWithValue("@Rejection", model.rejection);
                }
                if (model.totalrejection != " ")
                {
                    cmd.Parameters.AddWithValue("@TotalRejection", model.totalrejection);
                }
                if (model.packingtransport != " ")
                {
                    cmd.Parameters.AddWithValue("@Packing", model.packingtransport);
                }
                if (model.totalpackingtransport != " ")
                {
                    cmd.Parameters.AddWithValue("@TotalPacking", model.totalpackingtransport);
                }
                if (model.totallycost != " ")
                {
                    cmd.Parameters.AddWithValue("@TotallyCost", model.totallycost);
                }
                //cmd.Parameters.AddWithValue("@Iccoverhead", model.iccoverhadrm);
                //cmd.Parameters.AddWithValue("@Iccoverheadtotal", model.totaliccoverhadrm);
                //cmd.Parameters.AddWithValue("@Profitconversion", model.profitonconversion);
                //cmd.Parameters.AddWithValue("@TotalProfitconversion", model.totalprofitonconversion);
                //cmd.Parameters.AddWithValue("@Rejection", model.rejection);
                //cmd.Parameters.AddWithValue("@TotalRejection", model.totalrejection);
                //cmd.Parameters.AddWithValue("@Packing", model.packingtransport);
                //cmd.Parameters.AddWithValue("@TotalPacking", model.totalpackingtransport);
                //cmd.Parameters.AddWithValue("@TotallyCost", model.totallycost);

                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Quotation Updated Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }
        public string CreateQVersion(ssmtbl_QuotationModel model, int QuotationId)
        {
            string result = "Error Updating Quotataion";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspInsertQuotationVersion";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@id", QuotationId);
                cmd.Parameters.AddWithValue("@InquiryNo", model.InquiryNo);
                cmd.Parameters.AddWithValue("@QuotationNo", model.QuotationNo);
                cmd.Parameters.AddWithValue("@CustomerName", model.CustomerName.Trim());

                cmd.Parameters.AddWithValue("@PartDescription", model.PartDescription);
                cmd.Parameters.AddWithValue("@PartNo", model.PartNo);
                cmd.Parameters.AddWithValue("@HeatTreatment", model.HeatTreatmentID);

                cmd.Parameters.AddWithValue("@Material", model.Material);
                // cmd.Parameters.AddWithValue("@Section", model.Section);
                cmd.Parameters.AddWithValue("@Section", model.SectionId); // Sharad
                cmd.Parameters.AddWithValue("@MachainedWeight", model.MachainedWeight);

                cmd.Parameters.AddWithValue("@GrossWeight", model.GrossWeight);
                cmd.Parameters.AddWithValue("@CutWeight", model.CutWeight);
                cmd.Parameters.AddWithValue("@NetWeight", model.NetWeight);

                cmd.Parameters.AddWithValue("@ForgingCostBased", model.ForgingCostBased);
                cmd.Parameters.AddWithValue("@MPICostBasedOn", model.MPICostBasedOn);
                cmd.Parameters.AddWithValue("@SteelCost", model.SteelCost);

                cmd.Parameters.AddWithValue("@Transportation", model.Transportation);
                cmd.Parameters.AddWithValue("@Total", model.Total);
                cmd.Parameters.AddWithValue("@TotalRowMaterialCost", model.TotalRowMaterialCost);

                cmd.Parameters.AddWithValue("@CuttingSquare1", model.CuttingSquare1);
                cmd.Parameters.AddWithValue("@CuttingSquare2", model.CuttingSquare2);

                cmd.Parameters.AddWithValue("@Forging1", model.Forging1);
                cmd.Parameters.AddWithValue("@Forging2", model.Forging2);

                cmd.Parameters.AddWithValue("@HeatTreatment1", model.HeatTreatment1);
                cmd.Parameters.AddWithValue("@HeatTreatment2", model.HeatTreatment2);

                cmd.Parameters.AddWithValue("@ShotBlasting1", model.ShotBlasting1);
                cmd.Parameters.AddWithValue("@ShotBlasting2", model.ShotBlasting2);

                cmd.Parameters.AddWithValue("@MPI1", model.MPI1);
                cmd.Parameters.AddWithValue("@MPI2", model.MPI2);

                cmd.Parameters.AddWithValue("@Grinding1", model.Grinding1);
                cmd.Parameters.AddWithValue("@Grinding2", model.Grinding2);

                cmd.Parameters.AddWithValue("@ColdCoining1", model.ColdCoining1);
                cmd.Parameters.AddWithValue("@ColdCoining2", model.ColdCoining2);

                cmd.Parameters.AddWithValue("@Machining1", model.Machining1);
                cmd.Parameters.AddWithValue("@Machining2", model.Machining2);

                cmd.Parameters.AddWithValue("@DieMaintenance1", model.DieMaintenance1);
                cmd.Parameters.AddWithValue("@DieMaintenance2", model.DieMaintenance2);
                cmd.Parameters.AddWithValue("@Status", InquiryStatus.QuotationPendingForApproval);
                cmd.Parameters.AddWithValue("@FileStatus", InquiryStatus.QuotationPendingForApproval);

                cmd.Parameters.AddWithValue("@TotalConverstionCost", model.TotalConverstionCost);
                cmd.Parameters.AddWithValue("@TotalComponentCost", model.TotalComponentCost);
                cmd.Parameters.AddWithValue("@InitialDieCost", model.InitialDieCost);
                cmd.Parameters.AddWithValue("@UserComment", model.UserComment);

                //var pList = new SqlParameter("@ssmUT_TermsNCondtion_", SqlDbType.Structured);
                //pList.TypeName = "dbo.ssmUT_TermsNCondtion";
                //pList.Value = dt;
                //cmd.Parameters.Add(pList);

                cmd.Parameters.AddWithValue("@Createdby", "Test");
                cmd.Parameters.AddWithValue("@CreatedOn", StandardDateTime.GetDateTime());

                //cmd.Parameters.AddWithValue("@Iccoverhead", model.iccoverhadrm);
                //cmd.Parameters.AddWithValue("@Iccoverheadtotal", model.totaliccoverhadrm);
                //cmd.Parameters.AddWithValue("@Profitconversion", model.profitonconversion);
                //cmd.Parameters.AddWithValue("@TotalProfitconversion", model.totalprofitonconversion);
                //cmd.Parameters.AddWithValue("@Rejection", model.rejection);
                //cmd.Parameters.AddWithValue("@TotalRejection", model.totalrejection);
                //cmd.Parameters.AddWithValue("@Packing", model.packingtransport);
                //cmd.Parameters.AddWithValue("@TotalPacking", model.totalpackingtransport);
                //cmd.Parameters.AddWithValue("@TotallyCost", model.totallycost);
                if (model.iccoverhadrm !=" ")
                {
                    cmd.Parameters.AddWithValue("@Iccoverhead", model.iccoverhadrm);
                }
                if (model.totaliccoverhadrm != " ")
                {
                    cmd.Parameters.AddWithValue("@Iccoverheadtotal", model.totaliccoverhadrm);
                }
                if (model.profitonconversion != " ")
                {
                    cmd.Parameters.AddWithValue("@Profitconversion", model.profitonconversion);
                }
                if (model.totalprofitonconversion != " ")
                {
                    cmd.Parameters.AddWithValue("@TotalProfitconversion", model.totalprofitonconversion);
                }
                if (model.rejection != " ")
                {
                    cmd.Parameters.AddWithValue("@Rejection", model.rejection);
                }
                if (model.totalrejection != " ")
                {
                    cmd.Parameters.AddWithValue("@TotalRejection", model.totalrejection);
                }
                if (model.packingtransport != " ")
                {
                    cmd.Parameters.AddWithValue("@Packing", model.packingtransport);
                }
                if (model.totalpackingtransport != " ")
                {
                    cmd.Parameters.AddWithValue("@TotalPacking", model.totalpackingtransport);
                }
                if (model.totallycost != " ")
                {
                    cmd.Parameters.AddWithValue("@TotallyCost", model.totallycost);
                }

                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Quotation version create Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }


        // Sharad
        public string getSectionNane(int id)
        {
            string section = "";
            try
            {

                string sqlstr = "SELECT xsection FROM LKP_CuutingCalculation_Tb where id = @ID";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@ID", id);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    section = sdr["xsection"].ToString();
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return section;
        }

        // Sharad
        public string GetMaterialGradeByID(int MaterialGradeID)
        {
            string material = "";
            try
            {

                string sqlstr = "SELECT Materialgrade FROM LKP_Colorcode_Tb where Srno = @MaterialGradeID";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.Parameters.AddWithValue("@MaterialGradeID", MaterialGradeID);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    material = sdr["Materialgrade"].ToString();
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return material;
        }

        public List<Dictionary<string, object>> GetPendingQuotaions()
        {
            List<Dictionary<string, object>> objList = new List<Dictionary<string, object>>();
            try
            {
                string sqlstr = "uspGetQuotationCount";
                var connection = gConnection.Connection();
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "GetQuotationCount");

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                connection.Close();
                if (dt.Rows.Count > 0)
                {
                    objList = GetTableRows(dt);
                }
                else
                {
                    
                }
              
            

            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }

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
    }
}