<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Theme="Theme1" CodeFile="changeprice.aspx.cs" Inherits="admin_changeprice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="left1">

      <div class="form1">

           <asp:Button ID="Button8" runat="server" Text="Update Inventory" class="b1" OnClick="Button8_Click"/>
             <asp:Button ID="Button1" runat="server"  Text="Bill Generation" class="b1" OnClick="Button1_Click"  />
             <asp:Button ID="Button5" runat="server" Text="Sales Statistics" class="b1" OnClick="Button5_Click" />
             <asp:Button ID="Button6" runat="server" Text="Change Price" class="b1" OnClick="Button6_Click" />
           <asp:Button ID="Button9" runat="server" Text="Logout" class="b1" OnClick="Button9_Click" />
          <br />
          <br />
          <br />

          <br />
          <br />
          <asp:Label runat="server" Text="Are you the Manager?" Font-Size="18px" ID="Label11"></asp:Label>
          <br />
          <br />
          <asp:Label runat="server" Text="Enter Password:" Font-Size="16px" ID="Label12"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:TextBox runat="server" TextMode="Password" ID="TextBox5" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" class="b1" Text="Enter" />
          <br />
          <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;  <asp:Label ID="Label13" runat="server" Font-Size="14px" ForeColor="Red"></asp:Label>
          <br />
          <br />
          <br />
          
      </div>
   </div>

</asp:Content>

