﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace GymManager.Web.Models
{
    public class EquipmentTypeViewModel
    {
        public int Id { get; set; }

        [StringLength(40)]
        [Required]
        public string Name { get; set; }

        [StringLength(200)]
        public string Description { get; set; }
    }
}
