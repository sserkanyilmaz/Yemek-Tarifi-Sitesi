<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YemekDuzenle.aspx.cs" Inherits="YemekDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            margin-left: 40px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            height: 26px;
            text-align: right;
        }
        .auto-style10 {
            font-weight: bold;
        }
        .auto-style11 {
            margin-left: 40px;
            text-align: center;
        }
        .auto-style12 {
            margin-left: 40px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Yemek Ad:</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Yemek Malzemeler:</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Yemek Tarif:</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Kategori:</strong></td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Yemek Resim:</strong></td>
            <td class="auto-style12">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="302px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style11"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Height="43px" Text="Güncelle" Width="200px" OnClick="Button1_Click" />
                </strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style11"><strong>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style10" Height="43px" Text="Günün Yemeği yap" Width="200px" OnClick="Button2_Click"  />
                </strong></td>
        </tr>
    </table>
</asp:Content>

