<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="staffdadmin.aspx.cs" Inherits="WebApplication1.staffdadmin" %>
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

.form-container
      {
          max-width:900px;
          margin:50px auto;
          background-color:rgba(255,255,255,0.9);
          background-filter:blur(10px);
          padding:20px;
          border-radius:8px;
          box-shadow:0 0 10px rgba(0,0,0,255);         
          }  
</style>
<center>

<div class="form-container" >
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="surname" HeaderText="surname" 
                SortExpression="surname" />
            <asp:BoundField DataField="name" HeaderText="name" 
                SortExpression="name" />
            <asp:BoundField DataField="fathername" HeaderText="fathername" 
                SortExpression="fathername" />
            <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
            <asp:BoundField DataField="qualification" HeaderText="qualification" 
                SortExpression="qualification" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="mobileno" HeaderText="mobileno" 
                SortExpression="mobileno" />
            <asp:BoundField DataField="password" HeaderText="password" 
                SortExpression="password" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>

    <br />
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
        DataSourceID="SqlDataSource2" Height="50px" Width="125px" 
        AutoGenerateRows="False" CellPadding="4" DataKeyNames="id" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="password" HeaderText="password" 
                SortExpression="password" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    <br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:bca %>" 
        DeleteCommand="DELETE FROM [staffdata] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [staffdata] ([surname], [name], [fathername], [dob], [qualification], [address], [mobileno], [password]) VALUES (@surname, @name, @fathername, @dob, @qualification, @address, @mobileno, @password)" 
        SelectCommand="SELECT * FROM [staffdata]" 
        
        UpdateCommand="UPDATE [staffdata] SET [surname] = @surname, [name] = @name, [fathername] = @fathername, [dob] = @dob, [qualification] = @qualification, [address] = @address, [mobileno] = @mobileno, [password] = @password WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="surname" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="fathername" Type="String" />
            <asp:Parameter DbType="Date" Name="dob" />
            <asp:Parameter Name="qualification" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="mobileno" Type="Int32" />
            <asp:Parameter Name="password" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="surname" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="fathername" Type="String" />
            <asp:Parameter DbType="Date" Name="dob" />
            <asp:Parameter Name="qualification" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="mobileno" Type="Int32" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:bca %>" 
        DeleteCommand="DELETE FROM [staffdata] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [staffdata] ([name], [password]) VALUES (@name, @password)" 
        SelectCommand="SELECT [id], [name], [password] FROM [staffdata]" 
        UpdateCommand="UPDATE [staffdata] SET [name] = @name, [password] = @password WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="password" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
    </center>
</asp:Content>
