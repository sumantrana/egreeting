<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmUserRegisteration.aspx.cs" Inherits="frmUserRegisteration" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <asp:ScriptManager id="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <table border="0" cellpadding="0" cellspacing="0" style="width: 390px">
            <tr>
                <td align="left" colspan="2" bgcolor="#000000" style="font-weight: bold; font-size: 20pt;
                color: #fffbd6; font-family: Forte; height: 25px" valign="middle">
                    &nbsp;User Registration</td>
            </tr>
            <tr>
                <td align="left" colspan="2" style="height: 19px">
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2" style="font-weight: bold; color: #ff0000">
                    <span style="font-size: 8pt; font-family: Verdana">
                    All * Fields Are Mandatory</span></td>
            </tr>
            <tr>
                <td align="left" bgcolor="#000000" style="font-weight: bold; font-size: 13pt;
                color: #fffbd6; font-family: Forte; height: 25px; width: 409px;" valign="middle">
                    &nbsp;Login Detail</td>
            </tr>
            <tr>
                <td style="width: 409px" align="left">
                    <table border="0" cellpadding="2" cellspacing="2" style="width: 390px">
                        <tr>
                            <td style="font-weight: bold; font-size: 11px; font-family: Verdana; width: 654px;">
                                &nbsp;</td>
                            <td style="font-weight: bold; color: #ff0000" width="1%">
                            </td>
                            <td style="width: 148px">
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; font-size: 11px; font-family: Verdana; width: 654px; vertical-align:top">
                                User Name:</td>
                            <td style="font-weight: bold; color: #ff0000; vertical-align:top" width="1%">
                                *</td>
                            <td style="width: 148px">
                                <asp:TextBox ID="txtUName" runat="server" Width="200px"></asp:TextBox><asp:UpdatePanel id="UpdatePanel1" runat="server">
                                    <contenttemplate>
