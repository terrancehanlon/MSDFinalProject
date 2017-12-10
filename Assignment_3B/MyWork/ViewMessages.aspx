<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ViewMessages.aspx.cs" Inherits="MyWork_ViewMessages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EmailsId" DataSourceID="EmailDatasource">
            <Columns>
                <asp:BoundField DataField="EmailsId" HeaderText="EmailsId" InsertVisible="False" ReadOnly="True" SortExpression="EmailsId" />
                <asp:BoundField DataField="TO" HeaderText="TO" SortExpression="TO" />
                <asp:BoundField DataField="FROM" HeaderText="FROM" SortExpression="FROM" />
                <asp:BoundField DataField="EmailText" HeaderText="EmailText" SortExpression="EmailText" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="EmailDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:AppointmentConnectionString2 %>" SelectCommand="SELECT * FROM [EmailTable]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
    </p>
</asp:Content>

