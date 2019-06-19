using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace XRP.Models
{
    public class ssmtbl_WorkorderDetailsModel
    {
        public int id { get; set; }

        public string operationinvolvedname { get; set; }

        public string type { get; set; }

        public int seqno { get; set; }

        public int serialno { get; set; }

        public int previousopid { get; set; }
        
        public DateTime DateOfIssue { get; set; }
        
        public DateTime TargetDate { get; set; }
        
        public string CutWeight { get; set; }

        public int ID { get; set; }

        public string WorkorderNo { get; set; }

        public DateTime updatedate { get; set; }

        public int Dispatchqtyfromdc { get; set; }

        public string status { get; set; }

        public string Hc { get; set; }

        public string calbalance { get; set; }

        public string Dieno { get; set; }

        public DateTime Targetdate { get; set; }

        public string opearationinvolved1 { get; set; }

        public int pendingbal { get; set; }

        public string Rawmaterial { get; set; }

        public int RMQty { get; set; }
        public int ProductionUnit { get; set; }
    }

    public class ssmtbl_WorkorderDetailsModelNew
    {
        public int ID { get; set; }
        [Display(Name = "Workorder No")]
        public string WorkorderNo { get; set; }
         [Display(Name = "Raw Material")]
        public string RawMaterial { get; set; }
         
        public string HeatCode { get; set; }
        
        public string Section { get; set; }
         [Display(Name = "Date Of Issue")]
        public DateTime DateOfIssue { get; set; }
         [Display(Name = "Target Date")]
        public DateTime TargetDate { get; set; }
         
        public string CutWeight { get; set; }        
        public string ColorCode { get; set; }
         [Display(Name = "Po No")]
        public string PoNo { get; set; }
         [Display(Name = "Customer Name")]
        public string CustomerName { get; set; }
         [Display(Name = "RM Qty")]
        public string RMQty { get; set; }
        
        public string Status { get; set; }
         [Display(Name = "Allocated RM")]
        public int AllocatedRM { get; set; }         
        public string AllocatedSection { get; set; }
         [Display(Name = "Po RM")]
        public string PoRM { get; set; }
         [Display(Name = "Po Section")]
        public string PoSection { get; set; }
         [Display(Name = "Production Unit")]
        public string ProductionUnit { get; set; }
         [Display(Name = "Status Name")]
        public string statusname { get; set; }
         [Display(Name = "Part Name")]
        public string partname { get; set; }
    }
    public class Paged_ssmtbl_WorkorderDetailsModel
    {
        public int TotalRows { get; set; }

        public IEnumerable<ssmtbl_WorkorderDetailsModel> ssmtbl_WorkorderDetailsModel { get; set; }

        public int PageSize { get; set; }


    }

    public class Paged_ssmtbl_WorkorderDetailsModelNew
    {
        public int TotalRows { get; set; }

        public IEnumerable<ssmtbl_WorkorderDetailsModelNew> ssmtbl_WorkorderDetailsModelNew { get; set; }

        public int PageSize { get; set; }


    }
}