using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace XRP.Models
{
    public class ssmtbl_InquiryModel
    {
        [Key]
        [Display(Name="Enquiry Number")]
        [Required(ErrorMessage="Inquiry No can't be blank!")]
        public int InquiryNo { get; set; }


        [Display(Name = "Customer Name")]
        [Required(ErrorMessage = "Customer Name can't be blank!")]
        public string customerName { get; set; }


        [Display(Name = "Enquiry Receipt Date")]

        public DateTime InquiryDate { get; set; }


        [Display(Name = "Part Name")]
        public string PartName { get; set; }


        [Display(Name = "Part Number")]
        public string PartNo { get; set; }


        [Display(Name = "Customer Drawing Number")]
        public string CustomerDrgNo { get; set; }
        [Display(Name = "HSN / SAC Cose")]
        [Required(ErrorMessage = "HSN / SAC Code can't be blank!")]
        public string HSN { get; set; }


        [Display(Name = "Frequency Of Repeat Order (Quantity)")]
        [Required(ErrorMessage = "Frequency Of Repeat Order (Quantity) can't be blank!")]
        public int FrequencyRepearOrder { get; set; }

        [Display(Name = "Die Number")]
        //[Required(ErrorMessage = "Please Select Die Number!")]
        public string DieNumber { get; set; }
        public int DieID{ get; set; }
        [Display(Name = "Quantity")]
        [Required(ErrorMessage = "Quantity can't be blank!")]
        public int Qty { get; set; }


        [Display(Name = "Status")]
        public string Status { get; set; }

      
        public string VersionNo { get; set; }
        public string createdby { get; set; }
	
        
        
        public DateTime createddate { get; set; }
	
        
        
        public string updatedby { get; set; }



        public DateTime updateddate { get; set; }


        [Display(Name="Comment")]
        public string CommentForClose { get; set; }

        public string Remark { get; set; }
        public int FeasibilityId { get; set; }
        public string QuotationNo { get; set; }
        public int POId { get; set; }
        public int QuotationId { get; set; }
        public string customerPONo { get; set; }
        public string FilePath { get; set; }
    }


    public class Paged_ssmtbl_InquiryModel
    {
        public int TotalRows { get; set; }

        public IEnumerable<ssmtbl_InquiryModel> ssmtbl_InquiryModel { get; set; }

        public int PageSize { get; set; }
        

    }


}