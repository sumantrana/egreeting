<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="frmModifyNote.aspx.cs" Inherits="User_frmModifyNote" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="0" cellpadding="0" cellspacing="0" width="570px">
        <tr>
            <td align="center" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red" Width="305px" Font-Names="Verdana" Font-Size="10pt"></asp:Label>&nbsp;</td>
        </tr>
        <tr>
            <td align="right" colspan="3">
                <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back>>" /></td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: left">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand"
                    Width="147px" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" GridLines="None">
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" ForeColor="#E7E7FF" />
                    <Columns>
                        <asp:TemplateField HeaderText="Subject">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkSubject" runat="server" CommandArgument='<%#Eval("Id") %>'
                                    Text='<%#Eval("Subject") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Panel ID="Panel1" runat="server" Height="50px" Width="125px">
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="left" style="width: 100px">
                                <span style="font-size: 10pt; font-family: Verdana"><strong>
                                Subject:</strong></span></td>
                            <td align="left" style="width: 100px">
                                <asp:TextBox ID="txtSubject" runat="server" MaxLength="50" Width="465px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="font-weight: bold; color: #660000; text-align: right;">
                                <span style="font-size: 10pt; font-family: Verdana">
                                Update Your Note Below</span></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:TextBox ID="txtNote" runat="server" Height="171px" TextMode="MultiLine" Width="561px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: right">
                                <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Uppdate" />
                                <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
                                <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel" /></td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

