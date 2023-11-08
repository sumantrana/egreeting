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

public partial class User_frmViewAnniversaryList : System.Web.UI.Page
{
    UserAddressBookBL address = new UserAddressBookBL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void BindData()
    {

        GridView1.DataSource = address.SelectAniversaryList();
        GridView1.DataBind();
    }
    protected void ddlMonth_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            address.LoginName = Session["UserName"].ToString();
            address.Month = int.Parse(ddlMonth.SelectedValue);
            BindData();

        }
        catch (Exception)
        {
            lblMsg.Text = "Select Month...!";

        }
      
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Send")
        {
            Session["To"] = e.CommandArgument;
            Response.Redirect("~/User/frmComposeMail.aspx");
        }
    }
    protected void btnView_Click(object sender, EventArgs e)
    {
        try
        {
            if (GMDatePicker1.IsNull)
            { 
            lblMsg.Text="Plz Select Date...!";
          return;
            }
            else
            {
                lblMsg.Text = "";
                address.LoginName = Session["UserName"].ToString();
                address.Month = GMDatePicker1.Date.Month;
                address.Day = GMDatePicker1.Date.Day;
                GridView1.DataSource = address.SelectAniversaryListByDate();
                GridView1.DataBind();
            }
           

        }
        catch (Exception)
        {
            lblMsg.Text = "Select Month...!";

        }
    }
}
