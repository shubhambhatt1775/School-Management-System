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
    public partial class admission : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            MultiView1.ActiveViewIndex = 0;
            
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            Label29.Text = TextBox1.Text;
            Label30.Text = DropDownList1.SelectedItem.Text;
            Label31.Text = TextBox2.Text;
            Label32.Text = TextBox3.Text;
            Label33.Text = TextBox4.Text;
            Label34.Text = TextBox5.Text;
            Label35.Text = TextBox6.Text;
            Label36.Text = TextBox7.Text;
            Label37.Text = TextBox8.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            Label38.Text = TextBox9.Text;
            Label39.Text = TextBox10.Text;
            Label40.Text = TextBox11.Text;
            Label41.Text = TextBox12.Text;
            Label42.Text = TextBox13.Text;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bca"].ConnectionString))
            {

                using (SqlCommand cmd = new SqlCommand(@"INSERT INTO sdata (fullname,gender,contectno,hobbies,address,city,district,state,country,dob,fatherspro,motherspro,annualincome,std)
                                                       VALUES(@fullname,@gender,@contectno,@hobbies,@address,@city,@district,@state,@country,@dob,
                                                                                @fatherspro,@motherspro,@annualincome,@std)", con))
                {
                    cmd.Parameters.AddWithValue("@fullname", Label29.Text);
                    cmd.Parameters.AddWithValue("@gender", Label30.Text);
                    cmd.Parameters.AddWithValue("@contectno", Label31.Text);
                    cmd.Parameters.AddWithValue("@hobbies", Label32.Text);
                    cmd.Parameters.AddWithValue("@address", Label33.Text);
                    cmd.Parameters.AddWithValue("@city", Label34.Text);
                    cmd.Parameters.AddWithValue("@district ", Label35.Text);
                    cmd.Parameters.AddWithValue("@state", Label36.Text);
                    cmd.Parameters.AddWithValue("@country", Label37.Text);
                    cmd.Parameters.AddWithValue("@dob", Label38.Text);
                    cmd.Parameters.AddWithValue("@fatherspro", Label39.Text);
                    cmd.Parameters.AddWithValue("@motherspro", Label40.Text);
                    cmd.Parameters.AddWithValue("@annualincome", Label41.Text);
                    cmd.Parameters.AddWithValue("@std", Label42.Text);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }






                Response.Write("<script>alert('your data is saved succesfully')</script>");
                
                MultiView1.ActiveViewIndex = 3;

                
            }
        }

        

        protected void Button6_Click(object sender, EventArgs e)
        {
          
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
             using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bca"].ConnectionString))
            {


                using (SqlCommand cmd = new SqlCommand(@"INSERT INTO fess(contenctno,date,amount)VALUES(@contenctno,@date,@amount)", con))
                {
                    cmd.Parameters.AddWithValue("@contenctno", contenctno.Text);
                    cmd.Parameters.AddWithValue("@date", date.Text);
                    cmd.Parameters.AddWithValue("@amount", amount.Text);

                    con.Open();
                    cmd.ExecuteNonQuery();

                    con.Close();
                }
                   Response.Redirect("~/home.aspx");
                }
        }
        protected void amount_TextChanged(object sender, EventArgs e)
        {

        }
}
    }
       

        
