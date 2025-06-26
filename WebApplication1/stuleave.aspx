<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="stuleave.aspx.cs" Inherits="WebApplication1.leaveapplication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
body
{
    background:url('media/welcome image.jpg')center center;
background-size:cover;
    font-family:Arial,sans-serif;
    background-color:#f4f4f4;
    margin:0;
    padding:0;
}
.container
{
    max-width:600px;
    margin:50px auto;
    padding:20px;
    background-color:#fff;
    border-radius:10px;
    box-shadow:0 0 10px rgba(0,0,0,0.1);
}
h2
{
    text-align:center;
    color:#333;
}
label
{
    display:block;
    margin-bottom:5px;
    color:#666;
}
input[type="text"],
input[type="date"],
textarea
{
    width:100%;
    padding:10px;
    margin-bottom:15px;
    border:1px dolif #ccc;
    border-radius:5px;
    box-sizing:border-box;
}
textarea
{
    height:100px;
}
input[type="submit"]
{
    background-color:#4caf50;
    color:White;
    padding:10px 20px;
    border:none;
    border-radius:5px;
    cursor:pointer;
    font-size:16px;
}
input[type="submit"]:hover
{
    background-color:#45a049;
}

</style>
<div class="container">
<h2>Student Leave Application</h2>

<asp:Label ID="Label1" runat="server" >Student Name</asp:Label>
    <asp:TextBox ID="sname" runat="server" CssClass="form-control" required></asp:TextBox>

    <asp:Label ID="Label5" runat="server" >std</asp:Label>
    <asp:TextBox ID="std" runat="server" CssClass="form-control" required></asp:TextBox>

    <asp:Label ID="Label6" runat="server" >Roll Number</asp:Label>
    <asp:TextBox ID="rollnumber" runat="server" CssClass="form-control" required></asp:TextBox>

    <asp:Label ID="Label2" runat="server" >Leave Date</asp:Label>
    <asp:TextBox ID="ldate" runat="server" CssClass="form-control" TextMode="Date" required></asp:TextBox>

    <asp:Label ID="Label3" runat="server">To Leave Date</asp:Label>
    <asp:TextBox ID="todate" runat="server" CssClass="form-control" TextMode="Date" requiered></asp:TextBox>

    <asp:Label ID="Label4" runat="server" >Reason</asp:Label>
    <asp:TextBox ID="reason" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" required></asp:TextBox>
   
    <asp:Button ID="submitButton" runat="server" Text="Submit" 
        CssClass="btn btn-primary" onclick="submitButton_Click" />
    </div>
    </div>
</asp:Content>
