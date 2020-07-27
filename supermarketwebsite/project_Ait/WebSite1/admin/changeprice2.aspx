<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Theme="Theme1" CodeFile="changeprice2.aspx.cs" Inherits="admin_changeprice2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 299px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="left1">

        <div class="form1">
            <br />
            <br />
            <asp:Button ID="Button3" class="b1" runat="server" OnClick="Button3_Click" style="margin-left: 800px" Text="Back" Width="73px" />
            <br />
            <br />

            <table style="width:100%;">
              <tr>
                  <td class="auto-style1">
                      <asp:Label ID="Label2" runat="server" Text="Select Category:"></asp:Label>
                      <br />
                      <br />
                  </td>
                  <td class="auto-style2">
                      <asp:DropDownList ID="DropDownList1" runat="server" Height="18px" Width="170px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" >
                          <asp:ListItem>food</asp:ListItem>
                          <asp:ListItem>electronics</asp:ListItem>
                          <asp:ListItem>clothing</asp:ListItem>
                      </asp:DropDownList>
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">
                      <asp:Label ID="Label3" runat="server" Text="Select Item:"></asp:Label>
                      <br />
                      <br />
                  </td>
                  <td class="auto-style2">
                      <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="170px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                      </asp:DropDownList>
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1">
                      <asp:Label ID="Label5" runat="server" Text="Enter Price:"></asp:Label>
                      <br />
                      <br />
                  </td>
                  <td class="auto-style2">
                      <asp:TextBox ID="TextBox1" runat="server" Width="170px"></asp:TextBox>
                  </td>
                  <td>&nbsp;</td>
              </tr>
                <tr>
                  <td class="auto-style1">
                      <br />
          <asp:Button ID="Button2" runat="server" Text="Submit" Width="112px" style="margin-left: 143px" class="b1" OnClick="Button2_Click" />

                      <br />
                  </td>
                  <td class="auto-style2">
                      <asp:Label ID="Label6" runat="server" ForeColor="#339933"></asp:Label>
                    </td>
                  <td>&nbsp;</td>
              </tr>
          </table>
   
          <br />

          <br />
          <br />
          <br />
          <br />
          <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
        </div>
    </div>
</asp:Content>

