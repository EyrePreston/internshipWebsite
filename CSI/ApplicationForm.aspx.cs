﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace WebApp
{

    public partial class ApplicationForm : System.Web.UI.Page
    {
        //private static string indexValue;
        private static int indexValue;
        private int companyID;
        

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["internshipLDSBCConnectionString"].ToString());
            connection.Open();
            SqlCommand command = new SqlCommand("SELECT * FROM [Job] WHERE ID=" + indexValue + "", connection);
            SqlDataReader reader = command.ExecuteReader();

            reader.Read();
            lblJobTitle.Text = "Job Title: " + reader["JobTitle"].ToString();
            lblPosition.Text = "Position:" + reader["Postion"].ToString();
            companyID = (int) reader["CompanyID"];
            connection.Close();

            connection.Open();
            SqlCommand getInfoFromCompany = new SqlCommand("SELECT * FROM [Company] WHERE ID=" + companyID, connection);
            SqlDataReader reader2 = getInfoFromCompany.ExecuteReader();

            reader2.Read();
            lblCompany.Text = "Company: " + reader2["CompanyName"].ToString();
            connection.Close();


        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            // Clean fields.
            txtName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            daysAvailable.Text = "";
            HoursPerWeek.Text = "";
            Skills.Text = "";
            Strengths.Text = "";
            Accomplishments.Text = "";
            courseOfStudy.Text = "";
            radioListYears.ClearSelection();
            radioCitizenship.ClearSelection(); 
            fileResume.Dispose();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            MailMessage mail = new MailMessage();
            mail.Body = txtName.Text + " is interested in the following internship:" +
                "\n" + lblJobTitle.Text +
                "\n" + lblCompany.Text +
                "\nStudent's Name: " + txtName.Text +
                "\nStudent's Email: " + txtEmail.Text +
                "\nPhone Number: " + txtPhone.Text +
                "\nDays Available: " + daysAvailable.Text +
                "\nHours Per Week: " + HoursPerWeek.Text +
                "\nSkills: " + Skills.Text +
                "\nStrengths: " + Strengths.Text +
                "\nAccomplishments: " + Accomplishments.Text +
                "\nCourse Of Study: " + courseOfStudy.Text +
                "\n" + radioListYears.SelectedValue.ToString() +
                "\n" + radioCitizenship.SelectedValue.ToString() +
                "\n" +
                "\n" +
                "\n" +
                "\n";
                

                
            
            if(this.fileResume.HasFile)
            {

                mail.Attachments.Add(new Attachment(fileResume.PostedFile.InputStream, fileResume.FileName));

            }

            mail.Subject = "Internship Application";
            mail.From = new MailAddress("prestoneyre12@gmail.com");
            mail.To.Add("prestoneyre12@gmail.com");
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            client.Credentials = new System.Net.NetworkCredential("prestoneyre12@gmail.com", "gO_Cougars207");
            client.EnableSsl = true;
            client.Send(mail);

            // Clean fields.
            txtName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            daysAvailable.Text = "";
            HoursPerWeek.Text = "";
            Skills.Text = "";
            Strengths.Text = "";
            Accomplishments.Text = "";
            courseOfStudy.Text = "";
            radioListYears.ClearSelection();
            radioCitizenship.ClearSelection();
            fileResume.Dispose();



            Response.Redirect("~/CSI/Default.aspx");
        }

        public static void setValue(int value)
        {
            indexValue = value;
        }

        protected void btnInternships_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CSI/Default.aspx");
        }
    }

}