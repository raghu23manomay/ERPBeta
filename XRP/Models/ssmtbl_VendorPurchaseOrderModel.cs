using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace XRP.Models
{
    public class ssmtbl_VendorPurchaseOrderModel
    {
        [Key]
        public int auto_id { get; set; }

        [MaxLength(10)]
        public string po_char { get; set; }
        public string PartyTYpe { get; set; }
        public int po_id { get; set; }
        public int vpo_id { get; set; }
        public int cstpo_id { get; set; }

        [Display(Name="PO No")]
        [Required(ErrorMessage="PO No can't be blank!")]
        [MaxLength(50)]
        public string po_no { get; set; }


        [Display(Name = "Quotation Ref No")]
        [MaxLength(100)]
        [Required(ErrorMessage = "Quotation Ref No can't be blank!")]
        public string quotation_ref_no { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        [Display(Name = "Quotation Ref Date")]
        public DateTime quotation_ref_date { get; set; }


        public int vendor_id { get; set; }
        public int contact_person_id { get; set; }


        [Display(Name = "Vendor Name")]
        [Required(ErrorMessage = "Vendor Name can't be blank!")]
        public string vendor_name { get; set; }


        [Display(Name = "Vendor Email")]
        public string vendor_email { get; set; }


        [Display(Name = "Vendor Mobile")]
        public string vendor_mobile { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        [Display(Name = "PO Date")]
        public DateTime po_date { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        [Display(Name = "Valid Date")]
        public DateTime valid_date { get; set; }


        [Display(Name = "Contact Person")]
        [Required(ErrorMessage="Contact Person can't be blank!")]
        public string contact_person { get; set; }

      

        [Display(Name = "Contact Email")]
        public string contact_person_email { get; set; }


        [Display(Name = "Contact Mobile")]
        public string contact_person_mobile { get; set; }


        [Display(Name = "Email")]
        public string email { get; set; }

        
        [MaxLength(100)]
        public string vendor_po_type { get; set; }


        [MaxLength(100)]
        public string vendor_po_status { get; set; }


        
        [Display(Name="Comment")]
        public string Comment { get; set; }

        
        [Display(Name="Upload File")]
        public string file_path { get; set; }


        [Display(Name = "Total")]
        public decimal total { get; set; }


        [Display(Name = "CGST(%)")]
        public decimal cgst_perc { get; set; }


        [Display(Name = "CGST Amount")]
        public decimal cgst_amt { get; set; }


        [Display(Name = "SGST(%)")]
        public decimal sgst_perc { get; set; }


        [Display(Name = "SGST Amount")]
        public decimal sgst_amt { get; set; }


        [Display(Name = "IGST(%)")]
        public decimal igst_perc { get; set; }


        [Display(Name = "IGST Amount")]
        public decimal igst_amt { get; set; }


        [Display(Name = "Grand Total")]
        public decimal grand_total { get; set; }



        [Display(Name = "GSTIN")]
        public string GSTIN { get; set; }


        [Display(Name = "PAN")]
        public string PAN { get; set; }


        
        [MaxLength(50)]
        public string CreatedBy { get; set; }


        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        public DateTime CreatedOn { get; set; }

        
        [MaxLength(50)]
        public string UpdatedBy { get; set; }


        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        public DateTime UpdatedOn { get; set; }


        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        public DateTime ApprovalDate { get; set; }



        [MaxLength(50)]
        public string ApprovedBy { get; set; }



        [Display(Name = "FOR ALL DIA")]
        public bool for_all_dia { get; set; }


        [Display(Name = "DIA No")]
        [MaxLength(50)]
        public string dia_no { get; set; }
        public string Address { get; set; }
        public int VersionNo { get; set; }

        public List<ssmtbl_VendorPurchaseOrder_DetailsModel> ssmtbl_VendorPurchaseOrder_DetailsModel { get; set; }

        public List<ssmtbl_TermsNCondtionModel> ssmtbl_TermsNCondtionModel { get; set; }
        public string CustomerPONo { get; set; }
        public string customerName { get; set; }
        public DateTime cstPODate { get; set; }
    }


    public class Paged_ssmtbl_VendorPurchaseOrderModel
    {
        public string ginNumber;

        public List<ssmtbl_GoodsInward_DetailsModel> ssmtbl_GoodsInward_DetailsModel { get; set; }
        public List<ssmtbl_VendorPurchaseOrderModel> ssmtbl_VendorPurchaseOrderModelList { get; set; }

        public List<ssmtbl_GoodsInward_DocReceivedModel> ssmtbl_GoodsInward_DocReceivedModel { get; set; }
        // public string vendor_po_type { get; set; }
        [Key]
        public int auto_id { get; set; }

        [MaxLength(10)]
        public string po_char { get; set; }

        public int po_id { get; set; }

       

        [Display(Name = "PO No")]
        [Required(ErrorMessage = "PO No can't be blank!")]
        [MaxLength(50)]
        public string po_no { get; set; }


        [Display(Name = "Quotation Ref No")]
        [MaxLength(100)]
        [Required(ErrorMessage = "Quotation Ref No can't be blank!")]
        public string quotation_ref_no { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        [Display(Name = "Quotation Ref Date")]
        public DateTime quotation_ref_date { get; set; }


        public int vendor_id { get; set; }
        public int contact_person_id { get; set; }


        [Display(Name = "Vendor Name")]
        [Required(ErrorMessage = "Vendor Name can't be blank!")]
        public string vendor_name { get; set; }


        [Display(Name = "Vendor Email")]
        public string vendor_email { get; set; }


        [Display(Name = "Vendor Mobile")]
        public string vendor_mobile { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        [Display(Name = "PO Date")]
        public DateTime po_date { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        [Display(Name = "Valid Date")]
        public DateTime valid_date { get; set; }


        [Display(Name = "Contact Person")]
        [Required(ErrorMessage = "Contact Person can't be blank!")]
        public string contact_person { get; set; }



        [Display(Name = "Contact Email")]
        public string contact_person_email { get; set; }


        [Display(Name = "Contact Mobile")]
        public string contact_person_mobile { get; set; }


        [Display(Name = "Email")]
        public string email { get; set; }


        [MaxLength(100)]
        public string vendor_po_type { get; set; }


        [MaxLength(100)]
        public string vendor_po_status { get; set; }



        [Display(Name = "Comment")]
        public string Comment { get; set; }


        [Display(Name = "Upload File")]
        public string file_path { get; set; }


        [Display(Name = "Total")]
        public decimal total { get; set; }


        [Display(Name = "CGST(%)")]
        public decimal cgst_perc { get; set; }


        [Display(Name = "CGST Amount")]
        public decimal cgst_amt { get; set; }


        [Display(Name = "SGST(%)")]
        public decimal sgst_perc { get; set; }


        [Display(Name = "SGST Amount")]
        public decimal sgst_amt { get; set; }


        [Display(Name = "IGST(%)")]
        public decimal igst_perc { get; set; }


        [Display(Name = "IGST Amount")]
        public decimal igst_amt { get; set; }


        [Display(Name = "Grand Total")]
        public decimal grand_total { get; set; }



        [Display(Name = "GSTIN")]
        public string GSTIN { get; set; }


        [Display(Name = "PAN")]
        public string PAN { get; set; }



        [MaxLength(50)]
        public string CreatedBy { get; set; }


        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        public DateTime CreatedOn { get; set; }


        [MaxLength(50)]
        public string UpdatedBy { get; set; }


        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        public DateTime UpdatedOn { get; set; }


        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        public DateTime ApprovalDate { get; set; }



        [MaxLength(50)]
        public string ApprovedBy { get; set; }



        [Display(Name = "FOR ALL DIA")]
        public bool for_all_dia { get; set; }


        [Display(Name = "DIA No")]
        [MaxLength(50)]
        public string dia_no { get; set; }
        public string Address { get; set; }
        public int VersionNo { get; set; }

        public List<ssmtbl_VendorPurchaseOrder_DetailsModel> ssmtbl_VendorPurchaseOrder_DetailsModel { get; set; }

        public List<ssmtbl_TermsNCondtionModel> ssmtbl_TermsNCondtionModel { get; set; }
    

    }


    public class ssmtbl_VendorPurchaseOrderNew
    {
        public ssmtbl_VendorPurchaseOrderModel ssmtbl_VendorPurchaseOrderModel { get; set; }

        public List<ssmtbl_VendorPurchaseOrder_DetailsModel> ssmtbl_VendorPurchaseOrder_DetailsModelList { get; set; }

        public HttpPostedFileBase file { get; set; }

        public List<ssmtbl_TermsNCondtionModel> ssmtbl_TermsNCondtionModel { get; set; }

        public string po_no { get; set; }
    }

}