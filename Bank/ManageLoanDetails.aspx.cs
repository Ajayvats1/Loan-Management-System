using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Bank_ManageLoanDetails : System.Web.UI.Page
{
    UserADO db = new UserADO();
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();
        if (!IsPostBack)
        {
            HttpCookie ck = Request.Cookies["BankId"];
            if (ck == null)
            {
                Response.Redirect("../Login.aspx");
            }
        }

    }

    protected void BtnAddDetails_Click(object sender, EventArgs e)
    {
        try
        {
            SqlParameter[] param = {
                                       new SqlParameter("@BankId",TxtBankId.Text),
                                       new SqlParameter("@LoanTypeNo",TxtLoanTypeNo.Text),
                                       new SqlParameter("@Features",TxtFeatures.Text),
                                       new SqlParameter("@RateOfInt",TxtRateOfInt.Text),
                                       new SqlParameter("@Duration",TxtDuration.Text),
                                       new SqlParameter("@Eligibility",TxtEligiblity.Text),
                                       new SqlParameter("@Type",DropDownLstLoanType.SelectedValue),
                                       new SqlParameter("@Documents",TextDocuments.Text),
                                       new SqlParameter("@MaxAmount",TxtMaximumAm.Text),
                                       new SqlParameter("@MinAmount",TxtMinimumAm.Text),
                                       new SqlParameter("@Description",TxtDescription.Text)
                                   };
            int i = db.ExecuteNonQueryByProc("InsertLoanTypes", param);
            if (i > 0)
            {
                LblMessage.Text = "Loan Details Added Successfully.";
                GridView1.DataBind();
            }
            else
            {
                LblMessage.Text = "Addition Failed";
                GridView1.DataBind();
            }


        }
        catch (Exception ex)
        {
            LblMessage.Text = ex.Message;
        }

    }
    protected void BtnUpdateDetails_Click(object sender, EventArgs e)
    {
        try
        {
            SqlParameter[] param = {
                                       new SqlParameter("@BankId",TxtBankId.Text),
                                       new SqlParameter("@Type",DropDownLstLoanType.SelectedValue),
                                       new SqlParameter("@LoanTypeNo",TxtLoanTypeNo.Text),
                                       new SqlParameter("@Features",TxtFeatures.Text),
                                       new SqlParameter("@RateOfInt",TxtRateOfInt.Text),
                                       new SqlParameter("@Duration",TxtDuration.Text),
                                       new SqlParameter("@Eligibility",TxtEligiblity.Text),
                                       new SqlParameter("@Documents",TextDocuments.Text),
                                       new SqlParameter("@MaxAmount",TxtMaximumAm.Text),
                                       new SqlParameter("@MinAmount",TxtMinimumAm.Text),
                                       new SqlParameter("@Description",TxtDescription.Text)
                                   };
            int i = db.ExecuteNonQueryByProc("UpdateLoanType", param);
            if (i > 0)
            {
                LblMessage.Text = "Loan Details Updated Successfully.";
                GridView1.DataBind();
            }
            else
            {
                LblMessage.Text = "Updation Failed";
                GridView1.DataBind();
            }


        }
        catch (Exception ex)
        {
            LblMessage.Text = ex.Message;
        }


    }
    protected void BtnDeleteDetails_Click(object sender, EventArgs e)
    {
        try
        {
            SqlParameter param = new SqlParameter("@LoanTypeNo", TxtLoanTypeNo.Text);
            string query = "delete from LoanTypeDetails where LoanTypeNo='" + TxtLoanTypeNo.Text + "'";
            int i = db.ExecuteNonQueryByQuery(query);
            if (i > 0)
            {
                LblMessage.Text = "Loan Details Deleted.";
                GridView1.DataBind();
            }
            else
            {
                LblMessage.Text = "Operation Failed";
                GridView1.DataBind();
            }
        }

        catch (Exception ex)
        {
            LblMessage.Text = ex.Message;
        }

    }

}