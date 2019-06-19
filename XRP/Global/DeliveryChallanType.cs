using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace XRP.Global
{
    
    public static class DeliveryChallanType
    {
        public static string JobDispatch = "Job Dispatch";
        public static string LabTesting = "Lab Testing";
        public static string Repair = "Repair";
        public static string Outsourcing = "Outsourcing";
    }

    public static class DeliveryChallanStatus
    {
        public static string Received = "RECEIVED";
        public static string NotReceived = "NOT RECEIVED";
    }
}