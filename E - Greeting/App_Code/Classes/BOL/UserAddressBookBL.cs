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
/// Summary description for UserAddressBookBL
/// </summary>
public class UserAddressBookBL:Connection
{
    public static DataSet ds;
	public UserAddressBookBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    private string _LoginName, _FirstName, _LastName, _Gender, _Address, _City, _Country, _State, _PinCode, _Phone, _Mobile, _Email;
    public string LoginName
    {
        get { return _LoginName; }
        set { _LoginName = value; }
    }
    public string FirstName
    {
        get { return _FirstName; }
        set { _FirstName = value; }
    }
    public string LastName
    {
        get { return _LastName; }
        set { _LastName = value; }
    }
    public string Address
    {
        get { return _Address; }
        set { _Address = value; }
    }
    public string City
    {
        get { return _City; }
        set { _City = value; }
    }
    public string State
    {
        get { return _State; }
        set { _State = value; }
    }
    public string PinCode
    {
        get { return _PinCode; }
        set { _PinCode = value; }
    }
    public string Country
    {
        get { return _Country; }
        set { _Country = value; }
    }
    public string Email
    {
        get { return _Email; }
        set { _Email = value; }
    }
    public string Phone
    {
        get { return _Phone; }
        set { _Phone = value; }
    }
    private DateTime _DOB, _Aniversary, _Date;
    public DateTime DOB
    {
        get { return _DOB; }
        set{_DOB = value;}
                 
    }
    public DateTime Aniversary
    {
        get { return _Aniversary; }
        set { _Aniversary = value; }

    }
    public DateTime Date
    {
        get { return _Date; }
        set { _Date = value; }

    }
    public string Mobile
    {
        get { return _Mobile; }
        set { _Mobile = value; }
    }
    public string Gender
    {
        get { return _Gender; }
        set { _Gender = value; }
    }
    private int _Month;
    public int Month
    {
        get { return _Month; }
        set { _Month = value; }
    }
    //Pesronal Address Book
    public void InsertInitialAddressbookDetail()
    {
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@FirstName", this._FirstName);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@LastName", this._LastName);
        p[2].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Insert_InitialAddressbookDetail", p);
    }
    public void InsertAddressbookDetail()
    {
        SqlParameter[] p = new SqlParameter[14];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@FirstName", this._FirstName);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@LastName", this._LastName);
        p[2].DbType = DbType.String;
        p[3] = new SqlParameter("@Gender", this._Gender);
        p[3].DbType = DbType.String;
        p[4] = new SqlParameter("@Address", this._Address);
        p[4].DbType = DbType.String;
        p[5] = new SqlParameter("@City", this._City);
        p[5].DbType = DbType.String;
        p[6] = new SqlParameter("@Country", this._Country);
        p[6].DbType = DbType.String;
        p[7] = new SqlParameter("@State", this._State);
        p[7].DbType = DbType.String;
        p[8] = new SqlParameter("@PinCode", this._PinCode);
        p[8].DbType = DbType.String;
        p[9] = new SqlParameter("@Phone", this._Phone);
        p[9].DbType = DbType.String;
        p[10] = new SqlParameter("@Mobile", this._Mobile);
        p[10].DbType = DbType.String;
        p[11] = new SqlParameter("@Email", this._Email);
        p[11].DbType = DbType.String;
        p[12] = new SqlParameter("@DOB", this._DOB);
        p[12].DbType = DbType.Date;
        p[13] = new SqlParameter("@Aniversary", this._Aniversary);
        p[13].DbType = DbType.Date;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Insert_AddressbookDetail", p);
    }
    private string _CompanyName, _Website, _FaxNo;
    public string CompanyName
    {
        get { return _CompanyName; }
        set { _CompanyName = value; }
    }
    public string Website
    {
        get { return _Website; }
        set { _Website = value; }
    }
    public string FaxNo
    {
        get { return _FaxNo; }
        set { _FaxNo = value; }
    }
    private int _Id,_Day;
    public int Id
    {
        get { return _Id; }
        set { _Id = value; }
    }
    public int Day
    {
        get { return _Day; }
        set { _Day = value; }
    }
    //Official Address Book
    public void InsertInitialOfficialAddressbookDetail()
    {
        SqlParameter[] p = new SqlParameter[4];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@CompanyName", this._CompanyName);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@FirstName", this._FirstName);
        p[2].DbType = DbType.String;
        p[3] = new SqlParameter("@LastName", this._LastName);
        p[3].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Insert_InitialOfficialAddressbookDetail", p);
    }
    public void InsertOfficialAddressbookDetail()
    {
        SqlParameter[] p = new SqlParameter[14];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@CompanyName", this._CompanyName);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@FirstName", this._FirstName);
        p[2].DbType = DbType.String;
        p[3] = new SqlParameter("@LastName", this._LastName);
        p[3].DbType = DbType.String;
        p[4] = new SqlParameter("@Address", this._Address);
        p[4].DbType = DbType.String;
        p[5] = new SqlParameter("@City", this._City);
        p[5].DbType = DbType.String;
        p[6] = new SqlParameter("@Country", this._Country);
        p[6].DbType = DbType.String;
        p[7] = new SqlParameter("@State", this._State);
        p[7].DbType = DbType.String;
        p[8] = new SqlParameter("@PinCode", this._PinCode);
        p[8].DbType = DbType.String;
        p[9] = new SqlParameter("@Phone", this._Phone);
        p[9].DbType = DbType.String;
        p[10] = new SqlParameter("@Mobile", this._Mobile);
        p[10].DbType = DbType.String;
        p[11] = new SqlParameter("@FaxNo", this._FaxNo);
        p[11].DbType = DbType.String;
        p[12] = new SqlParameter("@Email", this._Email);
        p[12].DbType = DbType.String;
        p[13] = new SqlParameter("@Website", this._Website);
        p[13].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Insert_OfficialAddressbookDetail", p);
    }

    public DataSet SelectDetailOnFirstName()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@FirstName", this._FirstName);
        p[1].DbType = DbType.String;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Select_DetailOnFirstName", p);
        return ds;
    }

    public DataSet SelectDetailOnLastName()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@LastName", this._LastName);
        p[1].DbType = DbType.String;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Select_DetailOnLastName", p);
        return ds;
    }

    public DataSet SelectOfficialDetailOnFirstName()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@FirstName", this._FirstName);
        p[1].DbType = DbType.String;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Select_OfficialDetailOnFirstName", p);
        return ds;
    }
    public DataSet SelectOfficialDetailOnLastName()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@LastName", this._LastName);
        p[1].DbType = DbType.String;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Select_OfficialDetailOnLastName", p);
        return ds;
    }
    public DataSet SelectOfficialDetailOnCompanyName()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@CompanyName", this._CompanyName);
        p[1].DbType = DbType.String;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Select_OfficialDetailOnCompanyName", p);
        return ds;
    }

    //Show Personal Contact
    public DataSet ShowAllPersonalContact()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_AllPersonalContact",p);
        return ds;
    }
    //Delete
    public void DeletePersonalContact()
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@Id", this._Id);
        p[0].DbType = DbType.Int16;
        p[1] = new SqlParameter("@LoginName", this._LoginName);
        p[1].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Delete_PersonalContact", p);
    }
    //Update
    public void UpdatePersonalConatctDetail()
    {
        SqlParameter[] p = new SqlParameter[15];
        p[0] = new SqlParameter("@Id", this._Id);
        p[0].DbType = DbType.Int16;
        p[1] = new SqlParameter("@LoginName", this._LoginName);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@FirstName", this._FirstName);
        p[2].DbType = DbType.String;
        p[3] = new SqlParameter("@LastName", this._LastName);
        p[3].DbType = DbType.String;
        p[4] = new SqlParameter("@Gender", this._Gender);
        p[4].DbType = DbType.String;
        p[5] = new SqlParameter("@Address", this._Address);
        p[5].DbType = DbType.String;
        p[6] = new SqlParameter("@City", this._City);
        p[6].DbType = DbType.String;
        p[7] = new SqlParameter("@Country", this._Country);
        p[7].DbType = DbType.String;
        p[8] = new SqlParameter("@State", this._State);
        p[8].DbType = DbType.String;
        p[9] = new SqlParameter("@PinCode", this._PinCode);
        p[9].DbType = DbType.String;
        p[10] = new SqlParameter("@Phone", this._Phone);
        p[10].DbType = DbType.String;
        p[11] = new SqlParameter("@Mobile", this._Mobile);
        p[11].DbType = DbType.String;
        p[12] = new SqlParameter("@Email", this._Email);
        p[12].DbType = DbType.String;
        p[13] = new SqlParameter("@DOB", this._DOB);
        p[13].DbType = DbType.Date;
        p[14] = new SqlParameter("@Aniversary", this._Aniversary);
        p[14].DbType = DbType.Date;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Update_PersonalConatctDetail", p);
    }

    public DataSet ShowPersonalContactById()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@Id", this._Id);
        p[0].DbType = DbType.Int16;
        p[1] = new SqlParameter("@LoginName", this._LoginName);
        p[1].DbType = DbType.String;
       ds= SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_PersonalContactById", p);
       return ds;
    }

    //Show Official Contact

    public DataSet ShowAllOfficialContact()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_AllOfficialContact",p);
        return ds;
    }

    //Delete
    public void DeleteOfficialContact()
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@Id", this._Id);
        p[0].DbType = DbType.Int16;
        p[1] = new SqlParameter("@LoginName", this._LoginName);
        p[1].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Delete_OfficialContact", p);
    }
    //Update
    public void UpdateOfficialConatctDetail()
    {
        SqlParameter[] p = new SqlParameter[15];
        p[0] = new SqlParameter("@Id", this._Id);
        p[0].DbType = DbType.Int16;
        p[1] = new SqlParameter("@LoginName", this._LoginName);
        p[1].DbType = DbType.String;
        p[2] = new SqlParameter("@CompanyName", this._CompanyName);
        p[2].DbType = DbType.String;
        p[3] = new SqlParameter("@FirstName", this._FirstName);
        p[3].DbType = DbType.String;
        p[4] = new SqlParameter("@LastName", this._LastName);
        p[4].DbType = DbType.String;
        p[5] = new SqlParameter("@Address", this._Address);
        p[5].DbType = DbType.String;
        p[6] = new SqlParameter("@City", this._City);
        p[6].DbType = DbType.String;
        p[7] = new SqlParameter("@Country", this._Country);
        p[7].DbType = DbType.String;
        p[8] = new SqlParameter("@State", this._State);
        p[8].DbType = DbType.String;
        p[9] = new SqlParameter("@PinCode", this._PinCode);
        p[9].DbType = DbType.String;
        p[10] = new SqlParameter("@Phone", this._Phone);
        p[10].DbType = DbType.String;
        p[11] = new SqlParameter("@Mobile", this._Mobile);
        p[11].DbType = DbType.String;
        p[12] = new SqlParameter("@FaxNo", this._FaxNo);
        p[12].DbType = DbType.String;
        p[13] = new SqlParameter("@Email", this._Email);
        p[13].DbType = DbType.String;
        p[14] = new SqlParameter("@Website", this._Website);
        p[14].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "Sp_Update_OfficialConatctDetail", p);
    }
    public DataSet  ShowOfficialContactById()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@Id", this._Id);
        p[0].DbType = DbType.Int16;
        p[1] = new SqlParameter("@LoginName", this._LoginName);
        p[1].DbType = DbType.String;
        ds=SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_OfficialContactById", p);
        return ds;
    }
    public DataSet ShowPersonalDetailBySelectedLetter()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@FirstName", this._FirstName);
        p[1].DbType = DbType.String;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_PersonalDetailBySelectedLetter", p);
        return ds;
    }
    public DataSet ShowPersonalDetailBySelectedLastNameLetter()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@LastName", this._LastName);
        p[1].DbType = DbType.String;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_PersonalDetailBySelectedLastNameLetter", p);
        return ds;
    }
    public DataSet ShowOfficialDetailBySelectedLastNameLetter()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@LastName", this._LastName);
        p[1].DbType = DbType.String;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_OfficialDetailBySelectedLastNameLetter", p);
        return ds;
    }
    public DataSet ShowOfficialDetailBySelectedFirstNameLetter()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@FirstName", this._FirstName);
        p[1].DbType = DbType.String;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_OfficialDetailBySelectedFirstNameLetter", p);
        return ds;
    }
    public DataSet ShowOfficialDetailBySelectedCompanyNameLetter()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@CompanyName", this._CompanyName);
        p[1].DbType = DbType.String;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_OfficialDetailBySelectedCompanyNameLetter", p);
        return ds;
    }

    public DataSet SelectBirthDayList()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@Month", this._Month);
        p[1].DbType = DbType.String;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Select_BirthDayList", p);
        return ds;
    }

    public DataSet SelectAniversaryList()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@Month", this._Month);
        p[1].DbType = DbType.String;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Select_AniversaryList", p);
        return ds;
    }

    
    public DataSet ShowAniversary()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_AniversaryDate", p);
        return ds;
    }


    public DataSet Show_BirthDate()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_BirthDate", p);
        return ds;
    }

    public DataSet GetMailId_ById()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@id", this._Id);
        p[1].DbType = DbType.Int16;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_GetMailId_ById", p);
        return ds;
    }

    public DataSet Show_All_AniversaryByDate()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@Month", this._Month);
        p[1].DbType = DbType.Int16;
        p[2] = new SqlParameter("@Day", this._Day);
        p[2].DbType = DbType.Int16;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_All_AniversaryByDate", p);
        return ds;
    }

    public DataSet Show_All_BirthdayByDate()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@Month", this._Month);
        p[1].DbType = DbType.Int16;
        p[2] = new SqlParameter("@Day", this._Day);
        p[2].DbType = DbType.Int16;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Show_All_BirthdayByDate", p);
        return ds;
    }

    public DataSet SelectBirthDayListByDate()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@Month", this._Month);
        p[1].DbType = DbType.Int16;
        p[2] = new SqlParameter("@Day", this._Day);
        p[2].DbType = DbType.Int16;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Select_BirthDayListByDate", p);
        return ds;
    }

    public DataSet SelectAniversaryListByDate()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@Month", this._Month);
        p[1].DbType = DbType.Int16;
        p[2] = new SqlParameter("@Day", this._Day);
        p[2].DbType = DbType.Int16;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Select_AniversaryListByDate", p);
        return ds;
    }

    public DataSet SelectBirthdayAccordingSystemdate()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@Date", this._Date);
        p[1].DbType = DbType.Date;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Select_Birthday_AccordingSystemdate", p);
        return ds;
    }
    public DataSet SelectAnniversaryAccordingSystemdate()
    {
        ds = new DataSet();
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@LoginName", this._LoginName);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@Date", this._Date);
        p[1].DbType = DbType.Date;
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "Sp_Select_Anniversary_AccordingSystemdate", p);
        return ds;
    }
}
