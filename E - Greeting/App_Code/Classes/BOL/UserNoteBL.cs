using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using PersonalAssistant;
/// <summary>
/// Summary description for UserNoteBL
/// </summary>
public class UserNoteBL:Connection
{
    public static DataSet ds;
	public UserNoteBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    private string _LoginName, _Note,_Subject;
    public string LoginName
    {
        get { return _LoginName; }
        set { _LoginName = value; }
    }
    public string Note
    {
        get { return _Note; }
        set { _Note = value; }
    }
    public string Subject
    {
        get { return _Subject; }
        set { _Subject = value; }
    }
    private int _Id;
    public int Id
    {
        get { return _Id; }
        set { _Id = value; }
    }
    public void InsertNote()
    {
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@Note", this._Note);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@Subject", this._Subject);
        p[2].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_InsertNote", p);

    }
    public DataSet ShowAllNote()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_AllNote",p);
        return ds;
    }
    public DataSet ShowNoteById()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@Id", this._Id);
        p[0].DbType = DbType.Int16;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_NoteById", p);
        return ds;
    }
    public void UpdateNote()
    {
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@Id", this._Id);
        p[0].DbType = DbType.Int16;
        p[1] = new SqlParameter("@Note", this._Note);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@Subject", this._Subject);
        p[2].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Update_Note", p);

    }
    public void DeleteNote()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@Id", this._Id);
        p[0].DbType = DbType.Int16;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_DeleteNote", p);

    }
}
