using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace XRP.Models
{
    //BHUWAN
    public class ssmtbl_CuutingCalculationModel
    {
        [Key]
        public long id   { get; set; }
        public string   xsection { get; set; }
        public decimal   sqin { get; set; }
        public decimal cuttingrateperpc { get; set; }
        public decimal qty { get; set; }

        public decimal totalcost { get; set; }

        public string   formula { get; set; }

        public string   type { get; set; }
        public decimal rate { get; set; }

        public List<ssmtbl_CuutingCalculationModel> ssmtbl_CuutingCalculationModel_List { get; set; }
        

    }

    public class Paged_ssmtbl_CuutingCalculationModel
    {
        public int TotalRows { get; set; }

        public IEnumerable<ssmtbl_CuutingCalculationModel> ssmtbl_CuutingCalculationModel { get; set; }

        public int PageSize { get; set; }


    }
}