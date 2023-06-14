<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Forms.aspx.cs" Inherits="Web_OguzhanKarakus.Forms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="w-100">
        <tr>
            <td style="width: 274px">&nbsp;</td>
            <td class="text-center" colspan="2" style="font-size: large"><strong>PMTP FORMLAR</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 274px">&nbsp;</td>
            <td class="text-start" colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 274px">&nbsp;</td>
            <td style="width: 522px">&nbsp;</td>
            <td style="width: 153px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 274px">&nbsp;</td>
            <td style="width: 522px">
                <asp:Button ID="Button1" runat="server" style="margin-left: 105" Text="Personel Giriş Formu" Width="276px" PostBackUrl="~/frm_EmployeeDataEntry.aspx" />
            </td>
            <td style="width: 153px">
                <asp:Button ID="Button2" runat="server" Text="Maaş Veri Giriş Formu" Width="272px" PostBackUrl="~/frm_WageDataEntry.aspx" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 274px">&nbsp;</td>
            <td style="width: 522px">&nbsp;</td>
            <td style="width: 153px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 274px">&nbsp;</td>
            <td style="width: 522px">
                <asp:Button ID="Button3" runat="server" style="margin-left: 105" Text="Personel Veri Güncelleme Formu" Width="276px" PostBackUrl="~/frm_EmployeeUpdate.aspx" />
            </td>
            <td style="width: 153px">
                <asp:Button ID="Button4" runat="server" Text="Maaş Veri Güncelleme Formu" Width="272px" PostBackUrl="~/frm_WageDataUpdate.aspx" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 274px">&nbsp;</td>
            <td style="width: 522px">&nbsp;</td>
            <td style="width: 153px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 274px">&nbsp;</td>
            <td class="text-center" colspan="2">
                <asp:Button ID="Button5" runat="server" PostBackUrl="~/frm_DeparmentDataEntryUpdate.aspx" Text="Bölüm Veri Giriş Formu" Width="224px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
