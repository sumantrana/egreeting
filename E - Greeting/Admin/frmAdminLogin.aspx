<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="frmAdminLogin.aspx.cs" Inherits="Admin_frmAdminLogin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <table align="center" border="0" cellpadding="2" cellspacing="2"
        style="border-right: green 1px dashed; border-top: green 1px dashed; border-left: green 1px dashed; border-bottom: green 1px dashed; width: 312px;">
        <tr>
            <td align="center" bgcolor="#000000" colspan="4" style="font-weight: bold; font-size: 13pt;
                color: #fffbd6; font-family: Forte; height: 25px" valign="middle">
                Admin Login</td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red" Visible="False" Font-Names="Verdana" Font-Size="X-Small" Width="229px"></asp:Label></td>
            <td align="center" colspan="1" style="width: 95px"  >
            </td>
        </tr>
        <tr >
            <td align="left" style="width: 86px">
            </td>
            <td align="left" style="width: 270px" >
                <strong><span style="font-size: 9pt; font-family: Verdana">
                User Name:</span></strong></td>
            <td align="left" style="width: 129px" >
                <asp:TextBox ID="txtUserName" runat="server" Width="160px" ValidationGroup="g1"></asp:TextBox>
                </td>
            <td align="left" style="width: 95px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName"
                    ErrorMessage="Enter User Name" Font-Bold="True" Font-Size="9pt" ValidationGroup="g1" Width="1px">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="left" style="width: 86px; height: 28px">
            </td>
            <td align="left" style="width: 270px; height: 28px;">
                <span style="font-size: 9pt; font-family: Verdana"><strong>
                Password:</strong></span></td>
            <td align="left" style="width: 129px; height: 28px;" >
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="160px" ValidationGroup="g1"></asp:TextBox>
                </td>
            <td align="left" style="width: 95px; height: 28px;" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="Enter Password" Font-Bold="True" Font-Size="9pt" ValidationGroup="g1">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="center" colspan="1" style="width: 86px">
            </td>
            <td align="center" colspan="2" style="text-align: right" >
                <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" Width="65px" ValidationGroup="g1" BackColor="Black" Font-Bold="True" Font-Names="Verdana"
                                ForeColor="#0099FF" />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" BackColor="Black" Font-Bold="True" Font-Names="Verdana"
                                ForeColor="#0099FF" /></td>
            <td align="center" colspan="1" style="width: 95px" >
            </td>
        </tr>
        <tr>
            <td align="center" colspan="1" style="width: 86px">
            </td>
            <td align="center" colspan="2" style="text-align: right">
            </td>
            <td align="center" colspan="1" style="width: 95px">
            </td>
        </tr>
    </table>
</asp:Content>

