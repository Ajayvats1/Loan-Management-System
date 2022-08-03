using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_ViewProfile : System.Web.UI.Page
{
    UserADO db= new UserADO();
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
                    DataTable dt = new DataTable();
                    SqlParameter[] param = {
                                               new SqlParameter("@UserId",value)
                                          };
                    dt = db.GetDataTable("SelectForProfile", param);
                    if (dt.Rows.Count > 0)
                    {
                        LblName.Text = dt.Rows[0]["Name"].ToString();
                        LblCity.Text = dt.Rows[0]["City"].ToString();
                        LblAddress.Text = dt.Rows[0]["Address"].ToString();
                        LblAdhhar.Text = dt.Rows[0]["AddharNo"].ToString();
                        LblContactNo.Text = dt.Rows[0]["ContactNo"].ToString();
                        LblCountry.Text = dt.Rows[0]["Country"].ToString();
                        LblDob.Text = dt.Rows[0]["Dob"].ToString();
                        LblEmailId.Text = dt.Rows[0]["EmailId"].ToString();
                        LblPanCard.Text = dt.Rows[0]["PanCardNo"].ToString();
                        LblPassword.Text = dt.Rows[0]["Password"].ToString();
                        LblUserId.Text = dt.Rows[0]["UserId"].ToString();
                    }
                }
            }
        }


    }
}