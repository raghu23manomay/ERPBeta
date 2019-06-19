using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace XRP.Models
{
    public class ssmtbl_PurchaseOrderModel
    {
        [Key]
        public int po_id { get; set; }
	
       
        [Display(Name= "Inquiry No")]
        public int InquiryNo { get; set; }
        public string WorkorderNo1 { get; set; }

        [Display(Name="Customer Name")]
        public string customerName { get; set; }
	
        
        [Display(Name= "Quotation No")]
        public string QuotationNo { get; set; }
	
        
        [Display(Name="Customer PO No")]
        [Required(ErrorMessage="Customer PO No can't be blank!")]
        public string CustomerPONo { get; set; }
	
        
        [Display(Name="PO Validity")]
        public DateTime POValidity { get; set; }
	
        
        [Display(Name="PO Qty")]
        public string QtymentionedinPO { get; set; }
	
        
        [Display(Name="Die Number")]
        public string DieNumber { get; set; }
	
        
        [Display(Name="HSN Code")]
        public string HSNCode { get; set; }
	
        
        [Display(Name="Steel Cost")]
        public decimal SteelCost { get; set;}
	
        
        [Display(Name="Transportation")]
        public decimal Transportation { get; set; }
	
        
        [Display(Name="Total")]
        public decimal Total { get; set; }
	
        
        [Display(Name="Total Raw Material Cost")]
        public decimal TotalRowMaterialCost { get; set; }
	
        
        
        public decimal CuttingSquare1 { get; set; }

        public decimal CuttingSquare2 { get; set; }


        //START NEW FIELD ADD 
        public decimal Forging1 { get; set; }
        public decimal Forging2 { get; set; }

        public decimal HeatTreatment1 { get; set; }
        public decimal HeatTreatment2 { get; set; }

        public decimal ShotBlasting1 { get; set; }
        public decimal ShotBlasting2 { get; set; }

        public decimal MPI1 { get; set; }
        public decimal MPI2 { get; set; }

        public decimal Grinding1 { get; set; }
        public decimal Grinding2 { get; set; }

        public decimal ColdCoining1 { get; set; }
        public decimal ColdCoining2 { get; set; }

        public decimal Machining1 { get; set; }
        public decimal Machining2 { get; set; }

        //END NEW FIELD ADD 
        public decimal DieMaintenance1 { get; set; }

        public decimal DieMaintenance2 { get; set; }


        [Display(Name = "Total Conversion Cost")]
        public decimal TotalConverstionCost { get; set; }


        [Display(Name = "Total Component Cost")]
        public decimal TotalComponentCost { get; set; }


        [Display(Name = "Initial Die Cost")]
        public decimal InitialDieCost { get; set; }

	
        public string Filepath { get; set; }

        [Display(Name="CGST")]
        public decimal CGST { get; set; }
	
        
        [Display(Name="IGST")]
        public decimal IGST { get; set; }


        [Display(Name = "SGST")]
        public decimal SGST { get; set; }


        [Display(Name = "Created By")]
        public string createdby { get; set; }


        [Display(Name = "Created Date")]
        public DateTime createddate { get; set; }
	
        
        public string updatedby { get; set; }


        public DateTime updateddate { get; set; }

        public int QuotationId { get; set; }


        [Display(Name="PO Status")]
        public string POStatus { get; set; }

        [Display(Name = "Comment")]
        public string Comment { get; set; }

        [Display(Name = "Approval Date")]
        public DateTime ApprovalDate { get; set; }

        [Display(Name = "Approved By")]
        public string ApprovedBy { get; set; }

        [Display(Name="PO Qty Open")]
        public bool POQty_Open { get; set; }
        [Display(Name = "sameasquotation")]
        public bool sameasquotation { get; set; }
       
        public string CutWeight { get;  set; }
        public string HeatCode { get;  set; }
        public string ColorCode { get;  set; }
        public string RawMaterial { get;  set; }
        public string Section { get;  set; }
        public string PoRM { get;  set; }
        public string PoSection { get;  set; }
        public string PoNo { get;  set; }
    }


    public class ssmtbl_Quotation_PoModel
    {
        public ssmtbl_PurchaseOrderModel ssmtbl_PurchaseOrderModel { get; set; }

        public ssmtbl_QuotationModel ssmtbl_QuotationModel { get; set; }
    }
    public class Paged_ssmtbl_PurchaseOrderModel
    {
        public int TotalRows { get; set; }

        public IEnumerable<ssmtbl_PurchaseOrderModel> ssmtbl_PurchaseOrderModel { get; set; }

        public int PageSize { get; set; }
        public string WorkorderNo { get;  set; }
    }
}