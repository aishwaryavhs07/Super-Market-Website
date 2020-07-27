<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public class Handler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {

        if (context.Request.QueryString["id"] == null) return;
        
string  constr=ConfigurationManager.ConnectionStrings["supermarket"].ToString();

string id = context.Request.QueryString["id"];
      using (SqlConnection con = new SqlConnection(constr))
      {

          using (SqlCommand cmd = new SqlCommand("select pics from products where id=@id", con))
          {
              cmd.Parameters.Add(new SqlParameter("@id", id));
              
              con.Open();
              using (SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection))
              {
                  reader.Read();
                  context.Response.BinaryWrite((Byte[])reader[reader.GetOrdinal("pics")]);
                  reader.Close();
              }
          }
      }


        
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }
    
}