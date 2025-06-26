<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="safflogin.aspx.cs" Inherits="WebApplication1.safflogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <style>
  body
  { background:url("media/welcome%20image.jpg")center center;
        background-size:cover;
        margin:0;
        padding:0;
      background-color:#f5f5f5;
      margin:0;
      padding:0;
      font-family:Arial,sans-serif;
  }
  .login-container
  {
      max-width:400px;
      margin:50px auto;
      padding:20px;
      background-color:#ffffff;
      box-shadow:0px 0px 10px 0px rgba(0,0,0,0.1);
  }
  input[type="text"],input[type="password"]
  {
      width:93%;
      padding:15px;
      margin:5px 0 22px 0;
      display:inline-block;
      border:none;
      background:#f1f1f1;
  }
  input[type="text"]:focus,input[type="password"]:focus
  {
      background-color:#ddd;
      outline:none;
  }
  .login-btn
  {
      background-color:#4caf50;
      color:White;
      padding:14px 20px;
      margin:8px 0;
      border:none;
      cursor:pointer;
      width:100%;
      opacity:0.9;
  }
  .login-btn:hover
  {
      opacity:1;
      background-color:#245A64;
      border-radius:10px;
      border:15px;
      border-color:Blue;
  }
  .error-massage
  {
      color:Red;
      margin-top:10px;
  }    
</style>
<asp:MultiView ID="Multiview1" runat="server">
<asp:View ID="View1" runat="server"> 
<div class="login-container">
<h2> Staff login</h2>
    <asp:TextBox ID="name" runat="server" ></asp:TextBox>
    &nbsp;<asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
    &nbsp;<asp:Button ID="btnlogin" runat="server" class="login-btn" Text="log in" 
        onclick="btnlogin_Click" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:bca %>" 
        SelectCommand="SELECT [name], [password], [id] FROM [staffdata]"></asp:SqlDataSource>
        </div>
        </asp:View>
        <asp:View ID="View2" runat="server">
        </asp:View>
        </asp:MultiView>
        
</asp:Content>
