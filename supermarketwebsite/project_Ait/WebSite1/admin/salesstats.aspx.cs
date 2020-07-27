using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_salesstats : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    
    {
        
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       Label4.Text= Calendar3.SelectedDate.ToShortDateString();
      
       
    
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
         Label5.Text= Calendar4.SelectedDate.ToShortDateString();
      
       
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
       
        MultiView1.SetActiveView(View2);

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["supermarket"].ConnectionString);

        SqlCommand com = new SqlCommand("select product,quantity,price,total,profit from custcart where orderdate between '" + Calendar3.SelectedDate.ToString() + "' and '" + Calendar4.SelectedDate.ToString() + "'", con);


        con.Open();
        SqlDataReader reader = com.ExecuteReader();
        GridView1.Visible = true;
        GridView1.DataSource = reader;
        GridView1.DataBind();
        con.Close();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {

    }
    protected void Button6_Click(object sender, EventArgs e)
    {

    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/empprofile.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/bill.aspx");
    }
    protected void Button5_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/salesstats.aspx");
    }
    protected void Button6_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/changeprice.aspx");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/emp.aspx");
    }
}