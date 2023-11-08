<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="frmComposeMail.aspx.cs" Inherits="User_frmComposeMail" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 71%">
        <tr>
            <td align="center" colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <table align="left" border="0" cellpadding="0" cellspacing="0" style="width: 155px">
                    <tr>
                        <td>
                            <asp:Button ID="btnSend" runat="server" BackColor="Black" Font-Bold="True" Font-Names="Verdana"
                                ForeColor="#0099FF" Text="Send Mail" Width="99px" OnClick="btnSend_Click" /></td>
                        <td>
                            <asp:Button ID="btnCancel" runat="server" BackColor="Black" Font-Bold="True" Font-Names="Verdana"
                                ForeColor="#0099FF" Text="Cancel" Width="99px" OnClick="btnCancel_Click" CausesValidation="False" /></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="font-weight: bold; color: #ffffff">
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Width="341px" Font-Names="Verdana" Font-Size="10pt"></asp:Label></td>
        </tr>
        <tr>
            <td align="left" colspan="4" style="font-weight: bold; color: black; text-align: right;">
                <span style="font-size: 8pt; font-family: Verdana">
                Separate each address with a comma</span></td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bold; color: black; font-size: 12px; font-family: Verdana;">
                From:</td>
            <td align="left">
                <asp:TextBox ID="txtFrom" runat="server" Width="450px" ReadOnly="True"></asp:TextBox></td>
            <td align="left" style="width: 41px">
            </td>
            <td align="left">
            </td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bold; color: black; font-size: 12px; font-family: Verdana;">
                To:</td>
            <td align="left">
                <asp:TextBox ID="txtTo" runat="server" ValidationGroup="g1" Width="450px"></asp:TextBox>
                </td>
            <td align="left" style="width: 41px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTo"
                    ErrorMessage="Require" Font-Bold="True" ForeColor="Maroon" ValidationGroup="g1">*</asp:RequiredFieldValidator>
            </td>
            <td align="left">
            </td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bold; color: black; font-size: 12px; font-family: Verdana;">
                Subject:</td>
            <td align="left">
                <asp:TextBox ID="txtSubject" runat="server" Width="450px"></asp:TextBox></td>
            <td align="left" style="width: 41px">
            </td>
            <td align="left">
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="lnkAttachment" runat="server" Font-Bold="True" ForeColor="Maroon"
                    OnClick="lnkAttachment_Click" Width="111px" CausesValidation="False">Add Attachment</asp:LinkButton></td>
                    <td colspan="3" style="text-align: left">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="350px" />
                <asp:LinkButton ID="lnkRemove" runat="server" Font-Bold="True" ForeColor="Violet"
                    OnClick="lnkRemove_Click" Width="59px" CausesValidation="False">Remove</asp:LinkButton></td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="font-weight: bold; color: #ffffff">
                <asp:TextBox ID="txtMailMessage" runat="server" Height="224px" TextMode="MultiLine"
                    Width="572px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="font-weight: bold; color: #ffffff; text-align: right">
                <asp:CheckBox ID="chkSave" runat="server" Checked="True" Font-Bold="True" ForeColor="Maroon"
                    Text="Save Copy To Sent Folder" Font-Names="Verdana" Font-Size="8pt" /></td>
        </tr>
    </table>
</asp:Content>

