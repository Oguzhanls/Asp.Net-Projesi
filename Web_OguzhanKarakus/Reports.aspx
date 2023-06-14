<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="Web_OguzhanKarakus.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="w-100">
    <tr>
        <td class="text-center" colspan="4" style="font-size: large"><strong>PMTP Raporlar</strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 597px">
            <asp:Button ID="Button1" runat="server" Text="Bölüme Göre Personel Listesi" Width="275px" PostBackUrl="~/rpt_DepartmentByEmployees.aspx" />
        </td>
        <td style="width: 296px">
            <asp:Button ID="Button2" runat="server" Text="Personele Göre Maaş Listesi" Width="275px" PostBackUrl="~/rpt_WagesByEmployee.aspx" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 597px">&nbsp;</td>
        <td style="width: 296px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 597px">
            <asp:Button ID="Button3" runat="server" Text="Personele Göre Yıllık Maaş Grafiği" Width="298px" PostBackUrl="~/rpt_WageTotalGraph.aspx" />
        </td>
        <td style="width: 296px">
            <asp:Button ID="Button4" runat="server" Text="Personel İletişim Raporu" Width="275px" PostBackUrl="~/rpt_EmployeeComList.aspx" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 597px">&nbsp;</td>
        <td style="width: 296px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 597px">&nbsp;</td>
        <td style="width: 296px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 597px">&nbsp;</td>
        <td style="width: 296px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 597px">&nbsp;</td>
        <td style="width: 296px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
