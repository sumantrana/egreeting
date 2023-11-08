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

public partial class User_frmUpdateUserProfile : System.Web.UI.Page
{
    Country country = new Country();
    StateBL state = new StateBL();
    UserRegistrationBL user = new UserRegistrationBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        GMDatePicker1.MaxDate = System.DateTime.Now;
        GMDatePicker1.MinDate = System.DateTime.Now.AddYears(-100);
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/Default.aspx");
        }
        if (!IsPostBack)
        {
            BindDropDown();
            BindData();

        }
        GMDatePicker1.Attributes.Add("readonly", "readonly()");

    }
    private void BindDropDown()
    {
        ddlCountry.DataSource = country.ShowCountry();
        ddlCountry.DataTextField = "CountryName";
        ddlCountry.DataValueField = "CountryId";
        ddlCountry.DataBind();
        ddlCountry.Items.Insert(0, "Choose One...");

        ddlState.DataSource = state.ShowAllState();
        ddlState.DataTextField = "StateName";
        ddlState.DataValueField = "StateId";
        ddlState.DataBind();
        ddlState.Items.Insert(0, "Choose One...");
    }

    private void BindData()
    {
        user.LoginName = Session["UserName"].ToString();
        DataSet ds = new DataSet();
        ds = user.ShowUserInfo();
        DataRow dr = ds.Tables[0].Rows[0];
        if (ds.Tables[0].Rows.Count > 0)
        {
            txtFname.Text = dr[0].ToString();
            txtLname.Text = dr[1].ToString();
            ListItem li = ddlGender.Items.FindByText(dr[2].ToString());
            if (li != null)
            {
                li.Selected = true;
            }
            txtEmail.Text = dr[3].ToString();
            txtMobile.Text = dr[4].ToString(); ;
            GMDatePicker1.Date = Convert.ToDateTime(dr[5].ToString());
            ListItem li1 = ddlCountry.Items.FindByText(dr[6].ToString());
            if (li1 != null)
            {
                li1.Selected = true;
            }
            else
            {
                ddlCountry.DataSource = country.ShowCountry();
                ddlCountry.DataTextField = "CountryName";
                ddlCountry.DataValueField = "CountryId";
                ddlCountry.DataBind();
                ddlCountry.Items.Insert(0, "Choose One...");

            }

            ListItem li2 = ddlState.Items.FindByText(dr[7].ToString());
            if (li2 != null)
            {
                li2.Selected = true;
            }
            else
            {
                ddlState.DataSource = state.ShowAllState();
                ddlState.DataTextField = "StateName";
                ddlState.DataValueField = "StateId";
                ddlState.DataBind();
                ddlState.Items.Insert(0, "Choose One...");

            }

            txtCity.Text = dr[8].ToString();
            txtAddress.Text = dr[9].ToString();
            txtPinCode.Text = dr[10].ToString();
            txtPhone.Text = dr[11].ToString();
            txtOfficeNo.Text = dr[12].ToString(); ;

        }
        else
        {
            lblMsg.Text = "No Row Found...!";
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {

        try
        {
            user.LoginName = Session["UserName"].ToString();
            user.FirstName = txtFname.Text.Trim();
            user.LastName = txtLname.Text.Trim();
            user.Gender = ddlGender.SelectedItem.Text;
            user.Email = txtEmail.Text.Trim();
            user.MobileNo = txtMobile.Text.Trim();
            user.DOB = GMDatePicker1.Date;
            user.Country = ddlCountry.SelectedItem.Text;
            user.State = ddlState.SelectedItem.Text;
            user.City = txtCity.Text.Trim();
            user.Address = txtAddress.Text.Trim();
            user.PinCode = txtPinCode.Text.Trim();
            user.Phone = txtPhone.Text.Trim();
            user.OfficeConatct = txtOfficeNo.Text.Trim();
            user.UpdateUserProfile();
            lblMsg.Text = "User Profile Has Updated...!";
        }



        catch (Exception)
        {

            throw;
        }
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/frmUserHomePage.aspx");
    }
}
