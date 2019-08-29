<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="KundenListe.aspx.cs" Inherits="WebformsMuc2019CS.Modul09.KundenListe" %>
<%@ Import Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="list-group">
    <asp:Repeater ID="rptKunden" runat="server" ItemType="WebformsMuc2019CS.Modul09.Customers" SelectMethod="rptKunden_GetData">
        <ItemTemplate>
            <div class="list-group-item">
            <a href="<%# FriendlyUrl.Href("~/Modul09/KundenEdit",Item.CustomerID) %>" >
                <%#Item.ContactName %>
            </a>
            <span class="badge badge-primary float-right"><%# Item.Orders.Count %></span>
</div>
        </ItemTemplate>

    </asp:Repeater></div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptPlaceHolder1" runat="server">
</asp:Content>
