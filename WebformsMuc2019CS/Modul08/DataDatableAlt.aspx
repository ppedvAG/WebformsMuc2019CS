<%@ Page Title="" Language="C#" 
    
    MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataDatableAlt.aspx.cs" Inherits="WebformsMuc2019CS.Modul07.DataDatableAlt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <ul>
        <asp:Listview ID="ListView1" runat="server" DataKeyNames="CustomerID" 
            OnItemCommand="ListView1_ItemCommand">
            <ItemTemplate>
                <li><%#Eval("ContactName") %> <asp:Button ID="Button1" runat="server" Text="del" 
                    CommandArgument='<%# Container.DataItemIndex %>'
                    CommandName="hannes" /></li>

            </ItemTemplate>
        </asp:Listview>
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptPlaceHolder1" runat="server">
</asp:Content>
