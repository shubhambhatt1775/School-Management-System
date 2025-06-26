<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="studentdata.aspx.cs" Inherits="WebApplication1.studentdata" %>
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
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
        <HeaderStyle BackColor="blue" Font-Bold="True" ForeColor="black" />
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
        DeleteCommand="DELETE FROM [sdata] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [sdata] ([fullname], [gender], [contectno], [hobbies], [address], [city], [district], [state], [country], [dob], [fatherspro], [motherspro], [annualincome], [std]) VALUES (@fullname, @gender, @contectno, @hobbies, @address, @city, @district, @state, @country, @dob, @fatherspro, @motherspro, @annualincome, @std)" 
        SelectCommand="SELECT * FROM [sdata]" 
        UpdateCommand="UPDATE [sdata] SET [fullname] = @fullname, [gender] = @gender, [contectno] = @contectno, [hobbies] = @hobbies, [address] = @address, [city] = @city, [district] = @district, [state] = @state, [country] = @country, [dob] = @dob, [fatherspro] = @fatherspro, [motherspro] = @motherspro, [annualincome] = @annualincome, [std] = @std WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="fullname" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="contectno" Type="String" />
            <asp:Parameter Name="hobbies" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="district" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="country" Type="String" />
            <asp:Parameter Name="dob" Type="String" />
            <asp:Parameter Name="fatherspro" Type="String" />
            <asp:Parameter Name="motherspro" Type="String" />
            <asp:Parameter Name="annualincome" Type="String" />
            <asp:Parameter Name="std" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="fullname" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="contectno" Type="String" />
            <asp:Parameter Name="hobbies" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="district" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="country" Type="String" />
            <asp:Parameter Name="dob" Type="String" />
            <asp:Parameter Name="fatherspro" Type="String" />
            <asp:Parameter Name="motherspro" Type="String" />
            <asp:Parameter Name="annualincome" Type="String" />
            <asp:Parameter Name="std" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
