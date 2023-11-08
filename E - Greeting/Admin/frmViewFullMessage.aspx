<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmViewFullMessage.aspx.cs" Inherits="Admin_frmViewFullMessage" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="0" cellpadding="2" cellspacing="2" style="width: 70%">
        <tr>
            <td align="center" colspan="3" style="width: 58px">
                <div style="text-align: left">
                    &nbsp;</div>
            </td>
            <td align="center" colspan="1" style="background-color: #f0f0e8; text-align: right;" valign="top">
                                <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back<<" Width="69px" /></td>
        </tr>
        <tr>
            <td align="left" colspan="5" style="font-weight: bold; color: #ffffff; height: 19px">
                <asp:Label ID="lblFullMsg" runat="server" ForeColor="Black" Height="311px" Width="629px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: #ffffff; height: 19px; width: 58px;">
                &nbsp;</td>
            <td align="center" colspan="1" style="font-weight: bold; color: #ffffff; height: 19px">
            </td>
        </tr>
        <tr>
            <td align="left" colspan="3" style="font-weight: bold; width: 58px;">
                Download Attachments:</td>
            <td align="center" colspan="1" style="font-weight: bold; color: #ffffff; height: 19px; text-align: left;">
            <asp:HyperLink ID="HypAttachment" runat="server" Font-Bold="True"
                    ForeColor="Maroon">[HypAttachment]</asp:HyperLink></td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="font-weight: bold; color: #ffffff; height: 19px">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="font-weight: bold; color: #ffffff; height: 19px">
                <asp:Label ID="lblMsg" runat="server" ForeColor="#004000"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

