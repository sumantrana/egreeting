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

public partial class User_frmViewInbox : System.Web.UI.Page
{
    UserInboxBL inbox = new UserInboxBL();
    UserRegistrationBL user = new UserRegistrationBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/Default.aspx");
        }
        if (!IsPostBack)
        {
            BindGridview();
        }

    }
    private void BindGridview()
    {
        user.LoginName = Session["UserName"].ToString();
        DataSet ds = new DataSet();
        ds = user.SelectUserEmailId();
        inbox.To = ds.Tables[0].Rows[0][0].ToString();
        DataSet dsTemp = inbox.ShowAllSentMail1();
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

    protected void btnForward_Click(object sender, EventArgs e)
    {
        CheckBox chk;
        Label lbl;
        foreach (GridViewRow gr in GridView1.Rows)
        {
            chk = (CheckBox)gr.FindControl("chk1");
            if (chk.Checked == true)
            {
                lbl = (Label)gr.FindControl("lblid");
                inbox.Id = int.Parse(lbl.Text);
                Session["Id"] = inbox.Id;
                Response.Redirect("~/User/frmUserForwardMail.aspx");
                lblError.Visible = false;
                lblError.Text = "";
            }
            else
            {
                lblError.Visible = true;
                lblError.Text = "Plz Select Mail to Forward...!";
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
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        CheckBox chk;
        Label lbl;

        foreach (GridViewRow gr in GridView1.Rows)
        {
            lbl = (Label)gr.FindControl("lblid");
            inbox.Id = int.Parse(lbl.Text);
            user.LoginName = Session["UserName"].ToString();
            DataSet ds = new DataSet();
            ds = user.SelectUserEmailId();
            inbox.From = ds.Tables[0].Rows[0][0].ToString();
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
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "View")
        {
            user.LoginName = Session["UserName"].ToString();
            DataSet ds = new DataSet();
            ds = user.SelectUserEmailId();
            inbox.To = ds.Tables[0].Rows[0][0].ToString();
            inbox.Id = int.Parse(e.CommandArgument.ToString());
            //inbox.UpdateMailReadingStatus();
            //Session["To"] = inbox.To;
            Session["Id"] = int.Parse(e.CommandArgument.ToString());
            Response.Redirect("~/User/frmFullMailPage.aspx");
        }
    }
}
