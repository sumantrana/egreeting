<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="frmFullMailPage.aspx.cs" Inherits="User_frmFullMailPage" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table align="center" border="0" cellpadding="2" cellspacing="2" style="width: 76%">
        <tr>
            <td align="left" colspan="3" style="font-weight: bold; color: #ffffff">
                <asp:Button ID="btnBack1" runat="server" BackColor="Black" Font-Bold="True" Font-Names="Verdana"
                    ForeColor="DodgerBlue" OnClick="btnBack1_Click" Text="Return To Outbox" Width="151px" /><asp:Button ID="btnHome" runat="server" BackColor="Black" Font-Bold="True" Font-Names="Verdana"
                    ForeColor="DodgerBlue" OnClick="btnHome_Click" Text="Return To Home" Width="136px" /></td>
        </tr>
        <tr>
            <td align="left" colspan="3" style="font-weight: bold; color: #ffffff">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="text-align: left">
                <asp:Label ID="lblFullMsg" runat="server" ForeColor="Black" Height="189px" Width="625px" Font-Bold="True" Font-Names="Verdana" Font-Size="10pt"></asp:Label></td>
        </tr>
        <tr>
            <td align="left" colspan="3" style="font-weight: bold; color: #ffffff">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" colspan="1" style="font-weight: bold; color: black;">
                <span style="font-size: 10pt; font-family: Verdana">
                Download Attachment &nbsp;&nbsp;
                    :</span></td>
            <td colspan="2" align="left">
                <asp:HyperLink ID="HypAttachment" runat="server" Font-Bold="True" ForeColor="Maroon"
                    Width="193px" Font-Names="Verdana" Font-Size="10pt">[HypAttachment]</asp:HyperLink></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: #ffffff">
                <asp:Label ID="lblMsg" runat="server" ForeColor="#004040" Width="331px" Font-Names="Verdana" Font-Size="10pt"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

