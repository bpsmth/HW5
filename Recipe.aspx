<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Recipe.aspx.vb" Inherits="Recipe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [SubmittedBy], [RecipeName], [Ing2], [Ing1], [Ing3], [Ing4], [Ing5], [Notes], [Preperation] FROM [RecipeInfo] WHERE ([Id] = @Id)" DeleteCommand="DELETE FROM [RecipeInfo] WHERE [Id] = @Id" InsertCommand="INSERT INTO [RecipeInfo] ([SubmittedBy], [RecipeName], [Ing2], [Ing1], [Ing3], [Ing4], [Ing5], [Notes], [Preperation]) VALUES (@SubmittedBy, @RecipeName, @Ing2, @Ing1, @Ing3, @Ing4, @Ing5, @Notes, @Preperation)" UpdateCommand="UPDATE [RecipeInfo] SET [SubmittedBy] = @SubmittedBy, [RecipeName] = @RecipeName, [Ing2] = @Ing2, [Ing1] = @Ing1, [Ing3] = @Ing3, [Ing4] = @Ing4, [Ing5] = @Ing5, [Notes] = @Notes, [Preperation] = @Preperation WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SubmittedBy" Type="String" />
            <asp:Parameter Name="RecipeName" Type="String" />
            <asp:Parameter Name="Ing2" Type="String" />
            <asp:Parameter Name="Ing1" Type="String" />
            <asp:Parameter Name="Ing3" Type="String" />
            <asp:Parameter Name="Ing4" Type="String" />
            <asp:Parameter Name="Ing5" Type="String" />
            <asp:Parameter Name="Notes" Type="String" />
            <asp:Parameter Name="Preperation" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="Id" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="SubmittedBy" Type="String" />
            <asp:Parameter Name="RecipeName" Type="String" />
            <asp:Parameter Name="Ing2" Type="String" />
            <asp:Parameter Name="Ing1" Type="String" />
            <asp:Parameter Name="Ing3" Type="String" />
            <asp:Parameter Name="Ing4" Type="String" />
            <asp:Parameter Name="Ing5" Type="String" />
            <asp:Parameter Name="Notes" Type="String" />
            <asp:Parameter Name="Preperation" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>




    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="50px" Width="270px">
        <Fields>
            <asp:BoundField DataField="RecipeName" HeaderText="Recipe Name" SortExpression="RecipeName" />
            <asp:BoundField DataField="SubmittedBy" HeaderText="Submitted By" SortExpression="SubmittedBy" />
            <asp:BoundField DataField="Ing1" HeaderText="Ingredient #1" SortExpression="Ing1" />
            <asp:BoundField DataField="Ing2" HeaderText="Ingredient #2" SortExpression="Ing2" />
            <asp:BoundField DataField="Ing3" HeaderText="Ingredient #3" SortExpression="Ing3" />
            <asp:BoundField DataField="Ing4" HeaderText="Ingredient #4" SortExpression="Ing4" />
            <asp:BoundField DataField="Ing5" HeaderText="Ingredient #5" SortExpression="Ing5" />
            <asp:BoundField DataField="Preperation" HeaderText="Preperation" SortExpression="Preperation" />
            <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
        </Fields>
    </asp:DetailsView>
    <br />
    <br />
    <br />
    <br />




</asp:Content>

