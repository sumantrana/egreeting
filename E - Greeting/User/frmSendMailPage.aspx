<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="frmSendMailPage.aspx.cs" Inherits="User_frmSendMailPage" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 37%">
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: #ffffff; width: 390px;">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: #ffffff; text-align: center; width: 390px;">
                <asp:DropDownList ID="ddlBack" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                    Width="184px">
                    <asp:ListItem>Choose One...</asp:ListItem>
                    <asp:ListItem>Home Page</asp:ListItem>
                    <asp:ListItem>Birthday List</asp:ListItem>
                    <asp:ListItem>Aniversary List</asp:ListItem>
                    <asp:ListItem>Address Book</asp:ListItem>
                    <asp:ListItem>Outbox</asp:ListItem>
                    <asp:ListItem>Calendar With Aniversary</asp:ListItem>
                    <asp:ListItem>Calendar With Birthday</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: #ffffff; width: 390px;">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: #ffffff; width: 390px;">
                <asp:Label ID="lblName" runat="server" ForeColor="#0099FF" Width="53px" Font-Names="Verdana" Font-Size="10pt"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: #ffffff; width: 390px;">
            </td>
        </tr>
        <tr>
            <td align="right" colspan="4" style="font-weight: bold; color: black; height: 32px; text-align: center;">
                <span style="font-size: 10pt; font-family: Verdana">
                Your Message has been sent to the following receipient</span></td>
        </tr>
        <tr>
            <td align="right" colspan="4" style="font-weight: bold; color: #ffffff">
            </td>
        </tr>
        <tr>
            <td align="left" colspan="3" style="font-weight: bold; color: #ffffff; width: 390px; height: 20px; text-align: center;">
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Width="47px" Font-Names="Verdana" Font-Size="10pt"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: #ffffff; width: 390px;">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

