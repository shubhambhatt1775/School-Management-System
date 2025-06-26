 <%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="fees.aspx.cs" Inherits="WebApplication1.fees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
        AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" 
        DataKeyNames="id">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="contenctno" HeaderText="contenctno" 
                SortExpression="contenctno" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="amount" HeaderText="amount" 
                SortExpression="amount" />
        </Columns>
    </asp:GridView>

    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource2" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
            <asp:BoundField DataField="std" HeaderText="std" SortExpression="std" />
            <asp:BoundField DataField="fees" HeaderText="fees" SortExpression="fees" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:bca %>" 
        DeleteCommand="DELETE FROM [fess] WHERE [id] = @original_id AND [contenctno] = @original_contenctno AND [date] = @original_date AND [amount] = @original_amount" 
        InsertCommand="INSERT INTO [fess] ([contenctno], [date], [amount]) VALUES (@contenctno, @date, @amount)" 
        SelectCommand="SELECT * FROM [fess]" 
        
        UpdateCommand="UPDATE [fess] SET [contenctno] = @contenctno, [date] = @date, [amount] = @amount WHERE [id] = @original_id AND [contenctno] = @original_contenctno AND [date] = @original_date AND [amount] = @original_amount" 
        ConflictDetection="CompareAllValues" 
        OldValuesParameterFormatString="original_{0}">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_contenctno" Type="String" />
            <asp:Parameter DbType="Date" Name="original_date" />
            <asp:Parameter Name="original_amount" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="contenctno" Type="String" />
            <asp:Parameter DbType="Date" Name="date" />
            <asp:Parameter Name="amount" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="contenctno" Type="String" />
            <asp:Parameter DbType="Date" Name="date" />
            <asp:Parameter Name="amount" Type="Int32" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_contenctno" Type="String" />
            <asp:Parameter DbType="Date" Name="original_date" />
            <asp:Parameter Name="original_amount" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:bca %>" 
    SelectCommand="SELECT * FROM [feesinfo]"></asp:SqlDataSource>


    <br />
    <br />


</asp:Content>
