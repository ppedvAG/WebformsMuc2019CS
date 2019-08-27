<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebformsMuc2019CS.Modul03.WebForm2" %>

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
            <input id="Text1" type="text" runat="server" /><asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>

        </asp:DropDownList>
        <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#F7F6F3" />
            <DynamicSelectedStyle BackColor="#5D7B9D" />
            <Items>
                <asp:MenuItem Text="Neues Element" Value="Neues Element"></asp:MenuItem>
                <asp:MenuItem Text="Neues Element" Value="Neues Element">
                    <asp:MenuItem Text="Neues Element" Value="Neues Element"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Neues Element" Value="Neues Element"></asp:MenuItem>
                <asp:MenuItem Text="Neues Element" Value="Neues Element">
                    <asp:MenuItem Text="Neues Element" Value="Neues Element"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Neues Element" Value="Neues Element"></asp:MenuItem>
                <asp:MenuItem Text="Neues Element" Value="Neues Element">
                    <asp:MenuItem Text="Neues Element" Value="Neues Element"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Neues Element" Value="Neues Element">
                    <asp:MenuItem Text="Neues Element" Value="Neues Element">
                        <asp:MenuItem Text="Neues Element" Value="Neues Element">
                            <asp:MenuItem Text="Neues Element" Value="Neues Element">
                                <asp:MenuItem Text="Neues Element" Value="Neues Element">
                                    <asp:MenuItem Text="Neues Element" Value="Neues Element"></asp:MenuItem>
                                </asp:MenuItem>
                            </asp:MenuItem>
                        </asp:MenuItem>
                    </asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Neues Element" Value="Neues Element"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#5D7B9D" />
        </asp:Menu>
    </form>
</body>
</html>
