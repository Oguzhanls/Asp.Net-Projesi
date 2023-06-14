<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rpt_WagesByEmployee.aspx.cs" Inherits="Web_OguzhanKarakus.rpt_WagesByEmployee" %>

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
            text-align: center;
            font-size: large;
        }
        .auto-style3 {
            width: 306px;
        }
        .auto-style4 {
            width: 306px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="4"><strong>Personele Göre Maaşlar Raporu</strong></td>
                </tr>
                <tr>
                    <td class="auto-style4">Personel Seçiniz:</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Empl_Name" DataValueField="Empl_ID" Width="174px" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" rowspan="4">
                        <asp:GridView ID="GridView1" runat="server" Width="318px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Wage_ID" DataSourceID="SqlDataSource2">
                            <Columns>
                                <asp:BoundField DataField="Wage_ID" HeaderText="Wage_ID" InsertVisible="False" ReadOnly="True" SortExpression="Wage_ID" />
                                <asp:BoundField DataField="Wage_Date" HeaderText="Wage_Date" SortExpression="Wage_Date" />
                                <asp:BoundField DataField="Wage_Amount" HeaderText="Wage_Amount" SortExpression="Wage_Amount" />
                                <asp:BoundField DataField="Wage_Commission" HeaderText="Wage_Commission" SortExpression="Wage_Commission" />
                                <asp:BoundField DataField="Month_Name" HeaderText="Month_Name" SortExpression="Month_Name" />
                            </Columns>
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
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Formu Kapat" Width="109px" OnClick="Button2_Click" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Empl_ID], [Empl_Name] FROM [tbl_Employees]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT tbl_EmployeeWages.Wage_ID, tbl_EmployeeWages.Wage_Date, tbl_EmployeeWages.Wage_Amount, tbl_EmployeeWages.Wage_Commission, tbl_Lookups.Month_Name FROM tbl_EmployeeWages INNER JOIN tbl_Lookups ON tbl_EmployeeWages.Month_ID = tbl_Lookups.LK_ID WHERE (tbl_EmployeeWages.Empl_ID = @Empl_ID)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Empl_ID" PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
