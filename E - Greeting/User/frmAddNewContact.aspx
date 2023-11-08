<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true"
    CodeFile="frmAddNewContact.aspx.cs" Inherits="User_frmAddNewContact" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc2" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="text-align: center">
       
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td style="width: 100px">
                    <asp:ScriptManager id="sm1" runat="server">
                    </asp:ScriptManager>
                    <cc1:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" Font-Bold="True"
                        ForeColor="Black" Height="255px" Width="437px" Font-Names="Verdana" Font-Size="X-Small">
                        <cc1:TabPanel ID="TabPanel1" runat="server" HeaderText="TabPanel1">
                            <ContentTemplate>
                                <div style="text-align: center">
                                    <table align="center" bgcolor="gainsboro" border="1" cellpadding="0" cellspacing="0"
                                        style="width: 400px">
                                        <tr>
                                            <td align="center" colspan="2">
                                                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"
                                                    Width="455px"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="font-size: 12pt; color: white; font-family: Times New Roman">
                                            <td align="left" colspan="2" style="font-weight: bold; font-size: 12pt; background-color: gray">
                                                <span style="font-size: 10pt; font-family: Verdana">Add Your New Contact</span></td>
                                        </tr>
                                        <tr style="font-size: 12pt; color: white; font-family: Times New Roman">
                                            <td align="right" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                                First Name:</td>
                                            <td align="left">
                                                <asp:TextBox ID="txtFName" runat="server" ValidationGroup="g2" Width="168px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtFName"
                                                    ErrorMessage="Require" Font-Bold="True" ToolTip="Enter First Name" ValidationGroup="g2"
                                                    Width="1px">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr style="font-size: 12pt; font-family: Times New Roman">
                                            <td align="right" style="font-weight: bold; color: black; font-size: 9pt; font-family: Verdana;">
                                                Last Name:</td>
                                            <td align="left">
                                                <asp:TextBox ID="txtLName" runat="server" ValidationGroup="g2" Width="168px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtLName"
                                                    ErrorMessage="Rrequire" Font-Bold="True" ToolTip="Enter Last Name" ValidationGroup="g2"
                                                    Width="1px">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr style="font-size: 12pt; font-family: Times New Roman">
                                            <td align="right" style="font-weight: bold; color: black; font-size: 9pt; font-family: Verdana;">
                                                Gender:</td>
                                            <td align="left" style="width: 340px">
                                                <asp:DropDownList ID="ddlGender" runat="server" ValidationGroup="g2" Width="173px">
                                                    <asp:ListItem>Choose One...</asp:ListItem>
                                                    <asp:ListItem>Male</asp:ListItem>
                                                    <asp:ListItem>Female</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLName"
                                                    ErrorMessage="Require" Font-Bold="True" ToolTip="Enter Last Name" ValidationGroup="g2"
                                                    Width="1px">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr style="font-size: 12pt; font-family: Times New Roman">
                                            <td align="right" style="font-weight: bold; color: black; font-size: 9pt; font-family: Verdana;">
                                                Address:</td>
                                            <td align="left">
                                                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" ValidationGroup="g2"
                                                    Width="168px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtAddress"
                                                    ErrorMessage="Require" Font-Bold="True" ToolTip="Enter Address" ValidationGroup="g2"
                                                    Width="1px">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr style="font-size: 12pt; font-family: Times New Roman">
                                            <td align="right" style="font-weight: bold; color: black; font-size: 9pt; font-family: Verdana;">
                                                City:</td>
                                            <td align="left">
                                                <asp:TextBox ID="txtCity" runat="server" ValidationGroup="g2" Width="168px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtCity"
                                                    ErrorMessage="Require" Font-Bold="True" ToolTip="Enter City" ValidationGroup="g2"
                                                    Width="1px">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr style="font-size: 12pt; font-family: Times New Roman">
                                            <td align="right" style="font-weight: bold; color: black; font-size: 9pt; font-family: Verdana;">
                                                State:</td>
                                            <td align="left">
                                                <asp:DropDownList ID="ddlState" runat="server" Width="175px">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="font-weight: bold; color: black; font-size: 9pt; font-family: Verdana;">
                                                Country:</td>
                                            <td align="left">
                                                <asp:DropDownList ID="ddlCountry" runat="server" Width="175px" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="font-weight: bold; color: black; font-size: 9pt; font-family: Verdana;">
                                                Zip or Postal Code:</td>
                                            <td align="left">
                                                <asp:TextBox ID="txtPinCode" runat="server" ValidationGroup="g2" Width="168px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtPinCode"
                                                    ErrorMessage="Require" Font-Bold="True" ToolTip="Enter Postal Code" ValidationGroup="g2"
                                                    Width="1px">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="font-weight: bold; color: black; font-size: 9pt; font-family: Verdana;">
                                                Phone Number:</td>
                                            <td align="left" style="width: 340px">
                                                <asp:TextBox ID="txtPhone" runat="server" ValidationGroup="g2" Width="168px"></asp:TextBox>
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="font-weight: bold; color: black; font-size: 9pt; font-family: Verdana;">
                                                Mobile:</td>
                                            <td align="left" style="width: 340px">
                                                <asp:TextBox ID="txtMobile" runat="server" Width="168px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMobile"
                                                    ErrorMessage="Require" Font-Bold="True" ToolTip="Enter Phone" ValidationGroup="g2"
                                                    Width="1px">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="font-weight: bold; color: black; font-size: 9pt; font-family: Verdana;">
                                                Email Address:</td>
                                            <td align="left" style="width: 340px">
                                                <asp:TextBox ID="txtMail" runat="server" Width="201px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="font-weight: bold; color: black; font-size: 9pt; font-family: Verdana;">
                                                Birthday:</td>
                                            <td align="left" style="width: 340px; height: 24px">
                                                <cc2:GMDatePicker ID="GMDatePicker1" runat="server" AutoPosition="True" CalendarOffsetX="-200px"
                                                    CalendarOffsetY="25px" CalendarTheme="None" CalendarWidth="200px" CallbackEventReference=""
                                                    Culture="English (United States)" EnableDropShadow="True" MaxDate="9999-12-31"
                                                    MinDate="" NextMonthText=">" NoneButtonText="None" ShowNoneButton="True" ShowTodayButton="True"
                                                    TextBoxWidth="100" ZIndex="1">
                                                </cc2:GMDatePicker>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana">
                                                Anniversary</td>
                                            <td align="left" style="width: 340px; height: 24px">
                                                <cc2:GMDatePicker ID="GMDatePicker2" runat="server" AutoPosition="True" CalendarOffsetX="-200px"
                                                    CalendarOffsetY="25px" CalendarTheme="None" CalendarWidth="200px" CallbackEventReference=""
                                                    Culture="English (United States)" EnableDropShadow="True" MaxDate="9999-12-31"
                                                    MinDate="" NextMonthText=">" NoneButtonText="None" ShowNoneButton="True" ShowTodayButton="True"
                                                    TextBoxWidth="100" ZIndex="1">
                                                </cc2:GMDatePicker>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2" style="font-weight: bold">
                                                <asp:Button ID="btnAddContact" runat="server" OnClick="btnAddContact_Click" Text="Add Contact"
                                                    ValidationGroup="g2" />
                                                <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" CausesValidation="False" />
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </ContentTemplate>
                            <HeaderTemplate>
                                <span style="font-size: 10pt; font-family: Verdana"><strong>Personal Contact</strong></span>
                            </HeaderTemplate>
                        </cc1:TabPanel>
                        <cc1:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2">
                            <HeaderTemplate>
                                <span style="font-size: 10pt; font-family: Verdana"><strong>Official Contact</strong></span>
                            </HeaderTemplate>
                            <ContentTemplate>
                                <table align="center" bgcolor="gainsboro" border="1" cellpadding="0" cellspacing="0"
                                    style="width: 400px">
                                    <tr>
                                        <td align="center" colspan="2">
                                            <asp:Label ID="lblMsg1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"
                                                Width="455px"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="font-size: 12pt; font-family: Times New Roman">
                                        <td align="left" colspan="2" style="font-weight: bold; font-size: 12pt; color: white;
                                            background-color: gray">
                                            <span style="font-size: 10pt; font-family: Verdana">Add Your New Official Contact</span></td>
                                    </tr>
                                    <tr style="font-size: 12pt; font-family: Times New Roman">
                                        <td align="right" style="font-weight: bold; color: #000000; font-size: 9pt; font-family: Verdana;">
                                            Company Name:</td>
                                        <td align="left">
                                            <asp:TextBox ID="txtCompanyName" runat="server" ValidationGroup="g1" Width="168px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCompanyName"
                                                ErrorMessage="Require" Font-Bold="True" ToolTip="Enter Organization Name" ValidationGroup="g1"
                                                Width="6px">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr style="font-size: 12pt; font-family: Times New Roman">
                                        <td align="right" style="font-weight: bold; color: #000000; font-size: 9pt; font-family: Verdana;">
                                            First Name:</td>
                                        <td align="left">
                                            <asp:TextBox ID="txtFName1" runat="server" ValidationGroup="g1" Width="168px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="Req5" runat="server" ControlToValidate="txtFName1"
                                                ErrorMessage="Require" Font-Bold="True" ToolTip="Enter First Name" ValidationGroup="g1"
                                                Width="6px">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr style="font-size: 12pt; font-family: Times New Roman">
                                        <td align="right" style="font-weight: bold; color: #000000; font-size: 9pt; font-family: Verdana;">
                                            Last Name:</td>
                                        <td align="left">
                                            <asp:TextBox ID="txtLName1" runat="server" ValidationGroup="g1" Width="168px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="Req6" runat="server" ControlToValidate="txtLName1"
                                                ErrorMessage="Rrequire" Font-Bold="True" ToolTip="Enter Last Name" ValidationGroup="g1"
                                                Width="6px">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr style="font-size: 12pt; font-family: Times New Roman">
                                        <td align="right" style="font-weight: bold; color: #000000; font-size: 9pt; font-family: Verdana;">
                                            Address:</td>
                                        <td align="left">
                                            <asp:TextBox ID="txtAddress1" runat="server" TextMode="MultiLine" ValidationGroup="g1"
                                                Width="168px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="Req7" runat="server" ControlToValidate="txtAddress1"
                                                ErrorMessage="Require" Font-Bold="True" ToolTip="Enter Address" ValidationGroup="g1"
                                                Width="4px">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr style="font-size: 12pt; font-family: Times New Roman">
                                        <td align="right" style="font-weight: bold; color: #000000; font-size: 9pt; font-family: Verdana;">
                                            City:</td>
                                        <td align="left">
                                            <asp:TextBox ID="txtCity1" runat="server" ValidationGroup="g1" Width="168px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="Req8" runat="server" ControlToValidate="txtCity1"
                                                ErrorMessage="Require" Font-Bold="True" ToolTip="Enter City" ValidationGroup="g1"
                                                Width="4px">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr style="font-size: 12pt; font-family: Times New Roman">
                                        <td align="right" style="font-weight: bold; color: #000000; font-size: 9pt; font-family: Verdana;">
                                            State:</td>
                                        <td align="left">
                                            <asp:DropDownList ID="ddlState1" runat="server" Width="174px">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="Req1" runat="server" ControlToValidate="ddlState1"
                                                ErrorMessage="Require" Font-Bold="True" InitialValue="Choose One..." ToolTip="Enter City"
                                                ValidationGroup="g1" Width="4px">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="font-weight: bold; color: #000000; font-size: 9pt; font-family: Verdana;
                                            height: 24px;">
                                            Country:</td>
                                        <td align="left" style="height: 24px">
                                            <asp:DropDownList ID="ddlCountry1" runat="server" Width="173px">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="Req4" runat="server" ControlToValidate="ddlCountry1"
                                                ErrorMessage="Require" Font-Bold="True" InitialValue="Choose One..." ToolTip="Enter City"
                                                ValidationGroup="g1" Width="4px">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="font-weight: bold; color: #000000; font-size: 9pt; font-family: Verdana;">
                                            Zip or Postal Code:</td>
                                        <td align="left">
                                            <asp:TextBox ID="txtPinCode1" runat="server" ValidationGroup="g1" Width="168px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="Req9" runat="server" ControlToValidate="txtPinCode1"
                                                ErrorMessage="Require" Font-Bold="True" ToolTip="Enter Postal Code" ValidationGroup="g1"
                                                Width="5px">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="font-weight: bold; color: #000000; font-size: 9pt; font-family: Verdana;">
                                            Phone Number.:</td>
                                        <td align="left" style="width: 340px">
                                            <asp:TextBox ID="txtPhone1" runat="server" ValidationGroup="g1" Width="168px"></asp:TextBox>
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="font-weight: bold; color: #000000; font-size: 9pt; font-family: Verdana;">
                                            Mobile:</td>
                                        <td align="left" style="width: 340px">
                                            <asp:TextBox ID="txtMobile1" runat="server" Width="168px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="Req2" runat="server" ControlToValidate="txtMobile1"
                                                ErrorMessage="Require" Font-Bold="True" ToolTip="Enter Phone" ValidationGroup="g1"
                                                Width="5px">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="font-weight: bold; color: #000000; font-size: 9pt; font-family: Verdana;">
                                            Fax No.:</td>
                                        <td align="left" style="width: 340px">
                                            <asp:TextBox ID="txtFaxNo" runat="server" Width="168px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="font-weight: bold; color: #000000; font-size: 9pt; font-family: Verdana;">
                                            Email Address:</td>
                                        <td align="left" style="width: 340px">
                                            <asp:TextBox ID="txtMail1" runat="server" Width="201px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="font-weight: bold; color: #000000; font-size: 9pt; font-family: Verdana;">
                                            Website:</td>
                                        <td align="left" style="width: 340px; height: 24px">
                                            <asp:TextBox ID="txtWebsite" runat="server" Width="201px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="font-weight: bold">
                                            <asp:Button ID="btnAddOfficialContact" runat="server" OnClick="btnAddOfficialContact_Click"
                                                Text="Add Contact" ValidationGroup="g1" />
                                            <asp:Button ID="btnBack1" runat="server" OnClick="btnBack1_Click" Text="Back" CausesValidation="False" />
                                        </td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                        </cc1:TabPanel>
                    </cc1:TabContainer></td>
            </tr>
        </table>
    </div>
</asp:Content>
