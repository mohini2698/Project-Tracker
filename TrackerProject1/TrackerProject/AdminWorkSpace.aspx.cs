using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrackerProject
{
    public partial class AdminWorkSpace : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UserID_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddUsers.aspx");
        }

        protected void ClientID_Click(object sender, EventArgs e)
        {
            Response.Redirect("Clients.aspx");
        }

        protected void ProjectID_Click(object sender, EventArgs e)
        {
            string Username = Request.QueryString["Username"];

            Response.Redirect("Projects.aspx?Username=" + Username);
        }

        protected void Homebutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}