using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_bill : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Label4.Visible = false;
            Label1.Visible=false;
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/empprofile.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/bill.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/salesstats.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/changeprice.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["supermarket"].ConnectionString);
    
        Label4.Visible = true;
       
        Label2.Visible = false;
        TextBox1.Visible = false;

        Button7.Visible = false;
        Label1.Visible = true;
        Label8.Text = TextBox1.Text;
       
        
        GridView1.Visible = true;

        SqlDataAdapter da = new SqlDataAdapter("select custid,id,product,quantity,price,total from custcart where code='" + TextBox1.Text + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        DataBind();

        con.Open();
        SqlCommand cmd = new SqlCommand("select sum(total) from custcart where code='" + TextBox1.Text + "'", con);
        int temp1 = Convert.ToInt32(cmd.ExecuteScalar().ToString());
        Label7.Text = temp1.ToString();
        con.Close();
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/emp.aspx");
    }
}