using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Mvc;

namespace GymManager.Core.MembershipTypes
{
    public class MembershipType
    {
        public int Id { get; set; }

        [StringLength(100)]
        [Required(ErrorMessage = "You must enter the name of the membership type.")]
        public string Name { get; set; }

        //[DisplayFormat(DataFormatString = "{0:C}")]
        [DataType(DataType.Currency)]
        [DisplayFormat(DataFormatString = "{0:C}", ApplyFormatInEditMode = true)]
        [Required(ErrorMessage = "You must enter a price for the membership.")]
        public double Cost { get; set; }

        public DateTime CreatedOn { get; set; }

        [Range(0, int.MaxValue, ErrorMessage = "Please enter valid duration.")]
        [Required(ErrorMessage = "You must enter the duration of the memebership.")]
        public int Duration { get; set; }
    }
}
