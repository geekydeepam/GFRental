using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GFRental
{
    public partial class RentGF : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

            int SignedIn = Convert.ToInt16(Session["Signed_in"]);
            if (SignedIn == 0) {
                Response.Redirect("SignIN.aspx");
            }
            
        }
    }
}