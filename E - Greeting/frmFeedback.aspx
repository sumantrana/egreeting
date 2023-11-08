<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmFeedback.aspx.cs" Inherits="frmFeedback" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 67%">
        <tr>
            <td align="center" colspan="4" style="text-align: center">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="text-align: center">
                <table align="left" border="0" cellpadding="0" cellspacing="0" style="width: 155px">
                    <tr>
                        <td style="width: 150px">
                            <asp:Button ID="btnSend" runat="server" BackColor="Black" Font-Bold="True" Font-Names="Verdana"
                                ForeColor="#0099FF" OnClick="btnSend_Click" Text="Send Mail" Width="85px" /></td>
                        <td>
                            <asp:Button ID="btnCancel" runat="server" BackColor="Black" Font-Bold="True" Font-Names="Verdana"
                                ForeColor="#0099FF" OnClick="btnCancel_Click" Text="Cancel" Width="85px" CausesValidation="False" /></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="height: 19px; text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" colspan="4" style="font-weight: bold; color: black; height: 19px; text-align: right;">
                <span style="font-size: 8pt; font-family: Verdana">
                Separate each address with a comma</span></td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bold; color: black; width: 108px;">
                From:</td>
            <td align="left" style="width: 429px">
                <asp:TextBox ID="txtFrom" runat="server" Width="450px"></asp:TextBox>
                </td>
            <td align="left" colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFrom"
                    ErrorMessage="Require" Font-Bold="True" ForeColor="Maroon" ValidationGroup="g1">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bold; color: black; width: 108px;">
                To:</td>
            <td align="left" style="width: 429px">
                <asp:TextBox ID="txtTo" runat="server" ValidationGroup="g1" Width="450px" ReadOnly="True"></asp:TextBox>
                </td>
            <td align="left" colspan="2">
            </td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bold; color: black; width: 108px;">
                Subject:</td>
            <td align="left" style="width: 429px">
                <asp:TextBox ID="txtSubject" runat="server" Width="450px"></asp:TextBox></td>
            <td align="left" colspan="2">
            </td>
        </tr>
        <tr>
            <td style="width: 108px" colspan="1">
                <asp:LinkButton ID="lnkAttachment" runat="server" Font-Bold="True" ForeColor="Maroon"
                    OnClick="lnkAttachment_Click" Width="121px" CausesValidation="False">Add Attachment</asp:LinkButton></td>
            <td colspan="3" style="text-align: left">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="350px" />
                <asp:LinkButton ID="lnkRemove" runat="server" Font-Bold="True" ForeColor="Violet"
                    OnClick="lnkRemove_Click" Width="59px" CausesValidation="False">Remove</asp:LinkButton></td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="font-weight: bold; color: #ffffff">
                <asp:TextBox ID="txtMailMessage" runat="server" Height="239px" TextMode="MultiLine"
                    Width="580px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="font-weight: bold; color: #ffffff">
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Width="341px" Font-Names="Verdana" Font-Size="8pt"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