<asp:LinkButton id="lnkAvailability" onclick="lnkAvailability_Click" runat="server" ForeColor="Gray" Font-Bold="True" CausesValidation="False">Check Availability</asp:LinkButton> <asp:Label id="lblAvailability" runat="server" Width="202px" Font-Bold="True"></asp:Label> 
</contenttemplate>
                                </asp:UpdatePanel></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUName"
                                    ErrorMessage="Require">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; font-size: 11px; font-family: Verdana; width: 654px; height: 15px;">
                                Password:</td>
                            <td style="font-weight: bold; color: #ff0000; height: 15px;">
                                *</td>
                            <td style="width: 148px; height: 15px;">
                                <asp:TextBox ID="txtPassword" runat="server" Width="200px" TextMode="Password"></asp:TextBox></td>
                            <td style="height: 15px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
                                    ErrorMessage="Require">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; font-size: 11px; font-family: Verdana; width: 654px;">
                                Confirm Password:</td>
                            <td style="font-weight: bold; color: #ff0000" width="1%">
                                *</td>
                            <td style="width: 148px">
                                <asp:TextBox ID="txtConfirm" runat="server" Width="200px" TextMode="Password"></asp:TextBox></td>
                            <td>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtConfirm"
                                    ControlToValidate="txtPassword" ErrorMessage="Password Mismatch" Width="11px">*</asp:CompareValidator></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; font-size: 11px; font-family: Verdana; width: 654px;">
                                Hint Question:</td>
                            <td style="font-weight: bold; color: #ff0000">
                                *</td>
                            <td style="width: 148px">
                                <asp:TextBox ID="txtQuestion" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtQuestion"
                                    ErrorMessage="Require">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; font-size: 11px; font-family: Verdana; width: 654px;">
                                Your Answer:</td>
                            <td style="font-weight: bold; color: #ff0000">
                                *</td>
                            <td style="width: 148px">
                                <asp:TextBox ID="txtAnswer" runat="server" Width="200px"></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAnswer"
                                    ErrorMessage="Require">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; font-size: 11px; font-family: Verdana; width: 654px;">
                                &nbsp;</td>
                            <td style="font-weight: bold; color: #ff0000">
                            </td>
                            <td style="width: 148px">
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="left" bgcolor="#000000" style="font-weight: bold; font-size: 13pt;
                color: #fffbd6; font-family: Forte; height: 25px; width: 409px;" valign="middle">
                    &nbsp;Personal Detail</td>
            </tr>
            <tr>
                <td align="left" style="width: 409px">
                    <table border="0" cellpadding="2" cellspacing="2" style="width: 392px">
                        <tr>
                            <td style="font-weight: bold; font-size: 11px; font-family: Verdana; width: 494px;">
                                &nbsp;</td>
                            <td style="font-weight: bold; color: #ff0000">
                            </td>
                            <td style="width: 180px">
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; font-size: 11px; font-family: Verdana; width: 494px;">
                                First Name:</td>
                            <td style="font-weight: bold; color: #ff0000">
                                *</td>
                            <td style="width: 180px">
                                <asp:TextBox ID="txtFname" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtFname"
                                    ErrorMessage="Require">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; font-size: 11px; font-family: Verdana; width: 494px;" >
                                Last Name:</td>
                            <td style="font-weight: bold; color: #ff0000">
                                *</td>
                            <td style="width: 180px">
                                <asp:TextBox ID="txtLname" runat="server" Width="200px"></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtLname"
                                    ErrorMessage="Require">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; font-size: 11px; font-family: Verdana; width: 494px;">
                                Gender:</td>
                            <td style="font-weight: bold; color: #ff0000">
                                *</td>
                            <td style="width: 180px">
                                <asp:DropDownList ID="ddlGender" runat="server" Width="206px">
                                    <asp:ListItem>Choose One...</asp:ListItem>
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:DropDownList></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlGender"
                                    ErrorMessage="Require" InitialValue="Choose One...">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; font-size: 11px; font-family: Verdana; width: 494px;" >
                                Email Id:</td>
                            <td style="font-weight: bold; color: #ff0000">
                                *</td>
                            <td style="width: 180px">
                                <asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtEmail"
                                    ErrorMessage="Require">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; font-size: 11px; font-family: Verdana; width: 494px;" >
                                Mobile No.:</td>
                            <td style="font-weight: bold; color: #ff0000">
                                *</td>
                            <td style="width: 180px">
                                <asp:TextBox ID="txtMobile" runat="server" Width="200px"></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtMobile"
                                    ErrorMessage="Require">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; font-size: 11px; font-family: Verdana; width: 494px;" >
                                DOB:</td>
                            <td style="font-weight: bold; color: #ff0000">
                                *</td>
                            <td style="width: 180px">
                                <cc1:GMDatePicker ID="GMDatePicker1" runat="server">
                                </cc1:GMDatePicker>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; font-size: 11px; font-family: Verdana; width: 494px;">
                                &nbsp;</td>
                            <td style="font-weight: bold; color: #ff0000">
                            </td>
                            <td style="width: 180px">
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="left" bgcolor="#000000" style="font-weight: bold; font-size: 13pt;
                color: #fffbd6; font-family: Forte; height: 25px; width: 409px;" valign="middle">
                    &nbsp;Conatct Detail</td>
            </tr>
            <tr>
                <td align="left" style="width: 409px">
                    <table border="0" cellpadding="2" cellspacing="2" style="width: 392px">
                        <tr>
                            <td style="font-weight: bold; font-size: 11px; font-family: Verdana; width: 241px;">
                                &nbsp;</td>
                            <td style="font-weight: bold; color: #ff0000" width="1%">
                            </td>
                            <td style="width: 207px">
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; font-size: 11px; font-family: Verdana; width: 241px;">
                                Country:</td>
                            <td style="font-weight: bold; color: #ff0000" width="1%">
                                *</td>
                            <td style="width: 207px">
                                <asp:DropDownList ID="ddlCountry" runat="server" Width="200px">
                                </asp:DropDownList>&nbsp;
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlCountry"
                                    ErrorMessage="Require" InitialValue="Choose One...">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="color: #000000">
                            <td style="font-weight: bold; font-size: 11px; font-family: Verdana; width: 241px;">
                                State:</td>
                            <td style="font-weight: bold; color: #ff0000">
                                *</td>
                            <td style="width: 207px">
                                <asp:DropDownList ID="ddlState" runat="server" Width="200px">
                                </asp:DropDownList></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlState"
                                    ErrorMessage="Require" InitialValue="Choose One...">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="color: #000000">
                            <td style="font-weight: bold; font-size: 11px; font-family: Verdana; width: 241px;">
                                City:</td>
                            <td style="font-weight: bold; color: #ff0000">
                                *</td>
                            <td style="width: 207px">
                                <asp:TextBox ID="txtCity" runat="server" Width="200px"></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtCity"
                                    ErrorMessage="Require">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; font-size: 11px; font-family: Verdana; width: 241px;">
                                Address:</td>
                            <td style="font-weight: bold; color: #ff0000">
                                *</td>
                            <td style="width: 207px">
                                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtAddress"
                                    ErrorMessage="Require">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; font-size: 11px; font-family: Verdana; width: 241px;">
                                Pin Code:</td>
                            <td style="font-weight: bold; color: #ff0000">
                                *</td>
                            <td style="width: 207px">
                                <asp:TextBox ID="txtPinCode" runat="server" Width="200px"></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtPinCode"
                                    ErrorMessage="Require">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; font-size: 11px; font-family: Verdana; width: 241px;">
                                Home / Mobile No.:</td>
                            <td style="font-weight: bold; color: #ff0000">
                                *</td>
                            <td style="width: 207px">
                                <asp:TextBox ID="txtPhone" runat="server" Width="200px"></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtPhone"
                                    ErrorMessage="Require">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; font-size: 11px; font-family: Verdana; width: 241px;">
                                Office No.:</td>
                            <td style="font-weight: bold; color: #ff0000">
                            </td>
                            <td style="width: 207px">
                                <asp:TextBox ID="txtOfficeNo" runat="server" Width="200px"></asp:TextBox></td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; font-size: 11px; font-family: Verdana; width: 241px;">
                                &nbsp;</td>
                            <td style="font-weight: bold; color: #ff0000">
                            </td>
                            <td style="width: 207px">
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: right">
                    <asp:Button ID="btnRegister" runat="server" Text="Register" Width="92px" OnClick="btnRegister_Click" CssClass="btnstyle" /></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

