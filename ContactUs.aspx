<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div id="contact">

    <span class="contactinfo">Your email:</span>
    <br />
    <span class="entryboxes"><asp:TextBox ID="TBEmail" runat="server" Width="212px"></asp:TextBox></span>
    <br />
    <br />
    <span class="contactinfo">Your Message:</span>
        <br />
    <asp:TextBox ID="TBMessage" runat="server" Height="150px" Width="430px" CssClass="TBMes" TextMode="MultiLine"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="SubmitButton" runat="server" Text="Submit" CssClass="button" />
    <br />
    <br />
    <br />
    <br />
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <p>
    </p>
</asp:Content>

