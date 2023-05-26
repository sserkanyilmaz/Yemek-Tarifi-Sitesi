<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Tarifler.aspx.cs" Inherits="Tarifler" %>

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
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style19" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style21">ONAYSIZ TARİF LİSTESİ</td>
            </tr>
        </table>
        <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList2" runat="server" Width="448px">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style5" style="border-bottom-style: inset; border-bottom-width: thin; border-bottom-color: #000000">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <a href ="TarifOneriDetay.aspx?Tarifid=<%#Eval("Tarifid") %>"><asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/Resimler/secim.png" />
                                </a></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style1" style="margin-top:20px">
            <tr>
                <td class="auto-style20"><strong>
                    <asp:Button ID="Button3" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                    </strong></td>
                <td class="auto-style23"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style19" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"  />
                    </strong></td>
                <td class="auto-style21">ONAYLI TARİF LİSTESİ</td>
            </tr>
        </table>
        <asp:Panel ID="Panel4" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="448px">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style5" style="border-bottom-style: inset; border-bottom-width: thin; border-bottom-color: #000000">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <a href ="TarifOneriDetay.aspx?Tarifid=<%#Eval("Tarifid") %>"><asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/Resimler/secim.png" />
                                </a></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </asp:Panel>
</asp:Content>

