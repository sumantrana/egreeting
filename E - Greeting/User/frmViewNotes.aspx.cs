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

public partial class User_frmViewNotes : System.Web.UI.Page
{
    UserNoteBL note = new UserNoteBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Panel1.Visible = false;
            BindData();
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
            DataSet ds=new DataSet();
            ds=note.ShowNoteById();
            txtNote.Text = ds.Tables[0].Rows[0][1].ToString();
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
