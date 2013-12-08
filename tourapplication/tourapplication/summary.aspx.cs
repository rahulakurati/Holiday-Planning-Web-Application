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
    public partial class summary : System.Web.UI.Page
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
        }

        protected void btnProceed_Click(object sender, EventArgs e)
        {
            //insert into order table
            conn = new SqlConnection(strConn);
            cmd = new SqlCommand("insert into tbl_order OUTPUT INSERTED.orderid values('rahul@sjsu.edu',1,'confirmed')", conn);
            conn.Open();
            int iStatus = Convert.ToInt32(cmd.ExecuteScalar());
            Session["OrderId"] = iStatus.ToString();

            Response.Redirect("confirmation.aspx");
        }
    }
}