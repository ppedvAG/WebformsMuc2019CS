<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebformsMuc2019CS.Modul08.WebForm2" %>
<%@ Import Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString1 %>"
        EnableCaching="true" CacheDuration="60"
        SelectCommand="SELECT CustomerID, [CompanyName], [ContactName], [City] FROM [Customers]"></asp:SqlDataSource>
    <div class="list-group">
        <div class="list-group-item active">
            <h3>Kunden</h3>
        </div>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

            <ItemTemplate>
                <a href='<%#FriendlyUrl.Href("~/Modul08/EditCustomer",Eval("CustomerID")) %>' 
                    class="list-group-item list-group-item-action">
                    <h3><%#Eval("CompanyName") %></h3>
                    <p><%#Eval("ContactName") %>, <%#Eval("City") %></p>
                </a>
            </ItemTemplate>
        </asp:Repeater>
    </div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptPlaceHolder1" runat="server">
</asp:Content>
