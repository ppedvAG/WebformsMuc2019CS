<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserCounter.aspx.cs" Inherits="WebformsMuc2019CS.Modul05.UserCounter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Anzahl User</h1>
        <div>
           <%=Application["users"]%>
        </div>
    </form>
</body>
</html>
