<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebformsMuc2019CS.modul02.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Calculator</h1>
        <div>
            <asp:TextBox ID="txtEins" runat="server">
                
            </asp:TextBox><br /><asp:TextBox ID="txtZwei" runat="server"></asp:TextBox><br />
            <asp:Button ID="btnAdd" runat="server" Text="+"  OnClick="btnAdd_Click"/>
            <asp:Button ID="btnMinus" runat="server" Text="-" OnClick="btnMinus_Click" />
<hr />
            <asp:Label ID="lblResult" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
