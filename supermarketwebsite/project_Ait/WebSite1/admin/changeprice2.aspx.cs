using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_changeprice2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["supermarket"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        /*if (Session["newemp"] != null)
        {
          


        }
        else
            Response.Redirect("~/emp.aspx");*/
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        string q = "select name from products where category='" + DropDownList1.SelectedValue + "'";
        SqlCommand cmd1 = new SqlCommand(q, con);
        SqlDataReader dr = cmd1.ExecuteReader();
        DropDownList2.DataSource = dr;
        DropDownList2.Items.Clear();
        DropDownList2.DataTextField = "name";
        DropDownList2.DataValueField = "name";
        DropDownList2.DataBind();

        con.Close();

       
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
      
        SqlCommand cmd2 = new SqlCommand("update products set price='" + TextBox1.Text + "'  where name='" + DropDownList2.SelectedValue + "'   and category='" + DropDownList1.SelectedValue + "'", con);
        con.Open();
        cmd2.ExecuteNonQuery();

        con.Close();

        con.Open();
        string p1 = "select cp from products where name ='" + DropDownList2.SelectedValue + "'and category='" + DropDownList1.SelectedValue + "'";
        SqlCommand cmd3 = new SqlCommand(p1, con);
        int temp1 = Convert.ToInt32(cmd3.ExecuteScalar().ToString());

        con.Close();

        //cost price found as temp1
       
       
        
        int profit = Convert.ToInt32(TextBox1.Text) - temp1;
        
        SqlCommand cmd4 = new SqlCommand("update products set profit='" +profit+ "'  where name='" + DropDownList2.SelectedValue + "'   and category='" + DropDownList1.SelectedValue + "'", con);
       con.Open();
        cmd4.ExecuteNonQuery();
        con.Close();
        Label6.Text = "Updated Price !";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/empprofile.aspx");
    }
}