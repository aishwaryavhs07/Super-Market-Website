<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master"  AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="_Default" Theme="Theme1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        #Password2 {
        }
        #Password1 {
            width: 196px;
            margin-left: 0px;
        }
        .auto-style1 {
            width: 223px;
        }
        .auto-style3 {
            height: 9px;
        }
        .auto-style5 {
            height: 9px;
            width: 223px;
        }
        .auto-style11 {
            width: 223px;
            height: 26px;
        }
        .auto-style13 {
            height: 26px;
        }
        .auto-style18 {
            width: 223px;
            height: 20px;
        }
        .auto-style20 {
            height: 20px;
        }
        .auto-style21 {
        width: 359px;
    }
    .auto-style22 {
        height: 9px;
        width: 359px;
    }
    .auto-style23 {
        width: 359px;
        height: 20px;
    }
    .auto-style24 {
        width: 359px;
        height: 26px;
    }
    </style>
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="left1">
    <div class="form1">
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CREATE AN ACCOUNT&nbsp;</p>
        <p>
         &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
    <p>
      
        <table style="width: 100%; height: 105px;">
            <tr>
                <td class="auto-style1">&nbsp;Name*</td>
                <td class="auto-style21">
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="196px" style="margin-left: 0px"></asp:TextBox>
            <br />
                &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*required" ControlToValidate="TextBox1" ForeColor="Red" Font-Size="14px"></asp:RequiredFieldValidator>
                </td>
                <td>
        
        &nbsp; <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="enter a valid name" ControlToValidate="Textbox1" ForeColor="Red" ValidationExpression="^[a-zA-Z'.\s]{1,40}$" Font-Size="14px"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">

      
    <p style="width: 240px">
        Choose Username*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
       &nbsp; 
    &nbsp;</p>
                </td>
                <td class="auto-style21"> <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox1_TextChanged" Width="196px" ></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*required" ControlToValidate="TextBox2" ForeColor="Red" Font-Size="14px"></asp:RequiredFieldValidator>  </td>
                <td> 
    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="enter a valid username" ValidationExpression="^[a-zA-Z0-9](_(?!(\.|_))|\.(?!(_|\.))|[a-zA-Z0-9]){6,18}[a-zA-Z0-9]$" ControlToValidate="TextBox2" ForeColor="Red" Font-Size="14px"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Create a Password*&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td class="auto-style21">
        <asp:TextBox ID="Password2" runat="server" OnTextChanged="TextBox1_TextChanged" Width="196px" TextMode="Password" ></asp:TextBox>
                <br />
                  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*required" ForeColor="Red" ControlToValidate="Password2" Font-Size="14px"></asp:RequiredFieldValidator>
                </td>
                <td>
        
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="enter a valid password" ValidationExpression="^[a-zA-Z0-9\s]{7,10}$" ControlToValidate="Password2" ForeColor="Red" Font-Size="14px"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
      
            <tr>
                <td class="auto-style1">Confirm your Password*</td>
                <td class="auto-style21">
        <asp:TextBox ID="Password1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="196px" TextMode="Password" ></asp:TextBox>
                </td>
                <td><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="the passwords donot match" ControlToValidate="Password1" ControlToCompare="Password2" ForeColor="Red" Font-Size="14px"></asp:CompareValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
    <p>
        Birthday&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;
        &nbsp;
        </p>
                </td>
                <td class="auto-style22">
        <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="89px">
            <asp:ListItem>January</asp:ListItem>
            <asp:ListItem>February</asp:ListItem>
            <asp:ListItem>March</asp:ListItem>
            <asp:ListItem>April</asp:ListItem>
            <asp:ListItem>May</asp:ListItem>
            <asp:ListItem>June</asp:ListItem>
            <asp:ListItem>July</asp:ListItem>
            <asp:ListItem>August</asp:ListItem>
            <asp:ListItem>September</asp:ListItem>
            <asp:ListItem>October</asp:ListItem>
            <asp:ListItem>November</asp:ListItem>
            <asp:ListItem>December</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="TextBox9" runat="server" OnTextChanged="TextBox1_TextChanged" Width="42px" >Day</asp:TextBox>
        <asp:TextBox ID="TextBox10" runat="server" OnTextChanged="TextBox1_TextChanged" Width="41px" >Year</asp:TextBox>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style1">Gender&nbsp;&nbsp;&nbsp;</td>
                <td class="auto-style21">
        <asp:DropDownList ID="DropDownList3" runat="server" Height="21px" Width="196px">
            <asp:ListItem>female</asp:ListItem>
            <asp:ListItem>male</asp:ListItem>
        </asp:DropDownList>
                </td>
                <td>
                    <br />
                </td>
            </tr>
        
            <tr>
                <td class="auto-style18">
    <p>
        &nbsp;Mobile Phone*</p>
                </td>
                <td class="auto-style23">
        <asp:TextBox ID="TextBox7" runat="server" OnTextChanged="TextBox1_TextChanged" Width="196px" ></asp:TextBox>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*required" ControlToValidate="TextBox7" ForeColor="Red" Font-Size="14px"></asp:RequiredFieldValidator> </td>
                <td class="auto-style20">
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="enter a valid number" ValidationExpression="^[0-9]{10}$" ControlToValidate="TextBox7" ForeColor="Red" Font-Size="14px"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">email address*&nbsp;&nbsp;</td>
                <td class="auto-style21">
        <asp:TextBox ID="TextBox8" runat="server" OnTextChanged="TextBox1_TextChanged" Width="196px" ></asp:TextBox>
                    <br />

             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*required" ControlToValidate="TextBox8" ForeColor="Red" Font-Size="14px"></asp:RequiredFieldValidator>   </td>
                <td>
&nbsp; <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="enter valid email id" ControlToValidate="TextBox8" ForeColor="Red" ValidationExpression="^\S+@\S+\.\S+$" Font-Size="14px"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Location&nbsp;</td>
                <td class="auto-style24">
        <asp:DropDownList ID="DropDownList2" runat="server" Height="23px" Width="210px">
            <asp:ListItem>kamath circle</asp:ListItem>
            <asp:ListItem>tiger circle</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
                </td>
                <td class="auto-style13">
                    <br />
                </td>
            </tr>
        </table>
      
        </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;<asp:Button ID="Button2" runat="server" Text="Signup" class="b1" OnClick="Button2_Click"  />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Go to Login" class="b1" />
        </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;</p>
    <p>
        &nbsp;
    &nbsp;&nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
<p>
        &nbsp;</p>
   </div>
    </div>
    </asp:Content>

