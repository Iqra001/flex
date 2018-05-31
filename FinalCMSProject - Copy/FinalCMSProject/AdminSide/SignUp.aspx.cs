using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace TempelateHandling.AdminSide
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {

           string Phone= txtPhoneNo.Text;
            int RoleID = 2;
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-V9SG7E1; Database=CafeManagementSystem; Integrated Security=true");
            //  SqlCommand cmd = new SqlCommand("Insert into tblUser (Email,FullName,password,RoleFID) values('" + txtemail.Text + "','" + txtfname.Text + "','" + txtPass.Text + "','" + txtPhoneNo.Text+"','"+ txtAccountNo + "') ", conn);
            SqlCommand cmd = new SqlCommand("Insert into tblUser (Email,FullName,password,RoleFID) values('" + txtemail.Text + "','" + txtfname.Text + "','" + txtPass.Text + "','" + RoleID + "') ", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("Admin Profile Saved Successfully");

            
        }
    }
}