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
    public partial class paym : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Button1_Click1(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bca"].ConnectionString))
            {
               

                using (SqlCommand cmd = new SqlCommand(@"INSERT INTO fess(contenctno,date,amount)VALUES(@contenctno,@date,@amount)", con))
                {
                    cmd.Parameters.AddWithValue("@contenctno", contenctno.Text);
                    cmd.Parameters.AddWithValue("@date", date.Text);
                    cmd.Parameters.AddWithValue("@amount", TextBox6.Text);

                    con.Open();
                    cmd.ExecuteNonQuery();

                    con.Close();
                }
                    Response.Redirect("~/home.aspx");
                }
            }
        }
    }
