using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class ratingTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home/Index");
            
        }

        protected void adminPanel_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (adminPanel.SelectedValue == "1")
            {
                studentFeedback.Visible = false;
                internshipPanel.Visible = true;
            }
            else if (adminPanel.SelectedValue == "2")
            {
                internshipPanel.Visible = false;
                studentFeedback.Visible = true;
            }
        }
    }
}