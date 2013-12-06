using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace tourapplication
{
    public partial class register : System.Web.UI.Page
    {
        string strConn = "Server=RAHUL\\SQLEXPRESS;Database=master;Trusted_Connection=True";
        SqlConnection conn = null;
        SqlCommand cmd;
        DataSet ds;
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                if (rfvEmail.Visible && rfvPassword.Visible)
                {
                    btnSubmit.Enabled = false;
                    string strcmd = "INSERT INTO tbl_User VALUES('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtEmail.Text + "','" + txtPassword.Text + "')";
                    conn = new SqlConnection(strConn);
                    cmd = new SqlCommand(strcmd, conn);
                    //ds = new DataSet();
                    //da = new SqlDataAdapter(cmd);
                    //da.Fill(ds);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    btnSubmit.Text = "Registered";
                    imgRegistered.Visible = true;
                    conn.Close();
                    //System.Threading.Thread.Sleep(10000);
                    Response.Redirect("login.aspx");
                }
            }
            catch (Exception ex)
            {

                lblError.Text = ex.Message.ToString();
                btnSubmit.Enabled = true;
            }
        }
    }
}