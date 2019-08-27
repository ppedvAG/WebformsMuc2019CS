<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebformsMuc2019CS.Modul04.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server"
                OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                AutoPostBack="True">
                <asp:ListItem Value="leer">auswählen</asp:ListItem>

            </asp:DropDownList>
            <br />
           sie haben gewählt: <asp:Label ID="Label1" runat="server" Text="auswahl leer"></asp:Label>
        <hr />
            <asp:DropDownList ID="DropDownList2" runat="server"  
                AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                 <asp:ListItem Value="leer">auswählen</asp:ListItem>
            </asp:DropDownList>
               sie haben gewählt: <asp:Label ID="Label2" runat="server" Text="auswahl leer"></asp:Label>

        </div>
    </form>
</body>
</html>
