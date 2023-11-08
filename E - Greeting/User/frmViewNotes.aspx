<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="frmViewNotes.aspx.cs" Inherits="User_frmViewNotes" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 412px">
        <tr>
            <td align="center" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" colspan="3">
                <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back>>" /></td>
        </tr>
        <tr>
            <td style="text-align: left;" colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                    Width="147px" OnRowCommand="GridView1_RowCommand" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" Font-Bold="True" Font-Names="Verdana" Font-Size="10pt" GridLines="None">
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <Columns>
                        <asp:TemplateField HeaderText="Subject">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkSubject" runat="server" Text='<%#Eval("Subject") %>' CommandArgument='<%#Eval("Id") %>' ></asp:LinkButton>
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
            <td style="height: 19px;" colspan="3">
                &nbsp; &nbsp;
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red" Width="305px"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="3" style="height: 19px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Panel ID="Panel1" runat="server" Height="50px" Width="125px">
                    <asp:TextBox ID="txtNote" runat="server" Height="158px" ReadOnly="True" TextMode="MultiLine"
                        Width="419px"></asp:TextBox></asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

