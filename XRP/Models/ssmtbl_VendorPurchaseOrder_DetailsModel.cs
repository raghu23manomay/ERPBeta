using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace XRP.Models
{
    public class ssmtbl_VendorPurchaseOrder_DetailsModel
    {
        [Key]
        public int vpo_det_auto_id { get; set; }

        [MaxLength(50)]
        public string po_no { get; set; }

        
        [MaxLength(100)]
        public string item_code { get; set; }

        
        public string item_description { get; set; }

        
        public decimal qty { get; set; }

        
        public decimal rate { get; set; }

        
        public string rate_per { get; set; }


        public decimal amount { get; set; }


        [MaxLength(100)]
        public string rm_section { get; set; }


        [MaxLength(100)]
        public string rm_gradeofmaterial { get; set; }


        [MaxLength(100)]
        public string process { get; set; }


    }
}