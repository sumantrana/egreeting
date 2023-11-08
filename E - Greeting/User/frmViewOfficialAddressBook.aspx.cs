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

public partial class User_frmViewOfficialAddressBook : System.Web.UI.Page
{
    UserAddressBookBL address = new UserAddressBookBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/Default.aspx");
        }
        if (!IsPostBack)
        {
            BindGridView1();
            Panel5.Visible = false;

        }
    }
    private void BindGridView1()
    {
        address.LoginName = Session["UserName"].ToString();
        GridView4.DataSource = address.ShowAllOfficialContact();
        GridView4.DataBind();

    }
    protected void GridView4_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "View")
            {
                Panel5.Visible = true;
                        address.LoginName = Session["UserName"].ToString();
                        address.Id = int.Parse(e.CommandArgument.ToString());
                        ViewState["Id"] = address.Id;
                        DataSet ds = new DataSet();
                        ds = address.ShowOfficialContactById();

                        DataRow dr = ds.Tables[0].Rows[0];
                        ltlCompanyname.Text = dr[0].ToString();
                        ltlFName.Text = dr[1].ToString();
                        ltlLName.Text = dr[2].ToString();
                        ltlAddress.Text = dr[3].ToString();
                        ltlCity.Text = dr[4].ToString();
                        ltlCountry.Text=dr[5].ToString();
                        ltlState.Text=dr[6].ToString();
                        ltlPincode.Text = dr[7].ToString();
                        ltlPhone.Text = dr[8].ToString();
                        ltlMobile.Text = dr[9].ToString();
                        ltlFaxNO.Text = dr[10].ToString();
                        ltlEmail.Text = dr[11].ToString();
                        ltlWebsite.Text = dr[12].ToString();

                    }
                }
            
        catch (Exception ex)
        {

            lblMsg1.Text = ex.Message.ToString();
        }

    }
    protected void GridView4_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView4.PageIndex = e.NewPageIndex;
        BindGridView1();
    }
    protected void btnBack1_Click(object sender, EventArgs e)
    {
        Panel5.Visible = false;
    }
    protected void tbnReturn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/frmUserHomePage.aspx");

    }
}
