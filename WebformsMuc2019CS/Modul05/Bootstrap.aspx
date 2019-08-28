<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bootstrap.aspx.cs" Inherits="WebformsMuc2019CS.Modul05.Bootstrap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="form-group">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="col">
                    <asp:Button ID="Button1" runat="server" Text="Button" class="btn btn-outline-danger" />
                </div>
            </div>
        </div>

    </form>
    <script src="../Scripts/jquery-3.4.1.js"></script>
    <script src="../Scripts/bootstrap.js"></script>
</body>
</html>
