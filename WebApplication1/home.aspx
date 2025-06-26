<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" Codefile="home.aspx.cs" Inherits="WebApplication1.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
body
{
    margin: 0;
    font-family: Arial, Sans-Serif;
}
.image
{
    
   
    }
    
 .image img
 {
      width:100%;
    height:250px;
     }   

    .container 
    {
        position:relative;
        width:100%;
        height:500px;
    }
    
    .background-image 
    {
        width:100%;
        height:100%;
        object-fit:cover;
        opacity: 0.5; 
    }
    
    .welcome-message 
    {
        position:absolute;
        top:50%;
        left:50%;
        transform: translate(-50%, -50%);
        text-align:center;
        color:Navy;
        font-size: 24px;
    }
    .boxcontain 
    {
        display:flex;
        justify-content:space-around;
    }
    .container1
    {
        width:400px;
        margin:20px auto;
        border:2px solid #007bff;
        border-radius:8px;
        padding:20px;
        box-shadow:0 0 10px rgba(0,0,0,0.600);
    }

    .heading
    {
        text-align:center;
        margin-bottom:20px;
        color:#007bff;
    }
    .suggestions-box
    {
        position:relative;
        margin-top:10px;
    }

    .style1,
    .style2
    {
        width:calc(100% - 16px);
        padding:10px;
        margin-bottom:10px;
        border:1px solid #ccc;
        border-radius:4px;
        outline:none;
        font-size:16px;
    }
   
    .style1
    {
        color:White;
        background-color:#007bff;
    }
    .suggestion-list
    {
        position:absolute;
        top:100%;
        left:0;
        width:callc(100%- 16px);
        z-index:1;
        background-color:#fff;
        box-shadow:0 2px 4px rgba(0,0,0,0.1);
        border-radius:4px;
        list-style:none;
        padding:0px;
        margin:0px;
        display:none;
    }
    .suggestion-list li
    {
        padding:8px;
        cursor:pointer;
    }
    .style1:hover{       
        background-color:#0056b3;
    }
    .custom-grid
    {
        width:100%;
        border-collapse:collapse;
        margin:20px;
    }
    .custom-grid th
    {
        background-color:#507CD1;
        padding:10px;
        text-align:left;
    }
    .custom-grid tr:nth-child(even)
    {
        background-color:#f9f9f9;
    }
    .custom-grid tr:nth-child(odd)
    {
        background-color:#ffffff;
    }
    .custom-grid td
    {
        padding:10px;
        text-align:left;
        border:1px solid #dddddd;
    }
    
    
</style>
<div class="slider">
<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/XMLFile1.xml" class="image"
      />
        <asp:Timer ID="Timer1" runat="server" Interval="2000">
        </asp:Timer>
    </ContentTemplate>
    </asp:UpdatePanel>

</div>
<div>
  <br />
  <div class="container">
  <img class="background-image" src="media/welcome%20image.jpg" alt="background photo" />
  <div class="welcome-message">
    <h1>WELCOME TO OUR WEBSITE</h1>
    <p>explore and enjoy your stay! If you leave a school so kiil by devloper</p>
  </div>
  </div>
  <br />
 <center> 
 <div class="container1">
  <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2" 
          AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
          GridLines="None">
          <AlternatingRowStyle BackColor="White" />
          <Columns>
              <asp:BoundField DataField="notice" HeaderText="notice" 
                  SortExpression="notice" />
          </Columns>
          <EditRowStyle BackColor="#2461BF" />
          <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
          <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
          <RowStyle BackColor="#EFF3FB" />
          <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
          <SortedAscendingCellStyle BackColor="#F5F7FB" />
          <SortedAscendingHeaderStyle BackColor="#6D95E1" />
          <SortedDescendingCellStyle BackColor="#E9EBEF" />
          <SortedDescendingHeaderStyle BackColor="#4870BE" />
      </asp:GridView>
      </div>
      </center>
  <div class="timetable">
  
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
          ConnectionString="<%$ ConnectionStrings:bca %>" 
          SelectCommand="SELECT * FROM [timetable]"></asp:SqlDataSource>
      <br />
      
      <br />
      <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
          ConnectionString="<%$ ConnectionStrings:bca %>" 
          SelectCommand="SELECT [notice] FROM [notice]"></asp:SqlDataSource>
  </div>
  <div class="boxcontain">
   <div class="container1">
   <h2 class="heading">Suggestion Box</h2>
   <div class="suggestion-box">
   <asp:TextBox ID="txtInput" runat="server" placeholder="Type something..." class="style2"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtInput" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

   <asp:BulletedList ID="suggestionlist" runat="server" CssClass="suggestion-list" Visible="false"></asp:BulletedList>
      
      <br />
       <asp:TextBox ID="txtMoblieNo" runat="server" placeholder="Enter Your Mobile number" class="style2" ControlToValidate="txtMoblieNo"></asp:TextBox>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="enter valid mobile no" 
       ControlToValidate="txtMoblieNo" ValidationExpression="^([0-9]{10})$"></asp:RegularExpressionValidator>
       <br />
       <asp:Button ID="Button2" runat="server" class="style1" Text="Submit" onclick="Button2_Click1" 
          />
   </div>
   </div>
   <div class="container1">
   <h2 class="heading">Complain Box</h2>
   <div class="suggestion-box">
   
       <asp:TextBox ID="TextBox1" runat="server" placeholder="Type something..." class="style2"></asp:TextBox>
     <br />
     
       <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Your Mobile number" class="style2"></asp:TextBox>
       <br />
       <asp:Button ID="Button1" runat="server" Text="Submit" class="style1" onclick="Button1_Click1" 
          />
   </div>
   </div>



  </div>
 </div>

</asp:Content>
