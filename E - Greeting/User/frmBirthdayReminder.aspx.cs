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

public partial class User_frmBirthdayReminder : System.Web.UI.Page
{
    UserAddressBookBL address = new UserAddressBookBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        
        }

    }
    private void BindData()
    {
        address.LoginName = Session["UserName"].ToString();
        address.Date = System.DateTime.Now.Date;
        GridView1.DataSource = address.SelectBirthdayAccordingSystemdate();
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Send")
        {
            Session["To"] = e.CommandArgument;
            Response.Redirect("~/User/frmComposeMail.aspx");
        }
    }
}
