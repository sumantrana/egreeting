<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="frmViewOfficialAddressBook.aspx.cs" Inherits="User_frmViewOfficialAddressBook" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 620px">
        <tr>
            <td align="right" colspan="1" style="width: 801px; text-align: center">
                &nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td align="right" colspan="1" style="width: 801px">
                <asp:Button ID="tbnReturn" runat="server" Text="Return To<<" OnClick="tbnReturn_Click" />
                </td>
        </tr>
        <tr>
            <td align="center" style="width: 801px; height: 210px">
              
                <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    OnPageIndexChanging="GridView4_PageIndexChanging" PageSize="5" Width="100%" OnRowCommand="GridView4_RowCommand" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" Font-Bold="True" Font-Names="Verdana" Font-Size="10pt" GridLines="None">
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
                        <asp:TemplateField HeaderText="View Detail ! ?">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkview" runat="server" CommandArgument='<%#Eval("Id") %>' CommandName="View"
                                     Text="View Detail !" />
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
        <tr><td>
            &nbsp;</td></tr>
        <tr>
            <td align="center" style="width: 801px;">
                <asp:Panel ID="Panel5" runat="server" Width="100%">
                    <table align="center" bgcolor="gainsboro" border="1" cellpadding="0" cellspacing="0"
                        width="500">
                        <tr>
                            <td align="center" colspan="2">
                                <asp:Label ID="lblMsg1" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="Red"
                                    Width="455px" Font-Names="Verdana"></asp:Label>
                            </td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" colspan="2" style="font-weight: bold; font-size: 12pt; color: white;
                                background-color: darkgray">
                                <span style="font-family: Verdana">
                                Official Contact</span></td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana; height: 21px;">
                                Company Name:</td>
                            <td align="left" style="height: 21px">
                                <asp:Literal ID="ltlCompanyname" runat="server"></asp:Literal></td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana">
                                First Name:</td>
                            <td align="left">
                                <asp:Literal ID="ltlFName" runat="server"></asp:Literal></td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana">
                                Last Name:</td>
                            <td align="left">
                                <asp:Literal ID="ltlLName" runat="server"></asp:Literal></td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana">
                                Address:</td>
                            <td align="left">
                                <asp:Literal ID="ltlAddress" runat="server"></asp:Literal></td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana">
                                City</td>
                            <td align="left">
                                <asp:Literal ID="ltlCity" runat="server"></asp:Literal></td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana">
                                State:</td>
                            <td align="left">
                           
                                <asp:Literal ID="ltlState" runat="server"></asp:Literal></td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana">
                                Country:</td>
                            <td align="left">
                            
                                <asp:Literal ID="ltlCountry" runat="server"></asp:Literal></td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana">
                                Zip or Postal Code:</td>
                            <td align="left">
                              
                                <asp:Literal ID="ltlPincode" runat="server"></asp:Literal></td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana">
                                Phone Number.:</td>
                            <td align="left" style="width: 340px">
                         
                                <asp:Literal ID="ltlPhone" runat="server"></asp:Literal></td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana">
                                Mobile:</td>
                            <td align="left" style="width: 340px">
                           <asp:Literal ID="ltlMobile" runat="server"></asp:Literal></td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana">
                                Fax No.:</td>
                            <td align="left" style="width: 340px">
                             <asp:Literal ID="ltlFaxNO" runat="server"></asp:Literal></td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana">
                                Email Address:</td>
                            <td align="left" style="width: 340px">
                              <asp:Literal ID="ltlEmail" runat="server"></asp:Literal></td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; font-size: 9pt; color: black; font-family: Verdana">
                                Website:</td>
                            <td align="left" style="width: 340px; height: 24px">
                               <asp:Literal ID="ltlWebsite" runat="server"></asp:Literal></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="font-weight: bold">
                               <asp:Button ID="btnBack1" runat="server" OnClick="btnBack1_Click" Text="Back" Width="69px" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

