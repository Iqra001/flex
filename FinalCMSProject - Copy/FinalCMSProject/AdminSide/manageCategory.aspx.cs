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
    public partial class addCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadCategory();
        }

        protected void btnSaveCategory_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-V9SG7E1; Database=CafeManagementSystem; Integrated Security=true");
            SqlCommand cmd = new SqlCommand("INSERT INTO tblCategory (Category_Name) Values ('" + txtCategoryName.Text + "')", conn);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            loadCategory();
        }

        protected void btnViewCategory_Click(object sender, EventArgs e)
        {
            loadCategory();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-V9SG7E1; Database=CafeManagementSystem; Integrated Security=true");
            String catID = ((Label)GridView1.Rows[e.RowIndex].FindControl("lblId")).Text;
            SqlCommand cmd1 = new SqlCommand("Delete from tblItem Where Item_Category_FID='" + catID + "'", conn);

            conn.Open();
            cmd1.ExecuteNonQuery();
          
            SqlCommand cmd = new SqlCommand("Delete from tblCategory Where Category_ID='" + catID + "'", conn);

            
            cmd.ExecuteNonQuery();
            conn.Close();

            loadCategory();
        }
        public void loadCategory()
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-V9SG7E1; Database=CafeManagementSystem; Integrated Security=true");
            SqlCommand cmd = new SqlCommand("SELECT * FROM tblCategory", conn);

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;

            DataTable dt = new DataTable();
            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}