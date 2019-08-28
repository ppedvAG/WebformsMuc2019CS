<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebformsMuc2019CS.Modul07.WebForm1" %>

<%@ Register Src="~/Modul07/WebUserControl1.ascx" TagPrefix="uc1" TagName="WebUserControl1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:WebUserControl1 runat="server" id="WebUserControl1" 
        Text="Hallo Welt" BackGroundColor="green" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptPlaceHolder1" runat="server">
</asp:Content>
