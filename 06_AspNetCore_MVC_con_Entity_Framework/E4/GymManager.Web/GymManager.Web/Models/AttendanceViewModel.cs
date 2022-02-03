using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace GymManager.Web.Models
{
    public class AttendanceViewModel
    {
        [Required(ErrorMessage = "You must insert your member id.")]
        public int MemberId { get; set; }
        public int AssistanceTypeId { get; set; }
        public bool MemberFound { get; set; }
    }
}
