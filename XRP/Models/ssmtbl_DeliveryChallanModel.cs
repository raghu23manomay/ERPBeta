using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace XRP.Models
{
    public class ssmtbl_DeliveryChallanModel
    {
        [Key]
        public int auto_id { get; set; }
        [MaxLength(500)]
        [Display(Name = "Type")]
        public string type { get; set; }
        [MaxLength(10)]
        public string dispatch_char { get; set; }

        
        public int dispatch_id { get; set; }

        [MaxLength(50)]
        [Display(Name="Dispatch No")]
        public string dispatch_no { get; set; }

        
        [MaxLength(100)]
        [Display(Name="Delivery Challan Type")]
        public string delivery_challan_type { get; set; }

        
        [Display(Name="Customer Name")]
        public string customer_name { get; set; }

        
        public int customer_id  { get; set; }

        
        [Display(Name="Customer PO No")]
        public string CustomerPONo { get; set; }

        
        [MaxLength(100)]
        [Display(Name="PO Quantity")]
        public string po_qty { get; set; }

        
        [MaxLength(500)]
        [Display(Name="HSN Code")]
        public string HSNCode { get; set; }

        
        [MaxLength(500)]
        [Display(Name="Customer Part No")]
        public string Customer_part_no { get; set; }


        public int vendor_id { get; set; }

        

        [Display(Name="Vendor Name")]
        public string vendor_name { get; set; }

        
        [MaxLength(100)]
        [Display(Name="Die No")]
        public string die_no { get; set; }

        
        [MaxLength(500)]
        [Display(Name="Remark")]
        public string remark { get; set; }

        
        [MaxLength(100)]
        [Display(Name="Process")]
        public string process { get; set; }

        
        [MaxLength(50)]
        [Display(Name="Vendor PO No")]
        public string vendor_po_no { get; set; }

        
        [Display(Name="Expected Date")]
        public DateTime expected_date { get; set; }


        [MaxLength(100)]
        [Display(Name="Type of Testing")]
        public string type_of_testing { get; set; }

        
        [MaxLength(500)]
        [Display(Name="Heat code")]
        public string heat_code { get; set; }

        
        [Display(Name="Expected Report Date")]
        public DateTime expected_report_date { get; set; }

        
        [MaxLength(500)]
        [Display(Name="Material Grade")]
        public string material_grade { get; set; }

        
        [MaxLength(500)]
        [Display(Name="Section")]
        public string section { get; set; }

                
        [MaxLength(500)]
        [Display(Name="Returnable Type")]
        public string returnable_type { get; set; }
        

        [MaxLength(500)]
        [Display(Name="Part Description")]
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


        public List<ssmtbl_DeliveryChallan_DetailsModel> ssmtbl_DeliveryChallan_DetailsModelList { get; set; }
        public List<ssmtbl_TermsNCondtionModel> ssmtbl_TermsNCondtionModel { get; set; }
        public List<ssmtbl_Feasibility_RawMaterialTestModel> ssmtbl_Feasibility_RawMaterialTestModel { get; set; }


        public bool status { get; set; }
    }


    public class Paged_ssmtbl_DeliveryChallanModel
    {
        public List<ssmtbl_DeliveryChallanModel> ssmtbl_DeliveryChallanModelList { get; set; }
        public List<ssmtbl_Feasibility_RawMaterialTestModel> ssmtbl_Feasibility_RawMaterialTestModel { get; set; }
        public string delivery_challan_type { get; set; }

        [Key]
        public int auto_id { get; set; }

        [MaxLength(10)]
        public string dispatch_char { get; set; }


        public int dispatch_id { get; set; }

        [MaxLength(50)]
        [Display(Name = "Dispatch No")]
        public string dispatch_no { get; set; }

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
        [Display(Name = "Remark")]
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


      
        [Display(Name = "Total")]
        public decimal total { get; set; }

        [Display(Name = "Grand Total")]
        public decimal grand_total { get; set; }


        public List<ssmtbl_DeliveryChallan_DetailsModel> ssmtbl_DeliveryChallan_DetailsModelList { get; set; }
    }

}