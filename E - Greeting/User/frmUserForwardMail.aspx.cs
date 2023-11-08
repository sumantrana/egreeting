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
using System.IO;
public partial class User_frmUserForwardMail : System.Web.UI.Page
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
            FileUpload1.Visible = false;
            lnkRemove.Visible = false;
            BindMessage();
        }

    }
    private void BindMessage()
    {
        user.LoginName = Session["UserName"].ToString();
        DataSet ds1 = new DataSet();
        ds1 = user.SelectUserEmailId();
        inbox.Id = int.Parse(Session["Id"].ToString());
        DataSet ds = new DataSet();
        txtFrom.Text = ds1.Tables[0].Rows[0][0].ToString();
        ds = inbox.ShowMessgaeInfoForReply();
        if (ds.Tables[0].Rows[0][0].ToString() != null)

            txtSubject.Text = "Fw:" + ds.Tables[0].Rows[0][0].ToString();
        else
        {
            txtSubject.Text = "";
        }
        if (ds.Tables[0].Rows[0][1].ToString() != null)

            txtMailMessage.Text = ds.Tables[0].Rows[0][1].ToString();
        else
        {
            txtMailMessage.Text = "";
        }
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        try
        {
            inbox.LoginName = Session["UserName"].ToString();
            inbox.From = txtFrom.Text.Trim();
            inbox.To = txtTo.Text.Trim();
            inbox.Subject = txtSubject.Text.Trim();
            inbox.FullMessage = txtMailMessage.Text.Trim();
            inbox.Date = System.DateTime.Now;
            string Attachments;
            if (FileUpload1.HasFile)
            {
                Attachments = Server.MapPath("~/Attachments/");
                if (!Directory.Exists(Attachments))
                    Directory.CreateDirectory(Attachments);
                FileUpload1.PostedFile.SaveAs(Attachments + FileUpload1.FileName);
                inbox.Attachement = FileUpload1.FileName;
                int size = 0;
                size = FileUpload1.PostedFile.ContentLength / 1024;

                inbox.Size = size.ToString() + "KB";
            }
            else
            {
                inbox.Attachement = "";
                inbox.Size = "";
            }

            if (chkSave.Checked == false)
            {
                inbox.SendStatus = "Not Sent";

            }
            else
            {
                inbox.SendStatus = "Sent";
            }
            inbox.InsertInUserInbox();
            Session["To"] = txtTo.Text.Trim();
            Response.Redirect("~/User/frmSendMailPage.aspx");

        }
        catch (Exception)
        {

            throw;
        }

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/frmUserHomePage.aspx");

    }
    protected void btnSend1_Click(object sender, EventArgs e)
    {
        try
        {
            inbox.LoginName = Session["UserName"].ToString();
            inbox.From = txtFrom.Text.Trim();
            inbox.To = txtTo.Text.Trim();
            inbox.Subject = txtSubject.Text.Trim();
            inbox.FullMessage = txtMailMessage.Text.Trim();
            inbox.Date = System.DateTime.Now;
            string Attachments;
            if (FileUpload1.HasFile)
            {
                Attachments = Server.MapPath("~/Attachments/");//+ FileUpload1.FileName);
                if (!Directory.Exists(Attachments))
                    Directory.CreateDirectory(Attachments);
                FileUpload1.PostedFile.SaveAs(Attachments + FileUpload1.FileName);
                inbox.Attachement = FileUpload1.FileName;
                int size = 0;
                size = FileUpload1.PostedFile.ContentLength / 1024;

                inbox.Size = size.ToString() + "KB";
            }
            else
            {
                inbox.Attachement = "";
                inbox.Size = "";
            }

            if (chkSave.Checked == false)
            {
                inbox.SendStatus = "Not Sent";

            }
            else
            {
                inbox.SendStatus = "Sent";
            }
            inbox.InsertInUserInbox();
            Session["To"] = txtTo.Text.Trim();
            Response.Redirect("~/User/frmSendMailPage.aspx");

        }
        catch (Exception)
        {

            throw;
        }

    }
    protected void btnCancel1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/frmUserHomePage.aspx");

    }
    protected void lnkAttachment_Click(object sender, EventArgs e)
    {
        FileUpload1.Visible = true;
        lnkRemove.Visible = true;

    }
    protected void lnkRemove_Click(object sender, EventArgs e)
    {
        FileUpload1.Visible = false;
        lnkRemove.Visible = false;

    }
}
