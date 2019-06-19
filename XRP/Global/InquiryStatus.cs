using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace XRP.Global
{
    public static class InquiryStatus
    {
        public static string InquiryNew = "New";
        public static string FeasibilityDone = "Feasibility Done";
        public static string QuotationPendingForApproval = "Quotation Approval Pending";
        public static string QuotationApproved = "Quotation Approved";
        public static string POPendingForApproval = "PO Approval Pending";
        public static string POApproved = "PO Approved";
        public static string PORejected = "PO Rejected";
        public static string InquiryClosed = "Enquiry Closed";
        public static string QuotationRejected = "Quotation Rejected";
        public static string ConditionalQuotationApproved = "Conditional Quotation Approved";
    }
}