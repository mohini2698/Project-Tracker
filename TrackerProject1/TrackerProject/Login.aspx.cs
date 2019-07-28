using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tulpep.NotificationWindow;

namespace TrackerProject
{
    public partial class Login : System.Web.UI.Page
    {

        static string decryptedpwd;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        public Login()
        {
            
        }

        

        protected void Homebutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        public static string getShaData(string Data)
        {
            SHA1 sha = SHA1.Create();
            Byte[] hasdata = sha.ComputeHash(Encoding.Default.GetBytes(Data));
            StringBuilder returnvalue = new StringBuilder();
            int i;
            for (i = 0; i < hasdata.Length - 1; i++)
            {
                returnvalue.Append(hasdata[i].ToString());

            }
            return returnvalue.ToString();
        }

       

        protected void SignInbutton_Click(object sender, EventArgs e)
        {
            string ReturnCode = AuthenticateUser(UnameID.Text, UpassID.Text);
            Response.Write(ReturnCode);
            if(ReturnCode == "Admin")
            {
                Response.Redirect("AdminWorkSpace.aspx?Username=" + UnameID.Text);
            }
            else if(ReturnCode == "Team Lead")
            {
                Response.Redirect("TLWorkSpace.aspx?Username=" + UnameID.Text);

            }
            else if (ReturnCode == "Team Member")
            {
                Response.Redirect("TMWorkSpace.aspx?Username=" + UnameID.Text);

            }
            else
            {
                string message = "Invalid Username or Password";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
               /* PopupNotifier popup = new PopupNotifier();
                popup.Image = Properties.Resources.iconinformation;
                popup.TitleText = "FoxLearn";
                popup.ContentText = "Invalid Username or Password";
                popup.Popup();

                ScriptManager.RegisterStartupScript(Page, typeof(Page), "Popup", "alert('This is alert Message from C#')", true);*/
                Response.Write("****************");
            }
        }

        private string AuthenticateUser(string username, string password)
        {
            // string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                string CS = @"Server=localhost\SQLEXPRESS02;Database=ProjectTracker;Trusted_Connection=True;";
            using (SqlConnection con = new SqlConnection(CS))
            {

                Response.Write(password);
                SqlCommand cmd = new SqlCommand("Authenticate", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
#pragma warning disable CS0618 // Type or member is obsolete
                string Encryptedpwd = FormsAuthentication.HashPasswordForStoringInConfigFile(password, "SHA1");
#pragma warning restore CS0618 // Type or member is obsolete
                SqlParameter paramUsername = new SqlParameter("@UserName", username);
                SqlParameter paramPassword = new SqlParameter("@Password", Encryptedpwd);

                cmd.Parameters.Add(paramUsername);
                cmd.Parameters.Add(paramPassword);

                con.Open();
                

                string ReturnCode = cmd.ExecuteScalar().ToString();

                return ReturnCode;
              
            }


        }

        protected void Linkbutton_Click(object sender, EventArgs e)
        {

        }
    }
    }