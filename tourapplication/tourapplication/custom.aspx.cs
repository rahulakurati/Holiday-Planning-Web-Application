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
    public partial class custom : System.Web.UI.Page
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
            if(!IsPostBack)
            { 
                try
                {
                    conn = new SqlConnection(strConn);
                    cmd = new SqlCommand("select distinct location,tourid from tbl_tourtypes order by location", conn);
                    ds = new DataSet();
                    da = new SqlDataAdapter(cmd);
                    da.Fill(ds);

                    ddCountry.DataSource = ds.Tables[0];
                    ddCountry.DataValueField = "tourid";
                    ddCountry.DataTextField = "location";
                    ddCountry.DataBind();
                }
                catch (Exception)
                {

                    throw;
                }
                finally
                {
                    conn = null;
                    cmd = null;
                    ds = null;
                    da = null;
                }
            }
            
            

        }

        protected void ddCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection(strConn);
                cmd = new SqlCommand("select tourpointid,tourpointdescription from tbl_points where tourid="+Convert.ToInt32(ddCountry.SelectedValue), conn);
                ds = new DataSet();
                da = new SqlDataAdapter(cmd);
                da.Fill(ds);

                lbVisitingPoints.DataSource = ds.Tables[0];
                lbVisitingPoints.DataValueField = "tourpointid";
                lbVisitingPoints.DataTextField = "tourpointdescription";
                lbVisitingPoints.DataBind();
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                conn = null;
                cmd = null;
                ds = null;
                da = null;
            }
            
            try
            {
                conn = new SqlConnection(strConn);
                cmd = new SqlCommand("select transportid,transportdescription from tbl_tourtransport where tourid=" + Convert.ToInt32(ddCountry.SelectedValue), conn);
                ds = new DataSet();
                da = new SqlDataAdapter(cmd);
                da.Fill(ds);

                ddTransport.DataSource = ds.Tables[0];
                ddTransport.DataValueField = "transportid";
                ddTransport.DataTextField = "transportdescription";
                ddTransport.DataBind();
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                conn = null;
                cmd = null;
                ds = null;
                da = null;
            }

        }

        
    }
}