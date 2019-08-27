<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebformsMuc2019CS.Modul04.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <th>Monat Name</th>

            </tr>
             <%foreach (var item in monate)
             {%>
            <tr>
                <td><%=item %></td>
             
            </tr>

             <%} %>

        </table>
  
    </form>
</body>
</html>
