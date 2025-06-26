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
    public partial class home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bca"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void Button2_Click1(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO suggetion(sug,mobileno)VALUES('" + txtInput.Text + "','" + txtMoblieNo.Text + "')");
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('your suggetion is submited, thanks for being a part of improving us!!')</script>");
            txtInput.Text = " ";
            txtMoblieNo.Text = " ";
        }

     
   
        protected void Button1_Click1(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO complainbox(mno,com)VALUES('" + TextBox3.Text + "','" + TextBox1.Text + "')");
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('your complain is submited, thanks for being a part of improving us!!')</script>");
            TextBox1.Text = " ";
            TextBox3.Text = " ";

  
        }
}
}