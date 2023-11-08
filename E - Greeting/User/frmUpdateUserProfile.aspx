<%@ Page Language="C#" MasterPageFile="masterpage.master" AutoEventWireup="true" CodeFile="frmUpdateUserProfile.aspx.cs" Inherits="User_frmUpdateUserProfile" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 350px">
        <tr>
            <td align="left" colspan="2" >
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; color: #ff0000">
                <span style="font-size: 8pt; font-family: Verdana">
                All * Fields Are Mandatory</span></td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; color: #ff0000">
                &nbsp;</td>
        </tr>
        <tr style="color: #000000">
            <td align="left" colspan="2" style="font-weight: bold; font-size: 12pt; color: #0099ff; background-color: #000000; height: 27px;">
                <span style="font-family: Verdana">&nbsp;Personal Detail</span></td>
        </tr>
        <tr>
            <td align="left" style="width: 100px">
                <table border="0" cellpadding="0" cellspacing="0" style="width: 352px">
                    <tr>
                        <td width="30%">
                            &nbsp;</td>
                        <td style="font-weight: bold; width: 7px; color: #ff0000">
                        </td>
                        <td style="width: 205px">
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td width="30%" style="font-weight: bold; font-size: 12px; font-family: Verdana">
                            First Name:</td>
                        <td style="font-weight: bold; width: 7px; color: #ff0000">
                            *</td>
                        <td style="width: 205px">
                            <asp:TextBox ID="txtFname" runat="server" Width="205px"></asp:TextBox>&nbsp;
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtFname"
                                ErrorMessage="Require">*</asp:RequiredFieldValidator></td>
                    </tr>
                    <tr style="color: #000000">
                        <td style="font-weight: bold; font-size: 12px; font-family: Verdana">
                            Last Name:</td>
                        <td style="font-weight: bold; width: 7px; color: #ff0000">
                            *</td>
                        <td style="width: 205px">
                            <asp:TextBox ID="txtLname" runat="server" Width="205px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtLname"
                                ErrorMessage="Require">*</asp:RequiredFieldValidator></td>
                    </tr>
                    <tr style="color: #000000">
                        <td style="font-weight: bold; font-size: 12px; font-family: Verdana">
                            Gender:</td>
                        <td style="font-weight: bold; width: 7px; color: #ff0000">
                            *</td>
                        <td style="width: 205px">
                            <asp:DropDownList ID="ddlGender" runat="server" Width="212px">
                                <asp:ListItem>Choose One...</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlGender"
                                ErrorMessage="Require" InitialValue="Choose One...">*</asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold; font-size: 12px; font-family: Verdana">
                            Email Id:</td>
                        <td style="font-weight: bold; width: 7px; color: #ff0000">
                            *</td>
                        <td style="width: 205px">
                            <asp:TextBox ID="txtEmail" runat="server" Width="205px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtEmail"
                                ErrorMessage="Require">*</asp:RequiredFieldValidator></td>
                    </tr>
                    <tr style="color: #000000">
                        <td style="font-weight: bold; font-size: 12px; font-family: Verdana">
                            Mobile No.:</td>
                        <td style="font-weight: bold; width: 7px; color: #ff0000">
                            *</td>
                        <td style="width: 205px">
                            <asp:TextBox ID="txtMobile" runat="server" Width="205px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtMobile"
                                ErrorMessage="Require">*</asp:RequiredFieldValidator></td>
                    </tr>
                    <tr style="color: #000000">
                        <td style="font-weight: bold; font-size: 12px; font-family: Verdana">
                            DOB:</td>
                        <td style="font-weight: bold; width: 7px; color: #ff0000">
                            *</td>
                        <td style="width: 205px">
                            <cc1:gmdatepicker id="GMDatePicker1" runat="server"></cc1:gmdatepicker>
                        </td>
                        <td>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bold; font-size: 12pt; color: #0099ff; background-color: #000000; height: 25px;" colspan="2">
                <span style="font-family: Verdana">&nbsp;Conatct Detail</span></td>
        </tr>
        <tr>
            <td align="left" style="width: 100px">
                <table border="0" cellpadding="0" cellspacing="0" style="width: 348px">
                    <tr>
                        <td style="width: 231px">
                            &nbsp;</td>
                        <td style="font-weight: bold; color: #ff0000" width="1%">
                        </td>
                        <td style="width: 204px">
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold; font-size: 12px; width: 231px; font-family: Verdana; height: 22px">
                            Country:</td>
                        <td style="font-weight: bold; color: #ff0000; height: 22px;" width="1%">
                            *</td>
                        <td style="width: 204px; height: 22px">
                            <asp:DropDownList ID="ddlCountry" runat="server" Width="212px">
                            </asp:DropDownList>&nbsp;
                        </td>
                        <td style="height: 22px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlCountry"
                                ErrorMessage="Require" InitialValue="Choose One...">*</asp:RequiredFieldValidator></td>
                    </tr>
                    <tr style="color: #000000">
                        <td style="font-weight: bold; font-size: 12px; width: 231px; font-family: Verdana">
                            State:</td>
                        <td style="font-weight: bold; color: #ff0000">
                            *</td>
                        <td style="width: 204px">
                            <asp:DropDownList ID="ddlState" runat="server" Width="212px">
                            </asp:DropDownList></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlState"
                                ErrorMessage="Require" InitialValue="Choose One...">*</asp:RequiredFieldValidator></td>
                    </tr>
                    <tr style="color: #000000">
                        <td style="font-weight: bold; font-size: 12px; width: 231px; font-family: Verdana">
                            City:</td>
                        <td style="font-weight: bold; color: #ff0000">
                            *</td>
                        <td style="width: 204px">
                            <asp:TextBox ID="txtCity" runat="server" Width="205px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtCity"
                                ErrorMessage="Require">*</asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold; font-size: 12px; width: 231px; font-family: Verdana">
                            Address:</td>
                        <td style="font-weight: bold; color: #ff0000">
                            *</td>
                        <td style="width: 204px">
                            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="205px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtAddress"
                                ErrorMessage="Require">*</asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold; font-size: 12px; width: 231px; font-family: Verdana">
                            Pin Code:</td>
                        <td style="font-weight: bold; color: #ff0000">
                            *</td>
                        <td style="width: 204px">
                            <asp:TextBox ID="txtPinCode" runat="server" Width="205px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtPinCode"
                                ErrorMessage="Require">*</asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold; font-size: 12px; width: 231px; font-family: Verdana">
                            Home/MobileNo.:
                        </td>
                        <td style="font-weight: bold; color: #ff0000">
                            *</td>
                        <td style="width: 204px">
                            <asp:TextBox ID="txtPhone" runat="server" Width="205px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtPhone"
                                ErrorMessage="Require">*</asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold; font-size: 12px; width: 231px; font-family: Verdana">
                            Office No.:</td>
                        <td style="font-weight: bold; color: #ff0000">
                        </td>
                        <td style="width: 204px">
                            <asp:TextBox ID="txtOfficeNo" runat="server" Width="205px"></asp:TextBox></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold; font-size: 12px; width: 231px; font-family: Verdana">
                        </td>
                        <td style="font-weight: bold; color: #ff0000">
                        </td>
                        <td style="width: 204px">
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold; font-size: 12px; width: 231px; font-family: Verdana">
                        </td>
                        <td style="font-weight: bold; color: #ff0000">
                        </td>
                        <td style=" text-align: right">
                <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update"
                    Width="68px" /><asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" Width="68px" CausesValidation="False" /></td>
                        <td>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red" Font-Names="Verdana" Font-Size="8pt"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

