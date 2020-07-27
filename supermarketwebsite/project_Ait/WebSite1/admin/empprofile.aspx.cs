using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_empprofile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["supermarket"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["newemp"] != null)
        {
            Label10.Text = Session["newemp"].ToString();


        }
        else
            Response.Redirect("~/emp.aspx");

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
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            //image upload
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath(".")+"//uploads//"+str);
            string path = "~//uploads//" + str.ToString();


            int temp1 = Convert.ToInt32(TextBox3.Text);
            int temp2 = Convert.ToInt32(TextBox6.Text);
           

            int temp3 = temp1 - temp2; //calculate profit
               con.Open();
               SqlCommand cmd = new SqlCommand("insert into products values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + path + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + temp3 + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
             Label8.Text="uploaded!!";

             GridView1.Visible = true;

             SqlDataAdapter da = new SqlDataAdapter("select * from products", con);
             DataTable dt = new DataTable();
             da.Fill(dt);
             GridView1.DataSource = dt;
             DataBind();


        }

        else
        {
          Label8.Text="Please upload an image!";
        }
    }
   
   
    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {

        GridView1.Visible = true;

        SqlDataAdapter da = new SqlDataAdapter("select * from products", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        DataBind();


    }
    protected void Button7_Click1(object sender, EventArgs e)
    {
        if (TextBox5.Text == "managerpass")
        {
            GridView1.Visible = true;

            SqlDataAdapter da = new SqlDataAdapter("select * from products", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            DataBind();
        }

        else
        {
            Label13.Text = "Wrong Password ! Please Enter Again! ";
        }

    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Session.Remove("newemp");
    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
}