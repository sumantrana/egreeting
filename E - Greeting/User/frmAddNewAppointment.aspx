<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="frmAddNewAppointment.aspx.cs" Inherits="User_frmAddNewAppointment" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 67%">
        <tr>
            <td align="right" colspan="5" style="font-weight: bold; color: #ffffff; height: 24px">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" colspan="5" style="font-weight: bold; color: #ffffff; height: 24px;">
                <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back<<"
                    Width="67px" CausesValidation="False" BackColor="Black" Font-Bold="True" Font-Names="Verdana"
                                ForeColor="#0099FF" /></td>
        </tr>
        <tr>
            <td colspan="5">
                &nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="5" align="center" >
            <table border="1" cellpadding="4" cellspacing="4">
            <tr><td style="font-weight: bold; color: black" align="center">
                <span style="font-family: Verdana; font-size: 10pt;"> Select Date To Add Appointment</span></td>
                <td style="font-weight: bold; color: black" align="center" ><span style="font-family: Verdana; font-size: 10pt;">
                                Add Your Appointment Below</span></td>
                                </tr>
            <tr>
            
            <td valign="top"><asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" Font-Names="Verdana" Font-Size="8pt"
                    ForeColor="#663399" Height="196px" OnSelectionChanged="Calendar1_SelectionChanged"
                    SelectedDate="2008-01-31" Width="234px" BorderWidth="1px" DayNameFormat="Shortest" ShowGridLines="True">
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <DayHeaderStyle Font-Bold="True" Height="1px" BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                <SelectorStyle BackColor="#FFCC66" />
                </asp:Calendar>
                </td>
            <td valign="top"><asp:TextBox ID="txtAppointment" runat="server" Height="188px" TextMode="MultiLine"
                                    ValidationGroup="g1" Width="256px"></asp:TextBox></td>
            </tr>
            </table>
                
            </td>
        </tr>
        <tr>
            <td colspan="5">
                <asp:Panel ID="Panel1" runat="server" Width="100%">
                    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                        <tr>
                            <td align="center" colspan="3">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAppointment"
                                    ErrorMessage="Information is Require" Font-Bold="True" SetFocusOnError="True" ToolTip="Enter Appointment"
                                    ValidationGroup="g1" Font-Names="Verdana" Font-Size="10pt"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" colspan="3" style="font-weight: bold; color: black" valign="middle"  >
                                <span style="font-size: 10pt; font-family: Verdana">
                                Appointment Time: </span>
                                <asp:DropDownList ID="ddlTime1" runat="server" ValidationGroup="g1">
                                </asp:DropDownList>&nbsp;<asp:DropDownList ID="ddlTime2" runat="server">
                                    <asp:ListItem>AM</asp:ListItem>
                                    <asp:ListItem>PM</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlTime1"
                                    ErrorMessage="Choose Time" Font-Bold="True" ForeColor="Maroon" InitialValue="Choose Time.."
                                    ValidationGroup="g1" Font-Names="Verdana" Font-Size="10pt"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="3" style="font-weight: bold; color: black" valign="middle">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="3" align="center">
                                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="Maroon" Font-Names="Verdana"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="3" align="center">
                                <asp:Button ID="btnSave" runat="server" BackColor="Black" Font-Bold="True" Font-Names="Verdana"
                                ForeColor="#0099FF" OnClick="btnSave_Click" Text="Save" ValidationGroup="g1"
                                    Width="119px" />
                                <asp:Button ID="btnCancel" runat="server" BackColor="Black" Font-Bold="True" Font-Names="Verdana"
                                ForeColor="#0099FF" OnClick="btnCancel_Click" Text="Cancel"
                                    Width="119px" CausesValidation="False" /></td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

