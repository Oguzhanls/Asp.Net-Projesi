﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rpt_WageTotalGraph.aspx.cs" Inherits="Web_OguzhanKarakus.rpt_WageTotalGraph" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

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
            color: #FF0000;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="4"><strong>Maaş Toplam Grafiği:</strong></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td rowspan="3">
                        <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource1" Height="316px" Width="602px">
                            <series>
                                <asp:Series Name="Series1" XValueMember="Empl_Name" YValueMembers="WAmaount">
                                </asp:Series>
                            </series>
                            <chartareas>
                                <asp:ChartArea Name="ChartArea1">
                                </asp:ChartArea>
                            </chartareas>
                        </asp:Chart>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource1" Width="597px">
                            <Series>
                                <asp:Series Name="Series1" XValueMember="Wage_Year" YValueMembers="WAmaount">
                                </asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1">
                                </asp:ChartArea>
                            </ChartAreas>
                        </asp:Chart>
                    </td>
                    <td>&nbsp;</td>
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT SUM(tbl_EmployeeWages.Wage_Amount) AS WAmaount, tbl_Employees.Empl_Name, tbl_EmployeeWages.Wage_Year FROM tbl_EmployeeWages INNER JOIN tbl_Employees ON tbl_EmployeeWages.Empl_ID = tbl_Employees.Empl_ID GROUP BY tbl_Employees.Empl_Name, tbl_EmployeeWages.Wage_Year"></asp:SqlDataSource>
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
