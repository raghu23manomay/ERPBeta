using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace XRP.Models
{
    public class ssmtbl_VendorPurchaseOrderTermsNCondtionModel
    {
        [Key]
        public int id { get; set; }
	
        public string po_no { get; set; }
	
        
        public int TermsNConditionID { get; set; }

        [MaxLength(500)]
        public string TermsNConditionContent { get; set; }

    }
}