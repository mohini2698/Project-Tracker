using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrackerProject
{
    public partial class EditUser : System.Web.UI.Page
    {
        String email;
        protected void Page_Load(object sender, EventArgs e)
        {



            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";


            String Em = Request.QueryString["Email"].ToString();
            Response.Write(Em);

            //   string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";
            SqlConnection con = new SqlConnection(CS);
            con.Open();
            String sqlselectquery = "Select * from Users where Email ='" + Em + "'";

            SqlCommand cmd = new SqlCommand(sqlselectquery, con);
            SqlDataReader dr = cmd.ExecuteReader();

            txtuname.Text = Em;
            if (dr.Read())
            {

                email = dr["Email"].ToString();
                btnph1.Text = dr["Mobile"].ToString();
                //btnph2.Text = dr["Mobile2"].ToString();
               // btnorg.Text = dr["OrganisationRole"].ToString();
                

                //   DropDownList1.Text = dr["ProjectStatus"].ToString();


            }
            else
            {

            }
            con.Close();

            if (!Page.IsPostBack)
            {
                /*
                SqlConnection con1 = new SqlConnection(CS);
                con1.Open();
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = "Select Username from Users inner join ProjectTeam on ProjectTeam.UserId=Users.UserId where ProjectTeam.ProjectId ='" + projectid + "'";
                cmd1.Connection = con1;
                SqlDataAdapter da = new SqlDataAdapter(cmd1);
                DataSet ds = new DataSet();
                da.Fill(ds);
                Add_task.DataSource = ds;
                Add_task.DataTextField = "Username";
                // Add_task.DataValueField = "UserId";
                Add_task.DataBind();

                con1.Close();
                */
            }
            

            TextBox1.Visible = false;
            ImageButton1.Visible = false;
            TextBox2.Visible = false;
            ImageButton2.Visible = false;
            TextBox3.Visible = false;
            ImageButton3.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Visible = true;
            ImageButton1.Visible = true;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox2.Visible = true;
            ImageButton2.Visible = true;
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox3.Visible = true;
            ImageButton3.Visible = true;
        }


        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            btnph1.Text = TextBox1.Text;

            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";


            SqlConnection con1 = new SqlConnection(CS);
            con1.Open();
            String sqlselectquery1 = "Update Users set Mobile ='" + btnph1.Text + "'" + "where Email='" + email + "'";
            


            SqlCommand cmd1 = new SqlCommand(sqlselectquery1, con1);


            cmd1.ExecuteScalar();

            con1.Close();
            TextBox1.Visible = false;
            ImageButton1.Visible = false;



        }
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            btnph2.Text = TextBox2.Text;

            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";


            SqlConnection con1 = new SqlConnection(CS);
            con1.Open();
            String sqlselectquery1 = "Update Users set Mobile2 ='" + btnph2.Text + "'" + "where Email='" + email + "'";



            SqlCommand cmd1 = new SqlCommand(sqlselectquery1, con1);


            cmd1.ExecuteScalar();

            con1.Close();

            TextBox2.Visible = false;
            ImageButton2.Visible = false;



        }
        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            btnorg.Text = TextBox3.Text;

            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";


            SqlConnection con1 = new SqlConnection(CS);
            con1.Open();
            String sqlselectquery1 = "Update Users set OrganisationRole ='" + btnorg.Text + "'" + "where Email='" + email + "'";



            SqlCommand cmd1 = new SqlCommand(sqlselectquery1, con1);


            cmd1.ExecuteScalar();

            con1.Close();
            TextBox3.Visible = false;
            ImageButton3.Visible = false;

        }

        protected void Homebutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }








        /*

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            btnph2.Text = TextBox2.Text;
            string CS = @"Server=localhost\SQLEXPRESS;Database=protrack;Trusted_Connection=True;
";

            SqlConnection con1 = new SqlConnection(CS);
            con1.Open();
            String sqlselectquery2 = "Update Users set Mobile ='" + btnph2.Text + "'" + "where Email='" + email + "'";

            SqlCommand cmd1 = new SqlCommand(sqlselectquery2, con1);


            cmd1.ExecuteScalar();

            con1.Close();
            TextBox2.Visible = false;
            ImageButton2.Visible = false;
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            btnorg.Text = TextBox3.Text;
            string CS = @"Server=localhost\SQLEXPRESS;Database=protrack;Trusted_Connection=True;
";

            SqlConnection con1 = new SqlConnection(CS);
            con1.Open();
            String sqlselectquery3 = "Update Users set OrganisationRole ='" + btnorg.Text + "'" + "where Email='" + email + "'";

            SqlCommand cmd1 = new SqlCommand(sqlselectquery3, con1);


            cmd1.ExecuteScalar();

            con1.Close();
            TextBox3.Visible = false;
            ImageButton3.Visible = false;
        }*/
    }

}