<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="PatientSearch.aspx.cs" Inherits="MyWork_PatientSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <br />
    Search for Patient by Username&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    &nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    <br />
    <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <br />
</p>
</asp:Content>

