using GymManager.Core.Members;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GymManager.Core.Assists
{
    public class Assistance
    {
        [Key]
        public int Id { get; set; }

        public Member Member { get; set; }

        public AssistanceType AssitanceType { get; set; }

        public DateTime DateTime { get; set; }
    }
}
