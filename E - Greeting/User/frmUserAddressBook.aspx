<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="frmUserAddressBook.aspx.cs" Inherits="User_frmUserAddressBook" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="2" cellspacing="1" style="width: 33%">
        <tr>
            <td colspan="4" >
            </td>
        </tr>
        <tr>
            <td colspan="4" style="font-weight: bold; font-size: 12pt; color: #0099ff; background-color: #000000">
                <span style="font-size: 14pt; font-family: Verdana">
                Address Book</span></td>
        </tr>
        <tr>
            <td align="right" colspan="3" style="font-weight: bold; font-size: 12px; color: black;
                font-family: Verdana; text-align: left">
                &nbsp;</td>
            <td align="right" colspan="1" style="font-weight: bold; font-size: 12px; width: 84px;
                color: black; font-family: Verdana; text-align: left">
            </td>
        </tr>
        <tr>
            <td align="right" style="font-weight: bold; color: black; width: 189px; text-align: left; font-size: 12px; font-family: Verdana;">
                In:</td>
            <td colspan="2" style="text-align: left">
                <asp:DropDownList ID="ddlContactType" runat="server" Width="170px">
                    <asp:ListItem>Choose One...</asp:ListItem>
                    <asp:ListItem>Personal Address Book</asp:ListItem>
                    <asp:ListItem>Official Address Book</asp:ListItem>
                </asp:DropDownList></td>
            <td colspan="1" style="width: 84px; text-align: left">
            </td>
        </tr>
        <tr>
            <td align="right" style="font-weight: bold; color: black; width: 189px; text-align: left; font-size: 12px; font-family: Verdana;">
                Find Contacts Whose:</td>
            <td colspan="2" style="text-align: left">
                <asp:DropDownList ID="ddlNameType" runat="server" Width="170px">
                    <asp:ListItem>Choose One...</asp:ListItem>
                    <asp:ListItem>First Name</asp:ListItem>
                    <asp:ListItem>Last Name</asp:ListItem>
                    <asp:ListItem>Company Name</asp:ListItem>
                </asp:DropDownList></td>
            <td colspan="1" style="width: 84px; text-align: left">
            </td>
        </tr>
        <tr>
            <td align="right" style="font-weight: bold; color: black; width: 189px; text-align: left; font-size: 12px; font-family: Verdana;">
                Contains:</td>
            <td colspan="2" style="text-align: left">
                <asp:TextBox ID="txtName" runat="server" Width="162px"></asp:TextBox></td>
            <td colspan="1" style="width: 84px; text-align: left">
            </td>
        </tr>
        <tr>
            <td align="right" style="font-weight: bold; color: black; width: 189px; text-align: left; font-size: 12px; font-family: Verdana;">
            </td>
            <td colspan="2" style="text-align: right">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Find" Width="72px" /></td>
            <td colspan="1" style="width: 84px">
            </td>
        </tr>
        <tr>
            <td align="right" style="font-weight: bold; color: black; width: 189px; text-align: left; font-size: 12px; font-family: Verdana;">
            </td>
            <td colspan="2">
                <b>OR</b></td>
            <td colspan="1" style="width: 84px">
            </td>
        </tr>
        <tr>
            <td align="right" style="font-weight: bold; color: black; width: 189px; text-align: left; font-size: 12px; font-family: Verdana;">
                In:</td>
            <td colspan="2" style="text-align: left">
                <asp:DropDownList ID="ddlConatctType1" runat="server" Width="170px">
                    <asp:ListItem>Choose One...</asp:ListItem>
                    <asp:ListItem>Personal Address Book</asp:ListItem>
                    <asp:ListItem>Official Address Book</asp:ListItem>
                </asp:DropDownList></td>
            <td colspan="1" style="width: 84px; text-align: left">
            </td>
        </tr>
        <tr>
            <td align="right" style="font-weight: bold; color: black; width: 189px; text-align: left; font-size: 12px; font-family: Verdana;">
                Browse Conatct By:</td>
            <td colspan="2" style="text-align: left">
                <asp:DropDownList ID="ddlBrowseContact" runat="server" Width="170px">
                    <asp:ListItem>Choose One...</asp:ListItem>
                    <asp:ListItem>First Name</asp:ListItem>
                    <asp:ListItem>Last Name</asp:ListItem>
                    <asp:ListItem>Company Name</asp:ListItem>
                </asp:DropDownList></td>
            <td colspan="1" style="width: 84px; text-align: left">
            </td>
        </tr>
        <tr>
            <td align="right" style="font-weight: bold; color: black; text-align: center;" colspan="4">
                <asp:DataList ID="DataList1" runat="server" Font-Bold="True" Font-Size="X-Small"
                    ForeColor="Black" OnItemCommand="DataList1_ItemCommand" RepeatColumns="27" Width="100%" Font-Names="Verdana">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkBtnLetter" runat="server" CommandArgument='<%#Eval("Letter") %>'
                            CommandName="Letter" Text='<%#Eval("Letter") %>'></asp:LinkButton>
                    </ItemTemplate>
                    <ItemStyle Font-Bold="True" ForeColor="Black" />
                    <SelectedItemStyle ForeColor="Black" />
                    <HeaderStyle ForeColor="Black" />
                </asp:DataList></td>
        </tr>
        <tr>
            <td colspan="4" style="font-weight: bold; color: black">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="font-weight: bold; color: black;" valign="baseline">
                <table border="0" cellpadding="0" cellspacing="0" style="width: 48%">
                    <tr>
                        <td style="width: 72px">
                            <asp:Button ID="btnMail" runat="server" OnClick="btnMail_Click" Text="Mail" Width="71px" /></td>
                        <td style="width: 1px">
                        </td>
                        <td style="width: 100px">
                            <asp:Button ID="btnNewContact" runat="server" OnClick="btnNewContact_Click" Text="New Contact" /></td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                            <asp:Button ID="btnShowConatct" runat="server" OnClick="btnShowConatct_Click" Text="Show Contact" /></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="font-weight: bold; color: #ffffff">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    CellPadding="3" EmptyDataText="No Contact Detail Found" GridLines="None"
                    OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="GridView1_RowCommand"
                    PageSize="100" Width="101%" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1" Font-Bold="False" Font-Names="Verdana" Font-Size="9pt">
                    <EmptyDataRowStyle Font-Bold="True" Font-Size="12pt" ForeColor="Red" />
                    <EditRowStyle Font-Size="12pt" />
                    <Columns>
                        <asp:TemplateField HeaderText="Select">
                            <ItemTemplate>
                                <asp:CheckBox ID="chk1" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
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
                        <asp:TemplateField HeaderText="Email">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkMail" runat="server" Text='<%#Eval("Email") %>' CommandName="Send" CommandArgument='<%#Eval("Email") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="font-weight: bold; color: #ffffff; height: 25px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Maroon" Width="100%" Font-Names="Verdana" Font-Size="10pt"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

