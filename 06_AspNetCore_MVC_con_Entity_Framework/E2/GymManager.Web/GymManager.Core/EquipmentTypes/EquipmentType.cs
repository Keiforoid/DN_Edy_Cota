using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GymManager.Core.EquipmentTypes
{
    public class EquipmentType
    {
        [Key]
        public int Id { get; set; }

        [StringLength(40)]
        [Required]
        public string Name { get; set; }

        [StringLength(200)]
        public string Description { get; set; }
    }
}
