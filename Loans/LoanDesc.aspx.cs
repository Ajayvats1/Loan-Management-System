using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Loans_LoanDesc : System.Web.UI.Page

{
    UserADO db = new UserADO();
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

                    if (Request.QueryString["LoanId"] != null)
                    {
                        string query = "select * from LoanTypeDetails where LoanTypeNo='" + Request.QueryString["LoanId"].ToString() + "'";
                        DataTable dt = new DataTable();
                        dt = db.GetDataTableByQuery(query);
                        if (dt.Rows.Count > 0)
                        {
                            LblLoanTypeno.Text = dt.Rows[0]["LoanTypeNo"].ToString();

                            LblBankId.Text = dt.Rows[0]["BankId"].ToString();
                            LblType.Text = dt.Rows[0]["Type"].ToString();
                            LblFeatures.Text = dt.Rows[0]["Features"].ToString();
                            LblRateofInt.Text = dt.Rows[0]["RateOfInt"].ToString();
                            LblDuration.Text = dt.Rows[0]["Duration"].ToString();
                            LblElegiblity.Text = dt.Rows[0]["Eligibility"].ToString();
                            LblDocuments.Text = dt.Rows[0]["Documents"].ToString();
                            LblDescription.Text = dt.Rows[0]["Description"].ToString();
                            if (LblType.Text == "Personal Loan")
                                PanelPersonal.Visible = true;
                            else if (LblType.Text == "Home Loan")
                                PanelHome.Visible = true;
                            else if (LblType.Text == "Vehical Loan")
                                PanelVehical.Visible = true;
                            else if (LblType.Text == "Education Loan")
                                PanelEducation.Visible = true;
                            else if (LblType.Text == "Loan On Securities")
                                PanelSecurities.Visible = true;
                            else if (LblType.Text == "Business Loan")
                                PanelBusiness.Visible = true;

                        }
                    }
                }
               
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
        }

    }

}