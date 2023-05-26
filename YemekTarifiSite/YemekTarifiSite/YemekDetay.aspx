<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Kullanici.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style5 {
            font-size: xx-large;
        }
        .auto-style6 {
            width: 117px;
            text-align: right;
        }
        .auto-style8 {
            width: 117px;
            height: 34px;
        }
        .auto-style9 {
            height: 34px;
        }
        .auto-style10 {
            width: 117px;
            height: 34px;
            text-align: right;
        }
        .auto-style11 {
            margin-left: 40px;
        }
        .auto-style12 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
        .auto-style13 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            margin-left: 53px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text="Label"></asp:Label>
    <br />
    <br />
    <span class="auto-style4">Sende yorum yapmak ister misin</span><table class="auto-style1">
        <tr>
            <td class="auto-style6">İsim Soyisim:</td>
            <td class="auto-style11">
                <asp:TextBox ID="TextIsim" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Mail:</td>
            <td>
                <asp:TextBox ID="TextMail" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">    <strong>
                Yorum:</strong></td>
            <td class="auto-style9">    <strong>
                <asp:TextBox ID="TextYorum" runat="server" Height="95px" TextMode="MultiLine" Width="253px" CssClass="auto-style12"></asp:TextBox>
    </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">    <strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Height="30px" OnClick="Button1_Click" Text="Paylaş" Width="126px" />
    </strong>
            </td>
        </tr>
    </table>
    <span class="auto-style4">Yorumlar</span><asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>Ad:</strong><asp:Label ID="Label4" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <strong>
                <tr>
                    <td>Yorum:<strong><asp:Label ID="Label5" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin; border-bottom-color: #000000"><strong>Tarih:<asp:Label ID="Label6" runat="server" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        </strong></td>
                </tr>
                </strong>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

