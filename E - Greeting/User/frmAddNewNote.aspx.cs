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

public partial class User_frmAddNewNote : System.Web.UI.Page
{
    UserNoteBL note = new UserNoteBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/Default.aspx");
        }

    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/frmUserHomePage.aspx");
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            note.LoginName = Session["UserName"].ToString();
            note.Subject = txtSubject.Text.Trim();
            note.Note = txtNote.Text.Trim();
            note.InsertNote();
            lblMsg.Text = "Addedd...!";
        }
        catch (Exception)
        {
            
            throw;
        }

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtSubject.Text = "";
        txtNote.Text = "";
        lblMsg.Text = "";
        txtNote.Focus();
    }
}
