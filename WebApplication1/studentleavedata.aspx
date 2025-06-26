<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="studentleavedata.aspx.cs" Inherits="WebApplication1.studentleavedata" %>
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

</style>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="sname" HeaderText="sname" SortExpression="sname" />
            <asp:BoundField DataField="ldate" HeaderText="ldate" SortExpression="ldate" />
            <asp:BoundField DataField="todate" HeaderText="todate" 
                SortExpression="todate" />
            <asp:BoundField DataField="reason" HeaderText="reason" 
                SortExpression="reason" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:bca %>" 
        DeleteCommand="DELETE FROM [studentleave] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [studentleave] ([sname], [ldate], [todate], [reason]) VALUES (@sname, @ldate, @todate, @reason)" 
        SelectCommand="SELECT * FROM [studentleave]" 
        UpdateCommand="UPDATE [studentleave] SET [sname] = @sname, [ldate] = @ldate, [todate] = @todate, [reason] = @reason WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="sname" Type="String" />
            <asp:Parameter DbType="Date" Name="ldate" />
            <asp:Parameter DbType="Date" Name="todate" />
            <asp:Parameter Name="reason" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="sname" Type="String" />
            <asp:Parameter DbType="Date" Name="ldate" />
            <asp:Parameter DbType="Date" Name="todate" />
            <asp:Parameter Name="reason" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
