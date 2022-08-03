using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class User_Query : System.Web.UI.Page
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
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        try
        {
            SqlParameter[] param = 
                                 {
                                     new SqlParameter("@UserId",TextUserId.Text),
                                     new SqlParameter("@Question",TextMessage.Text)
                                  };
            int i = db.ExecuteNonQueryByProc("InsertQueryDetails", param);
            if (i > 0)
            {
                LabelMessage.Text = "Query Submitted.";
               
            }
            else
            {
                LabelMessage.Text = "Submission Failed.";
            }
        }
        catch (Exception ex)
        {
            LabelMessage.Text = ex.Message;
        }
    }
}