using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using XRP.Controllers;

namespace XRP.Global
{
    public class DropDownSelection
    {
        public static string DropDownSelect = "-Please Select-";
        public List<SelectListItem> DieNumber()
        {
            List<SelectListItem> objList = new List<SelectListItem>();
            try
            {

                string sqlstr = "select * from DieDescription";

                var connection = gConnection.Connection();
                connection.Open();

                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    SelectListItem sli = new SelectListItem
                    {
                        Text = sdr["DieNo"].ToString().Trim(),
                        Value = sdr["Id"].ToString().Trim()
                    };
                    objList.Add(sli);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }

       
        public List<Dictionary<string, object>> Customer()
        {
            DatasController DatasController = new DatasController();
            Dictionary<string, object> parameters = new Dictionary<string, object>();
            parameters.Add("Prefix", "");
            DatasController.Dispose();
            return DatasController.execdList("GetCustNameAndId", parameters);
        }

        public List<Dictionary<string, object>> Department()
        {
            DatasController DatasController = new DatasController();
            Dictionary<string, object> parameters = new Dictionary<string, object>();
            parameters.Add("Action", "getDepartment");
            DatasController.Dispose();
            return DatasController.execdList("uspUser", parameters);
        }
        public List<Dictionary<string, object>> UserRoll()
        {
            DatasController DatasController = new DatasController();
            Dictionary<string, object> parameters = new Dictionary<string, object>();
            parameters.Add("Action", "getUserRoll");
            DatasController.Dispose();
            return DatasController.execdList("uspUser", parameters);
        }
        public List<SelectListItem> FrqRepOrder()
        {
            List<SelectListItem> objList = new List<SelectListItem>();
            try
            {

                string sqlstr = " select ID,Options from LKP_Inquiry_Tb where Type='frqreporder'  ";

                var connection = gConnection.Connection();
                connection.Open();

                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    SelectListItem sli = new SelectListItem
                    {
                        Text = sdr["Options"].ToString().Trim(),
                        Value = sdr["ID"].ToString().Trim()
                    };
                    objList.Add(sli);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }
        public List<SelectListItem> State_CodeDropDown()
        {
            List<SelectListItem> objList = new List<SelectListItem>();
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspBindPlaceOfSupply";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                SqlDataReader sdr = cmd.ExecuteReader();


                while (sdr.Read())
                {
                    SelectListItem sli = new SelectListItem
                    {
                        Text = sdr["Name"].ToString().Trim(),
                        Value = sdr["StateID"].ToString().Trim()
                    };
                    objList.Add(sli);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }

        public List<SelectListItem> VPOType()
        {
            List<SelectListItem> objList = new List<SelectListItem>();
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "uspBindVPOType";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                SqlDataReader sdr = cmd.ExecuteReader();


                while (sdr.Read())
                {
                    SelectListItem sli = new SelectListItem
                    {
                        Text = sdr["Type"].ToString().Trim(),
                        Value = sdr["Id"].ToString().Trim()
                    };
                    objList.Add(sli);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }

        public List<SelectListItem> FeasibilityConditionOfSupply()
        {
            List<SelectListItem> objList = new List<SelectListItem>();
            try
            {

                string sqlstr = " select ID,Options from LKP_Inquiry_Tb where Type='Condition of supply'  ";

                var connection = gConnection.Connection();
                connection.Open();

                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    SelectListItem sli = new SelectListItem
                    {
                        Text = sdr["Options"].ToString().Trim(),
                        Value = sdr["ID"].ToString().Trim()
                    };
                    objList.Add(sli);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }

        public List<SelectListItem> DailyConsumables()
        {
            List<SelectListItem> objList = new List<SelectListItem>();
            try
            {

                string sqlstr = " select ID,ConsumableName from LKP_ConsumableRatePerUnit where Type='dailyconsumptions'  ";

                var connection = gConnection.Connection();
                connection.Open();

                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    SelectListItem sli = new SelectListItem
                    {
                        Text = sdr["ConsumableName"].ToString().Trim(),
                        Value = sdr["ID"].ToString().Trim()
                    };
                    objList.Add(sli);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }
        public List<SelectListItem> FeasibilityNatureofwork()
        {
            List<SelectListItem> objList = new List<SelectListItem>();
            try
            {

                string sqlstr = " select ID,Options from LKP_Inquiry_Tb where Type='Nature of work'  ";

                var connection = gConnection.Connection();
                connection.Open();

                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    SelectListItem sli = new SelectListItem
                    {
                        Text = sdr["Options"].ToString().Trim(),
                        Value = sdr["ID"].ToString().Trim()
                    };
                    objList.Add(sli);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }


        public List<SelectListItem> FeasibilityTypeofjob()
        {
            List<SelectListItem> objList = new List<SelectListItem>();
            try
            {

                string sqlstr = " select ID,Options from LKP_Inquiry_Tb where Type='Type of job'  ";

                var connection = gConnection.Connection();
                connection.Open();

                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    SelectListItem sli = new SelectListItem
                    {
                        Text = sdr["Options"].ToString().Trim(),
                        Value = sdr["ID"].ToString().Trim()
                    };
                    objList.Add(sli);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }


        public List<SelectListItem> FeasibilityLubricantPreferred()
        {
            List<SelectListItem> objList = new List<SelectListItem>();
            try
            {

                string sqlstr = " select ID,Options from LKP_Inquiry_Tb where Type='Lubricant preferred'  ";

                var connection = gConnection.Connection();
                connection.Open();

                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    SelectListItem sli = new SelectListItem
                    {
                        Text = sdr["Options"].ToString().Trim(),
                        Value = sdr["ID"].ToString().Trim()
                    };
                    objList.Add(sli);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }


        public List<SelectListItem> FeasibilityHeatTreatment()
        {
            List<SelectListItem> objList = new List<SelectListItem>();
            try
            {

                string sqlstr = " select ID,Options from LKP_Inquiry_Tb where Type='Heat Treatment'  ";

                var connection = gConnection.Connection();
                connection.Open();

                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    SelectListItem sli = new SelectListItem
                    {
                        Text = sdr["Options"].ToString().Trim(),
                        Value = sdr["ID"].ToString().Trim()
                    };
                    objList.Add(sli);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }


        public List<SelectListItem> FeasibilityStandardApplicable()
        {
            List<SelectListItem> objList = new List<SelectListItem>();
            try
            {

                string sqlstr = " select ID,Options from LKP_Inquiry_Tb where Type='Standard applicable'  ";

                var connection = gConnection.Connection();
                connection.Open();

                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    SelectListItem sli = new SelectListItem
                    {
                        Text = sdr["Options"].ToString().Trim(),
                        Value = sdr["ID"].ToString().Trim()
                    };
                    objList.Add(sli);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }


        public List<SelectListItem> FeasibilityMaterialGrade()
        {
            List<SelectListItem> objList = new List<SelectListItem>();
            try
            {

                string sqlstr = "select Srno,Materialgrade from LKP_Colorcode_Tb order by Materialgrade asc";

                var connection = gConnection.Connection();
                connection.Open();

                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    SelectListItem sli = new SelectListItem
                    {
                        Text = sdr["Materialgrade"].ToString().Trim(),
                        Value = sdr["Srno"].ToString().Trim()
                    };
                    objList.Add(sli);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }

        public List<SelectListItem> Consumables()
        {
            List<SelectListItem> objList = new List<SelectListItem>();
            try
            {

                string sqlstr = "select ID,Code,Description,Specification, Applicationcenter_CostCenter from LKP_Consumable order by Description asc";

                var connection = gConnection.Connection();
                connection.Open();

                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    SelectListItem sli = new SelectListItem
                    {
                        Text = sdr["Description"].ToString().Trim(),
                        Value = sdr["ID"].ToString().Trim()
                    };
                    objList.Add(sli);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }



        public List<SelectListItem> FeasibilityHammerrequired()
        {
            List<SelectListItem> objList = new List<SelectListItem>();
            try
            {

                string sqlstr = " select ID,Options from LKP_Inquiry_Tb where Type='Hammer required'  ";

                var connection = gConnection.Connection();
                connection.Open();

                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    SelectListItem sli = new SelectListItem
                    {
                        Text = sdr["Options"].ToString().Trim(),
                        Value = sdr["ID"].ToString().Trim()
                    };
                    objList.Add(sli);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }



        public List<SelectListItem> CuutingCalculation()
        {
            List<SelectListItem> objList = new List<SelectListItem>();
            try
            {

                string sqlstr = " SELECT xsection,id FROM LKP_CuutingCalculation_Tb";

                var connection = gConnection.Connection();
                connection.Open();

                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    SelectListItem sli = new SelectListItem
                    {
                        Text = sdr["xsection"].ToString().Trim(),
                        Value = sdr["id"].ToString().Trim()
                    };
                    objList.Add(sli);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }



        public List<SelectListItem> GetRatePerList()
        {
            List<SelectListItem> objList = new List<SelectListItem>();
            try
            {
                SelectListItem sli = new SelectListItem
                {
                    Text = "Rate/MT",
                    Value = "Rate/MT"
                };
                objList.Add(sli);
                sli = new SelectListItem
                {
                    Text = "Rate/KG",
                    Value = "Rate/KG"
                };
                objList.Add(sli);
                sli = new SelectListItem
                {
                    Text = "Rate/Liter",
                    Value = "Rate/Liter"
                };
                objList.Add(sli);
                sli = new SelectListItem
                {
                    Text = "Rate/Piece",
                    Value = "Rate/Piece"
                };
                objList.Add(sli);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }



        public List<SelectListItem> GetNotAvailableList()
        {
            List<SelectListItem> objList = new List<SelectListItem>();
            try
            {
                SelectListItem sli = new SelectListItem
                {
                    Text = "NA",
                    Value = "NA"
                };
                objList.Add(sli);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }



        public List<SelectListItem> GetVendorPurchaseOrderTypeList()
        {
            List<SelectListItem> objList = new List<SelectListItem>();
            try
            {
                SelectListItem sli = new SelectListItem
                {
                    Text = "Consumables",
                    Value = "Consumables"
                };
                objList.Add(sli);
                sli = new SelectListItem
                {
                    Text = "Raw Material",
                    Value = "Raw Material"
                };
                objList.Add(sli);
                sli = new SelectListItem
                {
                    Text = "Maintainance Spares",
                    Value = "Maintainance Spares"
                };
                objList.Add(sli);
                sli = new SelectListItem
                {
                    Text = "Outsourcing",
                    Value = "Outsourcing"
                };
                objList.Add(sli);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }



        public List<SelectListItem> GetGoodsInwardTypeList()
        {
            List<SelectListItem> objList = new List<SelectListItem>();
            try
            {
                SelectListItem sli = new SelectListItem
                {
                    Text = "Consumables",
                    Value = "Consumables"
                };
                objList.Add(sli);
                sli = new SelectListItem
                {
                    Text = "Raw Material",
                    Value = "Raw Material"
                };
                objList.Add(sli);
                sli = new SelectListItem
                {
                    Text = "Maintainance Spares",
                    Value = "Maintainance Spares"
                };
                objList.Add(sli);
                sli = new SelectListItem
                {
                    Text = "Outsourcing",
                    Value = "Outsourcing"
                };
                objList.Add(sli);
                sli = new SelectListItem
                {
                    Text = "Repair",
                    Value = "Repair"
                };
                objList.Add(sli);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }



        public List<SelectListItem> GetCostCenter()
        {
            List<SelectListItem> objList = new List<SelectListItem>();
            try
            {

                string sqlstr = " select code,name from LKP_CostCenter ";

                var connection = gConnection.Connection();
                connection.Open();

                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    SelectListItem sli = new SelectListItem
                    {
                        Text = sdr["code"].ToString().Trim() + "-" + sdr["name"].ToString().Trim(),
                        Value = sdr["code"].ToString().Trim()
                    };
                    objList.Add(sli);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }


        public List<SelectListItem> GetDeliveryChallanTypeList()
        {
            List<SelectListItem> objList = new List<SelectListItem>();
            try
            {
                SelectListItem sli = new SelectListItem
                {
                    Text = "Job Dispatch",
                    Value = "Job Dispatch"
                };
                objList.Add(sli);
                sli = new SelectListItem
                {
                    Text = "Outsourcing",
                    Value = "Outsourcing"
                };
                objList.Add(sli);
                sli = new SelectListItem
                {
                    Text = "Lab Testing",
                    Value = "Lab Testing"
                };
                objList.Add(sli);
                sli = new SelectListItem
                {
                    Text = "Repair",
                    Value = "Repair"
                };
                objList.Add(sli);
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objList;
        }



    }
}