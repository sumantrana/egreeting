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

public partial class User_frmViewPersonalAddressBook : System.Web.UI.Page
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
        GridView3.DataSource = address.ShowAllPersonalContact();
        GridView3.DataBind();

    }
    protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName=="View")
    {
        //LinkButton lnk;
        //foreach (GridViewRow gr in GridView3.Rows)
        //{
            Panel5.Visible = true;
            address.LoginName = Session["UserName"].ToString();
            //lnk = (LinkButton)gr.FindControl("lnkview");
            address.Id =int.Parse(e.CommandArgument.ToString()); //int.Parse(lnk.CommandArgument.ToString());
            DataSet ds = new DataSet();
            ds = address.ShowPersonalContactById();
            if (ds.Tables[0].Rows.Count > 0)
            {
                DataRow dr = ds.Tables[0].Rows[0];
                ltlFName.Text = dr[0].ToString();
                ltlLName.Text = dr[1].ToString();
                ltlGender.Text = dr[2].ToString();
                ltlAddress.Text = dr[3].ToString();
                ltlCity.Text = dr[4].ToString();
                ltlCountry.Text = dr[5].ToString();
                ltlState.Text = dr[6].ToString();
                ltlPincode.Text = dr[7].ToString();
                ltlPhone.Text = dr[8].ToString();
                ltlMobile.Text = dr[9].ToString();
                ltlEmail.Text = dr[10].ToString();
                ltlBirthday.Text = dr[11].ToString();
                ltlAniversary.Text = dr[12].ToString();

            }
        }
    
    }
    protected void GridView3_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView3.PageIndex = e.NewPageIndex;
        
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Panel5.Visible = false;
    }
    protected void btnReturn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/frmUserHomePage.aspx");
    }
}
