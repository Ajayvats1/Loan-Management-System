using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Admin_ManageUserQuery : System.Web.UI.Page
{
    UserADO db = new UserADO();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlParameter[] param = {
                                       new SqlParameter("@QueryNo",TextBox1.Text),
                                       new SqlParameter("@Solution",TextBox2.Text)
                                  };
            int i = db.ExecuteNonQueryByProc("UpdateQuerySolution", param);
            if (i > 0)
            {
                Label6.Text = "Query Solution Updated.";
                GridView1.DataBind();

            }
        }

        catch (Exception ex)
        {
            Label6.Text = ex.Message;
        }
    }
}