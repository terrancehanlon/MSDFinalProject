<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Appointments.aspx.cs" Inherits="MyWork_Appointments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MyWork/Make_Appointment.aspx">Click here to CREATE an appointment</asp:HyperLink>
</p>
<p>
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/MyWork/View_Appointments.aspx">Click here to VIEW appointments</asp:HyperLink>
</p>
</asp:Content>

