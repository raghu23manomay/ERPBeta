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
    public class CustomerData
    {
        #region Get All Customer

        public List<ssmtbl_CustomerModel> GetAllVendor(string type)
        {
            List<ssmtbl_CustomerModel> objtempomerList = new List<ssmtbl_CustomerModel>();
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Get_AllVendor";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "SelectVendor");
              
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_CustomerModel objtemp = new ssmtbl_CustomerModel();
                    //objtemp.SN = Convert.ToInt32(sdr["SN"].ToString());
                    objtemp.ID = Convert.ToInt32(sdr["ID"].ToString());
                    objtemp.Name = sdr["Name"].ToString();
                    //objtemp.Address = (sdr["Address"].ToString());
                    objtemp.Telephone_No = (sdr["Telephone_No"].ToString());
                    objtemp.flag = Convert.ToBoolean(sdr["isActive"].ToString());
                    objtemp.tag = (sdr["tags"].ToString());
                    objtempomerList.Add(objtemp);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objtempomerList;
        }

        #endregion
        public List<ssmtbl_CustomerModel> GetAllCustomer(string type)
        {
            List<ssmtbl_CustomerModel> objtempomerList = new List<ssmtbl_CustomerModel>();
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Get_AllVendor";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "selectcustomer");

                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_CustomerModel objtemp = new ssmtbl_CustomerModel();
                    //objtemp.SN = Convert.ToInt32(sdr["SN"].ToString());
                    objtemp.ID = Convert.ToInt32(sdr["ID"].ToString());
                    objtemp.Name = sdr["Name"].ToString();
                    objtemp.Address = (sdr["Address"].ToString());
                    objtemp.Telephone_No = (sdr["Telephone_No"].ToString());
                   
                    objtempomerList.Add(objtemp);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objtempomerList;
        }

        #region Get Customer Using ID

        public ssmtbl_CustomerModel GetOneCustomer(int Id)
        {
            ssmtbl_CustomerModel objtemp = new ssmtbl_CustomerModel();
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Get_AllVendor";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID", Id);
                cmd.Parameters.AddWithValue("@Action", "GetCustomerByID");
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objtemp.Name = sdr["Name"].ToString();                    
                    objtemp.Telephone_No = (sdr["Telephone_No"].ToString());
                    objtemp.GSTNo = (sdr["gst"].ToString());
                    objtemp.PANNo = (sdr["pan"].ToString());
                    objtemp.Remarks = sdr["Remarks"].ToString();
                    objtemp.Vendor_Code= sdr["Vendor_Code"].ToString();
                    objtemp.flag = Convert.ToBoolean(sdr["isActive"].ToString());
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

        #region Update Customer

        public string UpdateCustomer(long id, string cname, string phno, string gst, string pan, string remark,string isactive,string type)
        {
            string result = "Error Updating Customer";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Update_Customer";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID",id);
                cmd.Parameters.AddWithValue("@Name",cname.Trim());
                cmd.Parameters.AddWithValue("@Telephone_No",phno.Trim());
                cmd.Parameters.AddWithValue("@gst", gst.Trim());
                cmd.Parameters.AddWithValue("@pan", pan.Trim());
                cmd.Parameters.AddWithValue("@Remarks", remark.Trim());
                cmd.Parameters.AddWithValue("@isActive", isactive.Trim());
                cmd.Parameters.AddWithValue("@Type",type.ToString());
                cmd.ExecuteNonQuery();
                connection.Close();
                result = "Customer Updated Successfully!";
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            return result;
        }

        #endregion

        #region Insert Customer

        public Tuple<long, string> InsertCustomer(string cname,string gst,string pan,string phno, string remark,string type,string vcode)
        {
            string result = "Error Creating Customer";
            long id = 0;
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Insert_Customer";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Type",type.Trim());
                cmd.Parameters.AddWithValue("@Name", cname.Trim());
                cmd.Parameters.AddWithValue("@gst", gst.Trim());
                cmd.Parameters.AddWithValue("@pan", pan.Trim());

                cmd.Parameters.AddWithValue("@Telephone_No", phno.Trim());
                cmd.Parameters.AddWithValue("@Remarks", remark.Trim());
              
                cmd.Parameters.AddWithValue("@isActive", "1");
                cmd.Parameters.AddWithValue("@vcode", vcode.Trim());

                SqlDataReader sdr = cmd.ExecuteReader();


                while (sdr.Read())
                {
                    id = Convert.ToInt64(sdr[0].ToString());
                }
                connection.Close();
                result = "Customer Created Successfully!";
                // return Json(id, JsonRequestBehavior.AllowGet);

            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            // return Json(id, JsonRequestBehavior.AllowGet);
            return new Tuple<long, string>(id, result);
        }

        #endregion


        #region Update Customer

        public Tuple<long, string> UpdateCustomer(long id,string cname, string address, string city, long pin, string sal, long mob,
                                      int stdcode, long phno, long fax, string vcode, string remark)
        {
            string result = "Error Updating Customer";
            
            try
            {
                var connection = gConnection.Connection();
                connection.Open();              
                string sqlstr = "ssmsp_Update_Customer";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID", id);
                cmd.Parameters.AddWithValue("@Type", "customer");
                cmd.Parameters.AddWithValue("@Name", cname.Trim());
                cmd.Parameters.AddWithValue("@Address", address.Trim());
                cmd.Parameters.AddWithValue("@City", city.Trim());
                cmd.Parameters.AddWithValue("@Pincode", pin);
                cmd.Parameters.AddWithValue("@Salutation", sal);
                //cmd.Parameters.AddWithValue("@Contact_Person", objCustMod.Contact_Person);
                cmd.Parameters.AddWithValue("@Mobile_No", mob);
                cmd.Parameters.AddWithValue("@STD_Code", stdcode);
                cmd.Parameters.AddWithValue("@Telephone_No", phno);
                cmd.Parameters.AddWithValue("@Fax", fax);
                //cmd.Parameters.AddWithValue("@Email_ID", objCustMod.Email_ID);
                cmd.Parameters.AddWithValue("@Vendor_Code", vcode);
                cmd.Parameters.AddWithValue("@Remarks", remark);
                SqlDataReader sdr = cmd.ExecuteReader();


                while (sdr.Read())
                {
                    id = Convert.ToInt64(sdr[0].ToString());
                }
                connection.Close();
                result = "Customer Updated Successfully!";
                // return Json(id, JsonRequestBehavior.AllowGet);

            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            // return Json(id, JsonRequestBehavior.AllowGet);
            return new Tuple<long, string>(id, result);
        }

        #endregion

        //#region Insert Customer

        //public Tuple<long, string> InsertCustomer(ssmtbl_CustomerModel objCustMod)
        //{
        //    string result = "Error Creating Customer";
        //    long id = 0;
        //    try
        //    {
        //        var connection = gConnection.Connection();
        //        connection.Open();
        //        string sqlstr = "ssmsp_Insert_Customer";
        //        SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
        //        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        //        cmd.Parameters.AddWithValue("@Type", "customer");
        //        cmd.Parameters.AddWithValue("@Name", objCustMod.Name.Trim());
        //        cmd.Parameters.AddWithValue("@Address", objCustMod.Address.Trim());
        //        cmd.Parameters.AddWithValue("@City", objCustMod.City.Trim());
        //        cmd.Parameters.AddWithValue("@Pincode", objCustMod.Pincode);
        //        cmd.Parameters.AddWithValue("@Salutation", objCustMod.Salutation);
        //        cmd.Parameters.AddWithValue("@Contact_Person", objCustMod.Contact_Person);
        //        cmd.Parameters.AddWithValue("@Mobile_No", objCustMod.Mobile_No);
        //        cmd.Parameters.AddWithValue("@STD_Code", objCustMod.STD_Code);
        //        cmd.Parameters.AddWithValue("@Telephone_No", objCustMod.Telephone_No);
        //        cmd.Parameters.AddWithValue("@Fax", objCustMod.Fax);
        //        cmd.Parameters.AddWithValue("@Email_ID", objCustMod.Email_ID);
        //        cmd.Parameters.AddWithValue("@Vendor_Code", objCustMod.Vendor_Code);
        //        cmd.Parameters.AddWithValue("@Remarks", objCustMod.Remarks);
        //        cmd.Parameters.AddWithValue("@isActive", "1");

        //        SqlDataReader sdr = cmd.ExecuteReader();


        //        while (sdr.Read())
        //        {
        //            id = Convert.ToInt64(sdr[0].ToString());
        //        }
        //        connection.Close();
        //        result = "Customer Created Successfully!";
        //        // return Json(id, JsonRequestBehavior.AllowGet);

        //    }
        //    catch (Exception ex)
        //    {
        //        Global.ErrorHandlerClass.LogError(ex);
        //    }
        //    // return Json(id, JsonRequestBehavior.AllowGet);
        //    return new Tuple<long, string>(id, result);
        //}

        //#endregion



     
    }
}