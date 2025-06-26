using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace WebApplication1
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bca"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;

            
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from [adminlogin] where admin =@admin and password=@password ");

            cmd.Connection=con;

            cmd.Parameters.AddWithValue("@admin",admin.Text.ToString());
            cmd.Parameters.AddWithValue("@password",password.Text.ToString());

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["admin"] = dr.GetValue(0).ToString();
                Session["passsword"] = dr.GetValue(0).ToString();

                Response.Redirect("~/admindesbord.aspx");

            }
            else {


                Response.Write("<Script> alert ('worng password');</Script>");
            }

            Response.Redirect("~/home.aspx");
            
    

        }
    }
}