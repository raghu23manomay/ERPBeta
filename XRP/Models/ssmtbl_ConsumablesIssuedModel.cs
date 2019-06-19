using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace XRP.Models
{
    public class ssmtbl_ConsumablesIssuedModel
    {
        public string ID { get; set; }

        [Display(Name = "Code")]
        [Required(ErrorMessage = "Code can't be blank!")]
        public string Code { get; set; }

        [Display(Name = "Name")]
        [Required(ErrorMessage = "Name can't be blank!")]
        public string IssuedTo { get; set; }

        [Display(Name = "Date")]
        [Required(ErrorMessage = "Date can't be blank!")]
        public DateTime IssuedDate { get; set; }

        [Display(Name = "Quantity")]
        [Required(ErrorMessage = "Quantity can't be blank!")]
        public string IssuedQuantity { get; set; }
        //[Display(Name = "Name")]
        //[Required(ErrorMessage = "Name can't be blank!")]
        public string IssuedBy { get; set; }

        [Display(Name = "Balance")]
        [Required(ErrorMessage = "Balance can't be blank!")]
        public string BalanceQunatity { get; set; }

        [Display(Name = "Min Qty")]
        [Required(ErrorMessage = "Min Qty can't be blank!")]
        public string MinQty { get; set; }
        public string Flag { get; set; }
        public string CreatedBy { get; set; }
        public DateTime CreatedDate { get; set; }
        public string UpdatedBy { get; set; }
        public DateTime UpdatedDate { get; set; }
        [Display(Name = "Description")]
        [Required(ErrorMessage = "Description can't be blank!")]
        public string Description { get; set; }

    }

    public class Paged_ssmtbl_ConsumablesIssuedModel
    {
        public int TotalRows { get; set; }

        public IEnumerable<ssmtbl_ConsumablesIssuedModel> ssmtbl_ConsumablesIssuedModel { get; set; }

        public int PageSize { get; set; }


    }
}