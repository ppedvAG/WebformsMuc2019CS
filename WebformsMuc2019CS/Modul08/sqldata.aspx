<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="sqldata.aspx.cs" Inherits="WebformsMuc2019CS.Modul08.sqldata" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <ul class="list-group">
        <asp:ListView ID="ListViewCity" runat="server" DataKeyNames="City" OnItemDataBound="ListViewCity_ItemDataBound">
            <ItemTemplate>
                <li class="list-group-item">
                    <h2><%#Eval("City") %></h2>
                    <span class="badge badge-primary float-right">
                        <%#Eval("Anzahl") %></span>
                    <ul>
                        <asp:Repeater ID="rptKunden" runat="server">
                            <ItemTemplate>
                                <li> <%# Container.DataItem?.ToString() ?? string.Empty%></li>
                            </ItemTemplate>
                        </asp:Repeater>

                    </ul>
                </li>
            </ItemTemplate>
        </asp:ListView>


    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptPlaceHolder1" runat="server">
</asp:Content>
