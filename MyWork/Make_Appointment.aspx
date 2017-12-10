<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Make_Appointment.aspx.cs" Inherits="MyWork_Appointments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        &nbsp;</p>
    <h3>
        <strong>Please enter the following information to create an appointment:</strong></h3>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Please Enter Your City"></asp:Label>
&nbsp;
        <asp:TextBox ID="CityBox" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        &nbsp;
        </p>
    <p>
        <asp:Label ID="Label5" runat="server" Text="Name of Doctor"></asp:Label>
&nbsp;
        <asp:DropDownList ID="DoctorList" runat="server" DataSourceID="DoctorDataSource" DataTextField="DoctorName" DataValueField="DoctorId">
        </asp:DropDownList>
        <asp:SqlDataSource ID="DoctorDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:AppointmentConnectionString2 %>" SelectCommand="SELECT * FROM [DoctorTable]"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <strong>Use the calendar to select a day to visit:</strong></p>
    <p>
        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
    </p>
    <p>
        <asp:Label ID="Label6" runat="server" Text="Selected Date"></asp:Label>
&nbsp;
        <asp:TextBox ID="DateBox" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label7" runat="server" Text="Hour"></asp:Label>
&nbsp;
        <asp:TextBox ID="HourBox" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Text="Minute"></asp:Label>
&nbsp;
        <asp:TextBox ID="MinuteBox" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <strong>Please state the reason for your visit:</strong></p>
    <p>
        <asp:TextBox ID="ReasonBox" runat="server" Height="147px" TextMode="MultiLine" Width="610px" ReadOnly="True"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Height="43px" OnClick="Button1_Click" Text="Submit Appointment" Width="238px" />
        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Text="Error: Conflicting Appointment" Visible="False"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="SuccessLabel" runat="server" ForeColor="Blue" Text="Appointment Created Successfully!" Visible="False"></asp:Label>
    </p>
    <p>
        <asp:HyperLink ID="hpylink1" runat="server" NavigateUrl="~/MyWork/View_Appointments.aspx">View Appointments</asp:HyperLink>
    </p>
</asp:Content>

