<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmViewOutbox.aspx.cs" Inherits="Admin_frmViewOutbox" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 84%">
        <tr>
            <td align="left" colspan="2" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" colspan="2"  valign="top">
                <asp:Button ID="btnDelete" runat="server" BackColor="Black" Font-Bold="True" Font-Names="Verdana"
                                ForeColor="#0099FF" OnClick="btnDelete_Click" Text="Delete" Width="66px" />
            </td>
        </tr>
        <tr>
            <td align="left" colspan="2" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" valign="top" style="width: 69px">
                <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Font-Bold="True"
                    ForeColor="Black" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Select All"
                    Width="113px" /></td><td>
                <asp:Label ID="lblError" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="Red"
                    Visible="False" Width="434px"></asp:Label></td>
        </tr>
        <tr>
            <td align="left" valign="top" colspan="2" style="width: 100%">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px"
                                CellPadding="3" EmptyDataText="Your Inbox Is Empty" GridLines="None"
                                OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="GridView1_RowCommand"
                                PageSize="50" Width="100%" CellSpacing="1" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small">
                                <EmptyDataRowStyle Font-Bold="True" Font-Size="Large" ForeColor="White" />
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Label ID="lblid" runat="server" Text='<%#Eval("Id") %>' Visible="false"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Select">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chk1" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="To">
                                        <ItemTemplate>
                                            <asp:Literal ID="ltl1" runat="server" Text='<%#Eval("To") %>'></asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Subject">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnk1" runat="server" CommandArgument='<%#Eval("Id") %>' CommandName="View"
                                                Text='<%#Eval("Subject") %>'></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Date">
                                        <ItemTemplate>
                                            <asp:Literal ID="ltl3" runat="server" Text='<%#Eval("Date") %>'></asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Size">
                                        <ItemTemplate>
                                            <asp:Literal ID="ltl4" runat="server" Text='<%#Eval("Size") %>'></asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" Font-Names="Verdana" Font-Size="Small" />
                                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                            </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

