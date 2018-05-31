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
    public partial class ManageItems : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { 
                SqlConnection conn = new SqlConnection("Data Source=DESKTOP-V9SG7E1; Database=CafeManagementSystem; Integrated Security=true");
                SqlCommand cmd = new SqlCommand("SELECT * FROM tblCategory", conn);

                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;

                DataTable dt = new DataTable();
                da.Fill(dt);

                ddlCategory.DataSource = dt;
                ddlCategory.DataTextField = "CATEGORY_NAME";
                ddlCategory.DataValueField = "CATEGORY_ID";
                ddlCategory.DataBind();
            }
           
        }

        

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-V9SG7E1; Database=CafeManagementSystem; Integrated Security=true");
            String catID = ((Label)GridView1.Rows[e.RowIndex].FindControl("lblId")).Text;
            SqlCommand cmd = new SqlCommand("Delete from tblItem Where Item_ID='" + catID + "'", conn);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();


        }

        protected void btnSaveProducts_Click(object sender, EventArgs e)
        {
            String dbPath = "~/Imges/ItemPicture/" + FileUpload1.FileName;
            String rootPath = Server.MapPath(dbPath);
            FileUpload1.SaveAs(rootPath);

            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-V9SG7E1; Database=CafeManagementSystem; Integrated Security=true");
            SqlCommand cmd = new SqlCommand("INSERT INTO tblItem (Item_Name,Item_PurchasePrice,Item_SalePrice,Item_Description,Item_Image,Item_Category_FID) Values ('" + txtItemName.Text + "','" + txtPurchasePrice.Text + "','" + txtSalePrice.Text + "','" + txtDescription.Text + "','" + dbPath + "','" + ddlCategory.SelectedItem.Value + "')", conn);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("Product has been added");
        }

        protected void btnViewProducts_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection("Data Source=DESKTOP-V9SG7E1; Database=CafeManagementSystem; Integrated Security=true");
                SqlCommand cmd = new SqlCommand("select tblItem.Item_ID,tblItem.Item_Image,tblItem.Item_Name,tblItem.Item_Description,tblItem.Item_SalePrice,tblItem.Item_PurchasePrice from tblItem", conn);

                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;

                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();
             
            }
            catch(Exception c)
            {
              
            }
         
        }
    }
}