using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace XRP.Models
{
    public class ssmtbl_GoodsInward_DocReceivedModel
    {
        public int gi_dr_auto_id { get; set; }
	
        public string gin_number { get; set; }
	
        public int doc_id { get; set; }

        [MaxLength(500)]
        public string doc_name { get; set; }

        public bool ischecked { get; set; }

    }
}