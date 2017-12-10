<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="PatientSearch.aspx.cs" Inherits="MyWork_PatientSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <br />
        Search for Patient by ID&nbsp;
    <asp:TextBox ID="IDBox" runat="server"></asp:TextBox>
    &nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
    <br />
    <br />
        Patient Username:
        <asp:TextBox ID="NameBox" runat="server" OnTextChanged="IDBox_TextChanged"></asp:TextBox>
    <br />
    <br />
</p>
</asp:Content>

