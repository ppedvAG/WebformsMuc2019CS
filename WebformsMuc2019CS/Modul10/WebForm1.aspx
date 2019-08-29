<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebformsMuc2019CS.Modul10.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-group row">
        <div class="input-group mb-3">
            <label for="exampleInputEmail1" class="col-sm-2 col-form-label">Company Name</label>
            <div class="col-sm-10">
                <asp:TextBox ID="TextBox1" runat="server" Text="" Class="form-control"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic"
                    CssClass="input-group-append"
                    ControlToValidate="Textbox1"
                    ErrorMessage="das ist keine email"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator
                    ControlToValidate="Textbox1"
                    ID="RequiredFieldValidator1" runat="server" ErrorMessage="bitte füllen">*</asp:RequiredFieldValidator>
            </div>
            
        </div>
    </div>
    <div class="form-group row">
        <label for="exampleInputEmail1" class="col-sm-2 col-form-label">Alter</label>
        <div class="col-sm-10">
            <asp:TextBox ID="TextBox2" runat="server" Text="" Class="form-control"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Altersfreigabe beachten" Display="Dynamic"
                ControlToValidate="TextBox2" MaximumValue="80" MinimumValue="16">*</asp:RangeValidator>
            <asp:RequiredFieldValidator
                ControlToValidate="Textbox2"
                ID="RequiredFieldValidator2" runat="server" ErrorMessage="bitte füllen">*</asp:RequiredFieldValidator>
        </div>
    </div>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="alert alert-danger" />
    <asp:Button Class="btn btn-light" ID="Button1" runat="server" Text="Cancel" CommandName="cancel" />
    <asp:Button Class="btn btn-outline-primary" ID="Button2" runat="server" Text="save" CommandName="update" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptPlaceHolder1" runat="server">
</asp:Content>
