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
using System.Net.Mail;
public partial class Admin_frmAdminComposeMail : System.Web.UI.Page
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
            FileUpload1.Visible = false;
            lnkRemove.Visible = false;
            txtFrom.Text =ConfigurationSettings.AppSettings["Email"];
            txtTo.Text = Session["From"].ToString();
        }
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        try
        {
            Page.Validate();
            if (Page.IsValid)
            {
                sendMAIL();
                inbox.LoginName = Session["Admin"].ToString();
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
                if (chkSave.Checked)
                {
                    inbox.SendStatus = "Sent";
                }
                else
                {
                    inbox.SendStatus = "Not Sent";
                }
                inbox.InsertInUserInbox();
                Session["To"] = txtTo.Text.Trim();
                Response.Redirect("~/Admin/frmSendFeedbackToUser.aspx");

            }
        }
        catch (Exception)
        {

            throw;
        }

    }

    private void sendMAIL()
    {
        string From, Subject, Salutation, username, Hearder, MainContent, MainContent1, signature, footer, adminUser, adminRole, strbody = "";

        username = "";
        Hearder = "";
        footer = "";
        adminUser = "";
        adminRole = "";
        signature = "Personal Assistant";
        string[] To ={ txtTo.Text.Trim() };
        string[] ccList = { string.Empty };
        From = txtFrom.Text.Trim();

        Subject = txtSubject.Text.Trim();//"Feedback/Comments";
        Salutation = "";// "<b>Dear &nbsp;" + "Admin,</b>";
        strbody = strbody + "<tr><td colspan=2> <font face=Verdana size=2 color=black> <B>" + txtMailMessage.Text.Replace("\n", "<br>").ToString() + "</B></font></tr></td>";
        MainContent = strbody;
        MainContent1 = "";
        Send_email(To, From, Subject, Salutation, username, Hearder, MainContent, MainContent1, signature, footer, adminUser, adminRole, ccList);
    }

    public void Send_email(string[] mailto, string mailFrom, string strSubject, string strSalutation, string username, string strHearder, string strMainContent, string strMainContent1, string strsignature, string strfooter, string adminUser, string adminRole, string[] ccList)
    {
        string strbody = "";
        strbody = strbody + "<html><HEAD><title>eMailTemplate</title><style>.formLabel";
        strbody = strbody + "{color:white;FONT-FAMILY:Verdana,Arial,haettenschweiler; ";
        strbody = strbody + "font-size:10pt;background-color:#737164;font-weight:normal;}";
        strbody = strbody + "</style></HEAD><body MS_POSITIONING='GridLayout'>";
        strbody = strbody + "<TABLE id='Table1' cellSpacing='0' align=center cellPadding='2' width='100%' border='1'>";
        strbody = strbody + "<TR><TD colspan=2 bgColor='#E7E7EF'><table width='100%'><tr bgcolor=#FFFFFF height=28><td width='16%' valign=middle><img alt='Logo' ";
        strbody = strbody + "src='" + ConfigurationManager.AppSettings["InternalURL"] + "Images/img1.gif'></TD>";
        strbody = strbody + "</tr></table>";
        strbody = strbody + "<table border=0 width=100% valign=top bgColor='#F3F3F3'>";
        strbody = strbody + "<tr><td colspan=2><font face=Verdana size=2 color=black>" + strSalutation + "</font></td></tr>";
        strbody = strbody + "<tr><td colspan=2 height=7></td></tr>";
        strbody = strbody + "<tr><td colspan=2><font face=Verdana size=2 color=black>" + strHearder + "</font></td></tr>";
        strbody = strbody + strMainContent;
        strbody = strbody + strMainContent1;
        strbody = strbody + "<tr><td colspan=2><font face=Verdana size=2 color=Black><br>&nbsp;<b>" + strsignature + "</b><br>&nbsp;" + txtFrom.Text + "<br>&nbsp;" + mailFrom + "</font></td></tr>";
        strbody = strbody + "<tr><td colspan=2>" + "<font face=Verdana size=2 color=red>" + strfooter + "</font></td></tr>";
        strbody = strbody + "</table>";
        strbody = strbody + "</body>";
        strbody = strbody + "</html>";

        MailSendClassBL.SendMail(mailto, mailFrom, strbody, strSubject, ccList);
        strbody = "";
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
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/frmViewUserFeedback.aspx");
    }
}
