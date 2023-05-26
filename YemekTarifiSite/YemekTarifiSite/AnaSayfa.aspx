<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="AnaSayfa.aspx.cs" Inherits="AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            background-color: #FFFFFF;
        }
        .auto-style6 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">


                      <a href ="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid") %>">  <asp:Label ID="Label3" runat="server" BackColor="White" CssClass="auto-style4" Text='<%# Eval("YemekAd") %>'></asp:Label>
                          </a>


                    </td>
                </tr>
                <tr>
                    <td>Malzemeler:<asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Yemek Tarifi:<asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Eklenme Tarihi: <strong>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>' CssClass="auto-style6"></asp:Label>
                        </strong>- Puan: <strong>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekPuan") %>' CssClass="auto-style6"></asp:Label>
                        </strong>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("Kategoriid") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

