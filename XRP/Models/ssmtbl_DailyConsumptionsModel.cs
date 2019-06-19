using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace XRP.Models
{
    public class ssmtbl_DailyConsumptionsModel
    {
        public string ConsumableCode { get; set; }
        public string ConsumableName { get; set; }
        public string RatePerUnit { get; set; }
    }

    public class ssmtbl_DailyConsumptionsBetweenDateModel
    {
        public string Id { get; set; }
        public DateTime ConsumableDate { get; set; }
        public string ConsumableCode { get; set; }
        public string RatePerUnit { get; set; }
        public string StartReading { get; set; }
        public string EndReading { get; set; }
        public string TotalUnit { get; set; }
        public string Flag { get; set; }
        public string CreatedBy { get; set; }
        public DateTime CreatedDate { get; set; }
        public string UpdatedBy { get; set; }
        public DateTime UpdatedDate { get; set; }
        public string ConsumableName { get; set; }
        public string Type { get; set; }

    }
    public class Paged_ssmtbl_DailyConsumptionsBetweenDateModel
    {

        public int TotalRows { get; set; }

        public IEnumerable<ssmtbl_DailyConsumptionsBetweenDateModel> ssmtbl_DailyConsumptionsBetweenDateModel { get; set; }

        public int PageSize { get; set; }
    }
    public class Paged_ssmtbl_DailyConsumptionsModel
    {

        public int TotalRows { get; set; }

        public IEnumerable<ssmtbl_DailyConsumptionsModel> ssmtbl_DailyConsumptionsModel { get; set; }

        public int PageSize { get; set; }
    }
}