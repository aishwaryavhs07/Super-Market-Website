using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class profile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["supermarket"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["new"] != null)
        {
            Label2.Text = Session["new"].ToString();
            Label4.Text = Guid.NewGuid().ToString();


            //grid view starts
            GridView1.Visible = true;

            SqlDataAdapter da = new SqlDataAdapter("select product,quantity,code,price,total,orderdate from custcart where custid='"+Label2.Text+"' ", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            DataBind();
            //grid view ends

            
            //("select product,quantity,code,price,total,orderdate from custcart ", con);
           
          
        }
        else
            Response.Redirect("~/login.aspx");
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
    }
    
}