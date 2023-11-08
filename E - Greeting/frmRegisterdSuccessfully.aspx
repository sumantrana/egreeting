<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmRegisterdSuccessfully.aspx.cs" Inherits="frmRegisterdSuccessfully" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <br />
        <table border="0" cellpadding="0" cellspacing="0" style="width: 302px">
            <tr>
                <td colspan="3" style="font-size: 20pt; color: #00ccff; background-color: #000000">
                    <span style="font-size: 14pt; font-family: Verdana"><strong>
                    Congratulation U Have Registerd Successfully ....!</strong></span></td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Panel ID="Panel1" runat="server" BorderColor="#E0E0E0" Height="50px" Width="125px">
                        <div style="text-align: center">
                            <table border="0" cellpadding="0" cellspacing="0" style="width: 304px">
                                <tr>
                                    <td align="center" colspan="4" >
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="4" style="font-weight: bold; font-size: 16pt; background-color: #777777">
                                        <span style="font-size: 14pt; color: #ffffff; font-family: Verdana">
                                        Sign In !</span></td>
                                </tr>
                                <tr>
                                    <td align="right" style="font-weight: bold; font-size: 12px; width: 200px; font-family: Verdana">
                                        User Name:</td>
                                    <td align="left" style="font-weight: bold; color: #ff0000">
                                        *</td>
                                    <td align="left" style="width: 100px">
                                        <asp:TextBox ID="txtUName" runat="server" Width="173px"></asp:TextBox></td>
                                    <td align="left" style="width: 100px">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUName"
                                            ErrorMessage="Require">*</asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td align="right" style="font-weight: bold; font-size: 12px; width: 200px; font-family: Verdana">
                                        Password:</td>
                                    <td align="left" style="font-weight: bold; color: #ff0000">
                                        *</td>
                                    <td align="left" style="width: 100px">
                                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="173px"></asp:TextBox></td>
                                    <td align="left" style="width: 100px">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
                                            ErrorMessage="Require">*</asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="3" width="60%">
                                    <asp:Button ID="btnLogin" OnClick="btnLogin_Click" runat="server" Text="Sign In Me !" Width="113px">
                                        </asp:Button></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="4">
                                        </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="4">
                                        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red" Width="240px"></asp:Label></td>
                                </tr>
                            </table>
                        </div>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

