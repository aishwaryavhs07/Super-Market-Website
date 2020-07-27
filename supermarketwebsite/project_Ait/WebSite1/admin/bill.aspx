<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bill.aspx.cs" Theme="Theme1" Inherits="admin_bill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="left1">
        <div class="form1">

              
                     <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" class="b1" Text="Update Inventory" Width="150px" />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" class="b1" Text="Bill Generation" />
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" class="b1"  Text="Sales Statistics"  />
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" class="b1"  Text="Change Price" />
                     <asp:Button ID="Button8" runat="server" Text="Logout" class="b1"   OnClick="Button8_Click" />
                     <br />
                     <br />
                     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="Label2" runat="server" Text="Enter Serial Number:"></asp:Label>
&nbsp;
                     <asp:TextBox ID="TextBox1" runat="server" Width="240px" TextMode="Password"></asp:TextBox>
                     <br />
                     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="Button7" class="b1" runat="server" OnClick="Button7_Click" Text="Generate Bill" Width="209px" />
         <br />
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


         <br />



                     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="Serial Number:"></asp:Label>
&nbsp; &nbsp;&nbsp;&nbsp; 
         <asp:Label ID="Label8" runat="server"></asp:Label>
                     <br />



          <br />
         <asp:GridView ID="GridView1" runat="server" style="margin-left: 32px">
         </asp:GridView>
         <br /><br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label4" runat="server" Text="Total Amount:"></asp:Label>
         &nbsp;
         <asp:Label ID="Label7" runat="server"></asp:Label>
         <br />
&nbsp;



         <br />
              

            </div>
         </div>
</asp:Content>

