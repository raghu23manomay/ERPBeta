using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace XRP.Models
{
    public class ssmtbl_LKP_TermsAndConditionModel
    {
        public long id { get; set; }
        public string srno { get; set; }
        public string description { get; set; }
        public string type { get; set; }
        public string formname { get; set; }
        public bool flag { get; set; }
    }
}