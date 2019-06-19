using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace XRP.Models
{
    public class ssmtbl_QuotationModel
    {
        [Key]
        public int id { get; set; }
        public int QuotationId { get; set; }

        [Display(Name = "Inquiry No")]
        [Required(ErrorMessage = "Inquiry No can't be blank!")]
        public int InquiryNo { get; set; }


        [Display(Name = "Quotation No")]
        [MaxLength(50)]
        public string QuotationNo { get; set; }




        public string address { get; set; }
        [Display(Name = "Customer Name")]
        [MaxLength(50)]
        public string CustomerName { get; set; }


        [Display(Name = "Part Description")]
        [MaxLength(50)]
        public string PartDescription { get; set; }

        [Display(Name = "Part No")]
        [MaxLength(50)]
        public string PartNo { get; set; }

        [Display(Name = "Heat Treatment")]
        [MaxLength(50)]
        public string HeatTreatmentText { get; set; }

        public string HeatTreatmentID { get; set; }


        [Display(Name = "Material")]
        [MaxLength(50)]
        public string Material { get; set; }


        public bool chk_NewQuotation { get; set; }




        [Display(Name = "Version No")]
        public string VersionNo { get; set; }



        [Display(Name = "Section")]
        [MaxLength(50)]
        public string Section { get; set; }
        public long SectionId { get; set; }

        [Display(Name = "Machained Weight")]
        [MaxLength(50)]
        public string MachainedWeight { get; set; }



        [Display(Name = "Gross Weight")]
        public decimal GrossWeight { get; set; }


        [Display(Name = "Cut Weight")]
        public decimal CutWeight { get; set; }

        [Display(Name = "Net Weight")]
        public decimal NetWeight { get; set; }

        [Display(Name = "Forging Cost Based On")]
        [MaxLength(50)]
        public string ForgingCostBased { get; set; }


        [Display(Name = "MPI Cost Based On")]
        [MaxLength(50)]
        public string MPICostBasedOn { get; set; }


        [Display(Name = "Steel Cost")]
        public decimal SteelCost { get; set; }


        [Display(Name = "Transportation")]
        public decimal Transportation { get; set; }


        [Display(Name = "Total")]
        public decimal Total { get; set; }


        [Display(Name = "Total Raw Material Cost")]
        public decimal TotalRowMaterialCost { get; set; }


      
       


        public string CuttingSquare1 { get; set; }

        public string CuttingSquare2 { get; set; }


        //START NEW FIELD ADD 
        public string Forging1 { get; set; }
        public string Forging2 { get; set; }

        public string HeatTreatment1 { get; set; }
        public string HeatTreatment2 { get; set; }

        public string ShotBlasting1 { get; set; }
        public string ShotBlasting2 { get; set; }

        public string MPI1 { get; set; }
        public string MPI2 { get; set; }

        public string Grinding1 { get; set; }
        public string Grinding2 { get; set; }

        public string ColdCoining1 { get; set; }
        public string ColdCoining2 { get; set; }

        public string Machining1 { get; set; }
        public string Machining2 { get; set; }

        public string hardnessmin { get; set; }

        public string hardnessmax { get; set; }
        public string hardnessunits { get; set; }

        //END NEW FIELD ADD 
        public string DieMaintenance1 { get; set; }

        public string DieMaintenance2 { get; set; }


        [Display(Name = "Total Conversion Cost")]
        public decimal TotalConverstionCost { get; set; }


        [Display(Name = "Total Component Cost")]
        public decimal TotalComponentCost { get; set; }


        [Display(Name = "Initial Die Cost")]
        public decimal InitialDieCost { get; set; }
        [Display(Name = "iccoverhadrm")]
        public string iccoverhadrm { get; set; }
        [Display(Name = "totaliccoverhadrm")]
        public string totaliccoverhadrm { get; set; }
        [Display(Name = "profitonconversion")]
        public string profitonconversion { get; set; }
        [Display(Name = "totalprofitonconversion")]
        public string totalprofitonconversion { get; set; }
        [Display(Name = "rejection")]
        public string rejection { get; set; }
        [Display(Name = "totalrejection")]
        public string totalrejection { get; set; }
        [Display(Name = "packingtransport")]
        public string packingtransport { get; set; }
        [Display(Name = "totalpackingtransport")]
        public string totalpackingtransport { get; set; }
        [Display(Name = "totallycost")]
        public string totallycost { get; set; }
        [Display(Name = "PO No.")]
        [MaxLength(50)]
        public string PoNo { get; set; }


        [Display(Name = "File Status")]
        [MaxLength(50)]
        public string FileStatus { get; set; }


        [Display(Name = "Comment")]
        [MaxLength(50)]
        public string Comment { get; set; }


        [Display(Name = "Approval Date")]
        public DateTime ApprovalDate { get; set; }


        [Display(Name = "Approved By")]
        [MaxLength(50)]
        public string ApprovedBy { get; set; }


        [Display(Name = "Created On")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        public DateTime CreatedOn { get; set; }


        [Display(Name = "Created By")]
        [MaxLength(50)]
        public string Createdby { get; set; }


        [Display(Name = "Updated On")]
        public DateTime UpdatedOn { get; set; }


        [Display(Name = "Updated By")]
        [MaxLength(50)]
        public string UpdatedBy { get; set; }


        public decimal PerPieceRate { get; set; }
        public decimal CuttingRate { get; set; }


        [Display(Name="User Comment")]
        public string UserComment { get; set; }


        [Display(Name = "Quotation Version No")]
        public int new_Version_No { get; set; }


        public List<ssmtbl_TermsNCondtionModel> ssmtbl_TermsNCondtionModel { get; set; }

    }


    public class ssmtbl_TermsNCondtionModel
    {
        public int id { get; set; }

        [Display(Name = "Quotation Id")]
        public int QuotationID { get; set; }


        [Display(Name = "Terms & Condition")]
        public string TermsNConditionContent { get; set; }


        [Display(Name = "Terms & Condition Id")]
        public int TermsNConditionID { get; set; }
        [Display(Name = "flag")]
        public bool flag { get; set; }

    }

}