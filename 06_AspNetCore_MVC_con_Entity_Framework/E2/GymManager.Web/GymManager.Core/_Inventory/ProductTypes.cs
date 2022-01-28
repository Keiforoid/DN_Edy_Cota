using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GymManager.Core._Inventory
{
    public class ProductTypes
    {
        [Key]
        public int Id { get; set; }

        [StringLength(45)]
        [Required]
        public string Name { get; set; }

        [Required]
        [BindProperty, DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        public DateTime CreatedOn { get; set; }

        public List<Inventory> Inventory { get; set; }

        public ProductTypes()
        {
            Inventory = new List<Inventory>();
        }
    }
}
