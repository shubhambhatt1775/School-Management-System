<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="suggetion.aspx.cs" Inherits="WebApplication1.suggetion" %>
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

.login-container
  { 
      align-items:center;
     justify-content:center;
        
      max-width:400px;
      margin:50px auto;
      padding:20px;
      background-color:White;
      box-shadow:0px 0px 10px 0px rgba(0,0,0,0.255);
  }

</style>
<div class="login-container">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
        DataKeyNames="id" DataSourceID="SqlDataSource1" Width="382px" 
        onpageindexchanging="FormView1_PageIndexChanging" CellPadding="4" 
        ForeColor="#333333" Height="143px">
        <EditItemTemplate>
            id:
            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
            <br />
            mobileno:
            <asp:TextBox ID="mobilenoTextBox" runat="server" 
                Text='<%# Bind("mobileno") %>' />
            <br />
            sug:
            <asp:TextBox ID="sugTextBox" runat="server" Text='<%# Bind("sug") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            mobileno:
            <asp:TextBox ID="mobilenoTextBox" runat="server" 
                Text='<%# Bind("mobileno") %>' />
            <br />
            sug:
            <asp:TextBox ID="sugTextBox" runat="server" Text='<%# Bind("sug") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            id:
            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
            <br />
            mobileno:
            <asp:Label ID="mobilenoLabel" runat="server" Text='<%# Bind("mobileno") %>' />
            <br />
            sug:
            <asp:Label ID="sugLabel" runat="server" Text='<%# Bind("sug") %>' />
            <br />

            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />

        </ItemTemplate>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:FormView>
    <br />
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
        AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" 
        Height="50px" Width="125px" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="mobileno" HeaderText="mobileno" 
                SortExpression="mobileno" />
            <asp:BoundField DataField="sug" HeaderText="sug" SortExpression="sug" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
    <br />
    <br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:bca %>" 
        DeleteCommand="DELETE FROM [suggetion] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [suggetion] ([mobileno], [sug]) VALUES (@mobileno, @sug)" 
        SelectCommand="SELECT * FROM [suggetion]" 
        
        UpdateCommand="UPDATE [suggetion] SET [mobileno] = @mobileno, [sug] = @sug WHERE [id] = @id" 
        onselecting="SqlDataSource1_Selecting">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="mobileno" Type="String" />
            <asp:Parameter Name="sug" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="mobileno" Type="String" />
            <asp:Parameter Name="sug" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>
