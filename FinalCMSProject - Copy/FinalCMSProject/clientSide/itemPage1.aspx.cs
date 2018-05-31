using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TempelateHandling.clientSide
{
    public partial class itemPage1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-V9SG7E1; Database=CafeManagementSystem; Integrated Security=true");
            SqlCommand cmd = new SqlCommand("SELECT * FROM tblCategory", conn);

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;

            DataTable dt = new DataTable();
            da.Fill(dt);

            catagoryListView.DataSource = dt;
            catagoryListView.DataBind();
        }

        protected void lnkBtnCategoryName_Click(object sender, EventArgs e)
        {
            LinkButton lnkBtn = sender as LinkButton;
            int index = ((ListViewItem)lnkBtn.NamingContainer).DataItemIndex;
            String cat_ID = ((Label)catagoryListView.Items[index].FindControl("lblID")).Text;

            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-V9SG7E1; Database=CafeManagementSystem; Integrated Security=true");
            SqlCommand cmd = new SqlCommand("SELECT * FROM tblItem WHERE Item_CATEGORY_FID='" + cat_ID + "'", conn);

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;

            DataTable dt = new DataTable();
            da.Fill(dt);

            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-V9SG7E1; Database=dbCafeSystem; Integrated Security=true");
            SqlCommand cmd = new SqlCommand("SELECT * FROM tblItem", conn);

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;

            DataTable dt = new DataTable();
            da.Fill(dt);

            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }

       

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            string ID, NAME, PRICE, QTY = null;

            Button Btn = sender as Button;
            int index = ((RepeaterItem)Btn.NamingContainer).ItemIndex;
             ID = ((Label)Repeater1.Items[index].FindControl("lblID")).Text;
             NAME = ((Label)Repeater1.Items[index].FindControl("lblName")).Text;
             PRICE = ((Label)Repeater1.Items[index].FindControl("lblSalePrice")).Text;
             QTY = ((TextBox)Repeater1.Items[index].FindControl("txtQuantity")).Text;
            float AMOUNT = float.Parse(PRICE) * int.Parse(QTY);
            String Description = ((Label)Repeater1.Items[index].FindControl("lblDescription")).Text;
            String picture = ((Image)Repeater1.Items[index].FindControl("imgItem")).ImageUrl;

            if (Session["Cart"] == null)
            {
                DataTable dtCart = new DataTable();
                dtCart.Columns.Add("ID");
                dtCart.Columns.Add("NAME");
                dtCart.Columns.Add("PRICE");
                dtCart.Columns.Add("QUANTITY");
                dtCart.Columns.Add("AMOUNT");
                dtCart.Columns.Add("DESCRIPTION");
                dtCart.Columns.Add("PICTURE");

                dtCart.Rows.Add(ID, NAME, PRICE, QTY, AMOUNT, Description, picture);
                Session["Cart"] = dtCart;
            }
           else
            {
               
                DataTable dtCart = (DataTable)Session["Cart"];
                //lbID obj = new lbID();
                //List<lbID> data = new List<lbID>();

                //foreach (DataTable item in dtCart.Rows)
                //{  

                //    lbID obj = new lbID();
                //    obj.ID = Convert.ToString(item.Rows[1]);
                //    data.Add(obj);
                //}

                foreach (DataRow dr in dtCart.Rows) // search whole table
                {
                    //for (int i = 0; i < dtCart.Rows.Count; i++)
                    //{
                        if (dr["ID"].ToString() == ID) // if id==2
                        {
                            //dr["Product_name"] = "cde"; //change the name
                                                        //break; break or not depending on you


                            int qt = Convert.ToInt32(dtCart.Rows[0]["QUANTITY"]);
                            float tot = Convert.ToInt16(dtCart.Rows[0]["AMOUNT"]);

                            qt = qt+Convert.ToInt32(QTY);
                            tot =tot + AMOUNT;
                            dr.SetField("QUANTITY", qt.ToString());
                            dr.SetField("AMOUNT", tot.ToString());

                        Response.Redirect("~/clientSide/itemPage1.aspx");
                    }
            
                    //}

                }


                //DataTable dtCart1 = new DataTable();
                //dtCart1.Columns.Add("ID");
                //dtCart1.Columns.Add("NAME");
                //dtCart1.Columns.Add("PRICE");
                //dtCart1.Columns.Add("QUANTITY");
                //dtCart1.Columns.Add("AMOUNT");
                //dtCart1.Columns.Add("DESCRIPTION");
                //dtCart1.Columns.Add("PICTURE");
                dtCart.Rows.Add(ID, NAME, PRICE, QTY, AMOUNT, Description, picture);
                Session["Cart"] = dtCart;

            }

            //DataTable dtCart1 = new DataTable();
            //dtCart1.Columns.Add("ID");
            //dtCart1.Columns.Add("NAME");
            //dtCart1.Columns.Add("PRICE");
            //dtCart1.Columns.Add("QUANTITY");
            //dtCart1.Columns.Add("AMOUNT");
            //dtCart1.Columns.Add("DESCRIPTION");
            //dtCart1.Columns.Add("PICTURE");
            //dtCart1.Rows.Add(ID, NAME, PRICE, QTY, AMOUNT, Description, picture);
            //Session["Cart"] = dtCart1;


        }

      
    
    }

    //public class lbID
    //{
    //    public string ID { get; set; }

    //    public int qt { get; set; }

    //    public float tot { get; set; }
    //}
}