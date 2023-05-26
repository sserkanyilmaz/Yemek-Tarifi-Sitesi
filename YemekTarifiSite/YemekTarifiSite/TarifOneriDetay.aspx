<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="TarifOneriDetay.aspx.cs" Inherits="TarifOneriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style6"><strong>Tarif Ad:</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextAd" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TextMalzemeler" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Yapılış:</strong></td>
            <td class="auto-style9"><strong>
                <asp:TextBox ID="TextYapilis" runat="server" CssClass="auto-style12" Height="95px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style8">Resim:</td>
            <td class="auto-style9">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="255px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Öneren</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextOneren" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Öneren mail:</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextOnerenMail" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Kategori:</td>
            <td class="auto-style9">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="256px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Height="30px" Text="Onayla" Width="126px" OnClick="Button1_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

