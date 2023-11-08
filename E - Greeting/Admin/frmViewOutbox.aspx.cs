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

public partial class Admin_frmViewOutbox : System.Web.UI.Page
{
    UserInboxBL inbox = new UserInboxBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            BindGridview();
        }
    }
    private void BindGridview()
    {

        inbox.From = ConfigurationManager.AppSettings["Email"];
        DataSet dsTemp = inbox.ShowAllSentMail();
        if (dsTemp.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = dsTemp.Tables[0];
            GridView1.DataBind();
        }
        else
        {
            CheckBox1.Visible = false;
            lblError.Visible = true;
            lblError.Text = "No Mail Available....";
        }
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        CheckBox chk;
        Label lbl;

        foreach (GridViewRow gr in GridView1.Rows)
        {
            lbl = (Label)gr.FindControl("lblid");
            inbox.Id = int.Parse(lbl.Text);
            inbox.From = ConfigurationManager.AppSettings["Email"];
            chk = (CheckBox)gr.FindControl("chk1");
            if (chk.Checked == true)
            {
                inbox.DeleteMailFromSentItem();
                BindGridview();
                lblError.Visible = false;
                lblError.Text = "";
            }
            else
            {
                lblError.Visible = true;
                lblError.Text = "Plz Select Mail to Delete...!";
            }
        }
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

        CheckBox chk;
        foreach (GridViewRow gr in GridView1.Rows)
        {
            chk = (CheckBox)gr.FindControl("chk1");
            if (CheckBox1.Checked == true)
                chk.Checked = true;
            else
                chk.Checked = false;
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindGridview();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "View")
        {
            inbox.To = ConfigurationManager.AppSettings["Email"];
            inbox.Id = int.Parse(e.CommandArgument.ToString());
            //inbox.UpdateMailReadingStatus();
            //Session["To"] = inbox.To;
            Session["Id"] = int.Parse(e.CommandArgument.ToString());
            Response.Redirect("~/Admin/frmViewFullSentMassage.aspx");
        }
    }
}
