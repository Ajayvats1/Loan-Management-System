using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class User_ApplyForLoan : System.Web.UI.Page
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
            else
            {
                TextUserId.Text = ck.Values["Id"].ToString();
            }
        }
    }
    protected void ButtonOK_Click(object sender, EventArgs e)
    {
        Response.Redirect("ApplyForLoan.aspx");
    }
    protected void LinkBtnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            SqlParameter[] param = {
                                       new SqlParameter("@LoanAppNo",TextLoanAppNo.Text),
                                       new SqlParameter("@UserId",TextUserId.Text),
                                       new SqlParameter("@LoanTypeNo",TextLoanTypeNo.Text),
                                       new SqlParameter("@BankId",TextBankId.Text),
                                       new SqlParameter("@Amount",TextAmount.Text),
                                       new SqlParameter("@TimePeriod",TextTimePeriod.Text),
                                       new SqlParameter("@UserSalary",TextUserSalary.Text),
                                       new SqlParameter("@Employment",TextEmployment.Text),
                                       new SqlParameter("@AccountNo",TextAccountNo.Text),
                                       new SqlParameter("@IFSCode",TextIFSCode.Text)
                                  };
            int i = db.ExecuteNonQueryByProc("InsertLoanAppNo", param);
            if (i > 0)
            {
                LabelMessage.Text = "Submission Successfull.";
                LinbtnOK.Visible = true;
                
            }
            else
            {
                LabelMessage.Text = "Submission Failed Try again.";
            }

        }
        catch (Exception ex)
        {
            LabelMessage.Text = ex.Message;
        }
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        TextAccountNo.Text = String.Empty;
        TextAmount.Text = String.Empty;
        TextUserId.Text = String.Empty;
        TextUserSalary.Text = String.Empty;
        TextLoanTypeNo.Text = String.Empty;
        TextLoanAppNo.Text = String.Empty;
        TextBankId.Text = String.Empty;
        TextTimePeriod.Text = String.Empty;
        TextIFSCode.Text = String.Empty;
        TextEmployment.Text = String.Empty;
    }
    protected void LinbtnOK_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserCommon.aspx");
    }
}