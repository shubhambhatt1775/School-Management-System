using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class admindesboird : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("studentdata.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("timetable.aspx");
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("suggetion.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("adminlog.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("staffdadmin.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("admindatabase.aspx");
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("staffleavedata.aspx");
        }

        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {
             Response.Redirect("studentleavedata.aspx");
        
        }

        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("fees.aspx");
        }

        
     

        protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("complainbox.aspx");
        }

        
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("noticebord.aspx");
        }
}
}