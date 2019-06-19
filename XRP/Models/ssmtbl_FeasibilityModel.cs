using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace XRP.Models
{
    public class ssmtbl_FeasibilityModel
    {
        [Key]
        public int FeasibilityId { get; set; }

        [Display(Name = "Inquiry No")]
        [Required(ErrorMessage = "Inquiry No can't be blank!")]
        public int InquiryNo { get; set; }
	
        
        [Display(Name="Condition of Supply")]
        [Required(ErrorMessage = "Condition of Supply can't be blank!")]
        public int FeasibilityConditionSupply { get; set; }
	
        
        [Display(Name="Nature of Work")]
        [Required(ErrorMessage = "Nature of Work can't be blank!")]
        public int FeasibilityNatureofWork { get; set; }
	
        
        [Display(Name="Type of Job")]
        [Required(ErrorMessage = "Type of Job can't be blank!")]
        public int FeasibilityTypeofJob { get; set; }
	
        
        [Display(Name="Hammer Required")]
        [Required(ErrorMessage = "Hammer Required can't be blank!")]
        public int FeasibilityHammerRequired { get; set; }
	
        
        [Display(Name="Tooling Requirement")]
        public string FeasibilityToolingRequirement { get; set; }

        [Display(Name = "Section")]
        [MaxLength(50)]
        public int Section { get; set; }
        public string SectionName { get; set; }
        public decimal fisdiavalue { get; set; }
	
        
        
        public decimal fisdialength { get; set; }
	
        
        
        public decimal fisdiablocklength { get; set; }
	
        
        
        public decimal fisdiablockwidth { get; set; }
	
        
        
        public decimal fisdiablockheight { get; set; }
	
        public decimal fisdiatotal { get; set; }
        //[Display(Name="Operations Involved")]
        //public string opearationinvolved1 { get; set; }


        //[Display(Name="Raw Material Test")]
        //public string requiredrawmaterialtest { get; set; }


        [Display(Name="Recommended Mill")]
        [Required(ErrorMessage = "Mill specified by customer can't be blank!")]
        public string MillTC { get; set; }


        [Display(Name="Die Description")]
        [Required(ErrorMessage = "Die Description can't be blank!")]
        public string DieDescription { get; set; }
	
        
        [Display(Name="Gross Weight")]
        [Required(ErrorMessage = "Gross Weight can't be blank!")]
        public decimal grossweight { get;set ;}
	
                
        [Display(Name="Cut Weight")]
        [Required(ErrorMessage = "Cut Weight can't be blank!")]
        public decimal cutweight { get; set; }


        [Display(Name = "Cut Length")]
        [Required(ErrorMessage = "Cut Length can't be blank!")]
        public decimal cutlength { get; set; }


        [Display(Name="Net Weight")]
        [Required(ErrorMessage = "Net Weight can't be blank!")]
        public decimal netweight { get; set; }
	
        
        //[Display(Name="Material Weight")]
        [Display(Name = "Machained Weight")]
        public decimal materialweights { get; set; }
	
                
        [Display(Name="Lubricant Preferred")]
        [Required(ErrorMessage = "Lubricant Preferred can't be blank!")]
        public int FeasibilityLubricantPreferred { get; set; }


        [Display(Name="Material Grade")]
        [Required(ErrorMessage = "Material Grade can't be blank!")]
        public int FeasibilityMaterialGrade { get; set; }
	
        
        [Display(Name="Heat Treatment")]
        public int FeasibilityHeattreatment { get; set; }
	
        
        [Display(Name="Standard Applicable")]
        [Required(ErrorMessage = "Standard Applicable can't be blank!")]
        public int Feasibilitystandardapplicable { get; set; }
	
        
        [Display(Name="Min")]
        public string hardnessmin { get; set; }
	
        
        [Display(Name="Max")]
        public string hardnessmax { get; set; }


        [Display(Name="Units")]
        public string hardnessunits { get; set; }
	
        
        [Display(Name="Heat Treatment Micro")]
        public string micro { get; set; }
	
        
        [Display(Name="Statutory & Regulatory Requirement")]
        public string FeasibilityStatutoryandregulatoryrequirement { get; set; }
	
        
        [Display(Name="Remarks")]
        public  string FeasibilityRemark { get; set; }
	
        
        
        public string feasibilitycreatedby { get; set; }
	
                
        public DateTime feasibilitycreateddate { get; set; }
	        
        
        public string feasibilityupdatedby { get; set; }

        
        public DateTime feasibilityupdateddate { get; set; }


        public List<ssmtbl_Feasibility_OperationsInvolvedModel> ssmtbl_Feasibility_OperationsInvolvedModel { get; set; }

        public List<ssmtbl_Feasibility_RawMaterialTestModel> ssmtbl_Feasibility_RawMaterialTestModel { get; set; }
        public List<ssmtbl_Feasibility_MultiVendorModel> ssmtbl_Feasibility_MultiVendorModel { get; set; }

    }

    public class ssmtbl_FeasibilityModel1
    {
        [Key]
        public int FeasibilityId { get; set; }

        [Display(Name = "Inquiry No")]
        [Required(ErrorMessage = "Inquiry No can't be blank!")]
        public int InquiryNo { get; set; }


        [Display(Name = "Condition of Supply")]
        [Required(ErrorMessage = "Condition of Supply can't be blank!")]
        public int FeasibilityConditionSupply { get; set; }


        [Display(Name = "Nature of Work")]
        [Required(ErrorMessage = "Nature of Work can't be blank!")]
        public int FeasibilityNatureofWork { get; set; }


        [Display(Name = "Type of Job")]
        [Required(ErrorMessage = "Type of Job can't be blank!")]
        public int FeasibilityTypeofJob { get; set; }


        [Display(Name = "Hammer Required")]
        [Required(ErrorMessage = "Hammer Required can't be blank!")]
        public int FeasibilityHammerRequired { get; set; }


        [Display(Name = "Tooling Requirement")]
        public string FeasibilityToolingRequirement { get; set; }

        [Display(Name = "Section")]
        [MaxLength(50)]
        public string Section { get; set; }

        public decimal fisdiavalue { get; set; }



        public decimal fisdialength { get; set; }



        public decimal fisdiablocklength { get; set; }



        public decimal fisdiablockwidth { get; set; }



        public decimal fisdiablockheight { get; set; }

        public decimal fisdiatotal { get; set; }
        //[Display(Name="Operations Involved")]
        //public string opearationinvolved1 { get; set; }


        //[Display(Name="Raw Material Test")]
        //public string requiredrawmaterialtest { get; set; }


        [Display(Name = "Recommended Mill")]
        [Required(ErrorMessage = "Mill specified by customer can't be blank!")]
        public string MillTC { get; set; }


        [Display(Name = "Die Description")]
        [Required(ErrorMessage = "Die Description can't be blank!")]
        public string DieDescription { get; set; }


        [Display(Name = "Gross Weight")]
        [Required(ErrorMessage = "Gross Weight can't be blank!")]
        public decimal grossweight { get; set; }


        [Display(Name = "Cut Weight")]
        [Required(ErrorMessage = "Cut Weight can't be blank!")]
        public decimal cutweight { get; set; }


        [Display(Name = "Cut Length")]
        [Required(ErrorMessage = "Cut Length can't be blank!")]
        public decimal cutlength { get; set; }


        [Display(Name = "Net Weight")]
        [Required(ErrorMessage = "Net Weight can't be blank!")]
        public decimal netweight { get; set; }


        //[Display(Name="Material Weight")]
        [Display(Name = "Machained Weight")]
        public decimal materialweights { get; set; }


        [Display(Name = "Lubricant Preferred")]
        [Required(ErrorMessage = "Lubricant Preferred can't be blank!")]
        public int FeasibilityLubricantPreferred { get; set; }


        [Display(Name = "Material Grade")]
        [Required(ErrorMessage = "Material Grade can't be blank!")]
        public int FeasibilityMaterialGrade { get; set; }


        [Display(Name = "Heat Treatment")]
        public int FeasibilityHeattreatment { get; set; }


        [Display(Name = "Standard Applicable")]
        [Required(ErrorMessage = "Standard Applicable can't be blank!")]
        public int Feasibilitystandardapplicable { get; set; }


        [Display(Name = "Min")]
        public string hardnessmin { get; set; }


        [Display(Name = "Max")]
        public string hardnessmax { get; set; }


        [Display(Name = "Units")]
        public string hardnessunits { get; set; }


        [Display(Name = "Heat Treatment Micro")]
        public string micro { get; set; }


        [Display(Name = "Statutory & Regulatory Requirement")]
        public string FeasibilityStatutoryandregulatoryrequirement { get; set; }


        [Display(Name = "Remarks")]
        public string FeasibilityRemark { get; set; }



        public string feasibilitycreatedby { get; set; }


        public DateTime feasibilitycreateddate { get; set; }


        public string feasibilityupdatedby { get; set; }


        public DateTime feasibilityupdateddate { get; set; }

    }
    public class ssmtbl_Feasibility_OperationsInvolvedModel
    {
        public int auto_id { get; set; }
        public int FeasibilityId { get; set; }

        public int Operations_Involved { get; set; }

        public bool Operations_Involved_Select { get; set; }

        public string Operations_Involved_Text { get; set; }
       
    }
    public class ssmtbl_Feasibility_MultiVendorModel
    {
        public int auto_id { get; set; }
        public int FeasibilityId { get; set; }

        public int VendorID { get; set; }

        public bool VendorNameSelect { get; set; }

        public string VendorName { get; set; }

    }
    public class ssmtbl_Feasibility_RawMaterialTestModel
    {
        public int auto_id { get; set; }
        public int FeasibilityId { get; set; }
        
        public int Raw_Material_Test { get; set; }

        public string Raw_Material_Test_Text { get; set; }

        public bool Raw_Material_Test_Select { get; set; }
    }
}