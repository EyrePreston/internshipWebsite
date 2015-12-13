using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace msvIntro.Models
{
    public class ApplicationForm
    {
        [Key]
        public int ApplicationID { get; set; }
        [Required]
        [Display(Name = "Full Name")]
        public string name { get; set; }

        public string email { get; set; }

        public int phoneNumber { get; set; }

        public string resume { get; set; }

        public string daysAvailable { get; set; }

        public string hoursPerWeek { get; set; }

        public string skills { get; set; }

        public string stengths { get; set; }

        public string accomplishments { get; set; }

        public string courseOfStudy { get; set; }

        public string citizenship { get; set; }

        public int MyProperty { get; set; }

        
    }
}