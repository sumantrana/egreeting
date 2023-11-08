<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmViewUserLoginHistory.aspx.cs" Inherits="Admin_frmViewUserLoginHistory" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 71%">
        <tr>
            <td align="center" colspan="4" style="font-weight: bold; font-size: 13pt">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="font-weight: bold; font-size: 13pt">
                <span style="font-size: 14pt; font-family: Verdana">
                User Login History</span></td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="font-weight: bold; font-size: 13pt">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" style="width: 141px; text-align: right">
                <strong><span style="font-size: 10pt; font-family: Verdana">Select Start Date:</span></strong></td>
            <td align="left" >
                <cc1:gmdatepicker id="GMDatePicker1" runat="server" InitialValueMode="Null"></cc1:gmdatepicker>
            </td>
            <td align="center" style="width: 157px; height: 19px; text-align: right;">
                <strong><span style="font-size: 10pt; font-family: Verdana;">Select End Date:</span></strong></td>
            <td align="left">
                <cc1:gmdatepicker id="GMDatePicker2" runat="server" InitialValueMode="Null"></cc1:gmdatepicker>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="text-align: right">
                <asp:Button ID="btnView" runat="server" OnClick="btnView_Click" Text="View" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="height: 19px">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red" Width="260px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    EmptyDataText="No Data Found" OnPageIndexChanging="GridView1_PageIndexChanging"
                    PageSize="5" Width="100%" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" GridLines="None">
                    <EmptyDataRowStyle Font-Bold="True" Font-Size="14pt" ForeColor="Red" />
                    <Columns>
                        <asp:TemplateField HeaderText="Login Name">
                            <ItemTemplate>
                                <asp:Literal ID="ltl1" runat="server" Text='<%#Eval("LoginName") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Login Date">
                            <ItemTemplate>
                                <asp:Literal ID="ltl2" runat="server" Text='<%#Eval("LoginDate","{0:dd-MMM-yyyy}") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Login Time">
                            <ItemTemplate>
                                <asp:Literal ID="ltl3" runat="server" Text='<%#Eval("LoginTime") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <HeaderStyle BackColor="#4A3C8C" ForeColor="#E7E7FF" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" />
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

