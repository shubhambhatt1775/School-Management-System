<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="admindesbord.aspx.cs" Inherits="WebApplication1.admindesboird" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<html xmlns="http://www.w3.org/1999/xhtml">

<style>
    body{
           font-family:'Arial',sans-serif;
   margin:0;
padding:0;
background:#f4f4f4;
background:url('media/welcome image.jpg')center center;
background-size:cover;
}
 .dashboard
 {
     display:flex;
     justify-content:space-around;
     flex-wrap:wrap;
     padding:20px;
 }
 .acti-card
 {
     background:#fff;
     border-radius:8px;
     box-shadow:0010pxrgba(0,0,0,0.1);
     margin:15px;
     overflow:hidden;
     width:350px;
     height:225px;
     transition:transform0.3sease-in-out;
 }
 .acti-cardimg
 {
     width:100%;
     height:100%;
     object-fit:cover;
     border-bottom:2pxsolid#ddd;
 }
 .image
 {
     width:100%;
     height:170px;
     object-fit:fill;
 }
 .image:hover
 {
     transform:scale(1.05);
 }
 .acti-card:hover
 {
     transform:scale(1.05);
 }
 .acti-details
 {
     padding:15px;
 }
 .staff-name
 {
     font-size:18px;
     font-weight:bold;
     margin-bottom:5px;
 }

.top
{ margin-top:0;
  width:100%;
  height:60px;
  background-color:inherit;
  background-filter:blur(10px);
   
    }
 .log-out
 {
     position:absolute;
     right:10px;
     margin-top:10px;
     background:linear-gradient(90deg,#e44d26 0%,#f16529 100%);
     color:White;
     padding:12px 20px;
     border:none;
     border-radius:4px;
     cursor:pointer;
     font-size:16px;
     transition:background 0.3s ease;
     
     }
     .log-out:hover
     {
         background:green;
         }
         
      .log-out1
 {
     position:absolute;
     left:10px;
     margin-top:10px;
     background:linear-gradient(90deg,#e44d26 0%,#f16529 100%);
     color:White;
     padding:12px 20px;
     border:none;
     border-radius:4px;
     cursor:pointer;
     font-size:16px;
     transition:background 0.3s ease;
     
     }
     .log-out1:hover
     {
         background:green;
         }
</style>

<div class="top">
    <asp:Button ID="Button1" runat="server" Text="log-out" class="log-out" 
        onclick="Button1_Click"/>
    <asp:Button ID="Button2" runat="server" Text="notice board" class="log-out1"  onclick="Button2_Click" />
</div>

<div class="dashboard">

<div class="acti-card">
<asp:ImageButton ID="ImageButton1" src="icon/IMG-20240312-WA0003.jpg" runat="server"  class="image" 
        onclick="ImageButton1_Click" />
<div class="acti-details">
<div class="staff-name">Student Data</div>
</div>
</div>

<div class="acti-card">
<asp:ImageButton ID="ImageButton2" src="icon/IMG-20240312-WA0004.jpg" runat="server"  class="image" 
        onclick="ImageButton2_Click"  />
<div class="acti-details">
<div class="staff-name">Staff Data</div>
</div>
</div>

<div class="acti-card">
<asp:ImageButton ID="ImageButton3" runat="server" src="icon/IMG-20240312-WA0005.jpg"  class="image" 
        onclick="ImageButton3_Click" />
<div class="acti-details">
<div class="staff-name">Admin Data</div>
</div>
</div>



<div class="acti-card">
<asp:ImageButton ID="ImageButton4" runat="server" src="icon/IMG-20240312-WA0006.jpg" class="image" 
        onclick="ImageButton4_Click" />
<div class="acti-details">
<div class="staff-name">time-table</div>
</div>
</div>

<div class="acti-card">
<asp:ImageButton ID="ImageButton5" runat="server" src="icon/IMG-20240312-WA0008.jpg" class="image" onclick="ImageButton5_Click" 
         />
<div class="acti-details">
<div class="staff-name">suggetion box</div>
</div>
</div>

<div class="acti-card">
<asp:ImageButton ID="ImageButton9" runat="server" src="icon/IMG-20240312-WA0007.jpg" class="image" onclick="ImageButton9_Click" 
         />
<div class="acti-details">
<div class="staff-name">complain box</div>
</div>
</div>

<div class="acti-card">
<asp:ImageButton ID="ImageButton6" runat="server" src="icon/IMG-20240312-WA0010.jpg" class="image" onclick="ImageButton6_Click" 
         />
         <div class="acti-details">
<div class="staff-name">staffleve</div>
</div>
</div>

<div class="acti-card">
<asp:ImageButton ID="ImageButton7" runat="server" src="icon/IMG-20240312-WA0011.jpg" class="image" onclick="ImageButton7_Click" 
         />
         <div class="acti-details">
<div class="staff-name">student leve</div>
</div>
         
</div>

<div class="acti-card">
 <asp:ImageButton ID="ImageButton8" src="icon/IMG-20240312-WA0009.jpg" runat="server" class="image" 
     onclick="ImageButton8_Click"  />
<div class="acti-details">
<div class="staff-name">fees inform</div>
</div>
</div>


</div>


</asp:Content>
