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

public partial class User_frmModifyNote : System.Web.UI.Page
{
    UserNoteBL note = new UserNoteBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Panel1.Visible = false;
            BindData();
            string Msg = "Are U Sure ?";
            btnDelete.Attributes.Add("onClick", "return confirm('" + Msg + "');");
        }
    }
    private void BindData()
    {
        note.LoginName = Session["UserName"].ToString();
        GridView1.DataSource = note.ShowAllNote();
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            Panel1.Visible = true;
            note.Id = int.Parse(e.CommandArgument.ToString());
            ViewState["Id"] = int.Parse(e.CommandArgument.ToString());
            DataSet ds = new DataSet();
            ds = note.ShowNoteById();
            txtSubject.Text = ds.Tables[0].Rows[0][0].ToString();
            txtNote.Text = ds.Tables[0].Rows[0][1].ToString();
        }
        catch (Exception)
        {

            throw;
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        lblMsg.Text = "";
        Panel1.Visible = false;
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/frmUserHomePage.aspx");
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            note.Id = int.Parse(ViewState["Id"].ToString());
            note.Subject = txtSubject.Text.Trim();
            note.Note = txtNote.Text.Trim();
            note.UpdateNote();
            lblMsg.Text = "Note Updated...!";
            BindData();
        }
        catch (Exception)
        {
            
            throw;
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {  note.Id = int.Parse(ViewState["Id"].ToString());
           note.DeleteNote();
           BindData();
           txtNote.Text = "";
           txtSubject.Text = "";
           Panel1.Visible = false;
        }
        catch (Exception)
        {
            
            throw;
        }
    }
}
