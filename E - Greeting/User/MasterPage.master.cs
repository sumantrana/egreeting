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

public partial class User_MasterPage : System.Web.UI.MasterPage
{
    UserRegistrationBL registration = new UserRegistrationBL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        registration.LoginName = Session["UserName"].ToString();
        registration.LogoutDate = System.DateTime.Now.Date;
        registration.LogoutTime = System.DateTime.Now.ToShortTimeString();
        registration.InsertUserLogoutHistory();
        Session.Abandon();
        Session.Remove("UserName");
        Response.Redirect("~/Default.aspx");
    }
}
