using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrackerProject
{
    public partial class EditClient : System.Web.UI.Page
    {
        String nm;
        protected void Page_Load(object sender, EventArgs e)
        {

            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";

            String Em = Request.QueryString["Name"].ToString();
            SqlConnection con = new SqlConnection(CS);
            con.Open();
            //   String sqlselectquery = "Select * from Users where Email ='" + Em + "'";
            String sqlselectquery = " Select Client.ClientId,Name,Projectname,Country,State,Address,Email,Mobile,Skype,WhatsApp from Client inner join ClientContact on Client.ClientId =  ClientContact.ClientId  where Name ='" + Em  +"'";

            SqlCommand cmd = new SqlCommand(sqlselectquery, con);
            SqlDataReader dr = cmd.ExecuteReader();
            
            btnname.Text = Em;
            if (dr.Read())
            {

                nm = dr["Name"].ToString();
                Btncon.Text = dr["Country"].ToString(); 
                btnst.Text = dr["State"].ToString(); 
                btnadd.Text = dr["Address"].ToString();
                btnpname.Text = dr["Projectname"].ToString();
                btnemail.Text = dr["Email"].ToString();
                btnmob.Text = dr["Mobile"].ToString();
                btnsky.Text = dr["Skype"].ToString();
                btnwapp.Text = dr["WhatsApp"].ToString();

            }
            else
            {

            }
            
            con.Close();

            if (!Page.IsPostBack)
            {
                

          
            }


            


            txtcon.Visible = false;
            ImageButton2.Visible = false;

            txtst.Visible = false;
            ImageButton3.Visible = false;

            txtadd.Visible = false;
            ImageButton4.Visible = false;

            txtpname.Visible = false;
            ImageButton5.Visible = false;

            txtemail.Visible = false;
            ImageButton6.Visible = false;

            txtmob.Visible = false;
            ImageButton7.Visible = false;

            txtsky.Visible = false;
            ImageButton8.Visible = false;

            txtwapp.Visible = false;
            ImageButton9.Visible = false;

            
        }

        


        protected void Btncon_Click(object sender, EventArgs e)
        {
            txtcon.Visible = true;
            ImageButton2.Visible = true;
        }

        protected void btnst_Click(object sender, EventArgs e)
        {
            txtst.Visible = true;
            ImageButton3.Visible = true;
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            txtadd.Visible = true;
            ImageButton4.Visible = true;
        }

        protected void btnpname_Click(object sender, EventArgs e)
        {
            txtpname.Visible = true;
            ImageButton5.Visible = true;
        }

        protected void btnemail_Click(object sender, EventArgs e)
        {
            txtemail.Visible = true;
            ImageButton6.Visible = true;

        }

        protected void btnmob_Click(object sender, EventArgs e)
        {
            txtmob.Visible = true;
            ImageButton7.Visible = true;
        }

        protected void btnsky_Click(object sender, EventArgs e)
        {
            txtsky.Visible = true;
            ImageButton8.Visible = true;
        }

        protected void btnwapp_Click(object sender, EventArgs e)
        {
            txtwapp.Visible = true;
            ImageButton9.Visible = true;
        }

        

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            
            Btncon.Text = txtcon.Text;
            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";
            SqlConnection con1 = new SqlConnection(CS);
            con1.Open();
            String sqlselectquery1 = "Update Client set Country ='" + Btncon.Text + "'" + "where Name='" + nm + "'";
            SqlCommand cmd1 = new SqlCommand(sqlselectquery1, con1);
            cmd1.ExecuteScalar();
            con1.Close();
            txtcon.Visible = false;
            ImageButton2.Visible = false;
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            btnst.Text = txtst.Text;
            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";
            SqlConnection con1 = new SqlConnection(CS);
            con1.Open();
            String sqlselectquery1 = "Update Client set State ='" + btnst.Text + "'" + "where Name='" + nm + "'";
            SqlCommand cmd1 = new SqlCommand(sqlselectquery1, con1);
            cmd1.ExecuteScalar();
            con1.Close();
   
            txtst.Visible = false;
            ImageButton3.Visible = false;
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            btnadd.Text = txtadd.Text;
            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";
            SqlConnection con1 = new SqlConnection(CS);
            con1.Open();
            String sqlselectquery1 = "Update Client set Address ='" + btnadd.Text + "'" + "where Name='" + nm + "'";
            SqlCommand cmd1 = new SqlCommand(sqlselectquery1, con1);
            cmd1.ExecuteScalar();
            con1.Close();

            txtadd.Visible = false;
            ImageButton4.Visible = false;
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            btnpname.Text = txtpname.Text;
            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";
            SqlConnection con1 = new SqlConnection(CS);
            con1.Open();
            String sqlselectquery1 = "Update Client set Projectname ='" + btnpname.Text + "'" + "where Name='" + nm + "'";
            SqlCommand cmd1 = new SqlCommand(sqlselectquery1, con1);
            cmd1.ExecuteScalar();
            con1.Close();
            
            txtpname.Visible = false;
            ImageButton5.Visible = false;

        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            btnemail.Text = txtemail.Text;
            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";
            SqlConnection con1 = new SqlConnection(CS);
            con1.Open();
            String sqlselectquery1 = "Update ClientContact set Email ='" + btnemail.Text + "'" + "where Contactname='" + nm + "'";
            SqlCommand cmd1 = new SqlCommand(sqlselectquery1, con1);
            cmd1.ExecuteScalar();
            con1.Close();
            txtemail.Visible = false;
            ImageButton6.Visible = false;
        }

        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {
            btnmob.Text = txtmob.Text;
            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";
            SqlConnection con1 = new SqlConnection(CS);
            con1.Open();
            String sqlselectquery1 = "Update ClientContact set Mobile ='" + btnmob.Text + "'" + "where Contactname='" + nm + "'";
            SqlCommand cmd1 = new SqlCommand(sqlselectquery1, con1);
            cmd1.ExecuteScalar();
            con1.Close();
            txtmob.Visible = false;
            ImageButton7.Visible = false;
        }

        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {
            btnsky.Text = txtsky.Text;
            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";
            SqlConnection con1 = new SqlConnection(CS);
            con1.Open();
            String sqlselectquery1 = "Update ClientContact set Skype ='" + btnsky.Text + "'" + "where Contactname='" + nm + "'";
            SqlCommand cmd1 = new SqlCommand(sqlselectquery1, con1);
            cmd1.ExecuteScalar();
            con1.Close();
            txtsky.Visible = false;
            ImageButton8.Visible = false;
        }

        protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
        {
            btnwapp.Text = txtwapp.Text;
            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";
            SqlConnection con1 = new SqlConnection(CS);
            con1.Open();
            String sqlselectquery1 = "Update ClientContact set WhatsApp ='" + btnwapp.Text + "'" + "where Contactname='" + nm + "'";
            SqlCommand cmd1 = new SqlCommand(sqlselectquery1, con1);
            cmd1.ExecuteScalar();
            con1.Close();
            txtwapp.Visible = false;
            ImageButton9.Visible = false;
        }

        protected void Homebutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}