<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmUserRegisterationBYDate.aspx.cs" Inherits="Admin_frmUserRegisterationBYDate" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; font-size: 13pt">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; font-size: 13pt">
                <span style="font-size: 14pt; font-family: Verdana">
                View All User By Date</span></td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; font-size: 13pt">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 19px">
                &nbsp;<asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red"
                    Width="336px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; color: black">
                <span style="color: red">From</span><cc1:GMDatePicker ID="GMDatePicker1" runat="server" InitialValueMode="Null">
                </cc1:GMDatePicker>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style="color: red">To &nbsp; </span><cc1:GMDatePicker
                    ID="GMDatePicker2" runat="server" InitialValueMode="Null">
                </cc1:GMDatePicker>
                &nbsp;
                <asp:Button ID="btnView" runat="server" OnClick="btnView_Click" Text="View" Width="76px" /></td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; color: #ffffff; height: 19px">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="font-weight: bold; color: #ffffff; height: 19px">
                <asp:Panel ID="Panel2" runat="server" Height="50px" Width="125px">
                    <div style="text-align: center">
                        <table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 100px">
                <asp:Button ID="btnExportToExcel" runat="server" OnClick="btnExportToExcel_Click"
                    Text="Export To Excel" ValidationGroup="g1" /></td>
                                <td style="width: 100px">
                                    <asp:Button ID="btnExportToPDF" runat="server"
                        OnClick="btnExportToPDF_Click" Text="Export To PDF" ValidationGroup="g1" /></td>
                                <td style="width: 100px">
                <input id="Submit1" onclick="window.print()" type="submit" value="Print" /></td>
                            </tr>
                        </table>
                    </div>
                </asp:Panel>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                    EmptyDataText="No Data Found" PageSize="5"
                    Width="618px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
                    <EmptyDataRowStyle Font-Bold="True" Font-Size="14pt" ForeColor="Red" />
                    <Columns>
                        <asp:TemplateField HeaderText="Login Name">
                            <ItemTemplate>
                                <%#Eval("LoginName") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="First Name">
                            <ItemTemplate>
                                <asp:Literal ID="ltl2" runat="server" Text='<%#Eval("FirstName") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Gender">
                            <ItemTemplate>
                                <asp:Literal ID="ltl3" runat="server" Text='<%#Eval("Gender") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address">
                            <ItemTemplate>
                                <asp:Literal ID="ltl4" runat="server" Text='<%#Eval("Address") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="City">
                            <ItemTemplate>
                                <asp:Literal ID="ltl5" runat="server" Text='<%#Eval("City") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="State">
                            <ItemTemplate>
                                <asp:Literal ID="ltl6" runat="server" Text='<%#Eval("State") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Country">
                            <ItemTemplate>
                                <asp:Literal ID="ltl7" runat="server" Text='<%#Eval("Country") %>'></asp:Literal>
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
        <tr>
            <td align="center" colspan="2">
                <strong><span style="color: black">Enter User Name For More Info</span></strong>.<asp:TextBox
                    ID="txtSearch" runat="server"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" /></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Panel ID="Panel1" runat="server" Height="50px" Width="125px">
                    <table align="center" border="0" cellpadding="3" cellspacing="2" style="border-right: green 1px double;
                        border-top: green 1px double; border-left: green 1px double; border-bottom: green 1px double; width: 442px;">
                        <tr>
                            <td align="center" colspan="2">
                                &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="Red" Width="397px"></asp:Label></td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="right" colspan="2" style="font-weight: bold; background-color: darkgray">
                            </td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="right" style="font-weight: bold; width: 3360px">
                                First Name:</td>
                            <td align="left">
                                <asp:Label ID="lblFName" runat="server" Font-Bold="True" Width="190px"></asp:Label></td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="right" style="font-weight: bold; width: 3360px">
                                Last Name:</td>
                            <td align="left">
                                <asp:Label ID="lblLName" runat="server" Font-Bold="True" Width="190px"></asp:Label></td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="right" style="font-weight: bold; width: 3360px">
                                Gender:</td>
                            <td align="left">
                                <asp:Label ID="lblGender" runat="server" Font-Bold="True" Width="190px"></asp:Label></td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="right" style="font-weight: bold; width: 3360px">
                                Email Address:</td>
                            <td align="left">
                                <asp:Label ID="lblMail" runat="server" Font-Bold="True" Width="288px"></asp:Label></td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="right" style="font-weight: bold; width: 3360px">
                                Mobile No.</td>
                            <td align="left">
                                <asp:Label ID="lblMobileNO" runat="server" Font-Bold="True" Width="288px"></asp:Label></td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="right" style="font-weight: bold; width: 3360px">
                                Birthday:</td>
                            <td align="left">
                                <asp:Label ID="lblDOB" runat="server" Font-Bold="True" Width="190px"></asp:Label></td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="right" style="font-weight: bold; width: 3360px">
                                Country:</td>
                            <td align="left">
                                <asp:Label ID="lblCountry" runat="server" Font-Bold="True" Width="190px"></asp:Label></td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="right" style="font-weight: bold; width: 3360px">
                                State:</td>
                            <td align="left">
                                <asp:Label ID="lblState" runat="server" Font-Bold="True" Width="190px"></asp:Label></td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="right" style="font-weight: bold; width: 3360px">
                                City:</td>
                            <td align="left">
                                <asp:Label ID="lblCity" runat="server" Font-Bold="True" Width="190px"></asp:Label></td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="right" style="font-weight: bold; width: 3360px">
                                Address:</td>
                            <td align="left">
                                <asp:Label ID="lblAddress" runat="server" Font-Bold="True" Width="190px"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="right" style="font-weight: bold; width: 3360px; height: 26px">
                                Zip or Postal Code:</td>
                            <td align="left">
                                <asp:Label ID="lblPinCode" runat="server" Font-Bold="True" Width="190px"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="right" style="font-weight: bold; width: 3360px">
                                Phone Number.:</td>
                            <td align="left" style="width: 340px">
                                <asp:Label ID="lblPhone" runat="server" Font-Bold="True" Width="190px"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="right" style="font-weight: bold; width: 3360px">
                                Office Phone:</td>
                            <td align="left" style="width: 340px">
                                <asp:Label ID="lblOfficePhone" runat="server" Font-Bold="True" Width="190px"></asp:Label></td>
                        </tr>
                    </table>
                    &nbsp;
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

