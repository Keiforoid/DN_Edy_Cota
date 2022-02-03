using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GymManager.Core.Assists
{
    public class AssistanceType
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [StringLength(15)]
        public string NameType { get; set; }

        public List<Assistance> Assists { get; set; }

        public AssistanceType()
        {
            Assists = new List<Assistance>();
        }

    }
}
