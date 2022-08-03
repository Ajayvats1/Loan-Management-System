using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkBtnAddDetails_Click(object sender, EventArgs e)
    {
        string btn = "add";
        HttpCookie ck = new HttpCookie("ForPanel");
        ck["Value"] = btn;
        Response.Cookies.Add(ck);
        Response.Redirect("ManageBank.aspx");

    }
    protected void LinkBtnUpdateDetails_Click(object sender, EventArgs e)
    {
        string btn = "update";
        HttpCookie ck = new HttpCookie("ForPanel");
        ck["Value"] = btn;
        Response.Cookies.Add(ck);
        Response.Redirect("ManageBank.aspx");
    }
    protected void LinkButtonDeleteDetails_Click(object sender, EventArgs e)
    {
        string btn = "delete";
        HttpCookie ck = new HttpCookie("ForPanel");
        ck["Value"] = btn;
        Response.Cookies.Add(ck);
        Response.Redirect("ManageBank.aspx");
        
    }
}
