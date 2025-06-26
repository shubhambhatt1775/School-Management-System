<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="staffdatabase.aspx.cs" Inherits="WebApplication1.staffdatabase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
    body
    {
        font-family:Arial,Sans-Serif;
        background:url("media/welcome%20image.jpg")center center;
        background-size:cover;
        margin:0;
        padding:0;
        }
        
      .form-container
      {
          max-width:400px;
          margin:50px auto;
          background-color:White;
          padding:20px;
          border-radius:8px;
          box-shadow:0 0 10px rgba(0,0,0,0.1);         
          }  
          
       .h1
       {
          text-align:center;
          color:#333;
           }
       .form-group
       {
           margin-bottom:20px;
           }
       lable
       {
           display:block;
           margin-top:8px;
           font-weight:bold;
           
           }  
           
        .form-control
        {
         width:100%;
         padding:8px;
         border:1px solid#ccc;
         border-radius:4px;   
            }  
            
            .form-controll
            {
                 width:100%;
         padding:8px;
         border:1px solid#ccc;
         border-radius:4px;  }
         .login-btn
         {
             background-color:#4caf50;
             color:White;
             padding:14px 20px;
             margin:8px 0;
             border:none;
             cursor:pointer;
             width:100%;
             opacity:0.4;
             }
         .login-btn:hover
         {
             opacity:10;
             }
        .button1
        {
            background-color:#4caf59;
            color:#fff;
            padding:10px;
            border:none;
            border-radius:4px;
            cursor:pointer;
            font-size:16px;
            }
        .button1:hover
        {
            background-color:#45a049;
            }
            
          

 .payment-container
 {
     background-color:rgba(255,255,255,0.9);
     background-filter:blur(10px);
     border-radius:8px;
     box-shadow:0 0 20px rgba(0,0,0,0.2);
     padding:30px;
     width:300px;
     text-align:center;
 }
 .payment-container h2
 {
     color:#e44d26;
 }
 .payment-form
 {
     display:flex;
     flex-direction:column;
     alig-items:center;
 }
 .form-group
 {
     margin-bottom:20px;
 }
 .form-group label
 {
     font-weight:bold;
     margin-bottom:5px;
     display:block;
     color:#333;
 }
 .form-group input,
 .form-group select
 {
     width:100%;
     padding:10px;
     box-sizing:bordr-box;
     border:1px solid #ccc;
     border-radius:4px;
     font-size:14px;
     color:#555;
 }
 .pay-button
 {
     background:linear-gradient(90deg,#e44d26 0%,#f16529 100%);
     color:White;
     padding:12px 20px;
     border:none;
     border-radius:4px;
     cursor:pointer;
     font-size:16px;
     transition:background 0.3s ease;
 }
 .pay-button:hover
 {
     background:green;
 }
 
                </style>

 
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
        <div class="bgimg">
        <div class="form-container">
        <h1>Staff Register Form</h1>
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Label">Full Name</asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="Label">gender</asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server"  class="form-control">
                <asp:ListItem>male</asp:ListItem>
                <asp:ListItem>female</asp:ListItem>
                <asp:ListItem>other</asp:ListItem>
            </asp:DropDownList>
        </div>
         <div class="form-group">
            <asp:Label ID="Label15" runat="server" Text="Label">Contect Number</asp:Label>
           <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
        </div>
         <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Label">Hobbies</asp:Label>
          <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
        </div>
         <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Label">Address</asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label8" runat="server" Text="Label">CITY</asp:Label>
           <asp:TextBox ID="TextBox5" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label7" runat="server" Text="Label">DISTRICT</asp:Label>
          <asp:TextBox ID="TextBox6" runat="server" class="form-control"></asp:TextBox>
        </div>
          <div class="form-group">
            <asp:Label ID="Label9" runat="server" Text="Label">STATE</asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" class="form-control"></asp:TextBox>
        </div>
          <div class="form-group">
            <asp:Label ID="Label10" runat="server" Text="Label">D.G</asp:Label>
            <asp:TextBox ID="TextBox8" runat="server" class="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="Label5" runat="server" Text="Label">Exp</asp:Label>
           <asp:TextBox ID="TextBox9" runat="server" class="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="Label6" runat="server" Text="Label">Skills</asp:Label>
           <asp:TextBox ID="TextBox10" runat="server" class="form-control"></asp:TextBox>
        </div>

          <asp:Button ID="btnlogin" runat="server" Text="Submit" class="login-btn" onclick="btnlogin_Click" 
                 />
    </div>
    </div>


        </asp:View>
    </asp:MultiView>


 
 </asp:Content>