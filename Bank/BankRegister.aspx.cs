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

public partial class Bank_BankRegister : System.Web.UI.Page
{
    UserADO db = new UserADO();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            String filePtah = "~\\Bank\\UploadedImage\\" + FileUpload1.FileName;
            FileInfo fileInfo = new FileInfo(FileUpload1.FileName);
            if (fileInfo.Extension == ".JPEG" || fileInfo.Extension == ".JPG" || fileInfo.Extension == ".jpeg" || fileInfo.Extension == ".jpg")
            {
                FileUpload1.PostedFile.SaveAs(Server.MapPath(filePtah));
                LblImageMessage.Text = "image Uploaded Successfully.";
                Image1.ImageUrl = filePtah;
            }
            else
            {
                LblImageMessage.Text = "Image not Uploaded.";
            }
            SqlParameter[] parameter ={
                                     new SqlParameter("@BankId",TxtBankId.Text),
                                     new SqlParameter("@BankName",TxtBankName.Text),
                                     new SqlParameter("@BranchCode",TxtBranchCode.Text),
                                     new SqlParameter("@Address",TxtABankAddress.Text),
                                     new SqlParameter("@StaffId",TxtStaffId.Text),
                                     new SqlParameter("@Password",TxtPassword.Text),
                                    new SqlParameter("@Image",Image1.ImageUrl)
                                 };
            int i = db.ExecuteNonQueryByProc("InsertBankDetails", parameter);
            if (i > 0)
            {
                LblMessage.Text = "Bank Registration Successfull";
                BtnLogin.Visible = true;
            }
            else
            {
                LblMessage.Text = "Bank Registration failed";
            }
        }
        catch (Exception ex)
        {
            LblMessage.Text = ex.Message;
        }

    }
    protected void TxtBankName_TextChanged(object sender, EventArgs e)
    {
        //try
        //{
        //    //SqlParameter param = new SqlParameter("@BankName", TxtBankName.Text);
        //    string query = "select * from BankDetails where BankName='" + TxtBankName.Text + "'";
        //    DataTable dt = new DataTable();
        //    dt = db.GetDataTableByQuery(query);
        //    if (dt.Rows.Count > 0)
        //    {
        //        Label9.Text = "This data already exist try new..";
        //        TxtBankName.Text = null;
        //    }

        //}
        //catch (Exception ex)
        //{
        //    Label9.Text = ex.Message;
        //}

            
                                
    }
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
}