﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class CompnayHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (CompanyTable.Rows.Count > 0)
            {
                FormView2.DefaultMode = FormViewMode.Insert;
                
            }
            else
            {
                FormView2.DefaultMode = FormViewMode.ReadOnly;
            }
            
        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void rateIntern_Click(object sender, EventArgs e)
        {
            CompanyPanel.Visible= false;
            internPanel.Visible= true;
            

        }
        protected void InsertCancelButton_Click(object sender, EventArgs e)
        {
            CompanyPanel.Visible = true;
            internPanel.Visible = false;


        }

  

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            CompanyPanel.Visible = false;
            internPanel.Visible = true;



            TextBox newID = (TextBox)rateInternForm.FindControl("Job_IDTextBox");
            TextBox newCompanyID = (TextBox)rateInternForm.FindControl("Com_IDTextBox");
            string ID = CompanyTable.SelectedRow.Cells[0].Text;
            string CompanyID = CompanyTable.SelectedRow.Cells[2].Text;


            newID.Text = ID;
            newCompanyID.Text = CompanyID;
        }




        //Response.Redirect("ratingTable.aspx");
        //<a runat="server" href="ratingTable.aspx"></a>;

    }
}