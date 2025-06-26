<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="WebApplication1.Staff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <style>
body
{
    font-family:'Arial',sans-serif;
    margin:0;
    padding:0;
    background:#f4f4f4;
    background:url('media/welcome image.jpg')center center;
    background-size:cover;
}
.staff-container
{
    display:flex;
    justify-content:space-around;
    flex-wrap:wrap;
    padding:20px;
    background-color:rgba(255 255 255,0.7);
}
.staff-card
{
    background:#fff;
    border-radius:8px;
    box-shadow:0 0 10px rgba(0,0,0,0.1);
    margin:15px;
    overflow:hidden;
    width:250px;
    transition:transform 0.3 ease-in-out;
}
.staff-card:hover
{
    transform:scale(1.05);
}
.staff-image
{
    width:100%;
    height:300px;
    object-fit:cover;
    border-bottom:2px soid #ddd;
} 
.staff-details
{
    padding:15px;
}
.staff-name
{
    font-size:18px;
    font-weight:bold;
    margin-bottom:5px;
}
.staff-position
{
    color:#555;
    font-size:14px;    
}
</style>
<div class="staff-container">

<div class="staff-card">
    <asp:Image ID="Image1" runat="server" />
<img class="staff-image" src="media/3001764.png" alt="staff 1" >
<div class="staff-details">
<div class:"staff-name"> NARENDRA MODI</div>
<div class="staff-position">PRINCIPAL</div>
</div>
</div>

<div class="staff-card">
    <asp:Image ID="Image2" runat="server" />
<img class="staff-image"  src="media/female1-512.png" alt="staff 2" >
<div class="staff-details">
<div class:"staff-name"> MELONI</div>
<div class="staff-position"> VICE PRINCIPAL <br/>PHYSICS TEACHER</div>
</div>
</div>

<div class="staff-card">
    <asp:Image ID="Image3" runat="server" />
<img class="staff-image"  src="media/female1-512.png" alt="staff 2" >
<div class="staff-details">
<div class:"staff-name"> RASMIKA MANDANA</div>
<div class="staff-position">BIOLOGY TEACHER</div>
</div>
</div>

<div class="staff-card">
    <asp:Image ID="Image4" runat="server" />
<img class="staff-image" src="media/3001764.png" alt="staff 1" >
<div class="staff-details">
<div class:"staff-name"> BOBBY DEOL</div>
<div class="staff-position">MATHSH TEACHER</div>
</div>
</div>

<div class="staff-card">
    <asp:Image ID="Image5" runat="server" />
<img class="staff-image" src="media/3001764.png" alt="staff 1" >
<div class="staff-details">
<div class:"staff-name">SANJAY MALI</div>
<div class="staff-position"> PHYSICS TEACHER</div>
</div>
</div>

 <div class="staff-card">
    <asp:Image ID="Image12" runat="server" />
<img class="staff-image"  src="media/female1-512.png" alt="staff 2" >
<div class="staff-details">
<div class:"staff-name"> YASHVI</div>
<div class="staff-position"> MATHS TEACHER</div>
</div>
</div>


 <div class="staff-card">
    <asp:Image ID="Image7" runat="server" />
<img class="staff-image"  src="media/female1-512.png" alt="staff 2" >
<div class="staff-details">
<div class:"staff-name"> TRIPTI DIMRI</div>
<div class="staff-position"> CHEMESTRY TEACHER</div>
</div>
</div>

<div class="staff-card">
    <asp:Image ID="Image9" runat="server" />
<img class="staff-image"  src="media/female1-512.png" alt="staff 2" >
<div class="staff-details">
<div class:"staff-name"> ANUSHKA KOHLI</div>
<div class="staff-position">CHEMESTRY TEACHER</div>
</div>
</div>

<div class="staff-card">
    <asp:Image ID="Image8" runat="server" />
<img class="staff-image"  src="media/female1-512.png" alt="staff 2" >
<div class="staff-details">
<div class:"staff-name"> DEEPIKA PADUKON</div>
<div class="staff-position">ENGLISH TEACHER</div>
</div>
</div>

<div class="staff-card">
    <asp:Image ID="Image6" runat="server" />
<img class="staff-image" src="media/3001764.png" alt="staff 1" >
<div class="staff-details">
<div class:"staff-name"> SUNNY DEOL</div>
<div class="staff-position">LAB ASSISTENT</div>
</div>
</div>

<div class="staff-card">
    <asp:Image ID="Image10" runat="server" />
<img class="staff-image" src="media/3001764.png" alt="staff 1" >
<div class="staff-details">
<div class:"staff-name"> SHAHIDKAPOOR</div>
<div class="staff-position">LAB ASSISTENT</div>
</div>
</div>

<div class="staff-card">
    <asp:Image ID="Image11" runat="server" />
<img class="staff-image"  src="media/female1-512.png" alt="staff 2" >
<div class="staff-details">
<div class:"staff-name"> SAMANTHA</div>
<div class="staff-position">LIBRERIYAN</div>
</div>
</div>

</div>
</asp:Content>
