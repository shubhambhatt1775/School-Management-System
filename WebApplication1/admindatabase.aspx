<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="admindatabase.aspx.cs" Inherits="WebApplication1.admindatabase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<style>
  body
    {background:url('media/welcome image.jpg')center center;

        
        }
.custom-grid
    {
        border-collapse:collapse;
        margin:20px;
    }
    .custom-grid th
    {
        background-color:#f2f2f2;
        padding:10px;
        text-align:left;
        text:black;
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





    <asp:GridView ID="GridView1" runat="server" CssClass="custom-grid" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="id" DataSourceID="SqlDataSource1" GridLines="None" 
        ForeColor="#333333" Height="16px" Width="637px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="admin" HeaderText="admin" SortExpression="admin" />
            <asp:BoundField DataField="password" HeaderText="password" 
                SortExpression="password" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="black" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" CssClass="custom-grid" AllowPaging="True" 
        DataSourceID="SqlDataSource1" Height="50px" Width="125px" 
        AutoGenerateRows="False" DataKeyNames="id">
        <Fields>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="admin" HeaderText="admin" SortExpression="admin" />
            <asp:BoundField DataField="password" HeaderText="password" 
                SortExpression="password" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:bca %>" 
        DeleteCommand="DELETE FROM [adminlogin] WHERE [id] = @original_id AND [admin] = @original_admin AND [password] = @original_password" 
        InsertCommand="INSERT INTO [adminlogin] ([admin], [password]) VALUES (@admin, @password)" 
        SelectCommand="SELECT * FROM [adminlogin]" 
        
        UpdateCommand="UPDATE [adminlogin] SET [admin] = @admin, [password] = @password WHERE [id] = @original_id AND [admin] = @original_admin AND [password] = @original_password" 
        ConflictDetection="CompareAllValues" 
        OldValuesParameterFormatString="original_{0}">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_admin" Type="String" />
            <asp:Parameter Name="original_password" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="admin" Type="String" />
            <asp:Parameter Name="password" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="admin" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_admin" Type="String" />
            <asp:Parameter Name="original_password" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
