<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_WageDataUpdate.aspx.cs" Inherits="Web_OguzhanKarakus.frm_WageDataUpdate" %>

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
        }
        .auto-style3 {
            width: 145px;
        }
        .auto-style4 {
            width: 145px;
            height: 41px;
        }
        .auto-style5 {
            height: 41px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="4"><strong>Personel Maaş Veri Güncelleme</strong></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Personel Seçiniz:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Empl_Name" DataValueField="Empl_ID" Width="139px">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" rowspan="6">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Wage_ID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="16px" Width="292px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:BoundField DataField="Wage_ID" HeaderText="Wage_ID" InsertVisible="False" ReadOnly="True" SortExpression="Wage_ID" />
                                <asp:BoundField DataField="Wage_Amount" HeaderText="Maaş" SortExpression="Wage_Amount" />
                                <asp:BoundField DataField="Wage_Date" HeaderText="Maaş_Tarihi" SortExpression="Wage_Date" />
                                <asp:BoundField DataField="Wage_Commission" HeaderText="Komisyon" SortExpression="Wage_Commission" />
                                <asp:BoundField DataField="Month_ID" HeaderText="Month_ID" SortExpression="Month_ID" />
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Empl_ID], [Empl_Name] FROM [tbl_Employees]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style5">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Wage_ID], [Wage_Amount], [Wage_Date], [Wage_Commission], [Month_ID] FROM [tbl_EmployeeWages] WHERE ([Empl_ID] = @Empl_ID)" UpdateCommand="UPDATE tbl_EmployeeWages SET Wage_Amount = @Wage_Amount, Wage_Date = @Wage_Date, Wage_Commission = @Wage_Commission, Month_ID = @Month_ID
WHERE Wage_ID = @Wage_ID">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Empl_ID" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Wage_Amount" Type="Decimal" />
                                <asp:Parameter Name="Wage_Date" Type="DateTime" />
                                <asp:Parameter Name="Wage_Commission" Type="Decimal" />
                                <asp:Parameter Name="Month_ID" Type="Int16" />
                                <asp:Parameter Name="Wage_ID"  Type="Int16"/>
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="Button2" runat="server" Text="Formu Kapat" Width="109px" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
