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

public partial class frmUserRegisteration : System.Web.UI.Page
{
    Country country = new Country();
    StateBL state = new StateBL();
    UserRegistrationBL user = new UserRegistrationBL();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindDropdown();    
        }
    }
    private void BindDropdown()
    {
        ddlCountry.DataSource = country.ShowCountry();
        ddlCountry.DataTextField = "CountryName";
        ddlCountry.DataValueField = "CountryId";
        ddlCountry.DataBind();
        ddlCountry.Items.Insert(0, "Choose One Country");

        ddlState.DataSource = state.ShowAllState();
        ddlState.DataTextField = "StateName";
        ddlState.DataValueField = "StateId";
        ddlState.DataBind();
        ddlState.Items.Insert(0, "Choose One State");
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtUName.Text.Trim().Length < 1)
            {
                lblAvailability.Text = "Plz Enter User Name...!";
                lblAvailability.Focus();
                return;
            }
            else
            {
                user.LoginName = txtUName.Text.Trim();
                user.Password = txtPassword.Text.Trim();
                user.Question = txtQuestion.Text.Trim();
                user.Answer = txtAnswer.Text.Trim();
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
                user.LoginDate = System.DateTime.Now.Date;
                user.InsertUserLoginInfo();
                user.InsertRegistrationInfo();
                Response.Redirect("~/frmRegisterdSuccessfully.aspx");
            }          
        }
        catch (Exception)
        {            
            throw;
        }
    }
    protected void lnkAvailability_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtUName.Text.Trim().Length < 1)
            {
                lblAvailability.Text = "Please Enter User Name...!";
                return;
            }
            else
            {
                user.LoginName = txtUName.Text.Trim();

                if (user.CheckUserAvailability() == true)
                {
                    lblAvailability.Text = "User Already Exists...!";
                }
                else
                {
                    lblAvailability.Text = "User Not Exist...!";
                }
            }
        }
        catch (Exception)
        {
            throw;
        }
    }
}
