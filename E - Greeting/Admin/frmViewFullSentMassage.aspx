<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmViewFullSentMassage.aspx.cs" Inherits="Admin_frmViewFullSentMassage" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table align="center" border="0" cellpadding="2" cellspacing="2">
        <tr>
            <td align="left" colspan="3" style="font-weight: bold; color: #ffffff; width: 604px;">
                <asp:Button ID="btnBack1" runat="server" BackColor="Black" Font-Bold="True"
                    Font-Names="Verdana" ForeColor="DodgerBlue" OnClick="btnBack1_Click"
                    Text="Return To Outbox" Width="149px" /><asp:Button ID="btnHome" runat="server" BackColor="Black" Font-Bold="True" Font-Names="Verdana"
                    ForeColor="DodgerBlue" OnClick="btnHome_Click" Text="Return To Home" Width="142px" /></td>
        </tr>
        <tr>
            <td align="left" colspan="3" style="font-weight: bold; color: #ffffff; width: 604px;">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="width: 604px; text-align: left;">
                <asp:Label ID="lblFullMsg" runat="server" ForeColor="Black" Height="189px" Width="603px" Font-Bold="True" Font-Names="Verdana" Font-Size="10pt"></asp:Label></td>
        </tr>
        <tr>
            <td align="left" colspan="3" style="font-weight: bold; color: #ffffff; width: 604px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td  colspan="1" style="font-weight: bold; color: black;  text-align: left; width: 150px;">
                <span style="font-size: 10pt; font-family: Verdana">
                Download Attachment:</span></td>
            <td style="text-align: left">
                <asp:HyperLink ID="HypAttachment" runat="server" Font-Bold="True" ForeColor="Maroon"
                    Width="193px" Font-Names="Verdana" Font-Size="10pt">[HypAttachment]</asp:HyperLink></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold;  color: #ffffff">
                </td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: #ffffff; width: 604px;">
                <asp:Label ID="lblMsg" runat="server" ForeColor="#004040" Width="331px" Font-Names="Verdana" Font-Size="10pt"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

