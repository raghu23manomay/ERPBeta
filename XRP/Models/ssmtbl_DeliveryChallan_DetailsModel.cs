using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace XRP.Models
{
    public class ssmtbl_DeliveryChallan_DetailsModel
    {
        [Key]
        public int dc_det_auto_id { get; set; }

        //[MaxLength(50)]
        //[Display(Name="Dispatch No")]
        //public string dispatch_no { get; set; }


        [MaxLength(50)]
        [Display(Name = "WO")]
        public string wo { get; set; }

        
        //[MaxLength(100)]
        //[Display(Name="Material Grade")]
        //public string material_grade { get; set; }

        
        //[MaxLength(100)]
        //[Display(Name="Section")]
        //public string section { get; set; }

        
        [MaxLength(50)]
        [Display(Name="Cut Weight")]
        public string cut_weight { get; set; }


        [MaxLength(50)]
        [Display(Name = "Hardness")]
        public string hardness { get; set; }

        
        [MaxLength(50)]
        [Display(Name="Finish Weight")]
        public string finish_weight { get; set; }


        //[MaxLength(100)]
        //[Display(Name = "Heat Code")]
        //public string heat_code { get; set; }

                
        [Display(Name="WO Balance")]
        public decimal wo_balance { get; set; }

        
        [MaxLength(500)]
        [Display(Name="Description")]
        public string description { get; set; }

        
        [MaxLength(100)]
        [Display(Name="HSN/SAC Code")]
        public string hsn_sac_code { get; set; }

        
        [Display(Name="Qty")]
        public decimal qty { get; set; }

        
        [MaxLength(50)]
        [Display(Name="Units")]
        public string units { get; set; }


        [Display(Name = "Taxable Value")]
        public decimal taxable_value { get; set; }

















        [MaxLength(10)]
        public string dispatch_char { get; set; }


        public int dispatch_id { get; set; }

        [MaxLength(50)]
        [Display(Name = "Dispatch No")]
        public string dispatch_no { get; set; }


        [MaxLength(100)]
        [Display(Name = "Delivery Challan Type")]
        public string delivery_challan_type { get; set; }


        [Display(Name = "Customer Name")]
        public string customer_name { get; set; }


        public int customer_id { get; set; }


        [Display(Name = "Customer PO No")]
        public string CustomerPONo { get; set; }


        [MaxLength(100)]
        [Display(Name = "PO Quantity")]
        public string po_qty { get; set; }


        [MaxLength(500)]
        [Display(Name = "HSN Code")]
        public string HSNCode { get; set; }


        [MaxLength(500)]
        [Display(Name = "Customer Part No")]
        public string Customer_part_no { get; set; }


        public int vendor_id { get; set; }



        [Display(Name = "Vendor Name")]
        public string vendor_name { get; set; }


        [MaxLength(100)]
        [Display(Name = "Die No")]
        public string die_no { get; set; }


        [MaxLength(500)]
        [Display(Name = "Reamrk")]
        public string remark { get; set; }


        [MaxLength(100)]
        [Display(Name = "Process")]
        public string process { get; set; }


        [MaxLength(50)]
        [Display(Name = "Vendor PO No")]
        public string vendor_po_no { get; set; }


        [Display(Name = "Expected Date")]
        public DateTime expected_date { get; set; }


        [MaxLength(100)]
        [Display(Name = "Type of Testing")]
        public string type_of_testing { get; set; }


        [MaxLength(500)]
        [Display(Name = "Heat code")]
        public string heat_code { get; set; }


        [Display(Name = "Expected Report Date")]
        public DateTime expected_report_date { get; set; }


        [MaxLength(500)]
        [Display(Name = "Material Grade")]
        public string material_grade { get; set; }


        [MaxLength(500)]
        [Display(Name = "Section")]
        public string section { get; set; }


        [MaxLength(500)]
        [Display(Name = "Returnable Type")]
        public string returnable_type { get; set; }


        [MaxLength(500)]
        [Display(Name = "Part Description")]
        public string part_description { get; set; }


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

        [Display(Name = "Total")]
        public decimal total { get; set; }

        [Display(Name = "Grand Total")]
        public decimal grand_total { get; set; }


        public string CreatedBy { get; set; }

        public DateTime CreatedOn { get; set; }

        public string UpdatedBy { get; set; }

        public DateTime UpdatedOn { get; set; }


        List<ssmtbl_TermsNCondtionModel> ssmtbl_TermsNCondtionModel_List = new List<ssmtbl_TermsNCondtionModel>();
    }
}