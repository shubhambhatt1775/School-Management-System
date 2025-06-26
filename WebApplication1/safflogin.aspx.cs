using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



namespace WebApplication1
{
    public partial class safflogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\final sms\WebApplication1\App_Data\Database1.mdf;Integrated Security=True;User Instance=True");
       
        protected void Page_Load(object sender, EventArgs e)
        {
            Multiview1.ActiveViewIndex = 0;
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            Multiview1.ActiveViewIndex = 1;

            con.Open();
 
            SqlCommand cmd = new SqlCommand("select * from [stafflog] where name =@name and password=@password ");

            cmd.Connection = con;

            cmd.Parameters.AddWithValue("@name", name.Text.ToString());
            cmd.Parameters.AddWithValue("@password", password.Text.ToString());

            SqlDataReader dr = cmd.ExecuteReader(); 
            if (dr.Read())
            {
                Session["name"] = dr.GetValue(0).ToString();
                Session["passsword"] = dr.GetValue(0).ToString();

                Response.Redirect("~/sthome.aspx");

            }
            else
            {


                Response.Write("<Script> alert ('worng password');</Script>");
            }

            Response.Redirect("~/home.aspx");
            

  
        }

      
    }
}