<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Kullanici.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style5 {
            height: 29px;
            margin-left: 40px;
        }
        .auto-style6 {
            text-align: right;
        }
        .auto-style7 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style8 {
            text-align: right;
            height: 29px;
        }
        .auto-style9 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
        .auto-style10 {
            margin-left: 63px;
        }
        .auto-style11 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style7" colspan="2"><strong><em>MESAJ PANELİ</em></strong></td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style6">Ad Soyad:</td>
            <td>
                <asp:TextBox ID="TextAdSoyad" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Mail adresiniz:</td>
            <td>
                <asp:TextBox ID="TextMail" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Mesaj konu</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextMesajKonu" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Mesaj içerik</td>
            <td>
                <asp:TextBox ID="TextMesajIcerik" runat="server" TextMode="MultiLine" Width="256px" CssClass="auto-style9" Height="69px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:Button ID="Gonder" runat="server" Text="Gönder" CssClass="auto-style10" Height="38px" OnClick="Gonder_Click" Width="126px" />
            </td>
        </tr>
    </table>
</asp:Content>

