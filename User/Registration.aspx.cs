using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class User_Registration : System.Web.UI.Page
{
    UserADO db = new UserADO();
    string gender;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            if (RadioBtnFemale.Checked)
            {
                gender = RadioBtnFemale.Text;
            }
            else if (RadioBtnMale.Checked)
            {
                gender = RadioBtnMale.Text;
            }
            SqlParameter[] parameter ={
                                           new SqlParameter("@UserId",TxtUserId.Text),
                                       new SqlParameter("@Password",TxtPassword.Text),
                                         new SqlParameter("@Name",TxtName.Text),
                                      new SqlParameter("@Address",TxtAddress.Text),
                                         new SqlParameter("@Dob",TextDob.Text),
                                         new SqlParameter("@Gender",gender),
                                          new SqlParameter("@AddharNo",TxtAddhar.Text),
                                         new SqlParameter("@PanCardNo",TxtPan.Text),
                                         new SqlParameter("@City",DropDownCity.SelectedValue),
                                         new SqlParameter("@Country",TxtCountry.Text),
                                         new SqlParameter("@ContactNo",TxtContact.Text),
                                         new SqlParameter("@EmailId",TxtEmailId.Text)
                                     };
            int i = db.ExecuteNonQueryByProc("InsertUserDetails", parameter);

            if (i > 0)
            {
                lblMessage.Visible = true;
                lblMessage.Text = "Registration Successfull";
                Button2.Visible = true;

            }
            else
            {
                lblMessage.Visible = true;
                lblMessage.Text = "Registration Fails";
            }


        }
        catch (Exception ex)
        {
            lblMessage.Visible = true;
            lblMessage.Text = ex.Message;
        }


    }
    protected void BtnReset_Click(object sender, EventArgs e)
    {
        TxtAddhar.Text = String.Empty;
        TxtAddress.Text = String.Empty;
        TxtConfPass.Text = String.Empty;
        TxtContact.Text = String.Empty;
        TxtEmailId.Text = String.Empty;
        TxtName.Text = String.Empty;
        TxtPan.Text = String.Empty;
        TxtPassword.Text = String.Empty;
        TxtUserId.Text = String.Empty;

    }
}