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
    
    public partial class details : System.Web.UI.Page
    {
        string strConn = "Server=RAHUL\\SQLEXPRESS;Database=master;Trusted_Connection=True";
        SqlConnection conn = null;
        SqlCommand cmd;
        DataSet ds;
        SqlDataAdapter da;
        int iTourId = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            //string strDescription = Session["description"].ToString();
            //Session.Remove("description");
            //conn = new SqlConnection(strConn);
            //cmd = new SqlCommand("select tourid from tbl_tourtypes where description='"+strDescription+"'", conn);
            //conn.Open();
            //iTourId = Convert.ToInt32(cmd.ExecuteScalar());
            //conn.Close();
        }
    }
}