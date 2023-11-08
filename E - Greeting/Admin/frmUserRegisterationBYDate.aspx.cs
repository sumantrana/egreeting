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

public partial class Admin_frmUserRegisterationBYDate : System.Web.UI.Page
{
    AdminBL admin = new AdminBL();
    UserRegistrationBL user = new UserRegistrationBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        if (!IsPostBack)
        {
            Panel2.Visible = false;
            Panel1.Visible = false;
        }

    }
    protected void btnView_Click(object sender, EventArgs e)
    {
      
        if (GMDatePicker1.IsNull || GMDatePicker2.IsNull)
        {
            lblMsg.Text = "Plz Select Date...!";
            return;
        }
        else
        {
            lblMsg.Text = "";
            admin.Date = GMDatePicker1.Date;
            admin.Date1 = GMDatePicker2.Date;
            DataSet ds = new DataSet();
            ds = admin.ShowUserByDate();
            if (ds.Tables[0].Rows.Count > 0)
            {
                Panel2.Visible = true;
                GridView1.DataSource = admin.ShowUserByDate();
                GridView1.DataBind();
            }
            else
            {
                Panel2.Visible = false;
            }
        }
    }
    protected void btnExportToExcel_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.AddHeader("content-disposition", "attachment;filename=DocumentReport.xls");
        Response.Charset = "";
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = "application/vnd.ms-excel";
        System.IO.StringWriter stringWrite = new System.IO.StringWriter();
        System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);
        GridView1.RenderControl(htmlWrite);
        Response.Write(stringWrite.ToString());
        Response.End();
    }
    protected void btnExportToPDF_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.AddHeader("content-disposition", "attachment;filename=DocumentReport.pdf");
        Response.Charset = "";
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = "application/pdf";
        System.IO.StringWriter stringWrite = new System.IO.StringWriter();
        System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);
        GridView1.RenderControl(htmlWrite);
        Response.Write(stringWrite.ToString());
        Response.End();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
          
                Session["LoginName"] = txtSearch.Text.Trim();
                user.LoginName = Session["LoginName"].ToString();
                DataSet ds = new DataSet();
                ds = user.ShowUserInfo();
               
                if (ds.Tables[0].Rows.Count <1)
                {
                    lblMsg.Text = "No Such User Exists...!";
                    return;
                }
                else
                {
                    lblMsg.Text = "";
                    Panel1.Visible = true;
                    DataRow dr = ds.Tables[0].Rows[0]; 
                    lblFName.Text = dr[0].ToString();
                    lblLName.Text = dr[1].ToString();
                    lblGender.Text = dr[2].ToString();
                    lblMail.Text = dr[3].ToString();
                    lblMobileNO.Text = dr[4].ToString();
                    lblDOB.Text = string.Format("{0:dd-MMM-yyyy}", Convert.ToDateTime(dr[5]));
                    lblCountry.Text = dr[6].ToString();
                    lblState.Text = dr[7].ToString();
                    lblCity.Text = dr[8].ToString();
                    lblAddress.Text = dr[9].ToString();
                    lblPinCode.Text = dr[10].ToString();
                    lblPhone.Text = dr[11].ToString();
                    lblOfficePhone.Text = dr[12].ToString();
                    
                }
            }

    }

