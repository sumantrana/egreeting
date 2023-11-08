<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="frmAppointmentReminder.aspx.cs" Inherits="User_frmAppointmentReminder" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 581px">
        <tr>
            <td align="center" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
          <td align="center" colspan="3" style="font-weight: bold; font-size: 16pt; color: #0099ff;
                font-family: Castellar; height: 19px; background-color: #000000">
                You Want to Set Appointment for today Click on EmailId !</td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red" Width="305px"></asp:Label>&nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="3">
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EmptyDataText="No Appointments  Found For Today" Width="593px" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" GridLines="None">
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" ForeColor="#E7E7FF" />
                    <Columns>
                        <asp:TemplateField HeaderText="Appointment">
                            <ItemTemplate>
                                <asp:Literal ID="ltlFirstName" runat="server" Text='<%#Eval("Appointment") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="AppointmentTime">
                            <ItemTemplate>
                                <asp:Literal ID="ltlLastName" runat="server" Text='<%#Eval("AppointmentTime") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                       
                        <asp:TemplateField HeaderText="Date Of Appointment">
                            <ItemTemplate>
                                <asp:Literal ID="ltlDOB" runat="server" Text='<%#Eval("DateOfAppointment","{0:dd-MMM-yyyy}") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataRowStyle Font-Bold="True" Font-Size="Large" ForeColor="Red" />
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>

