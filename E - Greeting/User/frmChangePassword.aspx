<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="frmChangePassword.aspx.cs" Inherits="User_frmChangePassword" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 52%">
        <tr>
            <td align="left" colspan="4" style="font-weight: bold; font-size: 12pt; color: #00ccff;
                background-color: #000000; text-align: center">
                <span style="font-size: 14pt; font-family: Verdana">
                Change Your Password</span></td>
        </tr>
        <tr>
            <td colspan="1" style="width: 46px">
            </td>
            <td colspan="3">
                &nbsp;&nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bold; font-size: 12px; width: 46px; color: black;
                font-family: Verdana">
            </td>
            <td align="left" style="font-weight: bold; color: black; font-size: 12px; width: 175px; font-family: Verdana;">
                User Name:</td>
            <td align="left" style="width: 131px">
                <asp:TextBox ID="txtName" runat="server" Width="151px"></asp:TextBox>
                </td>
            <td align="left" style="width: 131px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                    ErrorMessage="Require" Font-Bold="True">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td align="left" style="font-weight: bold; font-size: 12px; width: 46px; color: black;
                font-family: Verdana">
            </td>
            <td align="left" style="font-weight: bold; color: black; font-size: 12px; width: 175px; font-family: Verdana;">
                Old Password:</td>
            <td align="left" style="width: 131px">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="151px"></asp:TextBox>
                </td>
            <td align="left" style="width: 131px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="Require" Font-Bold="True">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td align="left" style="font-weight: bold; font-size: 12px; width: 46px; color: black;
                font-family: Verdana">
            </td>
            <td align="left" style="font-weight: bold; color: black; font-size: 12px; width: 175px; font-family: Verdana;">
                New Password:</td>
            <td align="left" style="width: 131px">
                <asp:TextBox ID="txtNewPwd" runat="server" TextMode="Password" Width="151px"></asp:TextBox>
                </td>
            <td align="left" style="width: 131px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNewPwd"
                    ErrorMessage="Require" Font-Bold="True">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bold; font-size: 12px; width: 46px; color: black;
                font-family: Verdana">
            </td>
            <td align="left" style="font-weight: bold; color: black; font-size: 12px; width: 175px; font-family: Verdana;">
                Confirm Password:</td>
            <td align="left" style="width: 131px">
                <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" Width="151px"></asp:TextBox>
                </td>
            <td align="left" style="width: 131px">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNewPwd"
                    ControlToValidate="txtConfirm" ErrorMessage="Not Matched" Font-Bold="True" ValidationGroup="g1" Font-Names="Verdana" Font-Size="10pt"></asp:CompareValidator></td>
        </tr>
        <tr>
            <td align="center" colspan="1" style="font-weight: bold; width: 46px; color: #ffffff;
                text-align: right">
            </td>
            <td align="center" colspan="2" style="font-weight: bold; color: #ffffff; text-align: right">
                &nbsp;</td>
            <td align="center" colspan="1" style="font-weight: bold; width: 131px; color: #ffffff">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="1" style="font-weight: bold; width: 46px; color: #ffffff;
                text-align: right">
            </td>
            <td align="center" colspan="2" style="font-weight: bold; color: #ffffff; text-align: right;">
                <asp:Button ID="btnChange" runat="server" OnClick="btnChange_Click" Text="Change Password"
                    Width="117px" /></td>
            <td align="center" colspan="1" style="font-weight: bold; width: 131px; color: #ffffff">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="font-weight: bold; color: #ffffff">
                <asp:Label ID="lblMsg" runat="server" ForeColor="Maroon"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

