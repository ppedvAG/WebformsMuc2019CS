<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebformsMuc2019CS.modul12.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="label1">    </div>
    <button onclick="getZeit()" type="button">zeit?</button>

    <script>
        function getZeit() {
            $.ajax({
                url: "zeit",
                success: function (result) {
                    $('#label1').text(result);
                }
            });

        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptPlaceHolder1" runat="server">
</asp:Content>
