using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace XRP.Models
{
    public class ssmtbl_LKP_ColorCodeModel
    {
        public int SrNo { get; set; }
        public string Materialgrade { get; set; }
        public string Colorcode { get; set; }
        public string Htmlcolor { get; set; }
    }
    public class Paged_ssmtbl_LKP_ColorCodeModel
    {
        public int TotalRows { get; set; }

        public IEnumerable<ssmtbl_LKP_ColorCodeModel> ssmtbl_LKP_ColorCodeModel { get; set; }

        public int PageSize { get; set; }


    }
}