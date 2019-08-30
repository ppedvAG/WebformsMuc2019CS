<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebformsMuc2019CS.modul16.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col">
            <h1>Thumbnail Gallerie</h1>
        </div>
    </div>
    <div class="row">




        <asp:Repeater ID="Repeater1" runat="server" ItemType="System.String" SelectMethod="Repeater1_GetData">
            <ItemTemplate>
                <div class="col">
                    <a href="/modul16/bilder/<%#Item %>">
                        <img src="thumbnail.ashx?img=<%#Item %>" />
                    </a>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptPlaceHolder1" runat="server">
</asp:Content>
