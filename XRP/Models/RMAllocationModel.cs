using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace XRP.Models
{
    public class RMAllocationModel
    {
       
        public string WorkorderNo { get; set; }
        public string GradeOfMaterial { get; set; }
        public string Section { get; set; }
        public string HeatCode { get; set; }
        public string Qty { get; set; }
        public string Unit { get; set; }
    }

    public class Paged_RMAllocationModel
    {
        public int TotalRows { get; set; }

        public IEnumerable<RMAllocationModel> RMAllocationModel { get; set; }

        public int PageSize { get; set; }


    }
}