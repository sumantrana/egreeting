<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="frmViewPersonalAddressBook.aspx.cs" Inherits="User_frmViewPersonalAddressBook" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" width="800">
        <tr>
            <td align="right" colspan="1" style="text-align: center">
                &nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td align="right" colspan="1">
                <asp:Button ID="btnReturn" runat="server" Text="Return To<<" OnClick="btnReturn_Click" />
                </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;<asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    OnPageIndexChanging="GridView3_PageIndexChanging" PageSize="5" Width="100%" OnRowCommand="GridView3_RowCommand" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" Font-Bold="True" Font-Names="Verdana" Font-Size="10pt" GridLines="None">
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
                        <asp:TemplateField HeaderText="View Detail !">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkview" runat="server" Text="View Detail !" CommandArgument='<%#Eval("Id") %>' CommandName="View"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                       
                    </Columns>
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" >
                <asp:Panel ID="Panel5" runat="server" Width="100%">
                    <table align="center" bgcolor="gainsboro" border="1" cellpadding="0" cellspacing="0"
                        width="500">
                        <tr>
                            <td align="center" colspan="2">
                                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"
                                    Width="453px"></asp:Label>
                            </td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" colspan="2" style="font-weight: bold; font-size: 12pt; color: white;
                                background-color: darkgray">
                                Personal Contact</td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                First Name:</td>
                            <td align="left">
                                <asp:Literal ID="ltlFName" runat="server"></asp:Literal>&nbsp;
                            </td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                Last Name:</td>
                            <td align="left">
                                <asp:Literal ID="ltlLName" runat="server"></asp:Literal>&nbsp;
                            </td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                Gender:</td>
                            <td align="left" style="width: 340px">
                                <asp:Literal ID="ltlGender" runat="server"></asp:Literal>&nbsp;
                            </td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                Address:</td>
                            <td align="left">
                                <asp:Literal ID="ltlAddress" runat="server"></asp:Literal>&nbsp;
                            </td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                City</td>
                            <td align="left">
                                <asp:Literal ID="ltlCity" runat="server"></asp:Literal>&nbsp;
                            </td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                State:</td>
                            <td align="left">
                                <asp:Literal ID="ltlState" runat="server"></asp:Literal>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                Country:</td>
                            <td align="left">
                                <asp:Literal ID="ltlCountry" runat="server"></asp:Literal>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                Zip or Postal Code:</td>
                            <td align="left">
                                <asp:Literal ID="ltlPincode" runat="server"></asp:Literal>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                Phone Number.:</td>
                            <td align="left" style="width: 340px">
                                <asp:Literal ID="ltlPhone" runat="server"></asp:Literal>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                Mobile:</td>
                            <td align="left" style="width: 340px">
                                <asp:Literal ID="ltlMobile" runat="server"></asp:Literal>&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                Email Address:</td>
                            <td align="left" style="width: 340px">
                                <asp:Literal ID="ltlEmail" runat="server"></asp:Literal>&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana;">
                                Birthday:</td>
                            <td align="left" style="width: 340px; height: 24px">
                                <asp:Literal ID="ltlBirthday" runat="server"></asp:Literal>&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana">
                                Aniversary:</td>
                            <td align="left" style="width: 340px; height: 24px">
                                <asp:Literal ID="ltlAniversary" runat="server"></asp:Literal>&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="font-weight: bold">
                                &nbsp;<asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

