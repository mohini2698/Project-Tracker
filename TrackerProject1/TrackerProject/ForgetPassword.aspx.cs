using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrackerProject
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonpwd_Click(object sender, EventArgs e)
        {
            string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";
            SqlConnection con = new SqlConnection(CS);
            string sqlquery = "select Username, Password from [dbo].[Users] where Email=@Email";
            SqlCommand sqlCommand = new SqlCommand(sqlquery, con);
            sqlCommand.Parameters.AddWithValue("@Email", TxtEmail.Text);
            con.Open();
            SqlDataReader sdr = sqlCommand.ExecuteReader();
            if(sdr.Read())
            {
                string Username = sdr["Username"].ToString();
                string Password = sdr["Password"].ToString();

                MailMessage mm = new MailMessage("tuplondheakshada@gmail.com",TxtEmail.Text);
                mm.Subject = "Your Password";
                mm.Body = string.Format("Hello:<h1>{0}</h1> is your Username <br /><br /> Your Password is <h1>{1}</h1>", Username, Password);
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential nc = new NetworkCredential();
                nc.UserName = "tuplondheakshada@gmail.com";
                nc.Password = "7887988385";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = nc;
                smtp.Port = 587;
                smtp.Send(mm);
                Labmsg.Text = "Your Password has been sent to " + TxtEmail.Text;
                Labmsg.ForeColor = Color.Green;

                con.Close();
            }
            else
            {
                Labmsg.Text = TxtEmail.Text + " - This Email Id does not exist in our database ";
                Labmsg.ForeColor = Color.Red; 
            }


        }
    }
}