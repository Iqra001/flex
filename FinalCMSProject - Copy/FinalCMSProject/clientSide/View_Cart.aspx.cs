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

    public partial class View_Cart : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dtCart = (DataTable)Session["Cart"];
            if (!Page.IsPostBack)
            {
                if (dtCart != null)
                {
                    GridView2.DataSource = dtCart;
                    GridView2.DataBind();

                    int totalQuantity = 0; int totalAmount = 0;
                    for (int i = 0; i < dtCart.Rows.Count; i++)
                    {
                        totalQuantity = totalQuantity + int.Parse(dtCart.Rows[i]["Quantity"].ToString());
                        totalAmount = totalAmount + int.Parse(dtCart.Rows[i]["Amount"].ToString());
                    }

               ((Label)GridView2.FooterRow.FindControl("lblFooterQuantity")).Text = totalQuantity.ToString();
                    ((Label)GridView2.FooterRow.FindControl("lblFooterAmount")).Text = totalAmount.ToString();
                }

            }





        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dtCart = (DataTable)Session["Cart"];
            int count = dtCart.Rows.Count;
            if (dtCart != null)
            {
                dtCart.Rows[e.RowIndex].Delete();
                dtCart.AcceptChanges();

                GridView2.DataSource = dtCart;
                GridView2.DataBind();

                Session["Cart"] = dtCart;

                int totalQuantity = 0; int totalAmount = 0;
                for (int i = 0; i < dtCart.Rows.Count; i++)
                {
                    totalQuantity = totalQuantity + int.Parse(dtCart.Rows[i]["Quantity"].ToString());
                    totalAmount = totalAmount + int.Parse(dtCart.Rows[i]["Amount"].ToString());
                }

                ((Label)GridView2.FooterRow.FindControl("lblFooterQuantity")).Text = totalQuantity.ToString();
                ((Label)GridView2.FooterRow.FindControl("lblFooterAmount")).Text = totalAmount.ToString();
                count--;
            }
            if (count <= 0)
            {
                Session["Cart"] = null;
            }


        }





        protected void btnContinuePurchasing_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/clientSide/itemPage1.aspx");

        }

        protected void btnPayNow_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://www.sandbox.paypal.com");
        }

       
        protected void grd_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView2.EditIndex = e.NewEditIndex;
            DataTable dtCart = (DataTable)Session["Cart"];
            if (dtCart != null)
            {
                GridView2.DataSource = dtCart;
                GridView2.DataBind();

                int totalQuantity = 0; int totalAmount = 0;
                for (int i = 0; i < dtCart.Rows.Count; i++)
                {
                    totalQuantity = totalQuantity + int.Parse(dtCart.Rows[i]["Quantity"].ToString());
                    totalAmount = totalAmount + int.Parse(dtCart.Rows[i]["Amount"].ToString());
                }

           ((Label)GridView2.FooterRow.FindControl("lblFooterQuantity")).Text = totalQuantity.ToString();
                ((Label)GridView2.FooterRow.FindControl("lblFooterAmount")).Text = totalAmount.ToString();
            }
        }

        protected void grid_updating(object sender, GridViewUpdateEventArgs e)
        {
            String catID = ((Label)GridView2.Rows[e.RowIndex].FindControl("lblId")).Text;
            TextBox txtQuantity = (TextBox)GridView2.Rows[e.RowIndex].FindControl("txtQuantity");
           string price= ((Label)GridView2.Rows[e.RowIndex].FindControl("lblSalePrice")).Text;
           
            int q =int.Parse(txtQuantity.Text);
            float AMOUNT = float.Parse(price) *q;
           DataTable dtCart = (DataTable)Session["Cart"];

            foreach (DataRow dr in dtCart.Rows) // search whole table
            {
                //for (int i = 0; i < dtCart.Rows.Count; i++)
                //{
                if (dr["ID"].ToString() == catID) // if id==2
                {
                    //dr["Product_name"] = "cde"; //change the name
                    //break; break or not depending on you


                    int qt = Convert.ToInt32(dtCart.Rows[0]["QUANTITY"]);
                    float tot = Convert.ToInt16(dtCart.Rows[0]["AMOUNT"]);

                    qt = Convert.ToInt32(q);
                    tot =  AMOUNT;
                    dr.SetField("QUANTITY", qt.ToString());
                    dr.SetField("AMOUNT", tot.ToString());

                    Response.Redirect("~/clientSide/View_Cart.aspx");
                }

                //}

            }
            //int count = dtCart.Rows.Count;

            //if (dtCart != null)
            //{
            //    GridView2.DataSource = dtCart;
            //    GridView2.DataBind();

            //    int totalQuantity = 0; int totalAmount = 0;
            //    for (int i = 0; i < dtCart.Rows.Count; i++)
            //    {
            //        totalQuantity = totalQuantity + int.Parse(dtCart.Rows[i]["Quantity"].ToString());
            //        totalAmount = totalAmount + int.Parse(dtCart.Rows[i]["Amount"].ToString());
            //    }


            //    ((Label)GridView2.FooterRow.FindControl("lblFooterQuantity")).Text = totalQuantity.ToString();
            //    ((Label)GridView2.FooterRow.FindControl("lblFooterAmount")).Text = totalAmount.ToString();
            //    count++;

            //}
        }

        protected void grid_canceledit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView2.EditIndex = -1;
            DataTable dtCart =  (DataTable)Session["Cart"];
            if (dtCart != null)
            {
                GridView2.DataSource = dtCart;
                GridView2.DataBind();

                int totalQuantity = 0; int totalAmount = 0;
                for (int i = 0; i < dtCart.Rows.Count; i++)
                {
                    totalQuantity = totalQuantity + int.Parse(dtCart.Rows[i]["Quantity"].ToString());
                    totalAmount = totalAmount + int.Parse(dtCart.Rows[i]["Amount"].ToString());
                }

           ((Label)GridView2.FooterRow.FindControl("lblFooterQuantity")).Text = totalQuantity.ToString();
                ((Label)GridView2.FooterRow.FindControl("lblFooterAmount")).Text = totalAmount.ToString();
            }
        }
       



        //protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        //{
        //    DataTable dtCart = (DataTable)Session["Cart"];
        //    //String catID = ((Label)GridView2.Rows[e.RowIndex].FindControl("lblId")).Text;
        //    string ID = ((Label)dtCart.Rows[e.RowIndex].FindControl("lblId")).Text;
        //}

        //protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        //{
        //    GridView2.EditIndex = e.NewEditIndex;
        //    ShowData();
        //DataTable dtCart = (DataTable)Session["Cart"];
        //int count = dtCart.Rows.Count;
        //if (dtCart != null)
        //{
        //    dtCart.Rows[e.RowIndex].BeginEdit();
        //    dtCart.AcceptChanges();

        //    GridView2.DataSource = dtCart;
        //    GridView2.DataBind();

        //    Session["Cart"] = dtCart;

        //    int totalQuantity = 0; int totalAmount = 0;
        //    for (int i = 0; i < dtCart.Rows.Count; i++)
        //    {
        //        totalQuantity = totalQuantity + int.Parse(dtCart.Rows[i]["Quantity"].ToString());
        //        totalAmount = totalAmount + int.Parse(dtCart.Rows[i]["Amount"].ToString());
        //    }

        //    ((Label)GridView2.FooterRow.FindControl("lblFooterQuantity")).Text = totalQuantity.ToString();
        //    ((Label)GridView2.FooterRow.FindControl("lblFooterAmount")).Text = totalAmount.ToString();
        //    count--;
        //}
        //}

        //private void ShowData()
        //{
        //    throw new NotImplementedException();
        //}

        //protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        //{

        //    TextBox city = GridView2.Rows[e.RowIndex].FindControl("txtQuantity") as TextBox;
        //    DataTable dtCart = (DataTable)Session["Cart"];
        //    int count = dtCart.Rows.Count;
        //    if (dtCart != null)
        //    {
        //        dtCart.Rows[e.RowIndex].Update();
        //        dtCart.AcceptChanges();

        //        GridView2.DataSource = dtCart;
        //        GridView2.DataBind();

        //        Session["Cart"] = dtCart;

        //    SqlConnection conn = new SqlConnection("Data Source=DESKTOP-V9SG7E1; Database=CafeManagementSystem; Integrated Security=true");
        //SqlCommand cmd = new SqlCommand("Update  tblorderDetial  set Quantity='" + txtQuantity + "', con);
        //conn.Open();
        //cmd.ExecuteNonQuery();
        //conn.Close();

        //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
        //        GridView2.EditIndex = -1;
        //        Call ShowData method for displaying updated data  
        //        ShowData();
        //    }
        //}

        //protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        //{
        //    //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
        //    GridView2.EditIndex = -1;
        //    ShowData();
        //}
    }
}