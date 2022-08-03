using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Login : System.Web.UI.Page
{
    UserADO db = new UserADO();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt = new DataTable();
            if (RadioButtonUser.Checked)
            {
                SqlParameter[] param = {
                                       new SqlParameter("@UserId",TxtUserId.Text),
                                       new SqlParameter("@Password",TxtPassword.Text)
                                };
                dt = db.GetDataTable("SelectByUserId", param);
                if (dt.Rows.Count > 0)
                {
                    HttpCookie ck = new HttpCookie("UserId");
                    ck["Id"] = TxtUserId.Text;
                    Response.Cookies.Add(ck);
                    Response.Redirect("User/UserCommon.aspx");
                }
                else
                {
                    LblMessage.Text = "Invalid Id or Password.";
                }
            }
            else if (RadioButtonBank.Checked)
            {
                SqlParameter[] param = {
                                       new SqlParameter("@BankId",TxtUserId.Text),
                                       new SqlParameter("@Password",TxtPassword.Text)
                                };
                dt = db.GetDataTable("SelectByBankId", param);
                if (dt.Rows.Count > 0)
                {
                 
                    Response.Cookies["BankId"].Value = TxtUserId.Text;
                 
                    Response.Redirect("Bank/ManageLoanDetails.aspx");
                }
                else
                {
                    LblMessage.Text = "Invalid Id or Password.";
                }
            }

            else if (RadioBtnAdmin.Checked)
            {
                SqlParameter[] param = {
                                      new SqlParameter("@LoginId",TxtUserId.Text),
                                      new SqlParameter("@Password",TxtPassword.Text)
                                  };
                dt = db.GetDataTable("SelectByStaffId", param);
                if (dt.Rows.Count > 0)
                {
                    Response.Redirect("Admin/AdminCommon.aspx");
                }
                else
                {
                    LblMessage.Text = "Invalid Id or Password.";
                }
            }

        }
        catch (Exception ex)
        {
            LblMessage.Text = ex.Message;
        }
    }
}