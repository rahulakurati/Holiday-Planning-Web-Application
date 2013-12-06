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
        }

        protected void gvSearchResults_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = gvSearchResults.SelectedRow;
            Session["description"] = gr.Cells[1].Text;
            Response.Redirect("details.aspx");
        }
    }
}