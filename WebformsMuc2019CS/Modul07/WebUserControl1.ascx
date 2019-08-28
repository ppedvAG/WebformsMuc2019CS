<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs"
    Inherits="WebformsMuc2019CS.Modul07.WebUserControl1" %>
<div style="background-color: <%=BackGroundColor%>">

    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
</div>
