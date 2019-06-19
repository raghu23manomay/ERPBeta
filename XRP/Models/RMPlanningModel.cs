using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace XRP.Models
{
    public class RMPlanningModel
    {

        public string WorkorderNo { get; set; }
         public string GradeOfMaterial { get; set; }
         public string Section { get; set; }       
         public string HeatCode { get; set; }       
         public string Qty { get; set; }
         public string Unit { get; set; }
         public int AllocateRM{ get; set; }
    }

    public class Paged_RMPlanningModel
    {
        public int TotalRows { get; set; }

        public IEnumerable<RMPlanningModel> RMPlanningModel { get; set; }

        public int PageSize { get; set; }


    }

}