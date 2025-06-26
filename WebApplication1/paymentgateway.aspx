<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="paymentgateway.aspx.cs" Inherits="WebApplication1.paymentgateway" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>

 {
     font-family:'arial',sans-serif;
     margin:0;
     padding:0;
     background:linear-gradient(90deg,#ff9a9e 0%,#fad0c4 100%);
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
     background:liner-gradient(90deg,#f16529 0%,#e44d26 100%);
 }
 
</style>

<div class="payment-container">
<h2>secure payment gateway</h2>
<form class="payment-form">
<div class="form-group">
<label for="cardnumber">card number</label>
<input type="text" id="cardnumber" placeholder="123456789" required>
</div>
<div class="form-group">
<label for="expirydate">expiry date</label>
<input type="text" id="expirydate" placeholder="MM/YY" required>
</div>
<div class="form-group">
<label for="cvv">CVV</label>
<input type="text" id="cvv" placeholder="123" required>
</div>
<div class="form-group">
<label for="cardholder">Card Holder Name</label>
<input type="text" id="cardholder" placeholder="john Doe" required>
</div>
<botton type="button" class="pay-button">Now</botton>
</form>
</div>




</asp:Content>


