<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_DeparmentDataEntryUpdate.aspx.cs" Inherits="Web_OguzhanKarakus.frm_DeparmentDataEntryUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: large;
            color: #FF0000;
        }
        .auto-style3 {
            width: 145px;
        }
        .auto-style4 {
            width: 303px;
        }
        .auto-style5 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="4">Bölüm Veri Girişi ve Güncelleme Formu</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Dept_ID" DataSourceID="SqlDataSource1" Height="162px" Width="249px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                            <Columns>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:BoundField DataField="Dept_ID" HeaderText="Dept_ID" InsertVisible="False" ReadOnly="True" SortExpression="Dept_ID" />
                                <asp:BoundField DataField="Dept_Name" HeaderText="Bölüm İsmi" SortExpression="Dept_Name" />
                                <asp:BoundField DataField="Dept_Phone" HeaderText="Bölüm Telefon" SortExpression="Dept_Phone" />
                                <asp:BoundField DataField="Manager_ID" HeaderText="Manager_ID" SortExpression="Manager_ID" />
                            </Columns>
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#330099" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <SortedAscendingCellStyle BackColor="#FEFCEB" />
                            <SortedAscendingHeaderStyle BackColor="#AF0101" />
                            <SortedDescendingCellStyle BackColor="#F6F0C0" />
                            <SortedDescendingHeaderStyle BackColor="#7E0000" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="Bölüm Adı:" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style5" Width="189px" Visible="False"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text="Bölüm Tel:" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox2" runat="server" Width="189px" Visible="False"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" Text="Müdür ID:" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Empl_Name" DataValueField="Empl_ID" Width="140px" Visible="False">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Veri Girişini Aç" Width="126px" />
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Verileri Kaydet" Width="131px" Visible="False" />
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button2" runat="server" Text="Formu Kapat" Width="109px" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Dept_ID], [Dept_Name], [Dept_Phone], [Manager_ID] FROM [tbl_Departments]" UpdateCommand="UPDATE tbl_Departments SET Dept_Name = @Dept_Name, Dept_Phone = @Dept_Phone, Manager_ID = @Manager_ID
WHERE (Dept_ID=@Dept_ID)">
                            <UpdateParameters>
                                <asp:Parameter Name="Dept_Name" />
                                <asp:Parameter Name="Dept_Phone" />
                                <asp:Parameter Name="Manager_ID" />
                                <asp:Parameter Name="Dept_ID" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style4">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Empl_ID], [Empl_Name] FROM [tbl_Employees]" InsertCommand="INSERT INTO tbl_Departments(Dept_Name, Dept_Phone, Manager_ID) VALUES (@Dept_Name, @Dept_Phone, @Manager_ID)">
                            <InsertParameters>
                                <asp:Parameter Name="Dept_Name" />
                                <asp:Parameter Name="Dept_Phone" />
                                <asp:Parameter Name="Manager_ID" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
