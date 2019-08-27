<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebformsMuc2019CS.Modul03.WebForm4" %>
<%@ Import Namespace="System.Globalization" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <ul>
            <%for (int i = 1; i <= 12; i++)
                {%>
                   <li><%=CultureInfo.CurrentCulture.DateTimeFormat.GetMonthName(i) %></li>

              <%  } %>

            </ul>
             <select>
            <%for (int i = 1; i <= 12; i++)
                {%>
                   <option value='<%=i%>'>
                       <%=CultureInfo.CurrentCulture.DateTimeFormat.GetMonthName(i) %></option>

              <%  } %>

            </select>
             <%for (int i = 1; i <= 12; i++)
                {%>
                   <input type="radio"  name="auswahl"
                       value='<%=CultureInfo.CurrentCulture.DateTimeFormat.GetMonthName(i) %>' />
            <%=CultureInfo.CurrentCulture.DateTimeFormat.GetMonthName(i) %> <br />

              <%  } %>
        </div>
    </form>

</body>
</html>
