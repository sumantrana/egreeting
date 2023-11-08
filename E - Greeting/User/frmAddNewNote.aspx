<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="frmAddNewNote.aspx.cs" Inherits="User_frmAddNewNote" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 58%">
        <tr>
            <td  colspan="5" >
                &nbsp;</td>
        </tr>
        <tr>
        <td align="center" >
        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="Red"
                    Width="267px" Font-Names="Verdana"></asp:Label>
                    </td>
            <td  colspan="4" style="font-weight: bold; color: #ffffff; height: 24px;  text-align: right;">
            <asp:Button ID="btnBack" runat="server" CausesValidation="False" OnClick="btnBack_Click"
                    Text="Back<<" Width="67px" />
              </td>
        </tr>
        <tr>
            <td align="center" colspan="5">
                </td>
        </tr>
        <tr>
            <td colspan="5" style="height: 322px">
                <asp:Panel ID="Panel1" runat="server" Width="100%">
                    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                        <tr>
                        <td align="center" style="font-weight: bold; color: black; width: 596px;">
                        <span style="font-size: 10pt; font-family: Verdana">
                                Subject:</span>
                                </td>
                            <td colspan="2" >
                                <asp:TextBox ID="txtSubject" runat="server" MaxLength="50" Width="396px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="3" style="font-weight: bold; color: black; text-align: right;">
                                <span style="font-size: 10pt; font-family: Verdana">
                                Add Your Note Below</span></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="3">
                                <asp:TextBox ID="txtNote" runat="server" Height="188px" MaxLength="800" TextMode="MultiLine"
                                    ValidationGroup="g1" Width="460px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="3" style="height: 19px">
                            </td>
                        </tr>
                        <tr>
                        <td style="height: 24px"></td>
                        <td style="width: 199px; height: 24px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNote"
                                    ErrorMessage="Note is Required" Font-Bold="True" SetFocusOnError="True" ToolTip="Enter Appointment"
                                    ValidationGroup="g1" Font-Names="Verdana" Font-Size="10pt" Width="160px"></asp:RequiredFieldValidator></td>
                            <td  colspan="1" style="text-align: right; height: 24px;">                                
                                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" ValidationGroup="g1"
                                    Width="119px" /><asp:Button ID="btnCancel" runat="server" CausesValidation="False" OnClick="btnCancel_Click"
                                    Text="Cancel" Width="119px" /></td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

