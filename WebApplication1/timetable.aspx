<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="timetable.aspx.cs" Inherits="WebApplication1.timetable" %>
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



</style>
<br />
<br />
<center>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource1" CellPadding="4" 
        ForeColor="#333333" GridLines="None" Height="303px" Width="1016px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
            <asp:BoundField DataField="mon" HeaderText="mon" SortExpression="mon" />
            <asp:BoundField DataField="tue" HeaderText="tue" SortExpression="tue" />
            <asp:BoundField DataField="wed" HeaderText="wed" SortExpression="wed" />
            <asp:BoundField DataField="tha" HeaderText="tha" SortExpression="tha" />
            <asp:BoundField DataField="fri" HeaderText="fri" SortExpression="fri" />
            <asp:BoundField DataField="sat" HeaderText="sat" SortExpression="sat" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:bca %>" 
        DeleteCommand="DELETE FROM [timetable] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [timetable] ([time], [mon], [tue], [wed], [tha], [fri], [sat]) VALUES (@time, @mon, @tue, @wed, @tha, @fri, @sat)" 
        SelectCommand="SELECT * FROM [timetable]" 
        UpdateCommand="UPDATE [timetable] SET [time] = @time, [mon] = @mon, [tue] = @tue, [wed] = @wed, [tha] = @tha, [fri] = @fri, [sat] = @sat WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="time" Type="String" />
            <asp:Parameter Name="mon" Type="String" />
            <asp:Parameter Name="tue" Type="String" />
            <asp:Parameter Name="wed" Type="String" />
            <asp:Parameter Name="tha" Type="String" />
            <asp:Parameter Name="fri" Type="String" />
            <asp:Parameter Name="sat" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="time" Type="String" />
            <asp:Parameter Name="mon" Type="String" />
            <asp:Parameter Name="tue" Type="String" />
            <asp:Parameter Name="wed" Type="String" />
            <asp:Parameter Name="tha" Type="String" />
            <asp:Parameter Name="fri" Type="String" />
            <asp:Parameter Name="sat" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    </center>
</asp:Content>
