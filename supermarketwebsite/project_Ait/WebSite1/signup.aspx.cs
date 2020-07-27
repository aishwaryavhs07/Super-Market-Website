using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class _Default : System.Web.UI.Page
{
 
   

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

  
        if (!Page.IsValid)
        {
            Label1.Text += "Registration unsuccessful !";
            return;
        }
        else
        {
            

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["supermarket"].ConnectionString);
            SqlCommand cmd = new SqlCommand("insert into userdetails(name,username,pass,birth,gender,mobile,email,location) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + Password2.Text + "','" + DropDownList1.SelectedValue + TextBox9.Text + TextBox10.Text + "','" + DropDownList3.SelectedValue + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + DropDownList2.SelectedValue + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Visible = true;
            Label1.Text = "data stored successfully " + TextBox1.Text;

            TextBox1.Text = " ";
            TextBox2.Text = " ";
            TextBox7.Text = " ";
            TextBox8.Text = " ";
            TextBox9.Text = " ";
            TextBox10.Text = " ";
            Password1.Text = " ";
            Password2.Text = " ";
            

        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");

    }
}                      