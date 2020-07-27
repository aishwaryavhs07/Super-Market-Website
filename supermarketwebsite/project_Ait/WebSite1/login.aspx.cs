using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["supermarket"].ConnectionString);
               con.Open();
               string checkuser = "select count(*) from userdetails where username='" + TextBox1.Text + "'";
                SqlCommand cmd= new SqlCommand(checkuser,con);
                int temp = 0;
                temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                con.Close();
                if (temp == 1)
                {
                    con.Open();
                    string checkpass = "select pass from userdetails where username='" + TextBox1.Text + "'";
                    SqlCommand passcmd = new SqlCommand(checkpass,con);
                    string password = passcmd.ExecuteScalar().ToString().Replace(" ","");
                    
                    if (password == TextBox2.Text)
                    {
                        Session["new"] = TextBox1.Text;
                        Response.Write("Login successful!");
                            Response.Redirect("profile.aspx");
                    }
                    else
                        Response.Write("Login unsuccessful! Please try again"+password);
                }
                else
                    Response.Write("Login unsuccessful! Please try again"+temp);



    }
}