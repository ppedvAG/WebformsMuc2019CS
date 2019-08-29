<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="KundenEdit.aspx.cs" Inherits="WebformsMuc2019CS.Modul09.KundenEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Edit Kunden</h1>
    <div class="row">
        <div class="col">
            <asp:FormView ID="FormView1" runat="server" ItemType="WebformsMuc2019CS.Modul09.Customers" DefaultMode="Edit" RenderOuterTable="false"
                SelectMethod="FormView1_GetItem"
                UpdateMethod="FormView1_UpdateItem"
                DataKeyNames="CustomerID">
                <EditItemTemplate>
                    <div class="form-group row">
                        <label for="exampleInputEmail1" class="col-sm-2 col-form-label">Company Name</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="TextBox1" runat="server" Text="<%#BindItem.CompanyName %>" Class="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group  row">
                        <label for="exampleInputEmail1" class="col-sm-2 col-form-label">Contact Name</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="TextBox2" runat="server" Text="<%#BindItem.ContactName %>" Class="form-control"></asp:TextBox>

                        </div>
                    </div>
                    <div class="form-group  row">
                        <label for="exampleInputEmail1" class="col-sm-2 col-form-label">City</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="TextBox3" runat="server" Text="<%#BindItem.City %>" Class="form-control"></asp:TextBox>
                        </div>
                    </div>


                    <asp:Button Class="btn btn-light" ID="Button1" runat="server" Text="Cancel" CommandName="cancel" />
                    <asp:Button Class="btn btn-outline-primary" ID="Button2" runat="server" Text="save" CommandName="update" />
                </EditItemTemplate>
            </asp:FormView>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptPlaceHolder1" runat="server">
</asp:Content>
