using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace XRP.Models
{
    public class ssmtbl_ConsumableModel
    {
        public string ID { get; set; }
        public string Code { get; set; }
        public string Description { get; set; }
        public string Specification { get; set; }

        [Display(Name = "Cost Center")]
        [Required(ErrorMessage = "Cost Center can't be blank!")]
        public string Applicationcenter_CostCenter { get; set; }
        public string Rate { get; set; }

        [Display(Name = "Min Qty")]       
        [Required(ErrorMessage = "Min Qty can't be blank!")]
        public float StorageLevelMin { get; set; }
        [Display(Name = "Max Qty")]        
        [Required(ErrorMessage = "Max Qty can't be blank!")]
        public float MaxQunatity { get; set; }
        [Display(Name = "Balance Qty")]        
        [Required(ErrorMessage = "Balance Qty can't be blank!")]
        public float BalanceQunatity { get; set; }
        public string Flag { get; set; }
        public string CreatedBy { get; set; }
        public string CreatedDate { get; set; }
        public string UpdatedBy { get; set; }
        public string UpdatedDate { get; set; }
        public string Units { get; set; }
        [Display(Name = "Opening Stock")]
        //[Required(ErrorMessage = "Opening Stock can't be blank!")]
        public string OpeningStock { get; set; }
        [Display(Name = "Opening Date")]
        //[Required(ErrorMessage = "Opening Date can't be blank!")]
        public string OpeningDate { get; set; }

    }
        public class Paged_ssmtbl_ConsumableModel
        {
            public int TotalRows { get; set; }

            public IEnumerable<ssmtbl_ConsumableModel> ssmtbl_ConsumableModel { get; set; }

            public int PageSize { get; set; }


        }
  
}