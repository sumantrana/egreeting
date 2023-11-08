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

public partial class User_frmViewCalandarWithAnniversary : System.Web.UI.Page
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
            GridView1.Visible = false;
        }
    }
    private void BindGridview()
    {
        address.LoginName = Session["UserName"].ToString();
        address.Month = Calendar1.SelectedDate.Month;
        address.Day = Calendar1.SelectedDate.Day;
        GridView1.DataSource = address.Show_All_AniversaryByDate();
        GridView1.DataBind();
    }

    
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/frmUserHomePage.aspx");
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        address.LoginName = Session["UserName"].ToString();
        DataSet ds = new DataSet();
        ds = address.ShowAniversary();
        if (ds.Tables[0].Rows.Count > 0)
        {
            for (int count = 0; count < ds.Tables[0].Rows.Count; count++)
            {
                if (!e.Day.IsOtherMonth)
                {
                    if (e.Day.Date.Month == Convert.ToDateTime(ds.Tables[0].Rows[count][0].ToString()).Date.Month)
                    {
                        if (e.Day.Date.Day == Convert.ToDateTime(ds.Tables[0].Rows[count][0].ToString()).Date.Day)
                        {
                            e.Cell.ForeColor = System.Drawing.Color.White;
                            e.Cell.BackColor = System.Drawing.Color.Blue;
                                                     
                        }
                    }
                }
            }
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        try
        {
            GridView1.Visible = true;
            BindGridview();

        }
        catch (Exception)
        {

            throw;
        }
}
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "View")
            {
                Session["To"] = e.CommandArgument;
                Response.Redirect("~/User/frmComposeMail.aspx");
            
            }

        }
        catch (Exception)
        {
            
            throw;
        }
    }
}