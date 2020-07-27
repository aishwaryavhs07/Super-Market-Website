using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



public partial class billing : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["supermarket"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["new"] != null)
        {
        }
        else
        {
            Response.Redirect("~/login.aspx");
        }
       


    }
    protected void Button2_Click(object sender, EventArgs e)
    {


        MultiView1.SetActiveView(View1);

        Label2.Text = TextBox1.Text;
        Label6.Text = Session["new"].ToString();
        GridView1.Visible = true;

        SqlDataAdapter da = new SqlDataAdapter("select id,product,quantity,price,total from custcart where code='" + TextBox1.Text + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        DataBind();

        con.Open();
        SqlCommand cmd = new SqlCommand("select sum(total) from custcart where code='" + TextBox1.Text + "'", con);
        int temp1 = Convert.ToInt32(cmd.ExecuteScalar().ToString());
        Label4.Text = temp1.ToString();
        con.Close();
       

      
    }
}