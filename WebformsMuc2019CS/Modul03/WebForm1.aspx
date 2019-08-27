<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="WebForm1.aspx.cs" Inherits="WebformsMuc2019CS.Modul03.WebForm1"
  
    %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
     .red {
         background-color:red;
     }
    </style>
</head>
<body>
    <form id="form1" runat="server" autocomplete="on">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                <asp:TextBox ID="txtemail" runat="server"
                    
                    class="red" hannes="preishuebr"
                    AutoCompleteType="Email"></asp:TextBox></asp:Panel>
        </div>
        <script>
            document.getElementById('<%=txtemail.ClientID %>').value = "Hannes";
        </script>
        
    </form>
</body>
</html>
