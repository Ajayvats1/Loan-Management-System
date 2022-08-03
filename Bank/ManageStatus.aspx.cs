using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_ManageStatus : System.Web.UI.Page
{
    UserADO db = new UserADO();
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();
        GridView2.DataBind();
    }
    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            SqlParameter[] param = {
                                       new SqlParameter("@LoanAppNo",TxtLoanAppNo.Text),
                                       new SqlParameter("@UserId",TxtUserId.Text),
                                       new SqlParameter("@Date",TxtDate.Text),
                                       new SqlParameter("@Time",TxtTime.Text),
                                       new SqlParameter("@Data",TxtData.Text),
                                       new SqlParameter("@UpdateBy",TxtUpdatedBy.Text)
                                  };
            int i = db.ExecuteNonQueryByProc("UpdateStatus", param);
            if (i > 0)
            {
                HttpCookie cs = new HttpCookie("Status");
                cs["Data"] = TxtData.Text;
                cs["Date"] = TxtDate.Text;
                cs["Time"] = TxtTime.Text;
                cs["UpdatedBy"] = TxtUpdatedBy.Text;
                Response.Cookies.Add(cs);
                LblMessage.Text = "Status Updated";
                BtnOK.Visible = true;

            }
            else
            {
                LblMessage.Text = "Updation Failed.";
            }
        }
        catch (Exception ex)
        {
            LblMessage.Text = ex.Message;
        }
    }
    protected void BtnOK_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin/ManageStatus.aspx");
        
    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            SqlParameter[] param = { 
                                   new SqlParameter("@LoanAppNo",TxtLoanAppNo.Text),
                                   new SqlParameter("@UserId",TxtUserId.Text)
                                   };
            int i = db.ExecuteNonQueryByProc("InsertForStatus", param);
            if (i > 0)
            {
                LblMessage.Text = "Application added Successfully.";
                GridView2.DataBind();
            }
            else
            {
                LblMessage.Text = "Appliaction not added";
            }

        }
        catch (Exception ex)
        {
            LblMessage.Text = ex.Message;
        }
    }
}