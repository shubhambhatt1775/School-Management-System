<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="studataforstaff.aspx.cs" Inherits="WebApplication1.studataforstaff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
    
     body
    {background:url('media/welcome image.jpg')center center;
background-size:cover;
        
        }
.custom-grid
    {
        width:100%;
        border-collapse:collapse;
        margin:20px;
    }
    .custom-grid th
    {
        background-color:#f2f2f2;
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


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" class="custom-grid" DataSourceID="SqlDataSource1" 
        CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="fullname" HeaderText="fullname" 
                SortExpression="fullname" />
            <asp:BoundField DataField="gender" HeaderText="gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="contectno" HeaderText="contectno" 
                SortExpression="contectno" />
            <asp:BoundField DataField="hobbies" HeaderText="hobbies" 
                SortExpression="hobbies" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="district" HeaderText="district" 
                SortExpression="district" />
            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
            <asp:BoundField DataField="country" HeaderText="country" 
                SortExpression="country" />
            <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
            <asp:BoundField DataField="fatherspro" HeaderText="fatherspro" 
                SortExpression="fatherspro" />
            <asp:BoundField DataField="motherspro" HeaderText="motherspro" 
                SortExpression="motherspro" />
            <asp:BoundField DataField="annualincome" HeaderText="annualincome" 
                SortExpression="annualincome" />
            <asp:BoundField DataField="std" HeaderText="std" SortExpression="std" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="black" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:bca %>" 
        SelectCommand="SELECT * FROM [sdata]"></asp:SqlDataSource>

</asp:Content>
