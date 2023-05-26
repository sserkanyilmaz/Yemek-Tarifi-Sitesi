<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YorumDetay.aspx.cs" Inherits="YorumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            height: 29px;
        }
        .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            height: 29px;
            text-align: right;
        }
        .auto-style11 {
            margin-left: 61px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Ad SoyAd:</strong></td>
            <td class="auto-style7">
                <asp:TextBox ID="TextAd" runat="server" Width="200px" Wrap="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Mail Adresi:</strong></td>
            <td>
                <asp:TextBox ID="TextMail" runat="server" Width="200px" Wrap="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>İçerik:</strong></td>
            <td>
                <asp:TextBox ID="TextIcerik" runat="server" Height="86px" TextMode="MultiLine" Width="202px" Wrap="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Yemek ismi</strong></td>
            <td>
                <asp:TextBox ID="TextYemek" runat="server" Width="200px" Wrap="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="ButtonOnayla" runat="server" CssClass="auto-style11" OnClick="ButtonOnayla_Click" Text="Onayla" />
            </td>
        </tr>
    </table>
</asp:Content>

