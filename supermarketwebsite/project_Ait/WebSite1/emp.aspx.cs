using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class emp : System.Web.UI.Page
{
SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["supermarket"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        
        con.Open();


        string checkuser = "select count(*) from employees where empid='" + TextBox1.Text + "'";
        
        SqlCommand cmd = new SqlCommand(checkuser, con);
       
        int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
        con.Close();
        if (temp == 1)
        {
            con.Open();
            string checkpass = "select pass from employees where empid='" + TextBox1.Text + "'";
            SqlCommand passcmd = new SqlCommand(checkpass, con);
            string password = passcmd.ExecuteScalar().ToString().Replace(" ", "");

            if (password == TextBox2.Text)
            {
                Session["newemp"] = TextBox1.Text;
                Response.Write("Login successful!");
                Response.Redirect("~/admin/empprofile.aspx");
            }
            else
                Response.Write("Login unsuccessful! Please try again" );
        }
     
        else
            Response.Write("Login unsuccessful! Please try again" + temp);
    }
}