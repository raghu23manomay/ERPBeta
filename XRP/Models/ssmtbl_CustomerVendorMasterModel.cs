using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace XRP.Models
{
    public class ssmtbl_CustomerVendorMasterModel
    {
        //  public int ID{ get; set; }
        //public string Type{ get; set; }
        //[Display(Name = "Name")]
        ////[Required(ErrorMessage = "Name can't be blank!")]
        //public string Name{ get; set; }
        //public string Address{ get; set; }
        //public string City{ get; set; }
        //public int Pincode{ get; set; }
        //public string Salutation{ get; set; }
        //[Display(Name = "Contact Person")]     
        //public string Contact_Person{ get; set; }

        //[Display(Name = "Mobile")]
        //public long Mobile_No { get; set; }

        //[Display(Name = "STD Code")]          
        //public int STD_Code { get; set; }

        //[Display(Name = "Telephone")]       
        //public int Telephone_No { get; set; }

        //public int Fax { get; set; }
        //   [Display(Name = "Email")]       
        //public string Email_ID{ get; set; }
        //[Display(Name = "Vendor Code")]     
        //public string Vendor_Code{ get; set; }

        //public string Remarks{ get; set; }
        //public int isActive{ get; set; }
        public int ID { get; set; }
        public string Type { get; set; }
        [Display(Name = "Name")]
        //[Required(ErrorMessage = "Name can't be blank!")]
        public string Name { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public int Pincode { get; set; }
        public string Salutation { get; set; }
        [Display(Name = "Contact Person")]
        public string Contact_Person { get; set; }

        [Display(Name = "Mobile")]
        public long Mobile_No { get; set; }

        [Display(Name = "STD Code")]
        public int STD_Code { get; set; }

        [Display(Name = "Telephone")]
        public string Telephone_No { get; set; }

        public int Fax { get; set; }
        [Display(Name = "Email")]
        public string Email_ID { get; set; }
        [Display(Name = "Vendor Code")]
        public string Vendor_Code { get; set; }

        public string Remarks { get; set; }
        public int isActive { get; set; }
        [Display(Name = "GST NO")]
        [Required(ErrorMessage = "GST NO. can't be blank!")]
        public string GSTNo { get; set; }
        [Display(Name = "PAN NO")]
        [Required(ErrorMessage = "PAN NO. can't be blank!")]
        public string PANNo { get; set; }
        [Display(Name = "Place of Supply")]
        [Required(ErrorMessage = "Place of Supply can't be blank!")]
        public int PlaceofSupply { get; set; }
        public int SN { get; set; }
        public string type { get; set; }
        public int vcode { get; set; }
        public bool flag { get; set; }

    }
    public class Paged_ssmtbl_CustomerVendorMasterModel
    {
        public int TotalRows { get; set; }

        public IEnumerable<ssmtbl_CustomerVendorMasterModel> ssmtbl_CustomerVendorMasterModel { get; set; }

        public int PageSize { get; set; }


    }
}