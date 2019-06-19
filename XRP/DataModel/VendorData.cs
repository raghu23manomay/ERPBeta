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
    public class VendorData
    {

        public Tuple<long, string> SaveVendor(string cname, string address, string city, long pin, string sal, long mob,
                                      int stdcode, long phno, long fax, string vcode, string remark)
        {
                 string result = "Error Creating Vendor";
            long id = 0;
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Insert_Vendor";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Type", "vendor");
                cmd.Parameters.AddWithValue("@Name", cname.Trim());
                cmd.Parameters.AddWithValue("@Address", address.Trim());
                cmd.Parameters.AddWithValue("@City", city.Trim());
                cmd.Parameters.AddWithValue("@Pincode", pin);
                cmd.Parameters.AddWithValue("@Salutation", sal);
               // cmd.Parameters.AddWithValue("@Contact_Person",Contact_Person);
                cmd.Parameters.AddWithValue("@Mobile_No", mob);
                cmd.Parameters.AddWithValue("@STD_Code", stdcode);
                cmd.Parameters.AddWithValue("@Telephone_No", phno );
                cmd.Parameters.AddWithValue("@Fax", fax);
                //cmd.Parameters.AddWithValue("@Email_ID", objVendMod.Email_ID);
                cmd.Parameters.AddWithValue("@Vendor_Code", vcode);
                cmd.Parameters.AddWithValue("@Remarks", remark.Trim());
                cmd.Parameters.AddWithValue("@isActive", "1");

                SqlDataReader sdr = cmd.ExecuteReader();
                
                
                while (sdr.Read())
                {
                    id = Convert.ToInt64(sdr[0].ToString());
                }
                connection.Close();
                result = "Vendor Created Successfully!";
                // return Json(id, JsonRequestBehavior.AllowGet);
                
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }
            // return Json(id, JsonRequestBehavior.AllowGet);
            return new Tuple<long, string>(id, result);  
        }

      

        //#region Insert Vendor

        //public Tuple<long, string> InsertVendor(ssmtbl_CustomerVendorMasterModel objVendMod)
        //{
        //    string result = "Error Creating Vendor";
        //    long id = 0;
        //    try
        //    {
        //        var connection = gConnection.Connection();
        //        connection.Open();
        //        string sqlstr = "ssmsp_Insert_Vendor";
        //        SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
        //        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        //        cmd.Parameters.AddWithValue("@Type", "vendor");
        //        cmd.Parameters.AddWithValue("@Name", objVendMod.Name.Trim());
        //        cmd.Parameters.AddWithValue("@Address", objVendMod.Address.Trim());
        //        cmd.Parameters.AddWithValue("@City", objVendMod.City.Trim());
        //        cmd.Parameters.AddWithValue("@Pincode", objVendMod.Pincode);
        //        cmd.Parameters.AddWithValue("@Salutation", objVendMod.Salutation);
        //        cmd.Parameters.AddWithValue("@Contact_Person", objVendMod.Contact_Person);
        //        cmd.Parameters.AddWithValue("@Mobile_No", objVendMod.Mobile_No);
        //        cmd.Parameters.AddWithValue("@STD_Code", objVendMod.STD_Code);
        //        cmd.Parameters.AddWithValue("@Telephone_No", objVendMod.Telephone_No);
        //        cmd.Parameters.AddWithValue("@Fax", objVendMod.Fax);
        //        cmd.Parameters.AddWithValue("@Email_ID", objVendMod.Email_ID);
        //        cmd.Parameters.AddWithValue("@Vendor_Code", objVendMod.Vendor_Code);
        //        cmd.Parameters.AddWithValue("@Remarks", objVendMod.Remarks);
        //        cmd.Parameters.AddWithValue("@isActive", "1");

        //        SqlDataReader sdr = cmd.ExecuteReader();


        //        while (sdr.Read())
        //        {
        //            id = Convert.ToInt64(sdr[0].ToString());
        //        }
        //        connection.Close();
        //        result = "Vendor Created Successfully!";
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

        //#region Insert Vendor

        //public string InsertVendor(ssmtbl_CustomerVendorMasterModel objVendMod)
        //{
        //    string result = "Error Creating Vendor";
        //    try
        //    {
        //        var connection = gConnection.Connection();
        //        connection.Open();
        //        string sqlstr = "ssmsp_Insert_Vendor";
        //        SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
        //        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        //        cmd.Parameters.AddWithValue("@Type", "vendor");
        //        cmd.Parameters.AddWithValue("@Name", objVendMod.Name.Trim());
        //        cmd.Parameters.AddWithValue("@Address", objVendMod.Address.Trim());
        //        cmd.Parameters.AddWithValue("@City", objVendMod.City.Trim());
        //        cmd.Parameters.AddWithValue("@Pincode", objVendMod.Pincode);
        //        cmd.Parameters.AddWithValue("@Salutation", objVendMod.Salutation);
        //        cmd.Parameters.AddWithValue("@Contact_Person", objVendMod.Contact_Person);
        //        cmd.Parameters.AddWithValue("@Mobile_No", objVendMod.Mobile_No);
        //        cmd.Parameters.AddWithValue("@STD_Code", objVendMod.STD_Code);
        //        cmd.Parameters.AddWithValue("@Telephone_No", objVendMod.Telephone_No);
        //        cmd.Parameters.AddWithValue("@Fax", objVendMod.Fax);
        //        cmd.Parameters.AddWithValue("@Email_ID", objVendMod.Email_ID);
        //        cmd.Parameters.AddWithValue("@Vendor_Code", objVendMod.Vendor_Code);
        //        cmd.Parameters.AddWithValue("@Remarks", objVendMod.Remarks);
        //        cmd.Parameters.AddWithValue("@isActive", "1");

        //        SqlDataReader sdr = cmd.ExecuteReader();
        //        connection.Close();
        //        long id = 0;
        //        while (sdr.Read())
        //        {
        //            id = Convert.ToInt64(sdr[0].ToString());                   
        //        }

        //        result = "Vendor Created Successfully!";
        //       // return Json(id, JsonRequestBehavior.AllowGet);
        //    }
        //    catch (Exception ex)
        //    {
        //        Global.ErrorHandlerClass.LogError(ex);
        //    }
        //   // return Json(id, JsonRequestBehavior.AllowGet);
        //    return result;
        //}

        //#endregion

        #region Get Max Vendor Code

        public string GetMaxVendorCode()
        {
            string s = "VC-00001";
            string vc = "0";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Get_AllVendor";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@type", "vendor");
                cmd.Parameters.AddWithValue("@Action", "FindmaxVendorCode");
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    vc = (sdr["Vendor_Code"].ToString());
                    s = vc == "" ? "VC-00001" : ("VC-" + ((Convert.ToInt64(vc.Split('-')[1]) + 1).ToString("00000")));
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                s = "VC-00001";
                ErrorHandlerClass.LogError(ex);
            }
            return s;
        }

        #endregion


        
        //      # region Insert Contact Person

        //public string InsertCPIntoDB(long id)
        //{
        //    string s = "";
        //    string vc = "0";
        //    try
        //    {
        //        var connection = gConnection.Connection();
        //        connection.Open();
        //        string sqlstr = "ssmsp_Get_AllVendor";
        //        SqlCommand cmd = new SqlCommand(sqlstr, connection);
        //        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        //        cmd.Parameters.AddWithValue("@type", "vendor");
        //        cmd.Parameters.AddWithValue("@Action", "FindmaxVendorCode");
        //        SqlDataReader sdr = cmd.ExecuteReader();
        //        while (sdr.Read())
        //        {
        //            vc = (sdr["Vendor_Code"].ToString());
        //            s = vc == "" ? "VC-00001" : ("VC-" + ((Convert.ToInt64(vc.Split('-')[1]) + 1).ToString("00000")));
        //        }
        //        connection.Close();
        //    }
        //    catch (Exception ex)
        //    {
        //        s = "VC-00001";
        //        ErrorHandlerClass.LogError(ex);
        //    }
        //    return s;
        //}

        //#endregion
        #region Get All Vendor

        public List<ssmtbl_CustomerVendorMasterModel> GetAllVendor()
        {
            List<ssmtbl_CustomerVendorMasterModel> objVendorList = new List<ssmtbl_CustomerVendorMasterModel>();
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Get_AllVendor";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "Select");
                cmd.Parameters.AddWithValue("@Type", "vendor");
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ssmtbl_CustomerVendorMasterModel objtemp = new ssmtbl_CustomerVendorMasterModel();
                    objtemp.ID = Convert.ToInt32(sdr["ID"].ToString());
                    objtemp.Name = sdr["Name"].ToString();
                    objtemp.Address = (sdr["Address"].ToString());
                    objtemp.City = sdr["City"].ToString();
                    objtemp.Pincode = Convert.ToInt32(sdr["Pincode"].ToString());
                    objtemp.Vendor_Code = ((sdr["Vendor_Code"])).ToString();
                    var remark = ((sdr["Remarks"])).ToString();
                    objtemp.Remarks = remark == "" ? "NA" : remark;
                    objVendorList.Add(objtemp);
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objVendorList;
        }

        #endregion

        #region Get Vendor Using Parameter ID

        public ssmtbl_CustomerVendorMasterModel GetOneVendor(int Id)
        {
            ssmtbl_CustomerVendorMasterModel objVend = new ssmtbl_CustomerVendorMasterModel();
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Get_AllVendor";
                SqlCommand cmd = new SqlCommand(sqlstr, connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID", Id);
                cmd.Parameters.AddWithValue("@Action", "GetVendorByID");
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    objVend.Name = sdr["Name"].ToString();
                    objVend.Telephone_No = (sdr["Telephone_No"].ToString());
                    objVend.STD_Code = Convert.ToInt32(sdr["STD_Code"].ToString());
                    objVend.Address = sdr["Address"].ToString();
                    objVend.City = sdr["City"].ToString();
                    objVend.Pincode = Convert.ToInt32(sdr["Pincode"].ToString());
                    objVend.Contact_Person = sdr["Contact_Person"].ToString();
                    objVend.Email_ID = sdr["Email_ID"].ToString();
                    objVend.Mobile_No = Convert.ToInt32(sdr["Mobile_No"].ToString());
                   
                    objVend.Remarks = sdr["Remarks"].ToString();
                    objVend.Vendor_Code = sdr["Vendor_Code"].ToString();
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                ErrorHandlerClass.LogError(ex);
            }

            return objVend;
        }

        #endregion

        //#region Update Vendor

        //public string UpdateVendor(ssmtbl_CustomerVendorMasterModel objVendMod)
        //{
        //    string result = "Error Updating Vendor";
        //    try
        //    {
        //        var connection = gConnection.Connection();
        //        connection.Open();
        //        string sqlstr = "ssmsp_Update_Vendor";
        //        SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
        //        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        //        cmd.Parameters.AddWithValue("@ID", objVendMod.ID);
        //        cmd.Parameters.AddWithValue("@Name", objVendMod.Name);
        //        cmd.Parameters.AddWithValue("@City", objVendMod.City);
        //        cmd.Parameters.AddWithValue("@Pincode", objVendMod.Pincode);
        //        cmd.Parameters.AddWithValue("@Address", objVendMod.Address);
        //        cmd.Parameters.AddWithValue("@Remarks", objVendMod.Remarks);
        //        cmd.Parameters.AddWithValue("@Vendor_Code", objVendMod.Vendor_Code);               
        //        cmd.ExecuteNonQuery();
        //        connection.Close();
        //        result = "Vendor Updated Successfully!";
        //    }
        //    catch (Exception ex)
        //    {
        //        Global.ErrorHandlerClass.LogError(ex);
        //    }
        //    return result;
        //}

        //#endregion

        #region Update Vendor
        public string UpdateVendor(long id, string cname, string phno, string gst, string pan, string remark, string isactive, string type)
        {
            string result = "Error Updating Customer";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Update_Vendor";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID", id);
                cmd.Parameters.AddWithValue("@Name", cname.Trim());
                cmd.Parameters.AddWithValue("@Telephone_No", phno.Trim());
                cmd.Parameters.AddWithValue("@gst", gst.Trim());
                cmd.Parameters.AddWithValue("@pan", pan.Trim());
                cmd.Parameters.AddWithValue("@Remarks", remark.Trim());
                cmd.Parameters.AddWithValue("@isActive", isactive.Trim());
                cmd.Parameters.AddWithValue("@Type", type.ToString());
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
        //public Tuple<long, string> UpdateVendor(long id, string cname, string address, string city, long pin, string sal, long mob,
        //                              int stdcode, long phno, long fax, string vcode, string remark)
        //{
        //    string result = "Error Updating Vendor";
        //    try
        //    {
        //        var connection = gConnection.Connection();
        //        connection.Open();
        //        string sqlstr = "ssmsp_Update_Vendor";               
        //        SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
        //        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        //        cmd.Parameters.AddWithValue("@ID", id);
        //        cmd.Parameters.AddWithValue("@Type", "vendor");
        //        cmd.Parameters.AddWithValue("@Name", cname.Trim());
        //        cmd.Parameters.AddWithValue("@Address", address.Trim());
        //        cmd.Parameters.AddWithValue("@City", city.Trim());
        //        cmd.Parameters.AddWithValue("@Pincode", pin);
        //        cmd.Parameters.AddWithValue("@Salutation", sal);
        //        // cmd.Parameters.AddWithValue("@Contact_Person",Contact_Person);
        //        cmd.Parameters.AddWithValue("@Mobile_No", mob);
        //        cmd.Parameters.AddWithValue("@STD_Code", stdcode);
        //        cmd.Parameters.AddWithValue("@Telephone_No", phno);
        //        cmd.Parameters.AddWithValue("@Fax", fax);
        //        //cmd.Parameters.AddWithValue("@Email_ID", objVendMod.Email_ID);
        //        cmd.Parameters.AddWithValue("@Vendor_Code", vcode);
        //        cmd.Parameters.AddWithValue("@Remarks", remark.Trim());
        //        cmd.Parameters.AddWithValue("@isActive", "1");              
        //        cmd.ExecuteNonQuery();
        //        connection.Close();
        //        result = "Vendor Updated Successfully!";
        //    }
        //    catch (Exception ex)
        //    {
        //        Global.ErrorHandlerClass.LogError(ex);
        //    }
        //    return new Tuple<long, string>(id, result);  
        //}

        #endregion
        #region Insert MCPerson
        public string InsertMultiContactPerson(long id, string cpname, string email, long mob,string flag)
        {
            {
                string result = "Error inserting multiple Contact Person";
                try
                {
                    var connection = gConnection.Connection();
                    connection.Open();
                    string sqlstr = "ssmsp_Insert_MutipleContactPerson";
                    SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "InsertMultiCP");
                    cmd.Parameters.AddWithValue("@Id", id);
                    cmd.Parameters.AddWithValue("@ContactPersonName", cpname);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Mob", mob);
                    cmd.Parameters.AddWithValue("@flag", flag);
                    cmd.ExecuteNonQuery();
                    connection.Close();
                    result = "Multiple Contact Person inserted Successfully!";

                }
                catch (Exception ex)
                {
                    Global.ErrorHandlerClass.LogError(ex);
                }

                return result;
            }
        }
        #endregion
        public string InsertVPOType(long id, string VpoTypeValues)
        {
            {
                string result = "Error inserting multiple VPOType";
                try
                {
                    var connection = gConnection.Connection();
                    connection.Open();
                    string sqlstr = "VendorPOType";
                    SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "Insert");
                    cmd.Parameters.AddWithValue("@VendorId", id);
                    cmd.Parameters.AddWithValue("@tyepid", VpoTypeValues.Trim());
                  
                    cmd.ExecuteNonQuery();
                    connection.Close();
                    result = "VPOType inserted Successfully!";

                }
                catch (Exception ex)
                {
                    Global.ErrorHandlerClass.LogError(ex);
                }

                return result;
            }
        }
      
        public string InsertMultiAddress(long id, string address, int pid,string flag)
        {
            {
                string result = "Error inserting multiple Contact Person";
                try
                {
                    var connection = gConnection.Connection();
                    connection.Open();
                    string sqlstr = "Addresses";
                    SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "InsertMultiAddress");
                    cmd.Parameters.AddWithValue("@ID", id);
                    cmd.Parameters.AddWithValue("@address", address.Trim());
                    cmd.Parameters.AddWithValue("@pid", pid);
                    cmd.Parameters.AddWithValue("@flag",flag);
                    cmd.ExecuteNonQuery();
                    connection.Close();
                    result = "Multiple Address inserted Successfully!";

                }
                catch (Exception ex)
                {
                    Global.ErrorHandlerClass.LogError(ex);
                }

                return result;
            }
        }
        #region Get MCPerson By ID
        public List<ssmtbl_CustomerVendorMasterModel> BindmlticpById(long id)
        {
            //ssmtbl_CustomerVendorMasterModel objVend = new ssmtbl_CustomerVendorMasterModel();
            List<ssmtbl_CustomerVendorMasterModel> umb = new List<ssmtbl_CustomerVendorMasterModel>();           
                try
                {
                    var connection = gConnection.Connection();
                    connection.Open();
                    string sqlstr = "ssmsp_Insert_MutipleContactPerson";
                    SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "SelectMultiCP");
                    cmd.Parameters.AddWithValue("@Id", id);                  

                    SqlDataReader sdr = cmd.ExecuteReader();
                    while (sdr.Read())
                    {
                        umb.Add(new ssmtbl_CustomerVendorMasterModel
                      {
                       Name = sdr["ContactPersonName"].ToString(),
                       Email_ID = sdr["Email"].ToString(),
                       Mobile_No = Convert.ToInt64(sdr["Mob"].ToString()),
                       flag= Convert.ToBoolean(sdr["flag"].ToString()),
                       
                      });
                }
                    connection.Close();
                }
                catch (Exception ex)
                {
                    Global.ErrorHandlerClass.LogError(ex);
                }

                return umb;
           
        }
        #endregion
        public List<ssmtbl_CustomerVendorMasterModel> Bindaddress(long id)
        {
            //ssmtbl_CustomerVendorMasterModel objVend = new ssmtbl_CustomerVendorMasterModel();
            List<ssmtbl_CustomerVendorMasterModel> umb = new List<ssmtbl_CustomerVendorMasterModel>();
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Insert_MutipleContactPerson";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "SelectMultiAddress");
                cmd.Parameters.AddWithValue("@Id", id);

                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    umb.Add(new ssmtbl_CustomerVendorMasterModel
                    {
                        Name = sdr["Name"].ToString(),
                        Address = sdr["Address"].ToString(),
                       
                        ID = Convert.ToInt32(sdr["PlaceofSupplyId"].ToString()),
                        flag= Convert.ToBoolean(sdr["flag"].ToString()),
                    });
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }

            return umb;

        }
        public string DeleteMultiAddress(long id)
        {
            string result = "Error deleting multiple Contact Person";
            try
            {
                var connection = gConnection.Connection();
                connection.Open();
                string sqlstr = "ssmsp_Insert_MutipleContactPerson";
                SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "DeleteMultiAddress");
                cmd.Parameters.AddWithValue("@Id", id);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                };

                connection.Close();
                result = "Multiple Contact Person Deleted Successfully!";

            }
            catch (Exception ex)
            {
                Global.ErrorHandlerClass.LogError(ex);
            }

            return result;
        }
        #region Delete MCPerson
        public string DeleteMultiContactPerson(long id)
        {
            string result = "Error deleting multiple Contact Person";
             try
                {
                    var connection = gConnection.Connection();
                    connection.Open();
                    string sqlstr = "ssmsp_Insert_MutipleContactPerson";
                    SqlCommand cmd = new SqlCommand(sqlstr, GlobalVariables.gConn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "DeleteMultiCP");
                    cmd.Parameters.AddWithValue("@Id", id);
                   SqlDataReader sdr = cmd.ExecuteReader();
                    while (sdr.Read())
                    { 
                    };
                
                    connection.Close();
                    result = "Multiple Contact Person Deleted Successfully!";                   

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
