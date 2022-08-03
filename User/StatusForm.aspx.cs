using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_StatusForm : System.Web.UI.Page
{
    UserADO db = new UserADO();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            HttpCookie ck = Request.Cookies["UserId"];
            if (ck == null)
            {
                Response.Redirect("../Login.aspx");
            }
        }

    }
   
   
   
    protected void BtnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/basic.aspx");
    }
    protected void LinkButtonStatusView_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt = new DataTable();
            SqlParameter[] param = {
                                       new SqlParameter("@LoanAppNo",TxtLoanAppNo.Text),
                                       new SqlParameter("@UserId",TxtUserId.Text)
                                  };
            dt = db.GetDataTable("SelectForStatus", param);
            if (dt.Rows.Count > 0)
            {
                HttpCookie cookie = new HttpCookie("Details");
                cookie["LoanApplication"] = TxtLoanAppNo.Text;
                cookie["UserId"] = TxtUserId.Text;
                Response.Cookies.Add(cookie);
                Response.Redirect("~/Status.aspx");
            }
            else
            {
                LblMessage.Text = "Invalid Id or Loan Application Number.";
            }

        }
        catch (Exception ex)
        {
            LblMessage.Text = ex.Message;
        }
    }
}