using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrackerProject
{
    public partial class AddUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.Items.Add(new ListItem("Admin", "1"));
            DropDownList1.Items.Add(new ListItem("Team Lead", "2"));
            DropDownList1.Items.Add(new ListItem("Team Member", "3"));

            
            lblemailid.Visible = false;
            txtemailid.Visible = false;
           

            lblpass.Visible = false;
            txtpass.Visible = false;
            lblfirst.Visible = false;
            txtfirst.Visible = false;
            lblmid.Visible = false;
            txtmid.Visible = false;
            lbllast.Visible = false;
            txtlast.Visible = false;
            lblmn.Visible = false;
            txtmn.Visible = false;
            lblmn2.Visible = false;
            txtmn2.Visible = false;
            lblemp.Visible = false;
            txtemp.Visible = false;
            lblor.Visible = false;
            DropDownList1.Visible = false;
            AddID.Visible = false;
           

        }

        protected void AddID_Click(object sender, EventArgs e)
        {

            

            if (Page.IsValid)
            {

                string ino = DropDownList1.SelectedItem.Text;

                string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";
                using (SqlConnection con = new SqlConnection(CS))
                {

                    if (String.IsNullOrEmpty(txtpass.Text) || String.IsNullOrEmpty(txtfirst.Text) ||
                        String.IsNullOrEmpty(txtlast.Text) || String.IsNullOrEmpty(txtemailid.Text) || String.IsNullOrEmpty(txtmn.Text) ||
                        String.IsNullOrEmpty(txtemp.Text) || String.IsNullOrEmpty(ino))
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
                        if (String.IsNullOrEmpty(txtmid.Text))
                        {
                            txtmid.Text = null;


                        }
                        if (String.IsNullOrEmpty(txtmn2.Text))
                        {
                            txtmn2.Text = "0";
                        }


                        SqlCommand cmd = new SqlCommand("RegisterUser", con);
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
#pragma warning disable CS0618 // Type or member is obsolete
                        string EncryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtpass.Text, "SHA1");
#pragma warning restore CS0618 // Type or member is obsolete
                        int len = txtemp.Text.Length;

                        


                        int len1 = txtemp.Text.Length;
                        if (len==1)
                        {
                            txtemp.Text = "000" + txtemp.Text;
                        }
                        else if (len == 2)
                        {
                            txtemp.Text = "00" + txtemp.Text;
                        }
                        else if (len == 3)
                        {
                            txtemp.Text = "0" + txtemp.Text;
                        }
                        else
                        {
                            txtemp.Text = txtemp.Text;
                        }

                        SqlParameter paramusername = new SqlParameter("@Username", txtemp.Text);
                        SqlParameter parampassword = new SqlParameter("@Password", EncryptedPassword);
                        SqlParameter paramfirstname = new SqlParameter("@FirstName", txtfirst.Text);
                        SqlParameter parammiddlename = new SqlParameter("@MiddleName", txtmid.Text);
                        SqlParameter paramlastname = new SqlParameter("@LastName", txtlast.Text);
                        SqlParameter paramemail = new SqlParameter("@Email", txtemailid.Text);
                        SqlParameter parammobile = new SqlParameter("@Mobile", txtmn.Text);
                        SqlParameter parammobile2 = new SqlParameter("@Mobile2", txtmn2.Text);
                        
                        SqlParameter paramemployeeid = new SqlParameter("@EmployeeId",txtemp.Text);
                        SqlParameter paramorganisationrole = new SqlParameter("@OrganisationRole", ino);



                        cmd.Parameters.Add(paramusername);
                        cmd.Parameters.Add(parampassword);
                        cmd.Parameters.Add(paramfirstname);
                        cmd.Parameters.Add(parammiddlename);
                        cmd.Parameters.Add(paramlastname);
                        cmd.Parameters.Add(paramemail);
                        cmd.Parameters.Add(parammobile);
                        cmd.Parameters.Add(parammobile2);
                        cmd.Parameters.Add(paramemployeeid);
                        cmd.Parameters.Add(paramorganisationrole);






                        con.Open();


                        int ReturnCode = (int)cmd.ExecuteScalar();
                        if (ReturnCode == -1)
                        {
                            Response.Write("User already Exits");
                        }
                        else
                        {
                            Response.Write("Register Successfully");
                        }

                        con.Close();


                        string _from = "tuplondheakshada@gmail.com";
                        string _to = txtemailid.Text.Trim();
                        string _cc = txtemailid.Text.Trim();
                        string _bcc = txtemailid.Text.Trim();
                        string _subject = "Username and Password";
                        string _body = "Your Username is " + txtemp.Text + " and Password is " + txtpass.Text;

                        sendmailmessage(_from, _to, _cc, _bcc, _subject, _body, true);
                    }

                }


            }



        }
        public static void sendmailmessage(string from, string to, string cc, string bcc, string subject, string body, bool isHTML)
        {

            MailMessage msgobj = new MailMessage();
            msgobj.From = new MailAddress(from);
            msgobj.To.Add(new MailAddress(to));
            msgobj.CC.Add(new MailAddress(cc));
            msgobj.Bcc.Add(new MailAddress(bcc));
            msgobj.Subject = subject;
            msgobj.Body = body;
            msgobj.IsBodyHtml = isHTML;
            msgobj.Priority = MailPriority.Normal;
            msgobj.SubjectEncoding = System.Text.Encoding.UTF8;
            msgobj.BodyEncoding = System.Text.Encoding.UTF8;

            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            client.EnableSsl = true;


            client.UseDefaultCredentials = false;
            client.Credentials = new System.Net.NetworkCredential("tuplondheakshada@gmail.com", "7887988385");
            client.Send(msgobj);

        }

        protected void Homebutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

       

       

        protected void EditUsers_Click(object sender, EventArgs e)
        {

            lblemailid.Visible = false;
            txtemailid.Visible = false;


            lblpass.Visible = false;
            txtpass.Visible = false;
            lblfirst.Visible = false;
            txtfirst.Visible = false;
            lblmid.Visible = false;
            txtmid.Visible = false;
            lbllast.Visible = false;
            txtlast.Visible = false;
            lblmn.Visible = false;
            txtmn.Visible = false;
            lblmn2.Visible = false;
            txtmn2.Visible = false;
            lblemp.Visible = false;
            txtemp.Visible = false;
            lblor.Visible = false;
            DropDownList1.Visible = false;
            AddID.Visible = false;
            ShowUsers.Visible = true;

            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";
            SqlDataAdapter da = new SqlDataAdapter("Select Email from Users ", CS);
            DataSet ds1 = new DataSet();
            da.Fill(ds1);
            ShowUsers.DataSource = ds1;
            ShowUsers.DataBind();

        }
        protected void ShowUsers_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = ShowUsers.SelectedRow;
        

            Response.Redirect("EditUser.aspx?Email=" + gr.Cells[0].Text);
        }

        protected void AddClient_Click1(object sender, EventArgs e)
        {
            lblemailid.Visible = true;
            txtemailid.Visible = true;

            ShowUsers.Visible = false;
            lblpass.Visible = true;
            txtpass.Visible = true;
            lblfirst.Visible = true;
            txtfirst.Visible = true;
            lblmid.Visible = true;
            txtmid.Visible = true;
            lbllast.Visible = true;
            txtlast.Visible = true;
            lblmn.Visible = true;
            txtmn.Visible = true;
            lblmn2.Visible = true;
            txtmn2.Visible = true;
            lblemp.Visible = true;
            txtemp.Visible = true;
            lblor.Visible = true;
            DropDownList1.Visible = true;
            AddID.Visible = true;

        }
    }
}