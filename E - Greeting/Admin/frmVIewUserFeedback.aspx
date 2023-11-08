<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmVIewUserFeedback.aspx.cs" Inherits="Admin_frmVIewUserFeedback" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 86%">
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; font-size: 13pt; color: #006600">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; font-size: 13pt; color: #006600">
                &nbsp;<span style="font-size: 14pt; font-family: Verdana"> &nbsp; View User Feedback</span></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                </td>
        </tr>
        <tr>
            <td  style="text-align: left; height: 24px; width: 3px;">
                <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete"
                    Width="55px" BackColor="Black" Font-Bold="True" Font-Names="Verdana"
                                ForeColor="#0099FF" /></td><td>
                <asp:Label ID="lblView" runat="server" Font-Bold="True" ForeColor="Maroon"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: left">
            </td>
        </tr>
        <tr>
            <td align="left" colspan="2">
                <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Font-Bold="True"
                    ForeColor="Black" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Select All"
                    Width="90px" />
                </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    CellPadding="3" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging"
                    OnRowCommand="GridView1_RowCommand" PageSize="100" Width="100%" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small">
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
                        <asp:TemplateField HeaderText="From">
                            <ItemTemplate>
                                <asp:Literal ID="ltl1" runat="server" Text='<%#Eval("From") %>'></asp:Literal>
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
                        <asp:TemplateField HeaderText="Send Mail">
                            <ItemTemplate>
                                <asp:Button ID="btnsend" runat="server" CommandArgument='<%#Eval("From") %>' CommandName="Send"
                                    Text="Send Mail" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" Font-Names="Verdana" Font-Size="Small" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

