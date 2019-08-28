<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebformsMuc2019CS.Modul05.WebForm2" %>
<%@ Import Namespace="Microsoft.AspNet.FriendlyUrls" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" Method="post">
        <div><input name="Text1" type="text" /><br />
            <input name="Submit1" type="submit" value="submit" />
        </div>
    </form>
    <%=MyProperty %>
    <hr />
   <%= Request.QueryString["id"]%><br />
    <%=Request.GetFriendlyUrlSegments().FirstOrDefault() %>
    <img src="flyingtoaster.gif" />
    <a href="<%:FriendlyUrl.Href("~/Modul05/webform2","Hannes","Preishuber") %>">Link</a>
</body>
</html>
