<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" Theme="Theme1" AutoEventWireup="true" CodeFile="empprofile.aspx.cs" Inherits="admin_empprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 139px;
            height: 29px;
        }
        .auto-style3 {
            height: 29px;
        }
        .auto-style4 {
            width: 139px;
        }
        .auto-style5 {
            width: 249px;
        }
        .auto-style6 {
            height: 29px;
            width: 249px;
        }
        .auto-style7 {
            width: 139px;
            height: 43px;
        }
        .auto-style8 {
            width: 249px;
            height: 43px;
        }
        .auto-style9 {
            height: 43px;
        }
        .auto-style13 {
            height: 43px;
            width: 714px;
        }
        .auto-style14 {
            height: 29px;
            width: 714px;
        }
        .auto-style15 {
            width: 504px;
            height: 43px;
        }
        .auto-style16 {
            height: 29px;
            width: 504px;
        }
        .auto-style17 {
            width: 1416px;
            height: 43px;
        }
        .auto-style18 {
            width: 1416px;
            height: 29px;
        }
        .auto-style19 {
            width: 139px;
            height: 26px;
        }
        .auto-style20 {
            width: 249px;
            height: 26px;
        }
        .auto-style21 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="left1">
        <div class="form1">
            <asp:Button ID="Button3" class="b1"  runat="server" OnClick="Button3_Click" Text="Update Inventory" Width="150px" />
            <asp:Button ID="Button4" class="b1" runat="server" OnClick="Button4_Click" Text="Bill Generation" Width="150px" />
            <asp:Button ID="Button5" class="b1" runat="server" OnClick="Button5_Click" Text="Sales Statistics" Width="150px" />
            <asp:Button ID="Button6" class="b1" runat="server" OnClick="Button6_Click" Text="Change Price" Width="150px" />
            <asp:Button ID="Button8" class="b1" runat="server" Text="Logout" Width="150px" OnClick="Button8_Click" />
            <br />
            <br />
            <asp:Label ID="Label9" runat="server" Text="Welcome" Font-Italic="True"></asp:Label>
            &nbsp;
            <asp:Label ID="Label10" runat="server"></asp:Label>
            <br />
            <br />
            <br />
    <asp:Wizard ID="Wizard1" runat="server" BackColor="#F7F6F3" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" Height="532px" ActiveStepIndex="0" Width="829px" style="margin-left: 152px" OnFinishButtonClick="Wizard1_FinishButtonClick">
        <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Left" />
        <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
        <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
        <SideBarStyle BackColor="#7C6F57" BorderWidth="0px" Font-Size="0.9em" VerticalAlign="Top" />
        <StepStyle BorderWidth="0px" ForeColor="#5D7B9D" />
        <WizardSteps>
            <asp:WizardStep runat="server" title="Add Product">

                <table style="width: 60%; height: 107px;">
                    <tr>
                        <td class="auto-style19">
                            <asp:Label ID="Label3" runat="server" Font-Size="18px" ForeColor="Black" Text="Product Name"></asp:Label>
                        </td>
                        <td class="auto-style20">
                            <asp:TextBox ID="TextBox1" runat="server" Width="196px"></asp:TextBox>
                        </td>
                        <td class="auto-style21"></td>
                    </tr>
                    <tr>
                        <td class="auto-style17">
                            <asp:Label ID="Label4" runat="server" Font-Size="18px" ForeColor="Black" Text="Category"></asp:Label>
                        </td>
                        <td class="auto-style15">
                            <asp:TextBox ID="TextBox2" runat="server" Width="196px"></asp:TextBox>
                        </td>
                        <td class="auto-style13"></td>
                    </tr>
                     <tr>
                        <td class="auto-style18">
                            <asp:Label ID="Label14" runat="server" Font-Size="18px" ForeColor="Black" Text="Cost Price"></asp:Label>
                        </td>
                        <td class="auto-style16">
                            <asp:TextBox ID="TextBox6" runat="server" Width="196px"></asp:TextBox>
                        </td>
                        <td class="auto-style14">
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">
                            <asp:Label ID="Label5" runat="server" Font-Size="18px" ForeColor="Black" Text="Price"></asp:Label>
                        </td>
                        <td class="auto-style16">
                            <asp:TextBox ID="TextBox3" runat="server" Width="196px"></asp:TextBox>
                        </td>
                        <td class="auto-style14">
                            <br />
                            <br />
                        </td>
                    </tr>
                
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label6" runat="server" Font-Size="18px" ForeColor="Black" Text="Product Image"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label7" runat="server" Font-Size="18px" ForeColor="Black" Text="Quantity"></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <asp:TextBox ID="TextBox4" runat="server" Width="196px"></asp:TextBox>
                        </td>
                        <td class="auto-style9"></td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Button ID="Button2" class="b1" runat="server" OnClick="Button2_Click" Text="Submit"  />
                        </td>
                        <td class="auto-style6">
                            <asp:Label ID="Label8" runat="server" Font-Size="18px" ForeColor="Black"></asp:Label>
                        </td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                </table>

            </asp:WizardStep>
            <asp:WizardStep runat="server" title="Display Inventory">
            &nbsp;    <asp:Label ID="Label11" runat="server" Text="Are you the Manager?" Font-Size="18px"></asp:Label>
                <br />
                <br />
                <br />

               &nbsp; &nbsp; <asp:Label ID="Label12" runat="server" Text="Enter Password:" Font-Size="16px"></asp:Label>  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox5_TextChanged" TextMode="Password"></asp:TextBox>

                <br />
                <br />
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label13" runat="server" Font-Italic="True" Font-Size="16px"></asp:Label>

                <br />
                <br />
                <br />

                <asp:Button ID="Button7" runat="server" class="b1"  OnClick="Button7_Click1" Text="Display" Width="100px" Height="27px" style="margin-left: 32px" />
                <br />
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Visible="False" AutoGenerateColumns="False" style="margin-left: 27px">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" /> 
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
               <Columns>

                <asp:TemplateField HeaderText="Id">
                    <ItemTemplate>
                      <asp:Label ID="label1" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                   <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                      <asp:Label ID="label2" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                   <asp:TemplateField HeaderText="Category">
                    <ItemTemplate>
                      <asp:Label ID="label3" runat="server" Text='<%#Eval("category") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                      <asp:TemplateField HeaderText="Price">
                    <ItemTemplate>
                      <asp:Label ID="label4" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                     <asp:TemplateField HeaderText="Quantity">
                    <ItemTemplate>
                      <asp:Label ID="label5" runat="server" Text='<%#Eval("quantity") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>


          
                
               </Columns>
            </asp:GridView>
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>
            </div>
         </div>
</asp:Content>

