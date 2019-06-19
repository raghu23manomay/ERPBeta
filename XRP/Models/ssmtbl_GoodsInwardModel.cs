using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace XRP.Models
{
    public class ssmtbl_GoodsInwardModel
    {
        public string dieNumber { get; set; }

        [Key]
        public int auto_id { get; set; }

        
        [Display(Name="Inward Type")]
        [MaxLength(100)]
        [Required(ErrorMessage="Inward Type can't be blank!")]
        public string inward_type { get; set; }

        
        [Display(Name="GIN Number")]
        [MaxLength(25)]
        [Required(ErrorMessage="GIN Number can't be blank!")]
        public string gin_number { get; set; }

        [MaxLength(15)]
        public string gin_char { get; set; }

        public int gin_id { get; set; }

        
        [Display(Name="Vendor Name")]
        public string vendor_name { get; set; }

        public int vendor_id { get; set; }
        
        
        [Display(Name="Vendor PO NO")]
        [MaxLength(50)]
        public string vendor_po_no { get; set; }

        
        [Display(Name="Date Of Arrival")]
        public DateTime date_of_arrival { get; set; }

        
        [Display(Name="Gate Entry No")]
        [MaxLength(100)]
        public string gate_entry_no { get; set; }

        
        [Display(Name="Last Gate Entry No")]
        [MaxLength(100)]
        public string last_gate_entry_no { get; set; }

        
        [Display(Name="Challan No")]
        [MaxLength(100)]
        public string challan_no { get; set; }

        
        [Display(Name="Invoice No")]
        [MaxLength(100)]
        public string invoice_no { get; set; }

        
        [Display(Name="Cost Center")]
        [MaxLength(100)]
        public string cost_center { get; set; }

        
        [Display(Name="Mode Of Transportation")]
        [MaxLength(100)]
        public string mode_of_transportation { get; set; }

        
        [Display(Name="Vehicle No")]
        [MaxLength(100)]
        public string vehicle_no { get; set; }

        
        [Display(Name="Comment")]
        [MaxLength(500)]
        public string comment { get; set; }


        [Display(Name="If No Specify")]
        [MaxLength(500)]
        public string if_no_specify { get; set; }


        [Display(Name="Received From")]
        [MaxLength(50)]
        public string received_from { get; set; }

        
        [Display(Name="Customer Name")]
        public string customer_name { get; set; }

        public int customer_id { get; set; }

        
        [Display(Name="MILL TC")]
        public string mill_tc_path { get; set; }

        
        [Display(Name="Dispatch Code")]
        [MaxLength(100)]
        public string dispatch_code { get; set; }



        public string created_by { get; set; }

        public DateTime created_on { get; set; }

        public string updated_by { get; set; }

        public DateTime updated_on { get; set; }

        public string heatCode { get; set; }
        



        public List<ssmtbl_GoodsInward_DetailsModel> ssmtbl_GoodsInward_DetailsModel { get; set; }

        public List<ssmtbl_GoodsInward_DocReceivedModel> ssmtbl_GoodsInward_DocReceivedModel { get; set; }
        public string poQty { get; set; }
    }



    public class Paged_ssmtbl_GoodsInwardModel
    {
        public List<ssmtbl_GoodsInwardModel> ssmtbl_GoodsInwardModelList { get; set; }

        public int auto_id { get; set; }


        [Display(Name = "Inward Type")]
        [MaxLength(100)]
        [Required(ErrorMessage = "Inward Type can't be blank!")]
        public string inward_type { get; set; }


        [Display(Name = "GIN Number")]
        [MaxLength(25)]
        [Required(ErrorMessage = "GIN Number can't be blank!")]
        public string gin_number { get; set; }

        [MaxLength(15)]
        public string gin_char { get; set; }

        public int gin_id { get; set; }


        [Display(Name = "Vendor Name")]
        public string vendor_name { get; set; }

        public int vendor_id { get; set; }


        [Display(Name = "Vendor PO NO")]
        [MaxLength(50)]
        public string vendor_po_no { get; set; }


        [Display(Name = "Date Of Arrival")]
        public DateTime date_of_arrival { get; set; }


        [Display(Name = "Gate Entry No")]
        [MaxLength(100)]
        public string gate_entry_no { get; set; }


        [Display(Name = "Last Gate Entry No")]
        [MaxLength(100)]
        public string last_gate_entry_no { get; set; }


        [Display(Name = "Challan No")]
        [MaxLength(100)]
        public string challan_no { get; set; }


        [Display(Name = "Invoice No")]
        [MaxLength(100)]
        public string invoice_no { get; set; }


        [Display(Name = "Cost Center")]
        [MaxLength(100)]
        public string cost_center { get; set; }


        [Display(Name = "Mode Of Transportation")]
        [MaxLength(100)]
        public string mode_of_transportation { get; set; }


        [Display(Name = "Vehicle No")]
        [MaxLength(100)]
        public string vehicle_no { get; set; }


        [Display(Name = "Comment")]
        [MaxLength(500)]
        public string comment { get; set; }


        [Display(Name = "If No Specify")]
        [MaxLength(500)]
        public string if_no_specify { get; set; }


        [Display(Name = "Received From")]
        [MaxLength(50)]
        public string received_from { get; set; }


        [Display(Name = "Customer Name")]
        public string customer_name { get; set; }

        public int customer_id { get; set; }


        [Display(Name = "MILL TC")]
        public string mill_tc_path { get; set; }


        [Display(Name = "Dispatch Code")]
        [MaxLength(100)]
        public string dispatch_code { get; set; }



    }

}