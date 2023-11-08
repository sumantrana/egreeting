<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true"
    CodeFile="frmAddState.aspx.cs" Inherits="Admin_frmAddState" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" align="center" style="width: 53%">
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; font-size: 12pt">
            </td>
        </tr>
        <tr>
            <td colspan="3" style="font-weight: bold; font-size: 12pt;" align="center">
                <span style="font-size: 14pt; font-family: Verdana">Add State</span></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; font-size: 12pt">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bold; font-size: 10pt; font-family: Verdana;
                width: 149px;">
                Select Country:</td>
            <td align="left">
                <asp:DropDownList ID="ddlCountry" runat="server" Width="156px">
                </asp:DropDownList></td>
            <td align="left">
                <asp:RequiredFieldValidator ID="rfvCountry" runat="server" ControlToValidate="ddlCountry"
                    ErrorMessage="*" InitialValue="Choose One..."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bold; font-size: 10pt; font-family: Verdana;">
                State Name:</td>
            <td align="left">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
            <td align="left">
                <asp:RequiredFieldValidator ID="rfvStatename" runat="server" ControlToValidate="txtName"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bold; font-size: 10pt; font-family: Verdana;">
                Description:</td>
            <td align="left">
                <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox></td>
            <td align="left">
                <asp:RequiredFieldValidator ID="rfvDescription" runat="server" ControlToValidate="txtDescription"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" Width="56px" />
                <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" />
            </td>
            <td align="center" colspan="1">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red" Width="260px"></asp:Label></td>
            <td align="center" colspan="1" style="width: 260px; text-align: right">
            </td>
        </tr>
        <tr>
            <td align="left" colspan="3">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    EmptyDataText="No Data Found" OnPageIndexChanging="GridView1_PageIndexChanging"
                    OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting" PageSize="5"
                    Width="528px" CellPadding="3" GridLines="None" BackColor="White" BorderColor="White"
                    BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="X-Small">
                    <Columns>
                        <asp:TemplateField HeaderText="State Name">
                            <ItemTemplate>
                                <asp:Literal ID="ltl1" runat="server" Text='<%#Eval("StateName") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Description">
                            <ItemTemplate>
                                <asp:Literal ID="ltl2" runat="server" Text='<%#Eval("Description") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Country Name">
                            <ItemTemplate>
                                <asp:Literal ID="ltl3" runat="server" Text='<%#Eval("CountryName") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:Button ID="btndelete" runat="server" CommandArgument='<%#Eval("StateId") %>'
                                    CommandName="Delete" OnClientClick="return confirm('Are U Sure ?')" Text="Delete ?" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Update">
                            <ItemTemplate>
                                <asp:Button ID="btnupdate" runat="server" CommandArgument='<%#Eval("StateId") %>'
                                    CommandName="Update" Text="Update !" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataRowStyle Font-Bold="True" Font-Size="14pt" ForeColor="Red" />
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" Font-Names="Verdana"
                        Font-Size="Small" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
