using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace XRP.DataModel
{
    public class LKP_ConsumableModel
    {
        public int id { get; set; }
	
        public string code { get; set; }
	
        public string description { get; set; }
	
        public string specification { get; set; }
	
        public string applicationcenter_costcenter { get; set; }
	
        public float rate { get; set; }
	
        public float storagelevelmin { get; set; }
	
        public float maxqunatity { get; set; }
	
        public float balancequnatity { get; set; }
	
        public bool flag { get; set; }
	
        public string createdby { get; set; }
	
        public DateTime createddate { get; set; }
	
        public string updatedby { get; set; }
	
        public DateTime updateddate { get; set; }
	
        public string units { get; set; }
	
        public float openingstock { get; set; }

        public DateTime openingdate { get; set; }

    }
}