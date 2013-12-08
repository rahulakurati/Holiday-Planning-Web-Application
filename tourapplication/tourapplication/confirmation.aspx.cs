using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tourapplication
{
    public partial class confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                liLogin.InnerHtml = "<a href=\"myaccount.aspx\">My Account</a>";
                liRegister.InnerHtml = "<a href=\"logout.aspx\">Logout</a>";
            }

            lblConfirmation.Text = "MT"+Session["OrderId"].ToString();
        }
    }
}