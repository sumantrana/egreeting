<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmAdminComposeMail.aspx.cs" Inherits="Admin_frmAdminComposeMail" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 70%">
        <tr>
            <td align="center" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <table align="left" border="0" cellpadding="0" cellspacing="0" style="width: 155px">
                    <tr>
                        <td>
                            <asp:Button ID="btnSend" runat="server" BackColor="Black" Font-Bold="True" Font-Names="Verdana"
                                ForeColor="#0099FF" OnClick="btnSend_Click" Text="Send Mail" Width="89px" /></td>
                        <td>
                            <asp:Button ID="btnCancel" runat="server" BackColor="Black" Font-Bold="True" Font-Names="Verdana"
                                ForeColor="#0099FF" OnClick="btnCancel_Click" Text="Cancel" Width="77px" /></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: #ffffff">
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Width="341px" Font-Names="Verdana" Font-Size="10pt"></asp:Label></td>
        </tr>
        <tr>
            <td align="left" colspan="3" style="font-weight: bold; color: black; text-align: right;">
                <span style="font-size: 8pt; font-family: Verdana">
                Separate each address with a comma</span></td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bold; color: black; width: 98px; font-size: 12px; font-family: Verdana;">
                From:</td>
            <td align="left" style="width: 450px">
                <asp:TextBox ID="txtFrom" runat="server" ReadOnly="True" Width="450px"></asp:TextBox></td>
            <td align="left">
            </td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bold; color: black; width: 98px; font-size: 12px; font-family: Verdana;">
                To:</td>
            <td align="left" style="width: 450px">
                <asp:TextBox ID="txtTo" runat="server" ReadOnly="True" ValidationGroup="g1" Width="450px"></asp:TextBox>
                </td>
            <td align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTo"
                    ErrorMessage="Require" Font-Bold="True" ForeColor="Maroon" ValidationGroup="g1">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bold; color: black; width: 98px; font-size: 12px; font-family: Verdana;">
                Subject:</td>
            <td align="left" style="width: 450px">
                <asp:TextBox ID="txtSubject" runat="server" Width="450px"></asp:TextBox></td>
            <td align="left">
            </td>
        </tr>
        <tr>
        </tr>
        <tr>
            <td style="width: 98px">
                <asp:LinkButton ID="lnkAttachment" runat="server" Font-Bold="True" ForeColor="Maroon"
                    OnClick="lnkAttachment_Click" Width="111px" CausesValidation="False" Font-Names="Verdana" Font-Size="8pt">Add Attachment</asp:LinkButton></td>
            <td colspan="2" style="text-align: left">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="350px">
            </asp:FileUpload>
                &nbsp;<asp:LinkButton ID="lnkRemove" runat="server" Font-Bold="True" ForeColor="Violet"
                    OnClick="lnkRemove_Click" Width="59px" CausesValidation="False">Remove</asp:LinkButton></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: #ffffff">
                <asp:TextBox ID="txtMailMessage" runat="server" Height="239px" TextMode="MultiLine"
                    Width="574px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: #ffffff; text-align: right">
                <asp:CheckBox ID="chkSave" runat="server" Checked="True" Font-Bold="True" ForeColor="Maroon"
                    Text="Save Copy To Sent Folder" Font-Names="Verdana" Font-Size="8pt" /></td>
        </tr>
    </table>
</asp:Content>

