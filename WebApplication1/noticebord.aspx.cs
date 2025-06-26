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
    public partial class noticebord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bca"].ConnectionString))
            {

                using (SqlCommand cmd = new SqlCommand(@"INSERT INTO notice (notice) VALUES(@notice)", con))
                {

                    cmd.Parameters.AddWithValue("@notice", notice.Text);
                    

                    con.Open();
                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert('your notice is send')</script>");


                    con.Close();
                }


                Response.Redirect("admindesbord.aspx");
            }
        }

    }
}