<%@ Page Language="C#" AutoEventWireup="true"
    EnableViewState= "false" 
    CodeBehind="WebForm1.aspx.cs" Inherits="WebformsMuc2019CS.modul02.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Button" UseSubmitBehavior="false" />
        </div>
      
    </form>
    <script runat="server">
        void test()
        {

        }
    </script>
</body>
</html>
