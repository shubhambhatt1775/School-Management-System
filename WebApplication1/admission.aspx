<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="admission.aspx.cs" Inherits="WebApplication1.admission" %>
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
        align-items:center;
     justify-content:center;
     height:100vh;
        }
        
      .form-container
      {
          max-width:400px;
          margin:50px auto;
          background-color:White;
          padding:20px;
          border-radius:8px;
          box-shadow:0 0 10px rgba(0,0,0,0.550);         
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
            
          

 .style1{
     font-family:'arial',sans-serif;
     margin:0;
     padding:0;
     display:flex;
     align-items:center;
     justify-content:center;
     height:100vh;
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
        <h1>School Admission Form</h1>
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Label">Full Name</asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="Label">gender</asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server"  class="form-control">
                <asp:ListItem>male</asp:ListItem>
                <asp:ListItem>female</asp:ListItem>
                <asp:ListItem>other</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="DropDownList1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
         <div class="form-group">
            <asp:Label ID="Label15" runat="server" Text="Label">Contect Number</asp:Label>
           <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                 ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
         <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Label">Hobbies</asp:Label>
          <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                 ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
         <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Label">Address</asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                 ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <asp:Label ID="Label8" runat="server" Text="Label">CITY</asp:Label>
           <asp:TextBox ID="TextBox5" runat="server" class="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <asp:Label ID="Label7" runat="server" Text="Label">DISTRICT</asp:Label>
          <asp:TextBox ID="TextBox6" runat="server" class="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
          <div class="form-group">
            <asp:Label ID="Label9" runat="server" Text="Label">STATE</asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" class="form-control"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                  ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
          <div class="form-group">
            <asp:Label ID="Label10" runat="server" Text="Label">COUNTRY</asp:Label>
            <asp:TextBox ID="TextBox8" runat="server" class="form-control"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                  ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
          <asp:Button ID="btnlogin" runat="server" Text="NEXT" class="login-btn" onclick="btnlogin_Click" 
                 />
    </div>
    </div>
    
        </asp:View>
        <asp:View ID="View2" runat="server">
        <div class="bgimg">
        <div class="form-container">
        <h1>School Admission Form</h1>
        <div class="form-group">
            
            <asp:Label ID="Label6" runat="server" Text="Label">D.O.B</asp:Label>
            <asp:TextBox ID="TextBox9" runat="server" class="form-control" 
                 TextMode="Date"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="TextBox9" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <asp:Label ID="Label11" runat="server" Text="Label">FATHER`S PROFESSIONL</asp:Label>
          <asp:TextBox ID="TextBox10" runat="server" class="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ControlToValidate="TextBox10" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
         <div class="form-group">
            <asp:Label ID="Label13" runat="server" Text="Label">MOTHER`S PROFESSIONL</asp:Label>
             <asp:TextBox ID="TextBox11" runat="server" class="form-control"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                 ControlToValidate="TextBox11" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <asp:Label ID="Label12" runat="server" Text="Label">ANNUAL INCOME</asp:Label>
             <asp:TextBox ID="TextBox12" runat="server" class="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                ControlToValidate="TextBox12" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
         <div class="form-group">
            <asp:Label ID="Label14" runat="server" Text="Label">STD</asp:Label>

            <asp:TextBox ID="TextBox13" runat="server" class="form-control"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                 ControlToValidate="TextBox13" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
      <asp:Button ID="Button1" runat="server" Text="back" class="login-btn" onclick="Button1_Click" 
               />
                <asp:Button ID="Button2" runat="server" Text="NEXT" class="login-btn" onclick="Button2_Click" 
                 />
         
        </div>
        </asp:View>
        <asp:View ID="View3" runat="server">
        <div class="bgimg">
        <div class="form-container">
        <h1>School Admission Form</h1>
        <div class="form-group">
            <asp:Label ID="Label5" runat="server" Text="Label">Full Name</asp:Label>
            <asp:Label ID="Label29" runat="server" Text="Label"  class="form-control"></asp:Label>
        </div>
        <div class="form-group">
        <asp:Label ID="Label16" runat="server" Text="Label">gender</asp:Label>
            <asp:Label ID="Label30" runat="server" Text="Label"  class="form-controll"></asp:Label>
        </div>
         <div class="form-group">
            <asp:Label ID="Label17" runat="server" Text="Label">Contect Number</asp:Label>
             <asp:Label ID="Label31" runat="server" Text="Label" class="form-controll"></asp:Label>
        </div>
         <div class="form-group">
            <asp:Label ID="Label18" runat="server" Text="Label">Hobbies</asp:Label>
             <asp:Label ID="Label32" runat="server" Text="Label" class="form-controll"></asp:Label>
        </div>
         <div class="form-group">
            <asp:Label ID="Label19" runat="server" Text="Label">Address</asp:Label>
             <asp:Label ID="Label33" runat="server" Text="Label" class="form-controll"></asp:Label>
        </div>
        <div class="form-group">
            <asp:Label ID="Label20" runat="server" Text="Label">CITY</asp:Label>
            <asp:Label ID="Label34" runat="server" Text="Label" class="form-controll"></asp:Label>
        </div>
        <div class="form-group">
            <asp:Label ID="Label21" runat="server" Text="Label">DISTRICT</asp:Label>
            <asp:Label ID="Label35" runat="server" Text="Label" class="form-controll"></asp:Label>
        </div>
          <div class="form-group">
            <asp:Label ID="Label22" runat="server" Text="Label">STATE</asp:Label>
              <asp:Label ID="Label36" runat="server" Text="Label" class="form-controll"></asp:Label>
        </div>
          <div class="form-group">
            <asp:Label ID="Label23" runat="server" Text="Label">COUNTRY</asp:Label>
              <asp:Label ID="Label37" runat="server" Text="Label" class="form-controll"></asp:Label>
        </div>
               <div class="form-group">
            
            <asp:Label ID="Label24" runat="server" Text="Label">D.O.B</asp:Label>
                   <asp:Label ID="Label38" runat="server" Text="Label" class="form-controll"></asp:Label>
        </div>
        <div class="form-group">
            <asp:Label ID="Label25" runat="server" Text="Label">FATHER`S PROFESSIONL</asp:Label>
            <asp:Label ID="Label39" runat="server" Text="Label" class="form-controll"></asp:Label>
        </div>
         <div class="form-group">
            <asp:Label ID="Label26" runat="server" Text="Label">MOTHER`S PROFESSIONL</asp:Label>
             <asp:Label ID="Label40" runat="server" Text="Label" class="form-controll"></asp:Label>
        </div>
        <div class="form-group">
            <asp:Label ID="Label27" runat="server" Text="Label">ANNUAL INCOME</asp:Label>
            <asp:Label ID="Label41" runat="server" Text="Label" class="form-controll"></asp:Label>
        </div>
         <div class="form-group">
            <asp:Label ID="Label28" runat="server" Text="Label">STD</asp:Label>
             <asp:Label ID="Label42" runat="server" Text="Label" class="form-controll"></asp:Label>
        </div>
      <asp:Button ID="Button3" runat="server" Text="back" class="login-btn" 
                onclick="Button3_Click"  />
                <asp:Button ID="Button4" runat="server" Text="submit" class="login-btn" onclick="Button4_Click" 
                 />
       
        </div>
           
    </div>
           </asp:View>


            <asp:View ID="View4" runat="server">
           
            <center>
            <div class="bgimg">
            <div class="form-container">
<h2>secure payment gateway</h2>
<form class="payment-form">

<div class="form-group">
<label for="mobile no">mobile number</label>
<asp:TextBox ID="contenctno" runat="server" ></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                 ControlToValidate="contenctno" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
<label for="cardnumber">Amount</label>
    <asp:TextBox ID="amount" runat="server" ontextchanged="amount_TextChanged" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                 ControlToValidate="amount" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
</div>

<div class="form-group">
<label for="cardnumber">card number</label>
    <asp:TextBox ID="crdno" runat="server" placeholder="123456789"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                 ControlToValidate="crdno" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
<label for="expirydate">expiry date</label>
    <asp:TextBox ID="expdate" runat="server" placeholder="MM/YY"></asp:TextBox>
   
</div>
<div class="form-group">
<label for="cvv">CVV</label>
    <asp:TextBox ID="cvv" runat="server" placeholder="123"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                 ControlToValidate="cvv" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
<label for="cardholder">Card Holder Name</label>
    <asp:TextBox ID="name" runat="server" placeholder="john Doe"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                 ControlToValidate="name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
<label for="date">date</label>
    <asp:TextBox ID="date" runat="server" placeholder="dd/MM/YY" TextMode="Date"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                 ControlToValidate="date" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
</div>

</form>
                <asp:Button ID="Button7" runat="server" onclick="Button7_Click" Text="pay" class="pay-button" />
</div>

</center>
            </asp:View>
    </asp:MultiView>

</asp:Content>
    