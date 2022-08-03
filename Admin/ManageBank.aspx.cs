using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_ManageBank : System.Web.UI.Page
{
    UserADO db= new UserADO();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            PanelDefault.Visible = true;
            PanelAddDetails.Visible = false;
            PaneldeleteDetails.Visible = false;
            PanelUpdateDetails.Visible = false;
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
                                       new SqlParameter("@Type",DropDownLstLoanType.SelectedItem),
                                       new SqlParameter("@Documents",TextDocuments.Text),
                                       new SqlParameter("@MaxAmount",TxtMaxAmnt.Text),
                                       new SqlParameter("@MinAmount",TxtMinAmnt.Text),
                                       new SqlParameter("@Description",txtDescriptionAdd.Text)
                                   };
            int i = db.ExecuteNonQueryByProc("InsertLoanTypes", param);
            if (i > 0)
            {
                LblMessageAdddetails.Text = "Loan Details Added Successfully.";
                GridView1.DataBind();
            }
            else
            {
                LblMessageAdddetails.Text = "Addition Failed";
                GridView1.DataBind();
            }


        }
        catch (Exception ex)
        {
            LblMessageAdddetails.Text = ex.Message;
        }

    }
    protected void BtnUpdateDetails_Click(object sender, EventArgs e)
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
                                         new SqlParameter("@Type",DropDownLstLoanType.SelectedItem),
                                       new SqlParameter("@Documents",TextDocuments.Text),
                                       new SqlParameter("@MaxAmount",TxtMaxAmnt.Text),
                                       new SqlParameter("@MinAmount",TxtMinAmnt.Text),
                                       new SqlParameter("@Description",TxtDescriptionUpdate.Text)
                                   
                                   };
            int i = db.ExecuteNonQueryByProc("UpdateLoanType", param);
            if (i > 0)
            {
                LblMessageAdddetails.Text = "Loan Details Updated Successfully.";
                GridView1.DataBind();
            }
            else
            {
                LblMessageAdddetails.Text = "Updation Failed";
                GridView1.DataBind();
            }


        }
        catch (Exception ex)
        {
            LblMessageAdddetails.Text = ex.Message;
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
                LblMessageAdddetails.Text = "Loan Details Deleted.";
                GridView1.DataBind();
            }
            else
            {
                LblMessageAdddetails.Text = "Operation Failed";
                GridView1.DataBind();
            }
        }

        catch (Exception ex)
        {
            LblMessageAdddetails.Text = ex.Message;
        }

    }
    protected void LinkBtnAdd_Click(object sender, EventArgs e)
    {
        PanelDefault.Visible = false;
        PanelAddDetails.Visible = true;
        PaneldeleteDetails.Visible = false;
        PanelUpdateDetails.Visible = false;
    }
    protected void LinkBtnUpdate_Click(object sender, EventArgs e)
    {
        PanelDefault.Visible = false;
        PanelAddDetails.Visible = false;
        PaneldeleteDetails.Visible = false;
        PanelUpdateDetails.Visible = true;
        if (Request.QueryString["sid"] != null)
        {
            string query = "Select * from LoanTypeDetails where LoanTypeNo='" + Request.QueryString["sid"] + "'";
            DataTable dt = new DataTable();
            dt = db.GetDataTableByQuery(query);
            if (dt.Rows.Count > 0)
            {
                TxtBankId.Text = dt.Rows[0]["BankId"].ToString();
                TxtDuration.Text = dt.Rows[0]["Duration"].ToString();
                TxtEligiblity.Text = dt.Rows[0]["Eligibility"].ToString();
                TxtFeatures.Text = dt.Rows[0]["Features"].ToString();
                TxtLoanTypeNo.Text = dt.Rows[0]["LoanTypeNo"].ToString();
                TxtRateOfInt.Text = dt.Rows[0]["RateOfInt"].ToString();


            }
        }
    }
    protected void LinkBtnDelete_Click(object sender, EventArgs e)
    {
        PanelDefault.Visible = false;
        PanelAddDetails.Visible = false;
        PaneldeleteDetails.Visible = true;
        PanelUpdateDetails.Visible = false;
    }
}