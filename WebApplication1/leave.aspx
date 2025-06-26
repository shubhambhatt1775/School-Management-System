<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="leave.aspx.cs" Inherits="WebApplication1.leave" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
</style>

<div class="dashboard">

<div class="acti-card">
    <asp:ImageButton ID="ImageButton7" runat="server" src="icon/IMG-20240312-WA0011.jpg" class="image" onclick="ImageButton7_Click" 
         />
    <div class="acti-details">
        <div class="staff-name">
            student leve</div>
    </div>
     </div>
</div>
</asp:Content>
