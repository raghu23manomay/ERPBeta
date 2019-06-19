using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace XRP.Models
{
    public class DieDescription
    {
        [Required(ErrorMessage = "Die No can't be blank!")]
        public string DieNo { get; set; }
        public string CustomerName { get; set; }
        //public long CustomerId { get; set; }
        public string PartName { get; set; }
        [RegularExpression(@"^\d+.\d{0,2}$", ErrorMessage = "Internal Cut-Weight can't have more than 2 decimal places")]
        public decimal InternalCutWeight { get; set; }

    }
    public class Paged_DieDescription
    {
        public int TotalRows { get; set; }

        public IEnumerable<DieDescription> DieDescription { get; set; }

        public int PageSize { get; set; }
        [Required(ErrorMessage = "Die No can't be blank!")]
        public string DieNo { get; set; }
        public string CustomerName { get; set; }
        //public long CustomerId { get; set; }
        public string PartName { get; set; }
        [RegularExpression(@"^\d+.\d{0,2}$", ErrorMessage = "Internal Cut-Weight can't have more than 2 decimal places")]
        public decimal InternalCutWeight { get; set; }


    }
    public class AllDieDescription
    {
        public Paged_DieDescription ssmtbl_PurchaseOrderModel { get; set; }

        public DieDescription ssmtbl_QuotationModel { get; set; }
    }
}