<%@ Page Language="C#" MasterPageFile="masterPage.master" AutoEventWireup="true" CodeFile="frmViewCalanderWithBirthday.aspx.cs" Inherits="User_frmViewCalanderWithBirthday" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 53%">
        <tr>
            <td align="right" colspan="5" style="font-weight: bold; color: #ffffff; text-align: center;">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" colspan="5" style="font-weight: bold; color: #ffffff">
                <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back<<" Width="79px" /></td>
        </tr>
        <tr>
            <td align="right" colspan="5" style="font-weight: bold; color: #000000; text-align: center;">
                <span style="font-size: 14pt; font-family: Verdana">
                BirthDay Lists</span></td>
        </tr>
        <tr>
            <td align="right" colspan="5" style="font-weight: bold; color: #000000; text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="5" style="font-weight: bold; color: black">
                <span style="font-size: 14pt; font-family: Verdana"></span>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="5" style="font-weight: bold; color: #ffcc00">
                <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399"
                    Height="200px" OnDayRender="Calendar1_DayRender"
                    OnSelectionChanged="Calendar1_SelectionChanged" Width="468px" BorderWidth="1px" DayNameFormat="Shortest" ShowGridLines="True">
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <DayHeaderStyle Font-Bold="True" Height="1px" BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt"
                        ForeColor="#FFFFCC" />
                    <SelectorStyle BackColor="#FFCC66" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="5">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand"
                    Width="468px" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" Font-Bold="True" Font-Names="Verdana" Font-Size="10pt" GridLines="None">
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <Columns>
                        <asp:TemplateField HeaderText="First Name">
                            <ItemTemplate>
                                <asp:Literal ID="ltl1" runat="server" Text='<%#Eval("FirstName") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mobile No.">
                            <ItemTemplate>
                                <asp:Literal ID="ltl2" runat="server" Text='<%#Eval("Mobile") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnk1" runat="server" CommandArgument='<%#Eval("Email") %>' CommandName="View"
                                    Text='<%#Eval("Email") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                </asp:GridView>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

