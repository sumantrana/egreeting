<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="frmViewAnniversaryList.aspx.cs" Inherits="User_frmViewAnniversaryList" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 605px">
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; font-size: 16pt; color: #0099ff;
                font-family: Castellar; height: 19px; background-color: #000000">
                You Want to Send Aniversary Wishes Plz Click on EmailId !</td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red" Width="305px" Font-Names="Verdana" Font-Size="8pt"></asp:Label>&nbsp;</td>
        </tr>
        <tr>
            <td align="center" valign="middle" colspan="3">
                <span style="font-size: 10pt; font-family: Verdana"><strong>
                Select Month: </strong></span>
                <asp:DropDownList ID="ddlMonth" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlMonth_SelectedIndexChanged"
                    Width="129px" ValidationGroup="g1">
                    <asp:ListItem>Choose One...</asp:ListItem>
                    <asp:ListItem Value="1">January</asp:ListItem>
                    <asp:ListItem Value="2">Feburary</asp:ListItem>
                    <asp:ListItem Value="3">March</asp:ListItem>
                    <asp:ListItem Value="4">April</asp:ListItem>
                    <asp:ListItem Value="5">May</asp:ListItem>
                    <asp:ListItem Value="6">June</asp:ListItem>
                    <asp:ListItem Value="7">July</asp:ListItem>
                    <asp:ListItem Value="8">August</asp:ListItem>
                    <asp:ListItem Value="9">September</asp:ListItem>
                    <asp:ListItem Value="10">October</asp:ListItem>
                    <asp:ListItem Value="11">November</asp:ListItem>
                    <asp:ListItem Value="12">December</asp:ListItem>
                </asp:DropDownList><span style="font-size: 10pt; font-family: Verdana"> </span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlMonth"
                    ErrorMessage="Select Month" Font-Bold="True" InitialValue="Choose One..." ValidationGroup="g1" Font-Names="Verdana" Font-Size="8pt"></asp:RequiredFieldValidator><span
                        style="font-size: 10pt; font-family: Verdana">&nbsp; </span>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <span style="font-size: 10pt"><span style="font-family: Verdana"><span style="color: #ff0000">
                    <strong>
                OR</strong></span></span></span></td>
        </tr>
        <tr>
            <td align="center" valign="middle"  colspan="3">
                <span style="font-size: 10pt"><span style="font-family: Verdana"><strong>Select Day:
                </strong></span></span>
                <cc1:GMDatePicker
                    ID="GMDatePicker1" runat="server" CalendarTheme="Silver" InitialValueMode="Null">
                </cc1:GMDatePicker>
                <asp:Button ID="btnView" runat="server" CausesValidation="False" Text="View" Width="38px" OnClick="btnView_Click" /></td>
        </tr>
        <tr>
            <td align="center" colspan="3">
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand"
                    Width="610px" EmptyDataText="No Data Found" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" GridLines="None">
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <Columns>
                        <asp:TemplateField HeaderText="First Name">
                            <ItemTemplate>
                                <asp:Literal ID="ltlFirstName" runat="server" Text='<%#Eval("FirstName") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Last Name">
                            <ItemTemplate>
                                <asp:Literal ID="ltlLastName" runat="server" Text='<%#Eval("LastName") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkEmail" runat="server" CommandArgument='<%#Eval("Email") %>'
                                    CommandName="Send" Text='<%#Eval("Email") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Date of Aniversary">
                            <ItemTemplate>
                                <asp:Literal ID="ltlAniversary" runat="server" Text='<%#Eval("Aniversary","{0:dd-MMM-yyyy}") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataRowStyle Font-Bold="True" Font-Size="X-Large" ForeColor="Red" />
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

