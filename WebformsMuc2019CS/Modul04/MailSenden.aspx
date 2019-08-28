<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MailSenden.aspx.cs" Inherits="WebformsMuc2019CS.Modul04.MailSenden" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          was wollen Sie eigentlich (von mir)?<br />
            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Rows="5" Columns="40">

            </asp:TextBox>
            <asp:Button ID="btnSend" runat="server" Text="send"  OnClick="btnSend_Click"/>
            <div>dankesmeldung </div>
        </div>
    </form>
</body>
</html>
