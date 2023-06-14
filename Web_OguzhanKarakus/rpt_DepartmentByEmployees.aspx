<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rpt_DepartmentByEmployees.aspx.cs" Inherits="Web_OguzhanKarakus.rpt_EmployeeComList" %>

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
            width: 241px;
        }
        .auto-style4 {
            width: 682px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Bölüm Seçiniz:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Dept_Name" DataValueField="Dept_ID" Width="164px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" rowspan="6">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" Width="332px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
                            <Columns>
                                <asp:BoundField DataField="Empl_Name" HeaderText="Empl_Name" ReadOnly="True" SortExpression="Empl_Name" />
                                <asp:BoundField DataField="Empl_Cell" HeaderText="Empl_Cell" SortExpression="Empl_Cell" />
                                <asp:BoundField DataField="Empl_Email" HeaderText="Empl_Email" SortExpression="Empl_Email" />
                                <asp:BoundField DataField="Empl_Start_Date" HeaderText="Empl_Start_Date" SortExpression="Empl_Start_Date" />
                                <asp:BoundField DataField="Empl_BDate" HeaderText="Empl_BDate" SortExpression="Empl_BDate" />
                                <asp:BoundField DataField="Dept_Name" HeaderText="Dept_Name" SortExpression="Dept_Name" />
                                <asp:BoundField DataField="Title_Name" HeaderText="Title_Name" SortExpression="Title_Name" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT tbl_Employees.Empl_Name, tbl_Employees.Empl_Cell, tbl_Employees.Empl_Email, tbl_Employees.Empl_Start_Date, tbl_Employees.Empl_BDate, tbl_Departments.Dept_Name, tbl_Lookups.Title_Name FROM tbl_Employees INNER JOIN tbl_Departments ON tbl_Employees.Dept_ID = tbl_Departments.Dept_ID INNER JOIN tbl_Lookups ON tbl_Employees.Title_ID = tbl_Lookups.LK_ID WHERE (tbl_Employees.Dept_ID = @Dept_ID)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Dept_ID" PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Dept_ID], [Dept_Name] FROM [tbl_Departments]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="Button2" runat="server" Text="Formu Kapat" Width="109px" OnClick="Button2_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
