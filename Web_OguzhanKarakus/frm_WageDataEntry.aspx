<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_WageDataEntry.aspx.cs" Inherits="Web_OguzhanKarakus.frm_WageDataEntry" %>

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
            height: 18px;
            font-size: large;
        }
        .auto-style3 {
            width: 219px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="4"><strong>Personel Maaş Veri Giriş Formu</strong></td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Personel Adı:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Empl_Name" DataValueField="Empl_ID" Width="194px">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Tarih:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Maaş Tutarı:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Maaş Komisyonu:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Maaş Ayı:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Month_Name" DataValueField="LK_ID" Width="194px">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kaydet" Width="186px" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" ForeColor="#FF3300" Text="Label" Visible="False"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
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
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [LK_ID], [Month_Name] FROM [tbl_Lookups]"></asp:SqlDataSource>
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" InsertCommand="INSERT INTO tbl_EmployeeWages(Empl_ID, Wage_Amount, Wage_Date, Wage_Commission, Month_ID) VALUES (@Empl_ID, @Wage_Amount, @Wage_Date, @Wage_Commission, @Month_ID)" SelectCommand="SELECT * FROM [tbl_EmployeeWages]">
                            <InsertParameters>
                                <asp:Parameter Name="Empl_ID" />
                                <asp:Parameter Name="Wage_Amount" />
                                <asp:Parameter Name="Wage_Date" />
                                <asp:Parameter Name="Wage_Commission" />
                                <asp:Parameter Name="Month_ID" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
