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
            
            if (lblVisitingPoints.Text == "")
            {
                try
                {
                    string strcmd = "select tourpointdescription from tbl_points where tourid=(select tourid from tbl_tourtypes where location='" + Session["Location"].ToString() + "')";
                    conn = new SqlConnection(strConn);
                    cmd = new SqlCommand(strcmd, conn);
                    ds = new DataSet();
                    da = new SqlDataAdapter(cmd);
                    da.Fill(ds);

                    foreach (DataTable table in ds.Tables)
                    {
                        foreach (DataRow row in table.Rows)
                        {
                            lblVisitingPoints.Text += row.ItemArray[0];
                            lblVisitingPoints.Text += ",";
                        }
                    }
                }
                catch (Exception)
                {

                    throw;
                }
                finally
                {

                }
            }
            lblLocation.Text = Session["Location"].ToString();
            lblTransport.Text = Session["transport"].ToString();
            lblDuration.Text = Session["length"].ToString();
            lblPrice.Text = Session["price"].ToString()+" $";
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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblPrice.Text = (Convert.ToInt32(Session["price"].ToString()) * Convert.ToInt32(DropDownList1.SelectedValue.ToString())).ToString();
            lblPrice.Text += " $";
        }

        protected void btnShowCalendar_Click(object sender, EventArgs e)
        {
            startCalendar.Visible = true;
            btnShowCalendar.Enabled = false;
        }

        protected void startCalendar_SelectionChanged(object sender, EventArgs e)
        {
            txtCalendar.Text = startCalendar.SelectedDate.ToString();
            btnShowCalendar.Enabled = true;
            startCalendar.Visible = false;
        }

        protected void startCalendar_DayRender(object sender, DayRenderEventArgs e)
        {
            if(e.Day.Date<DateTime.Now.Date)
            {
                e.Day.IsSelectable = false;
                e.Cell.Font.Strikeout = true;
            }
        }
    }
}