using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TempelateHandling.AdminSide
{
    public partial class LoginMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["User"] == null)
            //{
            //    Response.Redirect("LoginAdmin.aspx");
            //}
            //else
            //{
            //    Response.Write(Session["User"]);
            //}
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                Session.Abandon();
            }
        }
    }
}