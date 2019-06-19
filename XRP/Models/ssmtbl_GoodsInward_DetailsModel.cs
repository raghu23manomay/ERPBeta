using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace XRP.Models
{
    public class ssmtbl_GoodsInward_DetailsModel
    {
        [Key]
        public int gi_det_auto_id { get; set; }
	
        
        [MaxLength(25)]
        public string gin_number { get; set; }
	
        
        [Display(Name="Item Code")]
        [MaxLength(100)]
        public string item_code { get; set; }
	
        
        public string item_description { get; set; }
	
        
        public decimal order_qty { get; set; }
	
        
        public decimal challan_qty { get; set; }
	
        
        public decimal accepted_qty { get; set; }
	
        
        public string rate_per { get; set; }
	
        
        public decimal shortfall { get; set; }


        [MaxLength(500)]
        public string reason { get; set; }


        [MaxLength(100)]
        public string po { get; set; }
	
        
        [MaxLength(100)]
        public string grade { get; set; }
	
        
        [MaxLength(100)]
        public string section { get; set; }
	
        
        [MaxLength(100)]
        public string heat_code { get; set; }


        [MaxLength(100)]
        public string heat_number { get; set; }

        [MaxLength(50)]
        public string unit{ get; set; }

        [MaxLength(50)]
        public string wo { get; set; }


        public decimal dispatch_qty{ get; set; }
         

    }
}