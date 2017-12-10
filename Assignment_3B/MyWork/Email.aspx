<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Email.aspx.cs" Inherits="MyWork_Email" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">


    <p>
    To<asp:TextBox ID="toTextBox" runat="server" Width="405px"></asp:TextBox>
    <br />
    Message:
    <asp:TextBox ID="messageTextBox" runat="server" Height="126px" TextMode="MultiLine" Width="578px"></asp:TextBox>
</p>
<p>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
</p>
<p>
    <asp:Label ID="sentLabel" runat="server" Text="Label" Visible="False"></asp:Label>
</p>


</asp:Content>

