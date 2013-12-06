using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace tourapplication
{
    public partial class login : System.Web.UI.Page
    {
        string strConn = "Server=RAHUL\\SQLEXPRESS;Database=master;Trusted_Connection=True";
        SqlConnection conn = null;
        SqlCommand cmd;
        DataSet ds;
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignin_Click(object sender, EventArgs e)
        {
            try
            {
                btnSignin.Enabled = false;
                string strcmd = "select count(*) from tbl_user where email='" + txtEmail.Text + "' and password='" + txtPassword.Text + "';";
                conn = new SqlConnection(strConn);
                cmd = new SqlCommand(strcmd, conn);
                ds = new DataSet();
                da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                
                if(Convert.ToInt32(ds.Tables[0].Rows[0][0])==1)
                {
                    Response.Redirect("index.aspx");
                }
            }
            catch (Exception)
            {
                
                throw;
            }
            
        }

        

        
        
    }
}