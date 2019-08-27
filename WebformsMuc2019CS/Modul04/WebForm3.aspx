<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebformsMuc2019CS.Modul04.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>my simple todo</h1>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button"  OnClick="Button1_Click"/>
            <hr />
            <ul>
            <%for (int i = 0; i < ToDoListe.Count(); i++)
                {%>
                <li><%=ToDoListe[i] %></li>
               <% } %></ul>
        </div>
    </form>
</body>
</html>
