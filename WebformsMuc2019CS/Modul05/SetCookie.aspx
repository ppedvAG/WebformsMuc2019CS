﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetCookie.aspx.cs" Inherits="WebformsMuc2019CS.Modul05.SetCookie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <%=Request.Cookies["eins"].Value %>
        </div>
    </form>
</body>
</html>
<%--  --%>