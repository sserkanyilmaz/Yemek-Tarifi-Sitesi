<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yemekler.aspx.cs" Inherits="Yemekler" %>

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
        .auto-style26 {
            text-align: left;
        }
        .auto-style27 {
            margin-left: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style20"><strong>
                    <asp:Button ID="Button1" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style23"><strong>
                    <asp:Button ID="Button2" runat="server" Height="30px" Text="-" Width="30px" CssClass="auto-style19" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style21">YEMEK LİSTESİ</td>
            </tr>
        </table>
        <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList2" runat="server" Width="448px">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style5" style="border-bottom-style: inset; border-bottom-width: thin; border-bottom-color: #000000">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <a href="YemekDuzenle.aspx?Yemekid=<%# Eval("Yemekid") %>"><asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/Resimler/update.png" />
                            </a></td>
                            <td class="auto-style7">
                                <a href ="Yemekler.aspx?Yemekid=<%#Eval("Yemekid") %>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/delete.png" /></a>
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
                    <asp:Button ID="Button6" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button6_Click" />
                </td>
                <td class="auto-style25">
                    <asp:Button ID="Button7" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button7_Click" />
                </td>
                <td class="auto-style10">YEMEK EKLEME</td>
            </tr>
        </table>
        <asp:Panel ID="Panel4" runat="server">

            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">Yemek Ad:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style16" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Malzemeler:</td>
                    <td class="auto-style26">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style16" Height="118px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Yemek Tarifi:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style16" Height="140px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Kategori:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style27" Width="300px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" colspan="2">
                        <asp:Button ID="Button_ekle" runat="server" CssClass="auto-style15" Height="50px" Text="Ekle" Width="100px" OnClick="Button_ekle_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12" colspan="2">&nbsp;</td>
                </tr>
            </table>

        </asp:Panel>
    </asp:Panel>
</asp:Content>

