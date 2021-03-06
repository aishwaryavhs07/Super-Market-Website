﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class food : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["supermarket"].ConnectionString);
        if (Session["new"] != null)
        {
            Label7.Text = Session["new"].ToString();




            //grid view starts
            GridView1.Visible = true;

            SqlDataAdapter da = new SqlDataAdapter("select name,price from products where category='food'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            DataBind();
            //grid view ends

            //dropdownlist populate

            con.Open();
            string q = "select name from products where category='food'";
            SqlCommand cmd1 = new SqlCommand(q, con);
            SqlDataReader dr = cmd1.ExecuteReader();
            while (dr.Read())
            {
                DropDownList2.Items.Add(dr[0].ToString());

            }

            con.Close();

        }
        else
        {

            GridView1.Visible = true;
            DropDownList2.Visible = false;
            DropDownList1.Visible = false;
            Label2.Visible = false;
            Label4.Visible = false;

            Label6.Visible = false;
            Button3.Visible = false;
            Button4.Visible = false;
            Label8.Visible = false;
            TextBox1.Visible = false;

            SqlDataAdapter da = new SqlDataAdapter("select name,price from products where category='food'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            DataBind();
            
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/billing.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["supermarket"].ConnectionString);

        con.Open();
        string check = "select count(*) from products where name ='" + DropDownList2.SelectedValue + "' and quantity >= '" + DropDownList1.SelectedValue + "' and category='food'";
        SqlCommand cmd1 = new SqlCommand(check, con);
        string p = "select price from products where name ='" + DropDownList2.SelectedValue + "'and category='food'";
        SqlCommand cmd2 = new SqlCommand(p, con);
        int temp1 = Convert.ToInt32(cmd2.ExecuteScalar().ToString());

        int temp2 = Convert.ToInt32(DropDownList1.SelectedValue);
        string p1 = "select quantity from products where name ='" + DropDownList2.SelectedValue + "'and category='food'";
        SqlCommand cmd3 = new SqlCommand(p1, con);
        int temp3 = Convert.ToInt32(cmd3.ExecuteScalar().ToString());

        int temp4 = temp3 - temp2; //changed quantity

        int total = temp1 * temp2;


        int temp = Convert.ToInt32(cmd1.ExecuteScalar().ToString());
        con.Close();
        if (temp == 1)
        {
            SqlCommand cmd = new SqlCommand("insert into custcart(custid,product,quantity,code,price,total,orderdate) values('" + Session["new"].ToString() + "','" + DropDownList2.SelectedValue + "' ,'" + DropDownList1.SelectedValue + "','" + TextBox1.Text + "','" + temp1 + "','" + total + "', @orderdate )", con);
            con.Open();
            //add parameter for current date
            cmd.Parameters.Add("@orderdate", SqlDbType.DateTime);
            cmd.Parameters["@orderdate"].Value = DateTime.Now;
            cmd.ExecuteNonQuery();
            con.Close();

            SqlCommand com = new SqlCommand("update products set quantity='" + temp4 + "' where name='" + DropDownList2.SelectedItem.Text + "' and category='food' ", con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            Label5.Text = "Added item:" + DropDownList2.SelectedItem.Text + DropDownList1.SelectedValue;
        }
        else
        {
            Label5.Text = "Product out of stock";
        }

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
{

}
}
    
