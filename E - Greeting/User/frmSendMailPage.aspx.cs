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

public partial class User_frmSendMailPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/Default.aspx");
        }
        if (!IsPostBack)
        {
            lblName.Text = Session["To"].ToString();
           
        }
    }
    
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            if (ddlBack.SelectedIndex == 0)
            {
                lblMsg.Text = "Select Page To Go...!";
                return;
            }
            else if (ddlBack.SelectedIndex == 1)
            {
                Response.Redirect("~/User/frmUserHomePage.aspx");
            }
            else if (ddlBack.SelectedIndex == 2)
            {
                Response.Redirect("~/User/frmViewBirthdayList.aspx");
            }
            else if (ddlBack.SelectedIndex == 3)
            {
                Response.Redirect("~/User/frmViewAnniversaryList.aspx");
            }
            else if (ddlBack.SelectedIndex == 4)
            {
                Response.Redirect("~/User/frmUserAddressBook.aspx");
            }
            else if (ddlBack.SelectedIndex == 5)
            {
                Response.Redirect("~/User/frmViewOutbox.aspx");
            }
            else if (ddlBack.SelectedIndex == 6)
            {
                Response.Redirect("~/User/frmViewCalandarWithAnniversary.aspx");
            }
            else if (ddlBack.SelectedIndex == 7)
            {
                Response.Redirect("~/User/frmViewCalanderWithBirthday.aspx");
            }
        }
        catch (Exception)
        {
            lblMsg.Text = "Plz Select Page To Visit...!";
        }
      
    }
}
