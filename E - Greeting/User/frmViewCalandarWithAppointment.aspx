<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="frmViewCalandarWithAppointment.aspx.cs" Inherits="User_frmViewCalandarWithAnniversary" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 55%">
        <tr>
            <td align="right" colspan="5" style="font-weight: bold; color: #ffffff; text-align: center; width: 680px;">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td align="right" colspan="5" style="font-weight: bold; color: #ffffff; width: 680px;">
                <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back<<" Width="79px" /></td>
        </tr>
        <tr>
            <td colspan="5" style="font-weight: bold; color: black; width: 680px;" align="center">
                <span style="font-size: 14pt; font-family: Verdana">
                Please Select Date To See Appointment
                </span>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="5" style="font-weight: bold; color: black; width: 680px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="5" style="font-weight: bold; color: #ffcc00; width: 680px;">
                <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399"
                    Height="200px" OnDayRender="Calendar1_DayRender"
                    OnSelectionChanged="Calendar1_SelectionChanged" Width="510px" BorderWidth="1px" DayNameFormat="Shortest" ShowGridLines="True">
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
            <td colspan="5" style="font-weight: bold; color: #ffcc00; width: 100%; text-align: center; height: 150px;">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                    OnRowCommand="GridView1_RowCommand" Width="99%" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" GridLines="None">
                    <Columns>
                        <asp:TemplateField HeaderText="View Appointment">
                            <ItemTemplate>
                                <asp:LinkButton ID="LnkView" runat="server" CommandArgument='<%#Eval("Id") %>' CommandName="View"
                                    Text="View"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Date Of Appointment">
                            <ItemTemplate>
                                <asp:Literal ID="LtlDate" runat="server" Text='<%#Eval("DateOfAppointment","{0:dd-MMM-yyyy}") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Time Of Appointment">
                            <ItemTemplate>
                                <asp:Literal ID="LtlTime" runat="server" Text='<%#Eval("AppointmentTime") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <HeaderStyle BackColor="#4A3C8C" ForeColor="#E7E7FF" Font-Bold="True" />
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="5" >
                <asp:Panel ID="Panel1" runat="server" Width="72%">
                    <div style="text-align: center">
                        <table border="0" cellpadding="0" cellspacing="0" style="width: 370px" >
                            <tr>
                                <td colspan="4" style="font-weight: bold; color: black; height: 18px;">
                                    <span style="font-family: Verdana">Update Your Appointment</span></td>
                            </tr>
                            <tr>
                                <td colspan="4" style="font-weight: bold; color: black; height: 18px">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="3" >
                                    <asp:TextBox ID="txtAppointment" runat="server" Height="97px" TextMode="MultiLine"
                                        ValidationGroup="g1" Width="410px"></asp:TextBox>
                                </td><td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAppointment"
                                        ErrorMessage="*" Font-Bold="True" SetFocusOnError="True" ToolTip="Enter Appointment"
                                        ValidationGroup="g1"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td align="left" colspan="2" style="font-weight: bold; color: black">
                                    <span style="font-size: 9pt; font-family: Verdana">
                                    Appointment Time:</span></td>
                                <td align="center" colspan="2" style="text-align: left" >
                                    <asp:DropDownList ID="ddlTime1" runat="server" ValidationGroup="g1" Width="83px">
                                    </asp:DropDownList><asp:DropDownList ID="ddlTime2" runat="server">
                                        <asp:ListItem>AM</asp:ListItem>
                                        <asp:ListItem>PM</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlTime1"
                                        ErrorMessage="Choose Time" Font-Bold="True" ForeColor="Maroon" InitialValue="Choose Time.."
                                        ValidationGroup="g1"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td colspan="4">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="4">
                                    <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="Red" Width="439px" Font-Names="Verdana"></asp:Label></td>
                            </tr>
                            <tr>
                                <td colspan="4">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="4">
                                    <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update"
                                        ValidationGroup="g1" Width="73px" />
                                    <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete"
                                        Width="73px" />
                                    <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel"
                                        Width="67px" /></td>
                            </tr>
                        </table>
                    </div>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

