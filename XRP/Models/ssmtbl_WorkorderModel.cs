using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace XRP.Models
{
    public class ssmtbl_WorkorderModel
    {

        public int WorkorderID { get; set; }
        [Key]
        [Display(Name = "Workorder No")]
        [Required(ErrorMessage = "Workorder No can't be blank!")]
        public string WorkorderNo { get; set; }


        [Display(Name = "Customer Name")]
        [Required(ErrorMessage = "Customer Name can't be blank!")]
        public string CustomerName { get; set; }


        [Display(Name = "PO Number")]
        public string PoNo { get; set; }


        [Display(Name = "Raw Material")]
        public string RawMaterial { get; set; }


        [Display(Name = "Heat Code")]
        public string HeatCode { get; set; }


        [Display(Name = "Section")]
        //[Required(ErrorMessage = "Section can't be blank!")]
        public string Section { get; set; }     
        

        [Display(Name = "Date Of Issue")]
        public DateTime DateOfIssue { get; set; }

        [Display(Name = "Target Date")]
        public DateTime TargetDate { get; set; }      

        [Display(Name = "Cut Weight")]
        public string CutWeight { get; set; }
       
        [Display(Name = "Color Code")]
        public string ColorCode { get; set; }

        [Display(Name = "Po RM")]
        public string PoRM { get; set; }
         [Display(Name = "Po Section")]
        public string PoSection { get; set; }
        public int POSectionId { get; set; }
        public int AllocatedRM { get; set; }
               
        public string Status { get; set; }

        public string AllocatedSection { get; set; }

        public DateTime ProductionStartDate { get; set; }
        public string RMQty { get; set; }
        public string po_id { get; set; }
        public string DieNumber { get; set; }
        public int NatureOfWork { get; set; }
        public DateTime ApprovalDate { get;  set; }
        public double QtymentionedinPO { get; set; }
        public int FeasibilityHammerRequired { get;  set; }
        public decimal CutLength { get;  set; }
        public string PartName { get;  set; }
        public string ConditionOfSupply { get; set; }
        public string HeatTreatment { get;  set; }
        public string HardnessMin { get;  set; }
        public string HardnessUnit { get;  set; }
        public string HardnessMax { get;  set; }
        public string PartNo { get;  set; }
        public string Type { get; set; }
        public string RfqID { get; set; }
        public int DieRequisitionID { get; set; }
        public DateTime DieReqDate { get;  set; }
        public decimal grossWeight { get; set; }
        public DateTime CreatedDate { get; set; }
        public decimal PlanQty { get; set; }
    }

    public class Paged_ssmtbl_WorkorderModel
    {
        public int TotalRows { get; set; }

        public IEnumerable<ssmtbl_WorkorderModel> ssmtbl_WorkorderModel { get; set; }

        public int PageSize { get; set; }


    }

}