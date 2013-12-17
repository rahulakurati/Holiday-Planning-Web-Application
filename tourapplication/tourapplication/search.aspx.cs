using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace tourapplication
{
    public partial class search : System.Web.UI.Page
    {
        string strConn = "Server=RAHUL\\SQLEXPRESS;Database=master;Trusted_Connection=True";
        SqlConnection conn = null;
        SqlCommand cmd;
        DataSet ds;
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                liLogin.InnerHtml = "<a href=\"myaccount.aspx\">My Account</a>";
                liRegister.InnerHtml = "<a href=\"logout.aspx\">Logout</a>";
            }
            else
                Response.Redirect("index.aspx");

            Label1.Visible = false;
            HyperLink1.Visible = false;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string strcmd = "select description,transport,length,price from tbl_tourtypes where location='"+txtSearchTour.Text+"'";
            conn = new SqlConnection(strConn);
            cmd = new SqlCommand(strcmd, conn);
            ds = new DataSet();
            da = new SqlDataAdapter(cmd);
            da.Fill(ds);

            gvSearchResults.DataSource = ds;
            gvSearchResults.DataBind();
            gvSearchResults.CssClass = "table table-hover table-bordered";

            Label1.Visible = true;
            HyperLink1.Visible = true;
        }

        protected void gvSearchResults_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = gvSearchResults.SelectedRow;
            Session["Location"] = txtSearchTour.Text;
            Session["description"] = gr.Cells[1].Text;
            Session["transport"] = gr.Cells[2].Text;
            Session["length"] = gr.Cells[3].Text;
            Session["price"] = gr.Cells[4].Text;
            Response.Redirect("details.aspx");
        }
    }
}