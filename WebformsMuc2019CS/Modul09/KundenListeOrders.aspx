<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="KundenListeOrders.aspx.cs" Inherits="WebformsMuc2019CS.Modul09.KundenListeOrders" %>

<%@ Import Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="accordion" id="KundenOrders">
        <asp:Repeater ID="rptKunden" runat="server" ItemType="WebformsMuc2019CS.Modul09.Customers"
            SelectMethod="rptKunden_GetData">
            <ItemTemplate>
                <div class="card">
                    <div class="card-header" id="headingOne">
                        <a href="<%# FriendlyUrl.Href("~/Modul09/KundenEdit",Item.CustomerID) %>" class="float-left">
                            <h2 class="mb-0"><%#Item.ContactName %></h2>
                        </a>
                        <button class="badge badge-primary float-right" type="button"
                            data-toggle="collapse" data-target="#<%#Item.CustomerID %>"
                            aria-expanded="false">
                            <%# Item.Orders.Count %>
                        </button>
                    </div>
                    <div id="<%#Item.CustomerID %>" class="collapse hide"
                        data-parent="#KundenOrders">
                        <div class="card-body">
                            <ul>
                                <asp:Repeater ID="RptOrders" runat="server"
                                    DataSource="<%#Item.Orders %>"
                                    ItemType="WebformsMuc2019CS.Modul09.Orders">

                                    <ItemTemplate>
                                        <li><%#Item.OrderDate.Value.ToString("dd.MMM yyyy") %> <%#Item.Freight %></li>
                                    </ItemTemplate>

                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptPlaceHolder1" runat="server">
</asp:Content>
