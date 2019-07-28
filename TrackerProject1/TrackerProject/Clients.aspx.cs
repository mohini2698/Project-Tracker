using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrackerProject
{
    public partial class Clients : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
               // ShowClients.Visible = false;
               

                GridView1.Visible = false;
                  //  DetailsView1.Visible = false;

             


                lblclientid.Visible = false;
                txtclientid.Visible = false;
                lblcontactid.Visible = false;
                txtcontactid.Visible = false;
                lbllocationid.Visible = false;
                txtlocationid.Visible = false;
                lblprojectid.Visible = false;
                txtprojectid.Visible = false;

               
                lblcountry.Visible = false;
                txtcountry.Visible = false;
                lblstate.Visible = false;
                txtstate.Visible = false;
                lblmobno.Visible = false;
                txtmobno.Visible = false;
                lblskype.Visible = false;
                txtskype.Visible = false;
                lblwhat.Visible = false;
                txtwhat.Visible = false;

               
               
                AdClient.Visible = false;

                GridView1.Visible = false;
                DetailsView1.Visible = false;
                EditDetails.Visible = false;


                searchbox.Visible = false;
                search.Visible = false;
                EditDetails2.Visible = false;
                //Project tab

            }

            
           

            
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (GridView1.SelectedRow==null)
            {
                DetailsView1.Visible = false;
            }
            else
            {
                DetailsView1.Visible = true;
            }
        }
        protected void Client_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";
                using (SqlConnection con = new SqlConnection(CS))
                {


                    if (String.IsNullOrEmpty(txtclientid.Text) || String.IsNullOrEmpty(txtcountry.Text) || String.IsNullOrEmpty(txtstate.Text) ||
                        String.IsNullOrEmpty(txtlocationid.Text) || String.IsNullOrEmpty(txtmobno.Text) || String.IsNullOrEmpty(txtcontactid.Text) ||
                        String.IsNullOrEmpty(txtprojectid.Text))
                    {
                        // Do something...
                        string message = "Please fill all the Details";
                        string script = "window.onload = function(){ alert('";
                        script += message;
                        script += "')};";
                        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                    }

                    else
                    {

                        if (String.IsNullOrEmpty(txtskype.Text))
                        {
                            txtskype.Text = null;


                        }
                        if (String.IsNullOrEmpty(txtwhat.Text))
                        {
                            txtwhat.Text = "0";
                        }


                        SqlCommand cmd = new SqlCommand("RegisterClient", con);
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;

                        SqlParameter paramname = new SqlParameter("@Name", txtclientid.Text);
                        SqlParameter paramcountry = new SqlParameter("@Country", txtcountry.Text);
                        SqlParameter paramstate = new SqlParameter("@State", txtstate.Text);
                        SqlParameter paramaddress = new SqlParameter("@Address", txtlocationid.Text);
                        SqlParameter paramprojectname = new SqlParameter("@Projectname", txtprojectid.Text);




                        cmd.Parameters.Add(paramname);
                        cmd.Parameters.Add(paramcountry);
                        cmd.Parameters.Add(paramstate);
                        cmd.Parameters.Add(paramaddress);
                        cmd.Parameters.Add(paramprojectname);




                        con.Open();


                        int ReturnCode = (int)cmd.ExecuteScalar();

                        Response.Write(ReturnCode);

                        con.Close();
                        SqlCommand cmd1 = new SqlCommand("RegisterClientContact", con);
                        cmd1.CommandType = System.Data.CommandType.StoredProcedure;

                        SqlParameter paramname1 = new SqlParameter("@Contactname", txtclientid.Text);
                        SqlParameter paramemail1 = new SqlParameter("@Email", txtcontactid.Text);
                        SqlParameter parammob1 = new SqlParameter("@Mobile", txtmobno.Text);
                        SqlParameter paramskype = new SqlParameter("@Skype", txtskype.Text);
                        SqlParameter paramwhatsapp = new SqlParameter("@WhatsApp", txtwhat.Text);

                        SqlParameter paramclientid = new SqlParameter("@ClientId", ReturnCode);




                        cmd1.Parameters.Add(paramname1);
                        cmd1.Parameters.Add(paramemail1);
                        cmd1.Parameters.Add(parammob1);
                        cmd1.Parameters.Add(paramskype);
                        cmd1.Parameters.Add(paramwhatsapp);
                        cmd1.Parameters.Add(paramclientid);





                        con.Open();


                        cmd1.ExecuteScalar();



                        con.Close();
                    }



                }
            }
        }

        protected void AddClient_Click1(object sender, EventArgs e)
        {

            lblclientid.Visible = true;
            txtclientid.Visible = true;
            lblcontactid.Visible = true;
            txtcontactid.Visible = true;
            lbllocationid.Visible = true;
            txtlocationid.Visible = true;
            lblprojectid.Visible = true;
            txtprojectid.Visible = true;


            lblcountry.Visible = true;
            txtcountry.Visible = true;
            lblstate.Visible = true;
            txtstate.Visible = true;
            lblmobno.Visible = true;
            txtmobno.Visible = true;
            lblskype.Visible = true;
            txtskype.Visible = true;
            lblwhat.Visible = true;
            txtwhat.Visible = true;

         



            AdClient.Visible = true;


            GridView1.Visible = false;
            DetailsView1.Visible = false;
            EditDetails.Visible = false;




        }

        protected void ViewClient_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            //DetailsView1.Visible = true;

            lblclientid.Visible = false;
            txtclientid.Visible = false;
            lblcontactid.Visible = false;
            txtcontactid.Visible = false;
            lbllocationid.Visible = false;
            txtlocationid.Visible = false;
            lblprojectid.Visible = false;
            txtprojectid.Visible = false;


            lblcountry.Visible = false;
            txtcountry.Visible = false;
            lblstate.Visible = false;
            txtstate.Visible = false;
            lblmobno.Visible = false;
            txtmobno.Visible = false;
            lblskype.Visible = false;
            txtskype.Visible = false;
            lblwhat.Visible = false;
            txtwhat.Visible = false;

          
            AdClient.Visible = false;

            GridView1.Visible = true;
            DetailsView1.Visible = true;
            EditDetails.Visible = false;



        }
        

        protected void Homebutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        

        protected void EditClient_Click(object sender, EventArgs e)
        {
           // Panel1.Visible = false;
            //LinkButton1.Visible = false;

            GridView1.Visible = false;
           // DetailsView1.Visible = false;

            lblclientid.Visible = false;
            txtclientid.Visible = false;
            lblcontactid.Visible = false;
            txtcontactid.Visible = false;
            lbllocationid.Visible = false;
            txtlocationid.Visible = false;
            lblprojectid.Visible = false;
            txtprojectid.Visible = false;


            lblcountry.Visible = false;
            txtcountry.Visible = false;
            lblstate.Visible = false;
            txtstate.Visible = false;
            lblmobno.Visible = false;
            txtmobno.Visible = false;
            lblskype.Visible = false;
            txtskype.Visible = false;
            lblwhat.Visible = false;
            txtwhat.Visible = false;

        
            AdClient.Visible = false;


            GridView1.Visible = false;
            DetailsView1.Visible = false;
            EditDetails.Visible = true;
            EditDetails2.Visible = false;

            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";
            SqlDataAdapter da = new SqlDataAdapter("Select Name from Client ", CS);
            DataSet ds1 = new DataSet();
            da.Fill(ds1);
            EditDetails.DataSource = ds1;
            EditDetails.DataBind();

            searchbox.Visible = true;
            search.Visible = true;

        }

        


        protected void EditDetails_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = EditDetails.SelectedRow;

            Response.Redirect("EditClient.aspx?Name=" + gr.Cells[0].Text);
           
        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void EditDetails1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = EditDetails2.SelectedRow;

            Response.Redirect("EditClient.aspx?Name=" + gr.Cells[0].Text);
        }

        protected void search_Click1(object sender, EventArgs e)
        {
            searchbox.Visible = true;
            search.Visible = true;
            EditDetails2.Visible = true;
            //  ShowProjects.Visible = true;
            EditDetails.Visible = false;

            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";
            Response.Write("hello");
            SqlDataAdapter da = new SqlDataAdapter("select Name from Client where Name ='" + searchbox.Text + "'", CS);
            DataSet ds1 = new DataSet();
            da.Fill(ds1);

            EditDetails2.DataSource = ds1;
            EditDetails2.DataBind();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}