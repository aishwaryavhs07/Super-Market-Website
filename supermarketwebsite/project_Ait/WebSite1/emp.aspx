<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" Theme="Theme1"  AutoEventWireup="true" CodeFile="emp.aspx.cs" Inherits="emp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #Password1 {
            width: 200px;
            margin-left: 0px;
        }
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            height: 26px;
            width: 266px;
        }
        .auto-style3 {
            width: 266px;
        }
        .auto-style4 {
            height: 26px;
            width: 202px;
        }
        .auto-style5 {
            width: 202px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <div class="left1">
        <div class="form1">
    <p>
       
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
            <p>
       
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; LOGIN&nbsp;</p>
            <p>
       
                <table style="width:48%;">
                    <tr>
                        <td class="auto-style2">
            <p>
       
                &nbsp;Employee id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </p>
                        </td>
                        <td class="auto-style4">
                <asp:TextBox ID="TextBox1" runat="server" style="margin-bottom: 2px" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style1"></td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
    <p style="width: 277px">
        &nbsp;&nbsp;&nbsp;Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
                        </td>
                        <td class="auto-style5"> 
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="196px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Submit" class="b1" OnClick="Button1_Click" />
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </p>
            <p>
       
                &nbsp;</p>
            <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
            </div>
   </div>
</asp:Content>

