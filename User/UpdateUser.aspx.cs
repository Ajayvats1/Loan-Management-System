using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_UpdateUser : System.Web.UI.Page
{
    UserADO db= new UserADO();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PanelDefault.Visible = true;
            PanelAddress.Visible = false;
            PanelContacNo.Visible = false;
            PanelEmailId.Visible = false;
            PanelPassword.Visible = false;
        }
    }
    protected void LinkBtnChangePassword_Click(object sender, EventArgs e)
    {
        PanelDefault.Visible = false;
        PanelAddress.Visible = false;
        PanelContacNo.Visible = false;
        PanelEmailId.Visible = false;
        PanelPassword.Visible = true;

        HttpCookie ck = Request.Cookies["UserId"];
        if (ck != null)
        {
            TextuserIdPassword.Text = ck["Id"].ToString();
        }
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        try
        {
            SqlParameter[] param = {
                                      new SqlParameter("@UserId",TextuserIdPassword.Text),
                                      new SqlParameter("@Password",TextNewPassword.Text)
                                  };
            int i = db.ExecuteNonQueryByProc("UpdatePassword", param);
            if (i > 0)
            {
                LblMessagePassword.Text = "Password changed.";
            }
            else
            {
                LblMessagePassword.Text = "Password not changed.";
            }
        }
        catch (Exception ex)
        {
            LblMessagePassword.Text = ex.Message;
        }
    }
    protected void LinkBtnChangeEmailId_Click(object sender, EventArgs e)
    {
        PanelDefault.Visible = false;
        PanelAddress.Visible = false;
        PanelContacNo.Visible = false;
        PanelEmailId.Visible = true;
        PanelPassword.Visible = false;

        HttpCookie ck = Request.Cookies["UserId"];
        if (ck != null)
        {
            TextuserIdEmail.Text = ck["Id"].ToString();
        }
    }
    protected void LinkBtnEmailId_Click(object sender, EventArgs e)
    {
         try
        {
            SqlParameter[] param = {
                                      new SqlParameter("@UserId",TextuserIdEmail.Text),
                                      new SqlParameter("@EmailId",TextEmailId.Text)
                                  };
            int i = db.ExecuteNonQueryByProc("UpdateUserEmailId", param);
            if (i > 0)
            {
                LblMessageEmail.Text = "Email Id changed.";
            }
            else
            {
                LblMessageEmail.Text = "Email Id not changed.";
            }
        }
        catch (Exception ex)
        {
            LblMessageEmail.Text = ex.Message;
        }
    }
    protected void LinkBtnAddress_Click(object sender, EventArgs e)
    {
        PanelDefault.Visible = false;
        PanelAddress.Visible = true;
        PanelContacNo.Visible = false;
        PanelEmailId.Visible = false;
        PanelPassword.Visible = false;

        HttpCookie ck = Request.Cookies["UserId"];
        if (ck != null)
        {
            TextuserIdAddress.Text = ck["Id"].ToString();
        }
    }
    protected void LinkBtnUpdateAddress_Click(object sender, EventArgs e)
    {
        try
        {
            SqlParameter[] param = {
                                      new SqlParameter("@UserId",TextuserIdAddress.Text),
                                      new SqlParameter("@Address",TextAddress.Text)
                                  };
            int i = db.ExecuteNonQueryByProc("UpdateUserAddress2", param);
            if (i > 0)
            {
                LblMessageAddress.Text = "Address changed.";
            }
            else
            {
                LblMessageAddress.Text = "Address not changed.";
            }
        }
        catch (Exception ex)
        {
            LblMessageAddress.Text = ex.Message;
        }
    }
    protected void LinkBtnContactNo_Click(object sender, EventArgs e)
    {
        PanelDefault.Visible = false;
        PanelAddress.Visible = false;
        PanelContacNo.Visible = true;
        PanelEmailId.Visible = false;
        PanelPassword.Visible = false;

        HttpCookie ck = Request.Cookies["UserId"];
        if (ck != null)
        {
            TextuserIdContact.Text = ck["Id"].ToString();
        }

    }
    protected void LinkBtnUpdateContactNo_Click(object sender, EventArgs e)
    {
        try
        {
            SqlParameter[] param = {
                                      new SqlParameter("@UserId",TextuserIdContact.Text),
                                      new SqlParameter("@ContactNo",TextContactNo.Text)
                                  };
            int i = db.ExecuteNonQueryByProc("UpdateUserContactNo", param);
            if (i > 0)
            {
                LblMessageContactNo.Text = "Contact Number changed.";
            }
            else
            {
                LblMessageContactNo.Text = "Contact Number not changed.";
            }
        }
        catch (Exception ex)
        {
            LblMessageContactNo.Text = ex.Message;
        }

    }
}