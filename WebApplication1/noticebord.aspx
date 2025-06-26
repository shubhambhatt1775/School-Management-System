<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="noticebord.aspx.cs" Inherits="WebApplication1.noticebord" %>
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
 align-items:center;
     justify-content:center;
}

.submit
{
    background-color:#4caf50;
    color:White;
    padding:10px 20px;
    border:none;
    border-radius:5px;
    cursor:pointer;
    font-size:16px;
}
.submit:hover{
     background:green;
}

.login-container
  { 
      align-items:center;
     justify-content:center;
        
      max-width:400px;
      margin:50px auto;
      padding:20px;
      background-color:0px 0px 10px 0px rgba(0,0,0,0.10);
      box-shadow:0px 0px 10px 0px rgba(0,0,0,0.255);
  }

</style>
<div class="login-container">

    <asp:TextBox ID="notice" runat="server" Height="77px" Width="355px" 
        ></asp:TextBox>


    
    <br />
    <br />


    <asp:GridView ID="GridView1" runat="server" class="login-container" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
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
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:bca %>" 
        DeleteCommand="DELETE FROM [notice] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [notice] ([notice]) VALUES (@notice)" 
        SelectCommand="SELECT * FROM [notice]" 
        UpdateCommand="UPDATE [notice] SET [notice] = @notice WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="notice" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="notice" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
  <center>
    <asp:Button ID="send" runat="server" CssClass="submit" onclick="Button1_Click" Text="NOTICE" />
    <br /></center>
    

    </div>
    
</asp:Content>
