<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yorumlar.aspx.cs" Inherits="Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            text-align: right;
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
                    <asp:Button ID="Button2" runat="server" Height="30px" Text="-" Width="30px" CssClass="auto-style19" OnClick="Button2_Click"  />
                    </strong></td>
                <td class="auto-style21">ONAYLANAN YORUM LİSTESİ</td>
            </tr>
        </table>
        <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList2" runat="server" Width="448px">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style5" style="border-bottom-style: inset; border-bottom-width: thin; border-bottom-color: #000000">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <a href="YorumDetay.aspx?Yorumid=<%# Eval("Yorumid") %>"><asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/Resimler/update.png" />
                            </a></td>
                            <td class="auto-style6">
                                <a href ="YorumDetay.aspx?Yorumid=<%# Eval("Yorumid") %>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/delete.png" /></a>
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
                <td class="auto-style20"><strong>
                    <asp:Button ID="Button3" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"  />
                    </strong></td>
                <td class="auto-style23"><strong>
                    <asp:Button ID="Button4" runat="server" Height="30px" Text="-" Width="30px" CssClass="auto-style19" OnClick="Button4_Click"  />
                    </strong></td>
                <td class="auto-style21">ONAYLANMAYAN YORUM LİSTESİ</td>
            </tr>
        </table>
        <asp:Panel ID="Panel4" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="448px">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style5" style="border-bottom-style: inset; border-bottom-width: thin; border-bottom-color: #000000">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <a href="YorumDetay.aspx?Yorumid=<%# Eval("Yorumid") %>"><asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/Resimler/update.png" />
                            </a></td>
                            <td class="auto-style6">
                                <a href ="YorumDetay.aspx?Yorumid=<%# Eval("Yorumid") %>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/delete.png" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </asp:Panel>
</asp:Content>

