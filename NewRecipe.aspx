<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="Recipe" %>

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




    <asp:DetailsView ID="DetailsView1" 
        runat="server" 
        AutoGenerateRows="False" 
        DataKeyNames="Id" 
        DataSourceID="SqlDataSource1" 
        CssClass="details" 
        FieldHeaderStyle-CssClass="fheader" 
        commandrowstyle-Cssclass="command"
        itemstyle-cssClass="recipeitems" GridLines="None" DefaultMode="Insert">
<CommandRowStyle CssClass="command"></CommandRowStyle>

<FieldHeaderStyle CssClass="fheader"></FieldHeaderStyle>
        <Fields>
            <asp:TemplateField HeaderText="Recipe Name" SortExpression="RecipeName">
                <EditItemTemplate>
                    <asp:TextBox ID="RnameTb" runat="server" Text='<%# Bind("RecipeName") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="RnameTb" runat="server" Text='<%# Bind("RecipeName") %>'></asp:TextBox>

                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RnameTb" 
                ErrorMessage="<br/> Recipe Name is required." Display="Dynamic">
              </asp:RequiredFieldValidator>


                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("RecipeName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Submitted By" SortExpression="SubmittedBy">
                <EditItemTemplate>
                    <asp:TextBox ID="SubTb" runat="server" Text='<%# Bind("SubmittedBy") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="SubTb" runat="server" Text='<%# Bind("SubmittedBy") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="SubTb" 
                ErrorMessage="<br/> Submitted By is required." Display="Dynamic">
              </asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("SubmittedBy") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Ingredient #1" SortExpression="Ing1">
                <EditItemTemplate>
                    <asp:TextBox ID="Ing1Tb" runat="server" Text='<%# Bind("Ing1") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="Ing1Tb" runat="server" Text='<%# Bind("Ing1") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Ing1Tb" 
                ErrorMessage="<br/> Ingredient 1 is required." Display="Dynamic">
              </asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Ing1") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Ing2" HeaderText="Ingredient #2" SortExpression="Ing2" />
            <asp:BoundField DataField="Ing3" HeaderText="Ingredient #3" SortExpression="Ing3" />
            <asp:BoundField DataField="Ing4" HeaderText="Ingredient #4" SortExpression="Ing4" />
            <asp:BoundField DataField="Ing5" HeaderText="Ingredient #5" SortExpression="Ing5" />
            <asp:TemplateField HeaderText="Preperation" SortExpression="Preperation">
                <EditItemTemplate>
                    <asp:TextBox ID="PrepTb" runat="server" Text='<%# Bind("Preperation") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="PrepTb" runat="server" Text='<%# Bind("Preperation") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="PrepTb" 
                ErrorMessage="<br/> Preperation is required." Display="Dynamic">
              </asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Preperation") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
            <asp:CommandField ButtonType="Button" ShowInsertButton="True" InsertText="Save" ShowCancelButton="False" />
        </Fields>
    </asp:DetailsView>
    <br />
    <br />
    <br />
    <br />




</asp:Content>

