using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class frmUserLogin : System.Web.UI.Page
{
    SqlConnection ConnStr = new SqlConnection(ConfigurationManager.AppSettings["ConnStr"].ToString());
    UserRegistrationBL user = new UserRegistrationBL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (ConnStr.State == ConnectionState.Closed)
            ConnStr.Open();

        try
        {
            user.LoginName = txtUName.Text.Trim();
            user.Password = txtPassword.Text.Trim();
            if (user.CheckUserValidity() == true)
            {
                Session["UserName"] = txtUName.Text.Trim();
                user.LoginName = txtUName.Text.Trim();
                user.LoginDate = System.DateTime.Now.Date;
                user.LoginTime = System.DateTime.Now.ToShortTimeString();
                user.InsertUserLoginHistory();
                Response.Redirect("user/frmUserHomePage.aspx");
            }
            else
            {
                lblMsg.Text = "Invalid User Name or Password...!";
            }

        }
        catch (Exception)
        {

            throw;
        }
        finally
        {
            ConnStr.Close();
        }

    }
    protected void lnkRegister_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmUserRegisteration.aspx");
    }
}
