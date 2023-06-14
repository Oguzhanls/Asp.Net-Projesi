<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rpt_EmployeeComList.aspx.cs" Inherits="Web_OguzhanKarakus.rpt_EmployeeComList1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="4"><strong>Personel İletişim Raporu</strong></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" rowspan="3">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Empl_ID" DataSourceID="SqlDataSource1" Height="279px" Width="322px">
                            <Columns>
                                <asp:BoundField DataField="Empl_ID" HeaderText="Empl_ID" InsertVisible="False" ReadOnly="True" SortExpression="Empl_ID" />
                                <asp:BoundField DataField="Empl_Name" HeaderText="Empl_Name" ReadOnly="True" SortExpression="Empl_Name" />
                                <asp:BoundField DataField="Empl_Start_Date" HeaderText="Empl_Start_Date" SortExpression="Empl_Start_Date" />
                                <asp:BoundField DataField="Empl_Cell" HeaderText="Empl_Cell" SortExpression="Empl_Cell" />
                                <asp:BoundField DataField="Empl_Email" HeaderText="Empl_Email" SortExpression="Empl_Email" />
                                <asp:BoundField DataField="Empl_City" HeaderText="Empl_City" SortExpression="Empl_City" />
                                <asp:BoundField DataField="Title_Name" HeaderText="Title_Name" SortExpression="Title_Name" />
                                <asp:BoundField DataField="Dept_Name" HeaderText="Dept_Name" SortExpression="Dept_Name" />
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
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Formu Kapat" Width="109px" OnClick="Button2_Click" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT * FROM [vw_EmployeeComList]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
