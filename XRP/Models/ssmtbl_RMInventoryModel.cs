using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace XRP.Models
{
    public class ssmtbl_RMInventoryModel
    {
        public int ID { get; set; }
        public string Heatcode { get; set; }
        public string ChallanNo { get; set; }
        public string Quntity { get; set; }
        public string Unit { get; set; }
        public string RMUnit { get; set; }
        public string GradeOfMaterial { get; set; }
        public string Section { get; set; }

    }

    public class ssmtbl_RawMaterialModel
    {

        public string WorkorderNo { get; set; }
        public string Heatcode { get; set; }
        public string AllocatedRMQty { get; set; }

        public string PoRM { get; set; }
        public string PoSection { get; set; }
        public string BalancedRMQty { get; set; }
        public string ChallanQty { get; set; }

    }

    public class Paged_ssmtbl_RawMaterialModel
    {
        public int TotalRows { get; set; }

        public IEnumerable<ssmtbl_RawMaterialModel> ssmtbl_RawMaterialModel { get; set; }

        public int PageSize { get; set; }


    }
    public class Paged_ssmtbl_RMInventoryModel
    {
        public int TotalRows { get; set; }

        public IEnumerable<ssmtbl_RMInventoryModel> ssmtbl_RMInventoryModel { get; set; }

        public int PageSize { get; set; }


    }
}