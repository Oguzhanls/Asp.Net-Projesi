<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_EmployeeUpdate.aspx.cs" Inherits="Web_OguzhanKarakus.frm_EmployeeUpdate" %>

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
            width: 155px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="4"><strong>Personel Veri Güncelleme</strong></td>
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
                    <td colspan="2" rowspan="2">
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Empl_ID" DataSourceID="SqlDataSource2" Height="123px" Width="241px" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                            <Fields>
                                <asp:BoundField DataField="Empl_ID" HeaderText="Empl_ID" InsertVisible="False" ReadOnly="True" SortExpression="Empl_ID" />
                                <asp:BoundField DataField="Empl_FName" HeaderText="Adı:" SortExpression="Empl_FName" />
                                <asp:BoundField DataField="Empl_LName" HeaderText="Soyadı:" SortExpression="Empl_LName" />
                                <asp:BoundField DataField="Empl_BDate" HeaderText="D.Tarihi:" SortExpression="Empl_BDate" />
                                <asp:CheckBoxField DataField="Is_Empl_Active" HeaderText="Aktif mi?" SortExpression="Is_Empl_Active" />
                                <asp:BoundField DataField="Empl_Start_Date" HeaderText="İşe Başlangıç:" SortExpression="Empl_Start_Date" />
                                <asp:BoundField DataField="Empl_Cell" HeaderText="Telefonu:" SortExpression="Empl_Cell" />
                                <asp:BoundField DataField="Empl_Email" HeaderText="Mail Adresi:" SortExpression="Empl_Email" />
                                <asp:BoundField DataField="Empl_Name" HeaderText="Empl_Name" ReadOnly="True" SortExpression="Empl_Name" />
                                <asp:BoundField DataField="Empl_City" HeaderText="Empl_City" SortExpression="Empl_City" />
                                <asp:BoundField DataField="Empl_Province" HeaderText="İl" SortExpression="Empl_Province" />
                                <asp:BoundField DataField="Empl_Address" HeaderText="Adres" SortExpression="Empl_Address" />
                                <asp:BoundField DataField="Title_ID" HeaderText="Ünvan" SortExpression="Title_ID" />
                                <asp:BoundField DataField="Gender_ID" HeaderText="Cinsiyet" SortExpression="Gender_ID" />
                                <asp:BoundField DataField="Dept_ID" HeaderText="Departman" SortExpression="Dept_ID" />
                                <asp:CommandField ShowEditButton="True" />
                            </Fields>
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                        </asp:DetailsView>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Empl_ID], [Empl_Name] FROM [tbl_Employees]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Empl_ID], [Empl_FName], [Empl_LName], [Empl_BDate], [Is_Empl_Active], [Empl_Start_Date], [Empl_Cell], [Empl_Email], [Empl_Name], [Empl_City], [Empl_Province], [Empl_Address], [Title_ID], [Gender_ID], [Dept_ID] FROM [tbl_Employees] WHERE Empl_ID=@Empl_ID" UpdateCommand="UPDATE tbl_Employees SET Empl_FName = @Empl_FName, Empl_LName = @Empl_LName, Empl_Start_Date = @Empl_Start_Date, Gender_ID = @Gender_ID, Dept_ID = @Dept_ID, Title_ID = @Title_ID, Empl_Province = @Empl_Province, Empl_City = @Empl_City, Empl_Cell = @Empl_Cell WHERE Empl_ID = @Empl_ID">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Empl_ID" PropertyName="SelectedValue" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Empl_FName" />
                                <asp:Parameter Name="Empl_LName" />
                                <asp:Parameter Name="Empl_Start_Date" />
                                <asp:Parameter Name="Gender_ID" />
                                <asp:Parameter Name="Dept_ID" />
                                <asp:Parameter Name="Title_ID" />
                                <asp:Parameter Name="Empl_Province" />
                                <asp:Parameter Name="Empl_City" />
                                <asp:Parameter Name="Empl_Cell" />
                                <asp:Parameter Name="Empl_ID" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
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
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
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
