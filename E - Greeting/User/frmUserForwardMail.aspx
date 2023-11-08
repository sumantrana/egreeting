<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="frmUserForwardMail.aspx.cs" Inherits="User_frmUserForwardMail" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 66%">
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
                                ForeColor="#0099FF" OnClick="btnSend_Click" Text="Send Mail" Width="89px" /></td>
                        <td>
                            <asp:Button ID="btnCancel" runat="server" BackColor="Black" Font-Bold="True" Font-Names="Verdana"
                                ForeColor="#0099FF" OnClick="btnCancel_Click" Text="Cancel" Width="89px" CausesValidation="False" /></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="font-weight: bold; color: #ffffff">
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Width="341px" Font-Names="Verdana" Font-Size="9pt"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="font-weight: bold; color: #ffffff">
            </td>
        </tr>
        <tr>
            <td align="left" colspan="4" style="font-weight: bold; color: black; height: 13px; text-align: right;">
                <span style="font-size: 8pt; font-family: Verdana">
                Separate each address with a comma</span></td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bold; color: black; font-size: 12px; font-family: Verdana;">
                From:</td>
            <td align="left">
                <asp:TextBox ID="txtFrom" runat="server" ReadOnly="True" Width="450px"></asp:TextBox></td>
            <td align="left">
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
            <td align="left">
            <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ForeColor="Maroon" Font-Bold="True" ValidationGroup="g1" ErrorMessage="Require" ControlToValidate="txtTo">*</asp:RequiredFieldValidator>
            </td>
            <td align="left">
            </td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bold; color: black; font-size: 12px; font-family: Verdana;">
                Subject:</td>
            <td align="left">
                <asp:TextBox ID="txtSubject" runat="server" Width="450px"></asp:TextBox></td>
            <td align="left">
            </td>
            <td align="left">
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="lnkAttachment" runat="server" Font-Bold="True" ForeColor="Maroon"
                    OnClick="lnkAttachment_Click" Width="115px" CausesValidation="False" Font-Names="Verdana" Font-Size="9pt">Add Attachment</asp:LinkButton></td>
            <td colspan="3" style="text-align: left">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="350px" />
                <asp:LinkButton ID="lnkRemove" runat="server" Font-Bold="True" ForeColor="Violet"
                    OnClick="lnkRemove_Click" Width="59px" CausesValidation="False" Font-Names="Verdana" Font-Size="9pt">Remove</asp:LinkButton></td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="font-weight: bold; color: #ffffff">
                <asp:TextBox ID="txtMailMessage" runat="server" Height="239px" TextMode="MultiLine"
                    Width="576px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" colspan="4" style="text-align: right; height: 20px;">
                <asp:CheckBox ID="chkSave" runat="server" Checked="True" Font-Bold="True" ForeColor="Maroon"
                    Text="Save Copy To Sent Folder" Font-Names="Verdana" Font-Size="8pt" Height="1px" /></td>
        </tr>
        <tr>
            <td align="left" colspan="4">
                <div>
                    <table align="left" border="0" cellpadding="0" cellspacing="0" style="width: 155px">
                        <tr>
                            <td>
                                <asp:Button ID="btnSend1" runat="server" BackColor="Black" Font-Bold="True" Font-Names="Verdana"
                                    ForeColor="#0099FF" OnClick="btnSend1_Click" Text="Send Mail" Width="91px" /></td>
                            <td style="width: 93px">
                                <asp:Button ID="btnCancel1" runat="server" BackColor="Black" Font-Bold="True" Font-Names="Verdana"
                                    ForeColor="#0099FF" OnClick="btnCancel1_Click" Text="Cancel" Width="85px" /></td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

