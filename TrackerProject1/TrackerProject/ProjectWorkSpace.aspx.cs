using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrackerProject
{
    public partial class ProjectWorkSpace : System.Web.UI.Page
    {

        private ArrayList GetDummyData()
        { 

                                 ArrayList arr = new ArrayList();

            arr.Add(new ListItem("Enquiry", "1"));
            arr.Add(new ListItem("POC", "2"));
            arr.Add(new ListItem("R&D", "3"));
            arr.Add(new ListItem("Training", "4"));
            arr.Add(new ListItem("WIP", "5"));
            arr.Add(new ListItem("Hold", "6"));
            arr.Add(new ListItem("Closed", "7"));


            return arr;
        }

        private void FillDropDownList(DropDownList ddl)
        {
            ArrayList arr = GetDummyData();

            foreach (ListItem item in arr)
            {
                ddl.Items.Add(item);
            }
        }

        int projectid;
        string Tname;
        private DateTime newdatetime1 = DateTime.Now;
        private DateTime newdatetime2 = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {
            

            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";
            String pn = Request.QueryString["Projectname"].ToString();

            // string CS = @"Server=localhost\SQLEXPRESS;Database=ProjectTracker;Trusted_Connection=True;";

            SqlConnection con = new SqlConnection(CS);
            con.Open();
            String sqlselectquery = "Select * from Project where Projectname ='" + pn + "'";
            String p = null, q = null;
            SqlCommand cmd = new SqlCommand(sqlselectquery, con);
            SqlDataReader dr = cmd.ExecuteReader();

            pnb.Text = pn;
            if (dr.Read())
            {

                projectid = (int)dr["ProjectId"];
                svnb.Text = dr["SVN_Location"].ToString();
                esdb.Text = dr["Estimated_Start_Date"].ToString();
                efdb.Text = dr["Estimated_Finish_Date"].ToString();
                asdb.Text = dr["Actual_Start_Date"].ToString();
                afdb.Text = dr["Actual_Finish_Date"].ToString();
                pwdb.Text = dr["Per_WorkCompleted"].ToString();
                //   DropDownList1.Text = dr["ProjectStatus"].ToString();


            }
            else
            {

            }

            con.Close();

            if (!Page.IsPostBack)
            {
               // gd1.DataSource = GetData("Select Username from Users inner join ProjectTeam on ProjectTeam.UserId = Users.UserId where ProjectId = '" + projectid + "'");
                //gd1.DataBind();

                Bindgridwithsinglerow();


                BindAdd_Task_dropdown();

                //  string CS = @"Server=localhost\SQLEXPRESS;Database=ProjectTracker;Trusted_Connection=True;";


            }




            Calendar1.Visible = false;
            Calendar2.Visible = false;

            svntxt.Visible = false;
            ImageButton1.Visible = false;
            pwdtxt.Visible = false;
            ImageButton2.Visible = false;
            ImageButton3.Visible = true;


        }

        private object GetData(string query)
        {
            string conString = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";
            SqlCommand cmd = new SqlCommand(query);
            using (SqlConnection con = new SqlConnection(conString))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataSet ds = new DataSet())
                    {
                        sda.Fill(ds);
                        return ds;
                    }
                }
            }
            throw new NotImplementedException();
        }

        protected void BindAdd_Task_dropdown()
        {
            //conenction path for database
            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";
            SqlConnection con = new SqlConnection(CS);

            con.Open();
            SqlCommand cmd = new SqlCommand("Select Username from Users inner join ProjectTeam on ProjectTeam.UserId = Users.UserId where ProjectId = '" + projectid + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            Add_task.DataSource = ds;
            Add_task.DataTextField = "Username";
            //Add_task.DataValueField = "UserId";
            Add_task.DataBind();
            Add_task.Items.Insert(0, new ListItem("--Select--", "0"));
            con.Close();

        }

        protected void Bindgridwithsinglerow()
        {
            DataTable dt = new DataTable();
            DataRow dr = null;
            dt.Columns.Add(new DataColumn("UserId", typeof(string)));
            dt.Columns.Add(new DataColumn("Name", typeof(string)));
            dt.Columns.Add(new DataColumn("Task", typeof(string)));
            dt.Columns.Add(new DataColumn("Allocated Efforts Hrs", typeof(string)));
          //  dt.Columns.Add(new DataColumn("Actual Efforts Hrs", typeof(string)));
            dt.Columns.Add(new DataColumn("Status", typeof(string)));
            dt.Columns.Add(new DataColumn("Progress", typeof(string)));
            dt.Columns.Add(new DataColumn("Estimated Start Date", typeof(string)));
            dt.Columns.Add(new DataColumn("Estimated End Date", typeof(string)));
          //  dt.Columns.Add(new DataColumn("Actual Start Date", typeof(string)));

         //   dt.Columns.Add(new DataColumn("Actual Finish Date", typeof(string)));


            dr = dt.NewRow();
            dr["UserId"] = 1;
            dr["Name"] = string.Empty;
            dt.Rows.Add(dr);
            ViewState["datatable"] = dt;
            gd1.DataSource = dt;
            gd1.DataBind();

            DropDownList ddl1 = (DropDownList)gd1.Rows[0].Cells[4].FindControl("DropDownList1");
           // DropDownList ddl2 = (DropDownList)Gridview1.Rows[0].Cells[4].FindControl("DropDownList2");
            FillDropDownList(ddl1);
          //  FillDropDownList(ddl2);


        }
        protected void Homebutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
        protected void asdbclick(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
            //flag4 = 1;

        }
        protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
        {
            asdb.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
            newdatetime1 = Convert.ToDateTime(asdb.Text);


        }

        protected void afdboclick(object sender, EventArgs e)
        {
            Calendar2.Visible = true;
            //flag4 = 1;

        }



        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            asdb.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
            newdatetime1 = Convert.ToDateTime(asdb.Text);


            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";


            SqlConnection con1 = new SqlConnection(CS);
            con1.Open();
            String sqlselectquery1 = "Update Project set Actual_start_date ='" + newdatetime1.ToString("yyyy-MM-dd HH:mm:ss.fff") + "'" + "where ProjectId='" + projectid + "'";

            SqlCommand cmd1 = new SqlCommand(sqlselectquery1, con1);


            cmd1.ExecuteScalar();

            con1.Close();
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            afdb.Text = Calendar2.SelectedDate.ToShortDateString();
            Calendar2.Visible = false;
            newdatetime2 = Convert.ToDateTime(afdb.Text);



            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";


            SqlConnection con1 = new SqlConnection(CS);
            con1.Open();
            String sqlselectquery1 = "Update Project set Actual_finish_date ='" + newdatetime2.ToString("yyyy-MM-dd HH:mm:ss.fff") + "'" + "where ProjectId='" + projectid + "'";

            SqlCommand cmd1 = new SqlCommand(sqlselectquery1, con1);


            cmd1.ExecuteScalar();

            con1.Close();
        }

        protected void svnb_Click(object sender, EventArgs e)
        {
            svntxt.Visible = true;
            ImageButton1.Visible = true;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            svnb.Text = svntxt.Text;
            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";


            SqlConnection con1 = new SqlConnection(CS);
            con1.Open();
            String sqlselectquery1 = "Update Project set SVN_Location ='" + svnb.Text + "'" + "where ProjectId='" + projectid + "'";

            SqlCommand cmd1 = new SqlCommand(sqlselectquery1, con1);


            cmd1.ExecuteScalar();

            con1.Close();
            svntxt.Visible = false;
            ImageButton1.Visible = false;
        }

        protected void pwdb_Click(object sender, EventArgs e)
        {
            pwdtxt.Visible = true;
            ImageButton2.Visible = true;
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {

            pwdb.Text = pwdtxt.Text;
            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";


            SqlConnection con1 = new SqlConnection(CS);
            con1.Open();
            String sqlselectquery1 = "Update Project set Per_WorkCompleted ='" + pwdb.Text + "'" + "where ProjectId='" + projectid + "'";

            SqlCommand cmd1 = new SqlCommand(sqlselectquery1, con1);


            cmd1.ExecuteScalar();

            con1.Close();
            svntxt.Visible = false;
            ImageButton1.Visible = false;
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            string projectstatus = DropDownList1.SelectedItem.Text;
            Response.Write(projectstatus);

            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";


            SqlConnection con1 = new SqlConnection(CS);
            con1.Open();
            String sqlselectquery1 = "Update Project set ProjectStatus ='" + projectstatus + "'" + "where ProjectId='" + projectid + "'";

            SqlCommand cmd1 = new SqlCommand(sqlselectquery1, con1);


            cmd1.ExecuteScalar();

            con1.Close();

            svntxt.Visible = false;
            ImageButton1.Visible = false;

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ImageButton3.Visible = true;


            string projectstatus = DropDownList1.SelectedItem.Text;

            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";

            SqlConnection con1 = new SqlConnection(CS);
            con1.Open();
            String sqlselectquery1 = "Update Project set ProjectStatus ='" + projectstatus + "'" + "where ProjectId='" + projectid + "'";

            SqlCommand cmd1 = new SqlCommand(sqlselectquery1, con1);


            cmd1.ExecuteScalar();

            con1.Close();

        }

        protected void Add_task_SelectedIndexChanged(object sender, EventArgs e)
        {
            Tname = Add_task.SelectedItem.Text;
        }

        protected void AddTMBtn_Click(object sender, ImageClickEventArgs e)
        {
            int ReturnCode = AuthenticateUser(AddTMId.Text);
            // Response.Write(ReturnCode);
            if (ReturnCode == 1)
            {
                // var toastObj = document.getElementById('toast_type').ej2_instances[0];
                // toastObj.show(toasts[1]);
                Response.Write("valid Username ");
                int userid;
                string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";

                SqlConnection con1 = new SqlConnection(CS);
                con1.Open();
                String sqlselectquery1 = "Select UserId from Users where Username ='" + AddTMId.Text + "'";

                SqlCommand cmd1 = new SqlCommand(sqlselectquery1, con1);
                userid = (int)cmd1.ExecuteScalar();      //user Id
                con1.Close();




                SqlCommand cmd2 = new SqlCommand("RegisterProjectTeam", con1);
                cmd2.CommandType = System.Data.CommandType.StoredProcedure;

                SqlParameter project_role = new SqlParameter("@Project_role", "Project Member");
                SqlParameter paramuserid = new SqlParameter("@UserId", userid);
                SqlParameter paramprojectid = new SqlParameter("@ProjectId", projectid);






                cmd2.Parameters.Add(project_role);
                cmd2.Parameters.Add(paramuserid);
                cmd2.Parameters.Add(paramprojectid);


                con1.Open();


                cmd2.ExecuteScalar();



                con1.Close();

                Label4.Visible = true;
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);



            }

            else
            {
                string message = "Invalid Username ";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);



            }
        }
        private int AuthenticateUser(string username)
        {
            // string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";
            using (SqlConnection con = new SqlConnection(CS))
            {


                SqlCommand cmd = new SqlCommand("AuthenticateTM", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter paramUsername = new SqlParameter("@UserName", username);

                cmd.Parameters.Add(paramUsername);

                con.Open();


                int ReturnCode = (int)cmd.ExecuteScalar();

                return ReturnCode;

            }


        }

        protected void AddTask_Click(object sender, ImageClickEventArgs e)
        {
            if (ViewState["datatable"] != null)
            {
                DataTable dttable = (DataTable)ViewState["datatable"];
                DataRow dr = null;
                if (dttable.Rows.Count > 0)
                {
                    dr = dttable.NewRow();
                    dr["UserId"] = dttable.Rows.Count + 1;
                    dttable.Rows.Add(dr);
                    ViewState["datatable"] = dttable;
                    for (int i = 0; i < dttable.Rows.Count - 1; i++)
                    {
                        TextBox t1 = (TextBox)gd1.Rows[i].Cells[1].FindControl("nametxt");
                        TextBox t2 = (TextBox)gd1.Rows[i].Cells[2].FindControl("tasktxt");
                        TextBox t3 = (TextBox)gd1.Rows[i].Cells[3].FindControl("alltxt");
                     //   TextBox t4 = (TextBox)gd1.Rows[i].Cells[4].FindControl("acttxt");
                     //   TextBox t5 = (TextBox)gd1.Rows[i].Cells[4].FindControl("statustxt");
                        TextBox t6 = (TextBox)gd1.Rows[i].Cells[5].FindControl("progresstxt");
                        TextBox t7 = (TextBox)gd1.Rows[i].Cells[6].FindControl("esdtxt");
                        TextBox t8 = (TextBox)gd1.Rows[i].Cells[7].FindControl("endtxt");
                       // TextBox t9 = (TextBox)gd1.Rows[i].Cells[2].FindControl("asdtxt");
                        //TextBox t10 = (TextBox)gd1.Rows[i].Cells[2].FindControl("aedtxt");



                        dttable.Rows[i]["Name"] = t1.Text;
                        dttable.Rows[i]["Task"] = t2.Text;
                        dttable.Rows[i]["Allocated Efforts Hrs"] = t3.Text;
                     //   dttable.Rows[i]["Actual Efforts Hrs"] = t4.Text;
                     //   dttable.Rows[i]["Status"] = t5.Text;
                        dttable.Rows[i]["Progress"] = t6.Text;
                        dttable.Rows[i]["Estimated Start Date"] = t7.Text;
                        dttable.Rows[i]["Estimated End Date"] = t8.Text;
                        //   dttable.Rows[i]["Actual Start Date"] = t9.Text;
                        // dttable.Rows[i]["Actual Finish Date"] = t10.Text;




                        DropDownList ddl1 = (DropDownList)gd1.Rows[i].Cells[4].FindControl("DropDownList1");
                      //  DropDownList ddl2 = (DropDownList)Gridview1.Rows[i].Cells[4].FindControl("DropDownList2");

                        // Update the DataRow with the DDL Selected Items 

                        dttable.Rows[i]["Status"] = ddl1.SelectedItem.Text;





                    }

                    gd1.DataSource = dttable;
                    gd1.DataBind();

                   
                }



            }
            else
            {
                Response.Write("Viewstate is null");

            }
            setdata();

        }

        private void setdata()
        {
            // throw new NotImplementedException();
            int index = 0;
            if (ViewState["datatable"] != null)
            {
                DataTable dttb = (DataTable)ViewState["datatable"];
                if (dttb.Rows.Count > 0)
                {
                    for (int i = 0; i < dttb.Rows.Count; i++)
                    {
                        TextBox t1 = (TextBox)gd1.Rows[i].Cells[1].FindControl("nametxt");
                        TextBox t2 = (TextBox)gd1.Rows[i].Cells[2].FindControl("tasktxt");
                        TextBox t3 = (TextBox)gd1.Rows[i].Cells[3].FindControl("alltxt");
                        //  TextBox t4 = (TextBox)gd1.Rows[i].Cells[4].FindControl("acttxt");
                        //   TextBox t5 = (TextBox)gd1.Rows[i].Cells[4].FindControl("statustxt");
                       // DropDownList ddl1 = (DropDownList)gd1.Rows[i].Cells[4].FindControl("DropDownList1");
                        TextBox t6 = (TextBox)gd1.Rows[i].Cells[5].FindControl("progresstxt");
                        TextBox t7 = (TextBox)gd1.Rows[i].Cells[6].FindControl("esdtxt");
                        TextBox t8 = (TextBox)gd1.Rows[i].Cells[7].FindControl("endtxt");
                        //  TextBox t9 = (TextBox)gd1.Rows[i].Cells[2].FindControl("asdtxt");
                        //TextBox t10 = (TextBox)gd1.Rows[i].Cells[2].FindControl("aedtxt");
                        DropDownList ddl1 = (DropDownList)gd1.Rows[i].Cells[4].FindControl("DropDownList1");
                      //  DropDownList ddl2 = (DropDownList)Gridview1.Rows[rowIndex].Cells[4].FindControl("DropDownList2");

                        //Fill the DropDownList with Data 
                        FillDropDownList(ddl1);

                        if (i < dttb.Rows.Count - 1)
                        {
                            t1.Text = dttb.Rows[i]["Name"].ToString();
                            t2.Text = dttb.Rows[i]["Task"].ToString();
                            t3.Text= dttb.Rows[i]["Allocated Efforts Hrs"].ToString();
                            //   t4.Text = dttb.Rows[i]["Actual Efforts Hrs"].ToString();
                            //   t5.Text = dttb.Rows[i]["Status"].ToString();
                            ddl1.ClearSelection();
                            ddl1.Items.FindByText(dttb.Rows[i]["Status"].ToString()).Selected = true;

                            t6.Text = dttb.Rows[i]["Progress"].ToString();
                            t7.Text = dttb.Rows[i]["Estimated Start Date"].ToString();
                            t8.Text = dttb.Rows[i]["Estimated End Date"].ToString();
                         //   t9.Text = dttb.Rows[i]["Actual Start Date"].ToString();
                           // t10.Text = dttb.Rows[i]["Actual Finish Date"].ToString();


                            int userid;
                            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";

                            SqlConnection con1 = new SqlConnection(CS);
                            con1.Open();
                            String sqlselectquery1 = "Select UserId from Users where Username ='" + t1.Text + "'";

                            SqlCommand cmd1 = new SqlCommand(sqlselectquery1, con1);
                            userid = (int)cmd1.ExecuteScalar();      //user Id
                            con1.Close();


                            int id;
                            SqlConnection con2 = new SqlConnection(CS);
                            con2.Open();
                            String sqlselectquery2 = "Select Id from ProjectTeam where UserId ='" + userid + "'";

                            SqlCommand cmd3 = new SqlCommand(sqlselectquery2, con2);
                            id = (int)cmd3.ExecuteScalar();      //user Id
                            con2.Close();






                            //  Response.Write("ff");
                           // string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";

                            SqlConnection conn1 = new SqlConnection(CS);
                            
                            conn1.Open();
                            GridViewRow row = gd1.SelectedRow;

                            
                            SqlCommand cmd2 = new SqlCommand("RegisterProjectTask", conn1);
                            cmd2.CommandType = System.Data.CommandType.StoredProcedure;



                            cmd2.Parameters.AddWithValue("@Taskname", t2.Text);
                            cmd2.Parameters.AddWithValue("@Allocated_hrs", t3.Text);
                            cmd2.Parameters.AddWithValue("@Actual_hrs", 00);
                            cmd2.Parameters.AddWithValue("@Status", ddl1.SelectedItem.Text);
                            cmd2.Parameters.AddWithValue("@Per_WorkDone", t6.Text);
                            cmd2.Parameters.AddWithValue("@Estimated_Start_Date", t7.Text);
                            cmd2.Parameters.AddWithValue("@Estimated_Finish_Date", t8.Text);
                            cmd2.Parameters.AddWithValue("@Actual_Start_Date", t7.Text);
                            cmd2.Parameters.AddWithValue("@Actual_Finish_Date", t8.Text);
                            cmd2.Parameters.AddWithValue("@ProjectId", projectid);
                            cmd2.Parameters.AddWithValue("@Id", id);
                            cmd2.Parameters.AddWithValue("@Username", t1.Text);











                            cmd2.ExecuteScalar();



                            conn1.Close();




                        }
                    }
                     index++;

                }
            }


        }

        protected void gd1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";
                SqlConnection con = new SqlConnection(CS);
                    con.Open();
                DropDownList DropDownList2 = (e.Row.FindControl("DropDownList2") as DropDownList);


                SqlCommand cmd = new SqlCommand("Select Username from Users inner join ProjectTeam on ProjectTeam.UserId = Users.UserId where ProjectId = '" + projectid + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                con.Close();
                DropDownList2.DataSource = dt;

                DropDownList2.DataTextField = "Name";
                DropDownList2.DataValueField = "Name";
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, new ListItem("--Select Qualification--", "0"));


            }
        }
            protected void gd1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        

        protected void ViewTask_Click(object sender, EventArgs e)
        {
            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";

            using (SqlConnection sqlCon = new SqlConnection(CS))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("Select * from ProjectTask", sqlCon);
                DataTable dtbl = new DataTable();
                sqlDa.Fill(dtbl);

                viewtask.DataSource = dtbl;
                viewtask.DataBind();
            }
        }

        protected void viewtask_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
