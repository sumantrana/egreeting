<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmSendFeedbackSuccessfully.aspx.cs" Inherits="frmSendFeedbackSuccessfully" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td align="center" colspan="4" style="font-weight: bold; color: black">
                Your Message has been sent to the following receipient</td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: black">
                <asp:Label ID="lblName" runat="server" ForeColor="Maroon" Width="321px"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

