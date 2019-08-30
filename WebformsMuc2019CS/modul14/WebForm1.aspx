<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebformsMuc2019CS.modul14.WebForm1" %>
<%@ OutputCache Duration="5" VaryByParam="none"  %>
<%@ Register Src="~/modul14/cachedcontrol.ascx" TagPrefix="uc1" TagName="cachedcontrol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%=DateTime.Now %>
        </div>
        <hr />
        <uc1:cachedcontrol runat="server" id="cachedcontrol" />
        <hr />
        <asp:Substitution ID="Substitution1" runat="server"  MethodName="immeraktuell"/>

    </form>
</body>
</html>
