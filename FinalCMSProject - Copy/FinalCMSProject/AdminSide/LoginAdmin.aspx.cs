using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TempelateHandling.AdminSide
{
    public partial class LoginAdmin : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null && Session["Role"]!=null)
            {
                if ((int)Session["Role"] == 1)
                {
                    Response.Redirect("~/AdminSide/AdminHome.aspx");
                }
                else
                {
                    Response.Redirect("~/clientSide/clientHome.aspx");
                }
            }
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-V9SG7E1; Database=CafeManagementSystem; Integrated Security=true");
            SqlCommand cmd = new SqlCommand("SELECT * FROM tblUser WHERE Email='" + txtUserName.Text + "' AND password='" + txtPassword.Text + "'", conn);
            conn.Open();
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    string nnn = dr[2].ToString();
                    string RolID = dr[12].ToString();
                    int rolID = Convert.ToInt32(RolID);
                    Session["User"] = nnn;
                    Session["Role"] = rolID;
                    string Name = Session["User"].ToString();
                }
                if ((int)Session["Role"] == 1)
                {
                    Response.Redirect("~/AdminSide/AdminHome.aspx");
                }
                else
                {
                    Response.Redirect("~/clientSide/clientHome.aspx");
                }


            }
            else
            {
                Label1.Text = "invalid username or password";
            }
            //conn.Open();
            //using (SqlDataReader r = cmd.ExecuteReader())
            //{
            //    if (r.Read())
            //    {
            //        Session["User"] = r["FullName"].ToString();
            //        Response.Redirect("~/AdminSide/AdminHome.aspx");
            //    }
            //    else
            //    {
            //        //label1.text = "invalid username or password";
            //    }
            //}
            //SqlDataAdapter da = new SqlDataAdapter();
            //da.SelectCommand = cmd;

            //DataTable dt = new DataTable();
            //da.Fill(dt);
            //DataTable User = (DataTable)Session["User"];
            //Session["User"] = dt.Columns[" txtUserName.Text"];
            //if (Session["User"].role == 1)
            //{

            //    Response.Redirect("~/AdminSide/AdminHome.aspx");
            //}
            //else
            //{
            //    Response.Redirect("~clientSide/clientHome.aspx");
            //}


            //    //foreach (DataRow dr in dt.Rows)
            //    //{
            //    Session["User"] = dt.Columns["FullName"];

            //        string n = Session["User"].ToString();
            //        //Session["role"] = dr["RIle"];
            //        //int rID = (int)Session["role"];
            //        //if (rID == 1)
            //        //{

            //        //}
            //        Response.Redirect("~/AdminSide/AdminHome.aspx");
            //   // }
            //}


            //Label1.Text = "invalid username or password";
        }

    }
}


//SqlDataReader mdr;
//SqlConnection con = new SqlConnection("Data Source =DESKTOP-4SD2O5D; Database = E-Commerece; integrated security=true");
//con.Open();
//            SqlCommand cmd = new SqlCommand("SELECT [logo], [Name], [Owener], [Contact], [Email], [DoStrt], [history], [cover], [OrgCatgry], [OrgId], [Address] FROM [tbl_Org] WHERE [OrgId] = '" + OrgId + "'", con);

//mdr = cmd.ExecuteReader();

//            if (mdr.Read())
//            {


//                System.Web.UI.HtmlControls.HtmlGenericControl li =
//    new System.Web.UI.HtmlControls.HtmlGenericControl("li");

//lblOrgName.Text = mdr.GetString(1);
//                lblOrgOwener.Text = mdr.GetString(2);
//                lblOrgContact.Text = mdr.GetString(3);
//                lblOrgEmail.Text = mdr.GetString(4);
//                lblOrgAddress.Text = mdr.GetString(10);
//                lblOrgOrganization.Text = mdr.GetString(1);
//                Image logo = new Image();
//logo.ImageUrl = mdr.GetString(0);
//                li.Controls.Add(logo);
//                string ccover = mdr.GetString(7);
////ye tmhari moti ka ustaad hai mu bhola
//wohi.Controls.Add(li);
//                System.Web.UI.HtmlControls.HtmlGenericControl div =
//   new System.Web.UI.HtmlControls.HtmlGenericControl("div");
//Image cover = new Image();
//cover.ImageUrl = ccover;
//                div.Controls.Add(cover);

//                co.Controls.Add(div);
//            }

//            else
//            {



//            }

