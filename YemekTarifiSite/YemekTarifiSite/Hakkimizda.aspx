<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style6 {
            width: 450px;
            height: 169px;
            margin-top: 0px;
        }
        .auto-style7 {
            margin-left: 40px;
        }
        .auto-style8 {
            margin-left: 80px;
        }
        .auto-style9 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style7">
        <strong class="auto-style8"><span class="auto-style5">Hakkımızda</span></strong></p>
    <div class="auto-style9">
    <asp:DataList ID="DataList2" runat="server" Width="447px">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    </div>
    <br />
    <img class="auto-style6" src="Resimler/Team.png" />
</asp:Content>

