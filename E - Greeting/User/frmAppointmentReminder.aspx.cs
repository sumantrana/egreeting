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

public partial class User_frmAppointmentReminder : System.Web.UI.Page
{
    UserAppointmentBL appointment = new UserAppointmentBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();

        }
    }
    private void BindData()
    {
        appointment.LoginName = Session["UserName"].ToString();
        appointment.Date = System.DateTime.Now.Date;
        GridView1.DataSource = appointment.SelectAppointmentAccordingSystemdate();
        GridView1.DataBind();
    }
}
