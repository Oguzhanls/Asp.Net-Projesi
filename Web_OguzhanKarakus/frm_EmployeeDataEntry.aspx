<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_EmployeeDataEntry.aspx.cs" Inherits="Web_OguzhanKarakus.frm_EmployeeDataEntry" %>

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
            font-size: x-large;
        }
        .auto-style5 {
            width: 315px;
        }
        .auto-style6 {
            width: 144px;
        }
        .auto-style7 {
            margin-left: 0px;
        }
        .auto-style8 {
            width: 142px;
        }
        .auto-style9 {
            width: 689px;
        }
        .auto-style10 {
            width: 668px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="4"><strong>Personel Veri Giriş Formu</strong></td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="4">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Adı:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style7" Width="184px"></asp:TextBox>
                    </td>
                    <td class="auto-style8">Soyadı:</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TextBox2" runat="server" Width="197px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">Aktif mi?
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Cinsiyeti:</td>
                    <td class="auto-style5">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" BorderStyle="None" RepeatLayout="Flow" Width="183px">
                            <asp:ListItem Value="1">Erkek</asp:ListItem>
                            <asp:ListItem Value="2">Kadın</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style8">Doğum Tarihi:</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TextBox3" runat="server" Width="196px" TextMode="Date"></asp:TextBox>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Ünvanı:</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="160px" DataSourceID="SqlDataSource2" DataTextField="Title_Name" DataValueField="LK_ID">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style8">Bölümü:</td>
                    <td class="auto-style10">
                        <asp:DropDownList ID="DropDownList2" runat="server" Width="201px" DataSourceID="SqlDataSource3" DataTextField="Dept_Name" DataValueField="Dept_ID">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">İşe Giriş Tarihi:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style7" Width="184px" TextMode="Date"></asp:TextBox>
                    </td>
                    <td class="auto-style8">İş Tel:</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TextBox5" runat="server" Width="196px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Cep Tel:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox6" runat="server" Width="197px"></asp:TextBox>
                    </td>
                    <td class="auto-style8">Email:</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TextBox7" runat="server" Width="197px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Adresi:</td>
                    <td colspan="3">
                        <asp:TextBox ID="TextBox8" runat="server" CssClass="auto-style7" Width="727px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">İlçesi:</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList3" runat="server" Width="160px" DataSourceID="SqlDataSource4" DataTextField="City_Name" DataValueField="City_Name">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style8">İli:</td>
                    <td class="auto-style10">
                        <asp:DropDownList ID="DropDownList4" runat="server" Width="160px" DataSourceID="SqlDataSource5" DataTextField="Province_Name" DataValueField="Province_Name">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server" Text="Sonuc:"></asp:Label>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:Button ID="Button1" runat="server" Text="Verileri Kaydet" Width="122px" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Formu Kapat" Width="109px" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" InsertCommand="INSERT INTO tbl_Employees(Empl_FName, Empl_LName, Empl_BDate, Empl_Start_Date, Is_Empl_Active, Empl_Cell, Empl_Email, Empl_City, Empl_Province, Empl_Address, Title_ID, Gender_ID, Dept_ID, Empl_Phone) VALUES (@Empl_FName, @Empl_LName, @Empl_BDate, @Empl_Start_Date, @Is_Empl_Active, @Empl_Cell, @Empl_Email, @Empl_City, @Empl_Province, @Empl_Address, @Title_ID, @Gender_ID, @Dept_ID, @Empl_Phone)" SelectCommand="SELECT [Empl_ID], [Empl_FName], [Empl_LName], [Empl_BDate], [Is_Empl_Active], [Empl_Start_Date], [Empl_Cell], [Empl_Phone], [Empl_Email], [Empl_City], [Empl_Province], [Empl_Address], [Title_ID], [Gender_ID], [Dept_ID], [Empl_Name] FROM [tbl_Employees]">
                            <InsertParameters>
                                <asp:Parameter Name="Empl_FName" />
                                <asp:Parameter Name="Empl_LName" />
                                <asp:Parameter Name="Empl_BDate" />
                                <asp:Parameter Name="Empl_Start_Date" />
                                <asp:Parameter Name="Is_Empl_Active" />
                                <asp:Parameter Name="Empl_Cell" />
                                <asp:Parameter Name="Empl_Email" />
                                <asp:Parameter Name="Empl_City" />
                                <asp:Parameter Name="Empl_Province" />
                                <asp:Parameter Name="Empl_Address" />
                                <asp:Parameter Name="Title_ID" />
                                <asp:Parameter Name="Gender_ID" />
                                <asp:Parameter Name="Dept_ID" />
                                <asp:Parameter Name="Empl_Phone" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style8">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>"  ProviderName="<%$ ConnectionStrings:con_PMTP.ProviderName %>" SelectCommand="SELECT [LK_ID], [Title_Name] FROM [tbl_Lookups]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style10">
                        &nbsp;<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>"  SelectCommand="SELECT [Dept_ID], [Dept_Name] FROM [tbl_Departments]"></asp:SqlDataSource>
                        &nbsp;</td>
                    <td class="auto-style9">
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [City_Name] FROM [tbl_Lookups]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>"  SelectCommand="SELECT [Province_Name] FROM [tbl_Lookups]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10">
                        &nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
