using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Status : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cs = Request.Cookies["Details"];
        if (cs != null)
        {
            LblIUserId.Text = cs["UserId"].ToString();
            LblLoanAppNo.Text = cs["LoanApplication"].ToString();
        }
        HttpCookie cs1 = Request.Cookies["Status"];
        if (cs1 != null)
        {
            LblDate.Text = cs1["Date"].ToString();
            LblTime.Text = cs1["Time"].ToString();
            LblUpdatedBy.Text = cs1["UpdatedBy"].ToString();
            LblStatus.Text = cs1["Data"].ToString();
        }
    }
}