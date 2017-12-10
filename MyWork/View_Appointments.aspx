<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="View_Appointments.aspx.cs" Inherits="MyWork_View_Appointments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="AppDataSource2" AutoGenerateColumns="False" DataKeyNames="AppointmentId">
            <Columns>
                <asp:BoundField DataField="AppointmentId" HeaderText="AppointmentId" InsertVisible="False" ReadOnly="True" SortExpression="AppointmentId" />
                <asp:BoundField DataField="Reason" HeaderText="Reason" SortExpression="Reason" />
                <asp:BoundField DataField="AppDate" HeaderText="AppDate" SortExpression="AppDate" />
                <asp:BoundField DataField="AppTime" HeaderText="AppTime" SortExpression="AppTime" />
                <asp:BoundField DataField="PatientID" HeaderText="PatientID" SortExpression="PatientID" />
                <asp:BoundField DataField="DoctorID" HeaderText="DoctorID" SortExpression="DoctorID" />
                <asp:BoundField DataField="HospitalID" HeaderText="HospitalID" SortExpression="HospitalID" />
                <asp:BoundField DataField="DepartmentID" HeaderText="DepartmentID" SortExpression="DepartmentID" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="AppDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AppointmentConnectionString2 %>" SelectCommand="SELECT * FROM [AppointmentTable]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="AppDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:AppointmentConnectionString2 %>" SelectCommand="SELECT * FROM [AppointmentTable]"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        If you would like to remove an appointment, please enter the Apointment ID of the Appointment</p>
    <p>
        <asp:TextBox ID="RemoveBox" runat="server" Width="166px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Height="36px" OnClick="Button1_Click" Text="Remove" Width="207px" />
        <br />
    </p>
</asp:Content>

