<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Hospital Online System</h1>
        <p class="lead">Welcome to our Hospital Online System!</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                You may register or login to an account in the upper right hand corner of the screen!</p>
            <p>
         
                <a class="btn btn-default" href="/Account/Login.aspx">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Appointments</h2>
            <p>
                You can manage your appointments by clicking the &quot;Manage Appointments&quot; link above</p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Messaging</h2>
            <p>
                You can easily message your doctors by clicking the &quot;Send Messages&quot; link above</p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>
</asp:Content>
