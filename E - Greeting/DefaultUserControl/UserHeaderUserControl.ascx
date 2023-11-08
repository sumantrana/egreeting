<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserHeaderUserControl.ascx.cs" Inherits="DefaultUserControl_UserHeaderUserControl" %>
<table style="width: 366px" align="center">
    <tr>
        <td align="center" style="width: 100px">
            <asp:Menu ID="Menu1" runat="server" Font-Bold="True" ForeColor="#C3B189" Orientation="Horizontal"
                Width="644px">
                <Items>
                    <asp:MenuItem Text="|||" Value="|||"></asp:MenuItem>
                    <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/User/frmUserHomePage.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem Text="New" Value="New">
                        <asp:MenuItem NavigateUrl="~/User/frmAddNewContact.aspx" Text="Contact" Value="Contact">
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/User/frmAddNewAppointment.aspx" Text="Appointment" Value="Appointment">
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/User/frmComposeMail.aspx" Text="Mail" Value="Mail"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/User/frmAddNewNote.aspx" Text="Note" Value="Note"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem Text="View" Value="View">
                        <asp:MenuItem NavigateUrl="~/User/frmViewPersonalAddressBook.aspx" Text="Personal Address Book"
                            Value="Personal Address Book"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/User/frmViewOfficialAddressBook.aspx" Text="Official Address Book"
                            Value="Official Address Book"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/User/frmViewBirthdayList.aspx" Text="Birthday List"
                            Value="Birthday List"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/User/frmViewAnniversaryList.aspx" Text="Anniversary List"
                            Value="Anniversary List"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/User/frmViewCalanderWithBirthday.aspx" Text="Calendar With Birthday"
                            Value="Calendar With Birthday"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/User/frmViewCalandarWithAnniversary.aspx" Text="Calendar With Anniversary"
                            Value="Calendar With Anniversary"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/User/frmViewCalandarWithAppointment.aspx" Text="Calendar For Appointment"
                            Value="Calendar For Appointment"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/User/frmViewNotes.aspx" Text="Note" Value="Note"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/User/frmViewOutbox.aspx" Text="Outbox" Value="Outbox"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem Text="Edit" Value="Edit">
                        <asp:MenuItem NavigateUrl="~/User/frmShowContactByType.aspx" Text="Contact" Value="Cotact">
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/User/frmViewCalandarWithAppointment.aspx" Text="Appointment"
                            Value="Appointment"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/User/frmUpdateUserProfile.aspx" Text="User Profile"
                            Value="User Profile"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/User/frmModifyNote.aspx" Text="Note" Value="Note"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem Text="Search" Value="Search">
                        <asp:MenuItem NavigateUrl="~/User/frmUserAddressBook.aspx" Text="Contact" Value="Contact">
                        </asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem Text="Reminder" Value="Reminder">
                        <asp:MenuItem Text="Birthday" Value="Birthday" NavigateUrl="~/User/frmBirthdayReminder.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Anniversary" Value="Anniversary" NavigateUrl="~/User/frmAnniversaryReminder.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Appointment" Value="Appointment" NavigateUrl="~/User/frmAppointmentReminder.aspx"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/User/frmChangePassword.aspx" Text="Change Password"
                        Value="Change Password"></asp:MenuItem>
                    <asp:MenuItem Text="|||" Value="|||"></asp:MenuItem>
                </Items>
                <DynamicMenuItemStyle BackColor="Gray" BorderColor="#C3B189" BorderStyle="Solid"
                    BorderWidth="1px" Font-Bold="True" ForeColor="#C3B189" />
            </asp:Menu>
        </td>
    </tr>
</table>
