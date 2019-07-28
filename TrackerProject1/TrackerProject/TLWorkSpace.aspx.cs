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
    public partial class TLWorkSpace : System.Web.UI.Page
    {

        private DateTime newdatetime1 = DateTime.Now;
        private DateTime newdatetime2 = DateTime.Now;
        private DateTime newdatetime3 = DateTime.Now;
        private DateTime newdatetime4 = DateTime.Now;

        int userid;

        


        protected void Page_Load(object sender, EventArgs e)
        {
            string Username = Request.QueryString["Username"];

            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";

            SqlConnection con1 = new SqlConnection(CS);
            con1.Open();
            String sqlselectquery1 = "Select UserId from Users where Username ='" + Username + "'";
            String p = null;
            SqlCommand cmd1 = new SqlCommand(sqlselectquery1, con1);
            userid = (int)cmd1.ExecuteScalar();      //user Id
            con1.Close();


            ShowProjects.Visible = false;

            txtpron.Visible = false;
            lblpron.Visible = false;
            lblsvn.Visible = false;
            txtsvn.Visible = false;
            lblesd.Visible = false;
            txtesd.Visible = false;
            lblefd.Visible = false;
            txtefd.Visible = false;
            lblasd.Visible = false;
            txtasd.Visible = false;
            lblafd.Visible = false;
            txtafd.Visible = false;
            lblwork.Visible = false;
            txtwork.Visible = false;
            lblstat.Visible = false;
            DropDownList2.Visible = false;
            Add_Project.Visible = false;

            Button1.Visible = false;
            Button2.Visible = false;
            Button3.Visible = false;
            Button4.Visible = false;
            Calendar1.Visible = false;
            Calendar2.Visible = false;
            Calendar3.Visible = false;
            Calendar4.Visible = false;

            DropDownList2.Items.Add(new ListItem("Enquiry", "1"));
            DropDownList2.Items.Add(new ListItem("POC", "2"));
            DropDownList2.Items.Add(new ListItem("R&D ", "3"));
            DropDownList2.Items.Add(new ListItem("Training ", "4"));
            DropDownList2.Items.Add(new ListItem("WIP", "5"));
            DropDownList2.Items.Add(new ListItem("Hold", "6"));
            DropDownList2.Items.Add(new ListItem("Closed", "7"));
        }


       

        protected void AddprojectID_Click(object sender, EventArgs e)
        {
            ShowProjects.Visible = false;
            txtpron.Visible = true;
            lblpron.Visible = true;
            lblsvn.Visible = true;
            txtsvn.Visible = true;
            lblesd.Visible = true;
            txtesd.Visible = true;
            lblefd.Visible = true;
            txtefd.Visible = true;
            lblasd.Visible = true;
            txtasd.Visible = true;
            lblafd.Visible = true;
            txtafd.Visible = true;
            lblwork.Visible = true;
            txtwork.Visible = true;
            lblstat.Visible = true;
            DropDownList2.Visible = true;

            Add_Project.Visible = true;

            Button1.Visible = true;
            Button2.Visible = true;
            Button3.Visible = true;
            Button4.Visible = true;
            Calendar1.Visible = false;
            Calendar2.Visible = false;
            Calendar3.Visible = false;
            Calendar4.Visible = false;

        }

        protected void ViewprojectID_Click(object sender, EventArgs e)
        {
            ShowProjects.Visible = true;

            txtpron.Visible = false;
            lblpron.Visible = false;
            lblsvn.Visible = false;
            txtsvn.Visible = false;
            lblesd.Visible = false;
            txtesd.Visible = false;
            lblefd.Visible = false;
            txtefd.Visible = false;
            lblasd.Visible = false;
            txtasd.Visible = false;
            lblafd.Visible = false;
            txtafd.Visible = false;
            lblwork.Visible = false;
            txtwork.Visible = false;
            lblstat.Visible = false;
            DropDownList2.Visible = false;
            Add_Project.Visible = false;

            Button1.Visible = false;
            Button2.Visible = false;
            Button3.Visible = false;
            Button4.Visible = false;
            Calendar1.Visible = false;
            Calendar2.Visible = false;
            Calendar3.Visible = false;
            Calendar4.Visible = false;


            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";
            SqlDataAdapter da = new SqlDataAdapter("Select Projectname from Project inner join ProjectTeam on ProjectTeam.ProjectId=Project.ProjectId where ProjectTeam.UserId ='" + userid + "'", CS);
            DataSet ds1 = new DataSet();
            da.Fill(ds1);
            ShowProjects.DataSource = ds1;
            ShowProjects.DataBind();
        }

        protected void Homebutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void AddProject_Click(object sender, EventArgs e)
        {

            



            if (Page.IsValid)
            {
                string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";
                using (SqlConnection con = new SqlConnection(CS))
                {

                    



                    //  Response.Write(Username);
                    //Response.Write(userid);

                   
                    if (String.IsNullOrEmpty(txtpron.Text) || String.IsNullOrEmpty(txtsvn.Text) || String.IsNullOrEmpty(txtesd.Text) ||
                        String.IsNullOrEmpty(txtefd.Text))
                    {
                        // Do something...
                        string message = "Please fill all the Details";
                        string script = "window.onload = function(){ alert('";
                        script += message;
                        script += "')};";
                        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                    }

                    else
                    {//txtcli
                        string ino2 = DropDownList2.SelectedItem.Text;

                        SqlConnection conn = new SqlConnection(CS);
                        SqlCommand command = new SqlCommand("select ClientId from Client where Projectname ='" + txtpron.Text + "'");
                        command.Connection = conn;
                        conn.Open();
                        int value = (int)command.ExecuteScalar();
                        //  conn.Close();

                        //Response.Write(value);

                        //Response.Write(userid);

                        if (String.IsNullOrEmpty(txtwork.Text))
                        {
                            txtwork.Text = null;


                        }
                        if (String.IsNullOrEmpty(ino2))
                        {
                            ino2 = null;
                        }

                        if (String.IsNullOrEmpty(txtafd.Text))
                        {
                            txtafd.Text = null;
                        }
                        if (String.IsNullOrEmpty(txtasd.Text))
                        {
                            txtasd.Text = null;
                        }





                        SqlCommand cmd = new SqlCommand("RegisterProject", con);
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;

                        SqlParameter paramproname = new SqlParameter("@Projectname", txtpron.Text);
                        SqlParameter paramclientid = new SqlParameter("@ClientId", value);
                        SqlParameter paramsvn = new SqlParameter("@SVN_Location", txtsvn.Text);

                        SqlParameter paramesd = new SqlParameter("@Estimated_Start_Date", newdatetime1);
                        SqlParameter paramefd = new SqlParameter("@Estimated_Finish_Date", newdatetime2);
                        SqlParameter paramasd = new SqlParameter("@Actual_Start_Date", newdatetime3);
                        SqlParameter paramafd = new SqlParameter("@Actual_Finish_Date", newdatetime4);

                        SqlParameter parampwc = new SqlParameter("@Per_WorkCompleted", txtwork.Text);

                        SqlParameter paramps = new SqlParameter("@ProjectStatus", ino2);





                        cmd.Parameters.Add(paramproname);
                        cmd.Parameters.Add(paramclientid);
                        cmd.Parameters.Add(paramsvn);
                        cmd.Parameters.Add(paramesd);
                        cmd.Parameters.Add(paramefd);
                        cmd.Parameters.Add(paramasd);
                        cmd.Parameters.Add(paramafd);
                        cmd.Parameters.Add(parampwc);
                        cmd.Parameters.Add(paramps);






                        con.Open();


                        cmd.ExecuteScalar();

                        // Response.Write(ReturnCode);

                        con.Close();




                        SqlConnection conn1 = new SqlConnection(CS);
                        SqlCommand command1 = new SqlCommand("select ProjectId from Project where Projectname ='" + txtpron.Text + "'");
                        command1.Connection = conn1;
                        conn1.Open();
                        int Projectid = (int)command1.ExecuteScalar();

                        SqlCommand cmd2 = new SqlCommand("RegisterProjectTeam", con);
                        cmd2.CommandType = System.Data.CommandType.StoredProcedure;

                        SqlParameter project_role = new SqlParameter("@Project_role", "Project Owner");
                        SqlParameter paramuserid = new SqlParameter("@UserId", userid);
                        SqlParameter paramprojectid = new SqlParameter("@ProjectId", Projectid);






                        cmd2.Parameters.Add(project_role);
                        cmd2.Parameters.Add(paramuserid);
                        cmd2.Parameters.Add(paramprojectid);


                        con.Open();


                        cmd2.ExecuteScalar();



                        con.Close();


                    }
                }
            }

        }


        protected void ShowProjects_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = ShowProjects.SelectedRow;

            Response.Redirect("ProjectWorkSpace.aspx?Projectname=" + gr.Cells[0].Text);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ShowProjects.Visible = false;
            txtpron.Visible = true;
            lblpron.Visible = true;
            lblsvn.Visible = true;
            txtsvn.Visible = true;
            lblesd.Visible = true;
            txtesd.Visible = true;
            lblefd.Visible = true;
            txtefd.Visible = true;
            lblasd.Visible = true;
            txtasd.Visible = true;
            lblafd.Visible = true;
            txtafd.Visible = true;
            lblwork.Visible = true;
            txtwork.Visible = true;
            lblstat.Visible = true;
            DropDownList2.Visible = true;

            Add_Project.Visible = true;

            Button1.Visible = true;
            Button2.Visible = true;
            Button3.Visible = true;
            Button4.Visible = true;


            Calendar1.Visible = true;
       

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            ShowProjects.Visible = false;
            txtpron.Visible = true;
            lblpron.Visible = true;
            lblsvn.Visible = true;
            txtsvn.Visible = true;
            lblesd.Visible = true;
            txtesd.Visible = true;
            lblefd.Visible = true;
            txtefd.Visible = true;
            lblasd.Visible = true;
            txtasd.Visible = true;
            lblafd.Visible = true;
            txtafd.Visible = true;
            lblwork.Visible = true;
            txtwork.Visible = true;
            lblstat.Visible = true;
            DropDownList2.Visible = true;

            Add_Project.Visible = true;

            Button1.Visible = true;
            Button2.Visible = true;
            Button3.Visible = true;
            Button4.Visible = true;



            Calendar2.Visible = true;
          


        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            ShowProjects.Visible = false;
            txtpron.Visible = true;
            lblpron.Visible = true;
            lblsvn.Visible = true;
            txtsvn.Visible = true;
            lblesd.Visible = true;
            txtesd.Visible = true;
            lblefd.Visible = true;
            txtefd.Visible = true;
            lblasd.Visible = true;
            txtasd.Visible = true;
            lblafd.Visible = true;
            txtafd.Visible = true;
            lblwork.Visible = true;
            txtwork.Visible = true;
            lblstat.Visible = true;
            DropDownList2.Visible = true;

            Add_Project.Visible = true;

            Button1.Visible = true;
            Button2.Visible = true;
            Button3.Visible = true;
            Button4.Visible = true;


            Calendar3.Visible = true;
          

        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            ShowProjects.Visible = false;
            txtpron.Visible = true;
            lblpron.Visible = true;
            lblsvn.Visible = true;
            txtsvn.Visible = true;
            lblesd.Visible = true;
            txtesd.Visible = true;
            lblefd.Visible = true;
            txtefd.Visible = true;
            lblasd.Visible = true;
            txtasd.Visible = true;
            lblafd.Visible = true;
            txtafd.Visible = true;
            lblwork.Visible = true;
            txtwork.Visible = true;
            lblstat.Visible = true;
            DropDownList2.Visible = true;

            Add_Project.Visible = true;

            Button1.Visible = true;
            Button2.Visible = true;
            Button3.Visible = true;
            Button4.Visible = true;


            Calendar4.Visible = true;
          

        }
        protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
        {
            txtesd.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
            newdatetime1 = Convert.ToDateTime(txtesd.Text);

            ShowProjects.Visible = false;
            txtpron.Visible = true;
            lblpron.Visible = true;
            lblsvn.Visible = true;
            txtsvn.Visible = true;
            lblesd.Visible = true;
            txtesd.Visible = true;
            lblefd.Visible = true;
            txtefd.Visible = true;
            lblasd.Visible = true;
            txtasd.Visible = true;
            lblafd.Visible = true;
            txtafd.Visible = true;
            lblwork.Visible = true;
            txtwork.Visible = true;
            lblstat.Visible = true;
            DropDownList2.Visible = true;

            Add_Project.Visible = true;

            Button1.Visible = true;
            Button2.Visible = true;
            Button3.Visible = true;
            Button4.Visible = true;

        }
        protected void Calendar2_SelectionChanged2(object sender, EventArgs e)
        {
            txtefd.Text = Calendar2.SelectedDate.ToShortDateString();
            Calendar2.Visible = false;
            newdatetime2 = Convert.ToDateTime(txtefd.Text);

            ShowProjects.Visible = false;
            txtpron.Visible = true;
            lblpron.Visible = true;
            lblsvn.Visible = true;
            txtsvn.Visible = true;
            lblesd.Visible = true;
            txtesd.Visible = true;
            lblefd.Visible = true;
            txtefd.Visible = true;
            lblasd.Visible = true;
            txtasd.Visible = true;
            lblafd.Visible = true;
            txtafd.Visible = true;
            lblwork.Visible = true;
            txtwork.Visible = true;
            lblstat.Visible = true;
            DropDownList2.Visible = true;

            Add_Project.Visible = true;

            Button1.Visible = true;
            Button2.Visible = true;
            Button3.Visible = true;
            Button4.Visible = true;

        }
        protected void Calendar3_SelectionChanged3(object sender, EventArgs e)
        {
            txtasd.Text = Calendar3.SelectedDate.ToShortDateString();
            Calendar3.Visible = false;
            newdatetime3 = Convert.ToDateTime(txtasd.Text);

            ShowProjects.Visible = false;
            txtpron.Visible = true;
            lblpron.Visible = true;
            lblsvn.Visible = true;
            txtsvn.Visible = true;
            lblesd.Visible = true;
            txtesd.Visible = true;
            lblefd.Visible = true;
            txtefd.Visible = true;
            lblasd.Visible = true;
            txtasd.Visible = true;
            lblafd.Visible = true;
            txtafd.Visible = true;
            lblwork.Visible = true;
            txtwork.Visible = true;
            lblstat.Visible = true;
            DropDownList2.Visible = true;

            Add_Project.Visible = true;

            Button1.Visible = true;
            Button2.Visible = true;
            Button3.Visible = true;
            Button4.Visible = true;

        }
        protected void Calendar4_SelectionChanged4(object sender, EventArgs e)
        {
            txtafd.Text = Calendar4.SelectedDate.ToShortDateString();
            Calendar4.Visible = false;
            newdatetime4 = Convert.ToDateTime(txtafd.Text);

            ShowProjects.Visible = false;
            txtpron.Visible = true;
            lblpron.Visible = true;
            lblsvn.Visible = true;
            txtsvn.Visible = true;
            lblesd.Visible = true;
            txtesd.Visible = true;
            lblefd.Visible = true;
            txtefd.Visible = true;
            lblasd.Visible = true;
            txtasd.Visible = true;
            lblafd.Visible = true;
            txtafd.Visible = true;
            lblwork.Visible = true;
            txtwork.Visible = true;
            lblstat.Visible = true;
            DropDownList2.Visible = true;

            Add_Project.Visible = true;

            Button1.Visible = true;
            Button2.Visible = true;
            Button3.Visible = true;
            Button4.Visible = true;

        }












    }
}