<%@ Page Language="C#" MasterPageFile="~/MasterPage.master"  AutoEventWireup="true" CodeFile="frmUpdateUserProfile.aspx.cs" Inherits="Admin_Update_frmUpdateUserProfile" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" width="800">
        <tr>
            <td align="left" colspan="2" style="font-weight: bold; font-size: 16pt; background-color: #777777">
                Please Update The Following Details&nbsp; Carefully</td>
        </tr>
        <tr>
            <td align="left" colspan="2" style="height: 19px">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 19px">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red" Width="470px"></asp:Label></td>
        </tr>
        <tr>
            <td align="left" colspan="2" style="height: 19px">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; color: #ff0000">
                All * Fields Are Mandatory</td>
        </tr>
        <tr style="color: #000000">
            <td align="left" style="font-weight: bold; font-size: 12pt; color: #0099ff; background-color: #000000">
                Personal Detail</td>
            <td align="left" style="width: 100px">
            </td>
        </tr>
        <tr>
            <td align="left">
            </td>
            <td align="left" style="width: 100px">
                <table border="0" cellpadding="0" cellspacing="0" style="width: 584px">
                    <tr>
                        <td width="30%">
                            First Name:</td>
                        <td style="font-weight: bold; width: 13px; color: #ff0000">
                            *</td>
                        <td width="70%">
                            <asp:TextBox ID="txtFname" runat="server" Width="205px"></asp:TextBox>&nbsp;
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtFname"
                                ErrorMessage="Require"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr style="color: #000000">
                        <td>
                            Last Name:</td>
                        <td style="font-weight: bold; width: 13px; color: #ff0000">
                            *</td>
                        <td>
                            <asp:TextBox ID="txtLname" runat="server" Width="205px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtLname"
                                ErrorMessage="Require"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr style="color: #000000">
                        <td>
                            Gender:</td>
                        <td style="font-weight: bold; width: 13px; color: #ff0000">
                            *</td>
                        <td>
                            <asp:DropDownList ID="ddlGender" runat="server" Width="120px">
                                <asp:ListItem>Choose One...</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlGender"
                                ErrorMessage="Require" InitialValue="Choose One..."></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            Email Id:</td>
                        <td style="font-weight: bold; width: 13px; color: #ff0000">
                            *</td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server" Width="205px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtEmail"
                                ErrorMessage="Require"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            Mobile No.:</td>
                        <td style="font-weight: bold; width: 13px; color: #ff0000">
                            *</td>
                        <td>
                            <asp:TextBox ID="txtMobile" runat="server" Width="205px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtMobile"
                                ErrorMessage="Require"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            DOB:</td>
                        <td style="font-weight: bold; width: 13px; color: #ff0000">
                            *</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bold; font-size: 12pt; color: #0099ff; background-color: #000000">
                Conatct Detail</td>
            <td align="left" style="width: 100px">
            </td>
        </tr>
        <tr>
            <td align="left">
            </td>
            <td align="left" style="width: 100px">
                <table border="0" cellpadding="0" cellspacing="0" style="width: 584px">
                    <tr>
                        <td width="30%">
                            Country:</td>
                        <td style="font-weight: bold; color: #ff0000" width="1%">
                            *</td>
                        <td width="70%">
                            <asp:DropDownList ID="ddlCountry" runat="server" Width="148px">
                            </asp:DropDownList>&nbsp;
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlCountry"
                                ErrorMessage="Require" InitialValue="Choose One..."></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr style="color: #000000">
                        <td>
                            State:</td>
                        <td style="font-weight: bold; color: #ff0000">
                            *</td>
                        <td>
                            <asp:DropDownList ID="ddlState" runat="server" Width="148px">
                            </asp:DropDownList></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlState"
                                ErrorMessage="Require" InitialValue="Choose One..."></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr style="color: #000000">
                        <td>
                            City:</td>
                        <td style="font-weight: bold; color: #ff0000">
                            *</td>
                        <td>
                            <asp:TextBox ID="txtCity" runat="server" Width="205px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtCity"
                                ErrorMessage="Require"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            Address:</td>
                        <td style="font-weight: bold; color: #ff0000">
                            *</td>
                        <td>
                            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="205px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtAddress"
                                ErrorMessage="Require"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            Pin Code:</td>
                        <td style="font-weight: bold; color: #ff0000">
                            *</td>
                        <td>
                            <asp:TextBox ID="txtPinCode" runat="server" Width="205px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtPinCode"
                                ErrorMessage="Require"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            Residence No./MobileNo.:</td>
                        <td style="font-weight: bold; color: #ff0000">
                            *</td>
                        <td>
                            <asp:TextBox ID="txtPhone" runat="server" Width="205px"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtPhone"
                                ErrorMessage="Require"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>
                            Office No.:</td>
                        <td style="font-weight: bold; color: #ff0000">
                        </td>
                        <td>
                            <asp:TextBox ID="txtOfficeNo" runat="server" Width="205px"></asp:TextBox></td>
                        <td>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update"
                    Width="92px" />
                <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back"
                    Width="92px" /></td>
        </tr>
    </table>
</asp:Content>

