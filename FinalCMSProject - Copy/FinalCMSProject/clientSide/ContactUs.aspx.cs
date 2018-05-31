using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TempelateHandling.clientSide
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-V9SG7E1; Database=CafeManagementSystem; Integrated Security=true");
            SqlCommand cmd = new SqlCommand("Insert into tblContactUs (Full_name,Email,Message) values('" + txtname.Text + "','" + txtemail.Text + "','" + txtmessage.Text + "') ", conn);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("Thankyou for your feedback");
        }
    }
}