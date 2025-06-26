<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="timetabelhome.aspx.cs" Inherits="WebApplication1.timetabelhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
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
        SelectCommand="SELECT [time], [mon], [tue], [wed], [tha], [fri], [sat] FROM [timetable]"></asp:SqlDataSource>

        </center>
</asp:Content>
