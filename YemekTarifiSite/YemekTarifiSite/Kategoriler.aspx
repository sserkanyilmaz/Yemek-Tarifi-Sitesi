<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            width: 182px;
        }
        .auto-style5 {
            width: 323px;
        }
        .auto-style6 {
            width: 58px;
            text-align: right;
        }
        .auto-style7 {
            text-align: right;
        }
        .auto-style12 {
            text-align: center;
        }
        .auto-style13 {
            width: 168px;
        }
        .auto-style15 {
            margin-left: 145px;
        }
        .auto-style16 {
            margin-left: 18px;
        }
        .auto-style19 {
            margin-left: 0px;
        }
        .auto-style20 {
            width: 30px;
        }
        .auto-style21 {
            width: 182px;
        }
        .auto-style22 {
            width: 3px;
        }
        .auto-style23 {
            width: 2px;
        }
        .auto-style25 {
            width: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style20"><strong>
                    <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                    </strong></td>
                <td class="auto-style23"><strong>
                    <asp:Button ID="Button2" runat="server" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" CssClass="auto-style19" />
                    </strong></td>
                <td class="auto-style21">KATEGORİ LİSTESİ</td>
            </tr>
        </table>
        <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList2" runat="server" Width="448px">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style5" style="border-bottom-style: inset; border-bottom-width: thin; border-bottom-color: #000000">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <a href="KategoriDuzenle.aspx?Kategoriid=<%# Eval("Kategoriid") %>"><asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/Resimler/update.png" />
                            </a></td>
                            <td class="auto-style7">
                                <a href ="Kategoriler.aspx?Kategoriid=<%#Eval("kategoriid") %>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/delete.png" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style22">
                    <asp:Button ID="Button6" runat="server" Height="30px" OnClick="Button6_Click" Text="+" Width="30px" />
                </td>
                <td class="auto-style25">
                    <asp:Button ID="Button7" runat="server" Height="30px" OnClick="Button7_Click" Text="-" Width="30px" />
                </td>
                <td class="auto-style10">KATEGORİ EKLEME</td>
            </tr>
        </table>
        <asp:Panel ID="Panel4" runat="server">

            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">Kategori Ad:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style16"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Kategori İkon:</td>
                    <td class="auto-style12">
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="240px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" colspan="2">
                        <asp:Button ID="Button_ekle" runat="server" CssClass="auto-style15" Height="50px" OnClick="Button5_Click" Text="Ekle" Width="100px" />
                    </td>
                </tr>
            </table>

        </asp:Panel>
    </asp:Panel>
</asp:Content>

