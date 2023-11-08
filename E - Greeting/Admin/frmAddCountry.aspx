<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true"
    CodeFile="frmAddCountry.aspx.cs" Inherits="Admin_frmAddCountry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="text-align: center">
        <table border="0" cellpadding="2" cellspacing="2" style="width: 38%">
            <tr>
                <td colspan="3" style="font-weight: bold; font-size: 12pt">
                </td>
            </tr>
            <tr>
                <td colspan="3" style="font-weight: bold; font-size: 12pt;">
                    <span style="font-size: 14pt; font-family: Verdana">Add Country</span></td>
            </tr>
            <tr>
                <td align="left" style="font-weight: bold; width: 344px;">
                    <span style="font-size: 9pt; font-family: Verdana">Country Name:</span></td>
                <td align="left">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                <td align="left" style="width: 176px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                        ErrorMessage="Please Enter Country" Font-Bold="True" Font-Size="10pt">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="left" style="font-weight: bold; width: 344px;">
                    <span style="font-size: 9pt; font-family: Verdana">Description:</span></td>
                <td align="left">
                    <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
                </td>
                <td align="left" style="width: 176px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDescription"
                        ErrorMessage="Please Enter Description" Font-Bold="True" Font-Size="10pt">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" Width="50px"
                        CausesValidation="False" />
                    <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" Width="61px"
                        CausesValidation="False" /></td>
                <td align="center" colspan="1" style="width: 176px">
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></td>
            </tr>
            <tr>
                <td align="left" colspan="3">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        EmptyDataText="No Data Found" OnPageIndexChanging="GridView1_PageIndexChanging"
                        OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting" PageSize="25"
                        Width="70%" CellPadding="3" GridLines="None" BackColor="White" BorderColor="White"
                        BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1" Font-Bold="True" Font-Names="Verdana"
                        Font-Size="X-Small">
                        <Columns>
                            <asp:TemplateField HeaderText="Country">
                                <ItemTemplate>
                                    <asp:Literal ID="ltl1" runat="server" Text='<%#Eval("CountryName") %>'></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Description">
                                <ItemTemplate>
                                    <asp:Literal ID="ltl2" runat="server" Text='<%#Eval("description") %>'></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Delete">
                                <ItemTemplate>
                                    <asp:Button ID="btndelete" runat="server" CommandArgument='<%#Eval("CountryId") %>'
                                        CommandName="Delete" OnClientClick="return confirm('Are U Sure ?')" Text="Delete ?"
                                        CausesValidation="false" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Update">
                                <ItemTemplate>
                                    <asp:Button ID="btnupdate" runat="server" CommandArgument='<%#Eval("CountryId") %>'
                                        CommandName="Update" Text="Update !" CausesValidation="false" />
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
    </div>
</asp:Content>
