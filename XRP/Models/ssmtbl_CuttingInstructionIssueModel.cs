using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace XRP.Models
{
    public class ssmtbl_CuttingInstructionIssueModel
    {
        public string ID { get; set; }
        [Display(Name="Cut Date")]
        public DateTime CutDate { get; set; }
        [Display(Name="To")]
        public string CutTo { get; set; }
         [Display(Name = "From")]
        public string CutFrom { get; set; }
        [Display(Name = "Part Name")]
        public string PartName { get; set; }
        [Display(Name = "Material Specification")]
        public string MaterialSpecification { get; set; }
        [Display(Name = "Die No")]
        public string DieNo { get; set; }
        public string Heatcode { get; set; }
        public string Section { get; set; }
        public string Colorcode { get; set; }
        public string CutWeight { get; set; }
        public string CutLength { get; set; }
        public string PlanQty { get; set; }
        public string ActualQty { get; set; }
        public string PreparedBy { get; set; }
        public string ApprovedBy { get; set; }
        public string CreatedBy { get; set; }
        public DateTime CreatedDate { get; set; }
        public string UpdatedBy { get; set; }
        public DateTime UpdatedDate { get; set; }
         [Display(Name = "RM Required Qty ")]
        public string RMRequiredQty { get; set; }
        [Display(Name = "Workorder No")]
        public string WorkorderNo { get; set; }
         [Display(Name = "Internal Cut Wt")]
        public string InternalCutWt { get; set; }


    }
}