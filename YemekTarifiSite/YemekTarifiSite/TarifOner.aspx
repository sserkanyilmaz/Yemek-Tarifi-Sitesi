<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Kullanici.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style5 {
            text-align: right;
            width: 108px;
        }
        .auto-style7 {
            text-align: right;
            height: 29px;
            width: 108px;
        }
        .auto-style8 {
            text-align: left;
            height: 29px;
            width: 308px;
        }
        .auto-style9 {
            text-align: left;
            width: 308px;
        }
        .auto-style11 {
            width: 100%;
            height: 354px;
        }
        .auto-style12 {
            width: 308px;
        }
        .auto-style13 {
            width: 108px;
        }
        .auto-style14 {
            width: 108px;
            height: 63px;
        }
        .auto-style15 {
            width: 308px;
            height: 63px;
        }
        .auto-style16 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            margin-left: 47px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style11">
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Tarif Ad:</td>
            <td class="auto-style9">
                <asp:TextBox ID="TxtTarifAd" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Malzemeler:</td>
            <td class="auto-style9">
                <asp:TextBox ID="TxtMalzemeler" runat="server" Width="250px" Height="80px" TextMode="MultiLine" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Yapılış:</td>
            <td class="auto-style9">
                <asp:TextBox ID="TxtYapilis" runat="server" Width="250px" Height="80px" TextMode="MultiLine" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Resim:</td>
            <td class="auto-style9">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Tarif öneren;</td>
            <td class="auto-style9">
                <asp:TextBox ID="TxtTarifOneren" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Mail adresi:</td>
            <td class="auto-style8">
                <asp:TextBox ID="TxtMailAdresi" runat="server" Width="250px" TextMode="Email" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style15">
                <asp:Button ID="BtnTarifÖner" runat="server" Text="Tarif Öner" CssClass="auto-style16" Height="40px" Width="150px" OnClick="BtnTarifÖner_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

