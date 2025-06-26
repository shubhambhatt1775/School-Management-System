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
    public partial class leaveapplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bca"].ConnectionString))
            {

                using (SqlCommand cmd = new SqlCommand(@"INSERT INTO studentleave (sname,std,rollnumber,ldate,todate,reason) VALUES(@sname,@std,@rollnumber,@ldate,@todate,@reason)", con))
                {

                    cmd.Parameters.AddWithValue("@sname", sname.Text);
                    cmd.Parameters.AddWithValue("@std", std.Text);
                    cmd.Parameters.AddWithValue("@rollnumber", rollnumber.Text);
                    cmd.Parameters.AddWithValue("@ldate", ldate.Text);
                    cmd.Parameters.AddWithValue("@todate", todate.Text);
                    cmd.Parameters.AddWithValue("@reason", reason.Text);

                    con.Open();
                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert('your leave application is send')</script>");


                    con.Close();
                }


                Response.Redirect("home.aspx");

            }
        }
    }
}