<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        font-size: x-large;
    }
        .auto-style6 {
            text-align: right;
        }
        .auto-style7 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <span class="auto-style5"><strong>İSİM:</strong></span><strong><asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text='<%# Eval("YemekAd") %>'></asp:Label>
        <br />
        <br />
        Malzemeler:<asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
        <br />
        <br />
        Tarif:<asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
        <br />
        <asp:Image ID="Image1" runat="server" Height="204px" Width="428px" ImageUrl='<%# Eval("YemekResim") %>' CssClass="auto-style7" />
        </strong>
        <table class="auto-style1">
            <tr>
                <td><strong>Puan:
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </strong></td>
                <td class="auto-style6"><strong>Tarih:<asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    </strong></td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

