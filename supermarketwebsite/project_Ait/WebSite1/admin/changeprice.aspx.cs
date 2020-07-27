using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_changeprice : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["supermarket"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["newemp"] != null)
        {
          
        }
        else
            Response.Redirect("~/emp.aspx");

    }
   
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (TextBox5.Text == "managerpass")
        {

            string url = "changeprice2.aspx?";
            url += "pass=" + Server.UrlEncode(TextBox5.Text) +"&";
            url += "user=" + Session["newemp"].ToString();
          
            Response.Redirect(url);

        }

        else
        {
            Label13.Text = "Wrong Password ! Please Enter Again! ";
        }
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
      
        Response.Redirect("~/admin/empprofile.aspx");
    
    
    
    }
    protected void Button1_Click(object sender, EventArgs e)
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
    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/emp.aspx");
    }
}