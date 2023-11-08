<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="frmShowContactByType.aspx.cs" Inherits="User_frmShowContactByType" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" width="800">
        <tr>
            <td align="right" colspan="1" style="height: 19px">
                &nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td align="right" colspan="1" style="height: 19px">
                <asp:Button ID="Button1" runat="server" Text="Return To<<" OnClick="btnReturn_Click" />
                </td>
        </tr>
        <tr>
            <td align="center">
                <asp:LinkButton ID="lnkPersonal" runat="server" Font-Bold="True" ForeColor="Maroon"
                    OnClick="lnkPersonal_Click" Width="117px" CausesValidation="False" Font-Names="Verdana" Font-Size="10pt">Personal Contact</asp:LinkButton>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:LinkButton ID="lnkOfficial" runat="server" Font-Bold="True" ForeColor="Maroon"
                    OnClick="lnkOfficial_Click" Width="107px" CausesValidation="False" Font-Names="Verdana" Font-Size="10pt">Official Contact</asp:LinkButton></td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                <asp:Panel ID="Panel3" runat="server" Width="100%">
                    <span style="font-family: Verdana"><span style="font-size: 14pt">
                    <strong>Personal Contact</strong>
                    </span></span>
                    <br />
                    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        OnPageIndexChanging="GridView3_PageIndexChanging" OnRowDeleting="GridView3_RowDeleting"
                        OnRowUpdating="GridView3_RowUpdating" PageSize="5" Width="100%" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" Font-Names="Verdana" Font-Size="10pt" GridLines="None">
                        <Columns>
                            <asp:TemplateField HeaderText="First Name">
                                <ItemTemplate>
                                    <asp:Literal ID="ltl1" runat="server" Text='<%#Eval("FirstName") %>'></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Last Name">
                                <ItemTemplate>
                                    <asp:Literal ID="ltl2" runat="server" Text='<%#Eval("LastName") %>'></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Mobile">
                                <ItemTemplate>
                                    <asp:Literal ID="ltl3" runat="server" Text='<%#Eval("Mobile") %>'></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email">
                                <ItemTemplate>
                                    <asp:Literal ID="ltl4" runat="server" Text='<%#Eval("Email") %>'></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Delete ?">
                                <ItemTemplate>
                                    <asp:Button ID="btndelete" runat="server" CommandArgument='<%#Eval("Id") %>' CommandName="Delete"
                                        OnClientClick="return confirm('Are U Sure ?')" Text="Delete ?" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Update ?">
                                <ItemTemplate>
                                    <asp:Button ID="btnupdate" runat="server" CommandArgument='<%#Eval("Id") %>' CommandName="Update"
                                        Text="Update ?" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    </asp:GridView>
                    &nbsp;
                </asp:Panel>
                &nbsp; &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td align="left">
                <asp:Panel ID="Panel5" runat="server" Width="100%">
                    <table align="center" bgcolor="gainsboro" border="1" cellpadding="0" cellspacing="0"
                        width="500">
                        <tr>
                            <td align="center" colspan="2">
                                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red" Width="453px"></asp:Label>
                            </td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" colspan="2" style="font-weight: bold; font-size: 12pt; color: white;
                                background-color: darkgray">
                                Update Personal Contact</td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                First Name:</td>
                            <td align="left">
                                <asp:TextBox ID="txtFName" runat="server" ValidationGroup="g2" Width="168px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="txtFName"
                                    ErrorMessage="Require" Font-Bold="True" ToolTip="Enter First Name" ValidationGroup="g2"
                                    Width="1px">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                Last Name:</td>
                            <td align="left" style="height: 25px">
                                <asp:TextBox ID="txtLName" runat="server" ValidationGroup="g2" Width="168px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="txtLName"
                                    ErrorMessage="Rrequire" Font-Bold="True" ToolTip="Enter Last Name" ValidationGroup="g2"
                                    Width="1px">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                Gender:</td>
                            <td align="left" style="width: 340px">
                                <asp:DropDownList ID="ddlGender" runat="server" ValidationGroup="g2" Width="173px">
                                    <asp:ListItem>Choose One...</asp:ListItem>
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="txtLName"
                                    ErrorMessage="Require" Font-Bold="True" InitialValue="Choose One..." ToolTip="Enter Last Name"
                                    ValidationGroup="g2" Width="1px">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                Address:</td>
                            <td align="left">
                                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" ValidationGroup="g2"
                                    Width="168px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="txtAddress"
                                    ErrorMessage="Require" Font-Bold="True" ToolTip="Enter Address" ValidationGroup="g2"
                                    Width="1px">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                City</td>
                            <td align="left">
                                <asp:TextBox ID="txtCity" runat="server" ValidationGroup="g2" Width="168px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="txtCity"
                                    ErrorMessage="Require" Font-Bold="True" ToolTip="Enter City" ValidationGroup="g2"
                                    Width="1px">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                State:</td>
                            <td align="left" style="height: 24px">
                                <asp:DropDownList ID="ddlState" runat="server" Width="173px">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="ddlState"
                                    ErrorMessage="Require" Font-Bold="True" InitialValue="Choose One..." ToolTip="Enter City"
                                    ValidationGroup="g2" Width="1px">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana; height: 24px;">
                                Country:</td>
                            <td align="left" style="height: 24px">
                                <asp:DropDownList ID="ddlCountry" runat="server" Width="173px">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="ddlCountry"
                                    ErrorMessage="Require" Font-Bold="True" InitialValue="Choose One..." ToolTip="Enter City"
                                    ValidationGroup="g2" Width="1px">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana; height: 26px;">
                                Zip or Postal Code:</td>
                            <td align="left" style="height: 26px">
                                <asp:TextBox ID="txtPinCode" runat="server" ValidationGroup="g2" Width="168px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="txtPinCode"
                                    ErrorMessage="Require" Font-Bold="True" ToolTip="Enter Postal Code" ValidationGroup="g2"
                                    Width="1px">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                Phone Number.:</td>
                            <td align="left" style="width: 340px">
                                <asp:TextBox ID="txtPhone" runat="server" ValidationGroup="g2" Width="168px"></asp:TextBox>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                Mobile:</td>
                            <td align="left" style="width: 340px">
                                <asp:TextBox ID="txtMobile" runat="server" Width="168px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ControlToValidate="txtMobile"
                                    ErrorMessage="Require" Font-Bold="True" ToolTip="Enter Phone" ValidationGroup="g2"
                                    Width="1px">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                Email Address:</td>
                            <td align="left" style="width: 340px">
                                <asp:TextBox ID="txtMail" runat="server" Width="201px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                Birthday:</td>
                            <td align="left" style="width: 340px; height: 24px">
                                <cc1:GMDatePicker ID="GMDatePicker1" runat="server">
                                </cc1:GMDatePicker>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana">
                                Aniversary:</td>
                            <td align="left" style="width: 340px; height: 24px">
                                <cc1:GMDatePicker ID="GMDatePicker2" runat="server">
                                </cc1:GMDatePicker>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="font-weight: bold">
                                <asp:Button ID="btnUpdatePersonal" runat="server" OnClick="btnUpdatePersonal_Click"
                                    Text="Update Contact" ValidationGroup="g2" />
                                <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" CausesValidation="False" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td align="left">
                <asp:Panel ID="Panel4" runat="server" Width="100%">
                    <span style="font-size: 14pt"><span style="font-family: Verdana">
                    <strong>Official Contact</strong>
                    </span></span>
                    <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        OnPageIndexChanging="GridView4_PageIndexChanging" OnRowDeleting="GridView4_RowDeleting"
                        OnRowUpdating="GridView4_RowUpdating" PageSize="5" Width="100%" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" Font-Names="Verdana" Font-Size="10pt" GridLines="None">
                        <Columns>
                            <asp:TemplateField HeaderText="Company Name">
                                <ItemTemplate>
                                    <asp:Literal ID="ltl1" runat="server" Text='<%#Eval("CompanyName") %>'></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="First Name">
                                <ItemTemplate>
                                    <asp:Literal ID="ltl2" runat="server" Text='<%#Eval("FirstName") %>'></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Phone">
                                <ItemTemplate>
                                    <asp:Literal ID="ltl3" runat="server" Text='<%#Eval("Phone") %>'></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Website">
                                <ItemTemplate>
                                    <asp:Literal ID="ltl4" runat="server" Text='<%#Eval("Website") %>'></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Delete ?">
                                <ItemTemplate>
                                    <asp:Button ID="btndelete1" runat="server" CommandArgument='<%#Eval("Id") %>' CommandName="Delete"
                                        OnClientClick="return confirm('Are U Sure ?')" Text="Delete ?" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Update !">
                                <ItemTemplate>
                                    <asp:Button ID="btnupdate1" runat="server" CommandArgument='<%#Eval("Id") %>' CommandName="Update"
                                        Text="Update ?" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    </asp:GridView>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Panel ID="Panel6" runat="server" Width="100%">
                    <table align="center" bgcolor="gainsboro" border="1" cellpadding="0" cellspacing="0"
                        width="500">
                        <tr>
                            <td align="center" colspan="2">
                                <asp:Label ID="lblMsg1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"
                                    Width="455px"></asp:Label>
                            </td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" colspan="2" style="font-weight: bold; font-size: 12pt; color: white;
                                background-color: darkgray">
                                Update Official Contact</td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                Company Name:</td>
                            <td align="left">
                                <asp:TextBox ID="txtCompanyName" runat="server" ValidationGroup="g1" Width="168px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtCompanyName"
                                    ErrorMessage="Require" Font-Bold="True" ToolTip="Enter Organization Name"
                                    ValidationGroup="g1" Width="1px">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                First Name:</td>
                            <td align="left">
                                <asp:TextBox ID="txtFName1" runat="server" ValidationGroup="g1" Width="168px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtFName1"
                                    ErrorMessage="Require" Font-Bold="True" ToolTip="Enter First Name"
                                    ValidationGroup="g1" Width="1px">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                Last Name:</td>
                            <td align="left">
                                <asp:TextBox ID="txtLName1" runat="server" ValidationGroup="g1" Width="168px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtLName1"
                                    ErrorMessage="Rrequire" Font-Bold="True" ToolTip="Enter Last Name"
                                    ValidationGroup="g1" Width="1px">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                Address:</td>
                            <td align="left">
                                <asp:TextBox ID="txtAddress1" runat="server" TextMode="MultiLine" ValidationGroup="g1"
                                    Width="168px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtAddress1"
                                    ErrorMessage="Require" Font-Bold="True" ToolTip="Enter Address"
                                    ValidationGroup="g1" Width="1px">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                City</td>
                            <td align="left">
                                <asp:TextBox ID="txtCity1" runat="server" ValidationGroup="g1" Width="168px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtCity1"
                                    ErrorMessage="Require" Font-Bold="True" ToolTip="Enter City"
                                    ValidationGroup="g1" Width="1px">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                State:</td>
                            <td align="left">
                                <asp:DropDownList ID="ddlState1" runat="server" Width="173px">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="ddlState1"
                                    ErrorMessage="Require" Font-Bold="True" InitialValue="Choose One..."
                                    ToolTip="Enter City" ValidationGroup="g1" Width="1px">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                Country:</td>
                            <td align="left">
                                <asp:DropDownList ID="ddlCountry1" runat="server" Width="173px">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="ddlCountry1"
                                    ErrorMessage="Require" Font-Bold="True" InitialValue="Choose One..."
                                    ToolTip="Enter City" ValidationGroup="g1" Width="1px">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                Zip or Postal Code:</td>
                            <td align="left">
                                <asp:TextBox ID="txtPinCode1" runat="server" ValidationGroup="g1" Width="168px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtPinCode1"
                                    ErrorMessage="Require" Font-Bold="True" ToolTip="Enter Postal Code"
                                    ValidationGroup="g1" Width="1px">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                Phone Number.:</td>
                            <td align="left" style="width: 340px">
                                <asp:TextBox ID="txtPhone1" runat="server" ValidationGroup="g1" Width="168px"></asp:TextBox>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                Mobile:</td>
                            <td align="left" style="width: 340px">
                                <asp:TextBox ID="txtMobile1" runat="server" Width="168px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="txtMobile1"
                                    ErrorMessage="Require" Font-Bold="True" ToolTip="Enter Phone"
                                    ValidationGroup="g1" Width="1px">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                Fax No.:</td>
                            <td align="left" style="width: 340px">
                                <asp:TextBox ID="txtFaxNo" runat="server" Width="168px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                Email Address:</td>
                            <td align="left" style="width: 340px">
                                <asp:TextBox ID="txtMail1" runat="server" Width="201px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                Website:</td>
                            <td align="left" style="width: 340px; height: 24px">
                                <asp:TextBox ID="txtWebsite" runat="server" Width="201px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="font-weight: bold">
                                <asp:Button ID="btnUpdateOfficial" runat="server" OnClick="btnUpdateOfficial_Click"
                                    Text="Update Contact" ValidationGroup="g1" />
                                <asp:Button ID="btnBack1" runat="server" OnClick="btnBack1_Click" Text="Back" CausesValidation="False" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

