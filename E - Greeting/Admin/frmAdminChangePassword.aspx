<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmAdminChangePassword.aspx.cs" Inherits="Admin_frmAdminChangePassword" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <table border="0" cellpadding="0" cellspacing="0" align="center" style="width: 38%">
        <tr>
            <td colspan="3" style="font-weight: bold; font-size: 12pt; color: #00ccff; background-color: #000000;" align="center">
                <span style="font-size: 14pt; font-family: Verdana">
                Change Password</span></td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></td>
        </tr>
        <tr style="color: #000000">
            <td align="left" style="font-weight: bold; font-size: 10px; width: 5332px; font-family: Verdana; height: 3px;">
                User Name:</td>
            <td align="left" style="width: 281px">
                <asp:TextBox ID="txtUserName" runat="server" Width="167px"></asp:TextBox></td>
            <td align="left">
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="Enter User Name"
                    Font-Bold="True" Font-Size="9pt">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt; color: #000000">
            <td align="left" style="font-weight: bold; font-size: 10px; width: 5332px; font-family: Verdana; height: 3px;">
                Old Password:</td>
            <td align="left" style="width: 281px; height: 3px">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="167px"></asp:TextBox></td>
            <td align="left" style="height: 3px">
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Enter Password"
                    Font-Bold="True" Font-Size="9pt" ValidationGroup="g1" Width="1px">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-weight: bold; font-size: 10px; width: 5332px; font-family: Verdana; height: 3px;">
                New Password:</td>
            <td align="left" style="width: 281px">
                <asp:TextBox ID="txtNew" runat="server" TextMode="Password" Width="167px"></asp:TextBox></td>
            <td align="left">
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" ErrorMessage="Enter Password"
                    Font-Bold="True" Font-Size="9pt" ValidationGroup="g1" Width="1px">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-weight: bold; font-size: 10px; width: 5332px; font-family: Verdana; height: 3px;">
                Confirm Password:</td>
            <td align="left" style="width: 281px">
                <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" Width="167px"></asp:TextBox>
                </td>
            <td align="left">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNew"
                    ControlToValidate="txtConfirm" ErrorMessage="Password Mismatch" Font-Bold="True"
                    Font-Size="9pt">*</asp:CompareValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="width: 5332px">
            </td>
            <td align="left" style="width: 281px; text-align: right">
                <asp:Button ID="btnChange" runat="server" OnClick="btnChange_Click" Text="Change" /></td>
            <td align="left">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="2">
                </td>
            <td align="center" colspan="1">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="2">
            </td>
            <td align="center" colspan="1">
            </td>
        </tr>
    </table>
</asp:Content>

