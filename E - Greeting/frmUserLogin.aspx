<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmUserLogin.aspx.cs" Inherits="frmUserLogin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="text-align:center">
    <br />
    <br />
    <br />
    <br />
    <br />
    <table align="center" border="0" cellpadding="2" cellspacing="2" style="border-right: green 1px dashed; border-top: green 1px dashed; border-left: green 1px dashed; border-bottom: green 1px dashed; width: 328px;" >
        <tr>
            <td  colspan="5" align="center" bgcolor="#000000" style="font-weight: bold; font-size: 13pt;
                color: #fffbd6; font-family: Forte; height: 25px" valign="middle">
                User Sign In !</td>
        </tr>
        <tr>
            <td align="left" colspan="5" style="height: 4px">
            </td>
        </tr>
        <tr>
            <td align="right" style="height: 24px">
                <span style="color: #ff0066">*</span></td>
            <td align="right" style="width: 877px; height: 24px">
                <strong><span style="font-size: 9pt; font-family: Verdana">
                User Name</span></strong></td>
            <td align="left" style="font-weight: bold; color: #ff0000; height: 24px; width: 353px;">
                :</td>
            <td align="left" style="height: 24px; color: #000000;">
                <asp:TextBox ID="txtUName" runat="server" Width="173px"></asp:TextBox></td>
            <td align="left" style="width: 100px; height: 24px; color: #000000;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUName"
                    ErrorMessage="Require">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td align="right" style="height: 24px;">
                <span style="color: #ff0066">*</span></td>
            <td align="right" style="width: 877px; height: 24px;">
                <span style="font-size: 9pt; font-family: Verdana"><strong>
                Password</strong></span></td>
            <td align="left" style="font-weight: bold; color: #ff0000; height: 24px; width: 353px;">
                :</td>
            <td align="left" style="height: 24px;">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="173px"></asp:TextBox></td>
            <td align="left" style="width: 100px; height: 24px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="Require">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td colspan="4" style="text-align: right">
                <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Sign In Me !"
                    Width="95px" CssClass="btnstyle" BackColor="Black" Font-Bold="True" Font-Names="Arial Rounded MT Bold"
                                ForeColor="#0099FF" /></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr style="color: #000000">
            <td align="center" colspan="5">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red" Width="250px" Font-Names="Verdana" Font-Size="X-Small" Height="10px"></asp:Label></td>
        </tr>
        <tr style="color: #000000">
            <td align="center" colspan="5">
                <asp:LinkButton ID="lnkRegister" runat="server" CausesValidation="False" Font-Bold="True"
                    ForeColor="Black" OnClick="lnkRegister_Click" Font-Names="Verdana" Font-Size="Small">Register Me ! </asp:LinkButton></td>
        </tr>
    </table>

</div>
</asp:Content>

