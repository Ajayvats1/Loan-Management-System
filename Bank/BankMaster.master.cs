using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Bank_BankMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            HttpCookie ck = Request.Cookies["UserId"];
            if (ck != null)
            {
                string value = ck["Id"].ToString();
                if (value != null)
                {
                    LinkBtnLogout.Visible = true;
                }
            }
        }

    }
    protected void LinkBtnLogout_Click(object sender, EventArgs e)
    {
         HttpCookie ck = Request.Cookies["UserId"];
         if (ck != null)
         {
             ck = null;
         }
         Response.Redirect("../basic.aspx");
    }
}
