using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace XRP.Models
{
    public class CustomerVendorMaster_TbModel
    {
        public int Id { get; set; }
	
        public string type { get; set; }
            
        public string Name { get; set; }

        public string address { get; set; }

        public string City { get; set; }

        public string Pincode { get; set; }

        public string Salutation { get; set; }

        public string Contact_Person { get; set; }

        public string Mobile_No { get; set; }

        public int STD_Code { get; set; }

        public string Telephone_No { get; set; }

        public string Fax { get; set; }

        public string Email_ID { get; set; }

        public string Vendor_Code { get; set; }

        public string Remarks { get; set; }

        public bool isActive { get; set; }


        public string GSTIN { get; set; }
        public string PAN { get; set; }
        public int SN { get; set; }

    }
}