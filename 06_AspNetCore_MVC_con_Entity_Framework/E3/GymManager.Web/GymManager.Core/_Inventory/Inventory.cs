using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GymManager.Core._Inventory
{
    public class Inventory
    {
        [Key]
        public int Id { get; set; }

        [StringLength(45)]
        [Required]
        public string Name { get; set; }

        public ProductTypes ProductTypes { get; set; }

        [StringLength(255)]
        [Required]
        public string Description { get; set; }

        public MeasureType MeasureType { get; set; }

        [Range(1, int.MaxValue, ErrorMessage = "Invalid cost.")]
        [DataType(DataType.Currency)]
        public double Price { get; set; }

        [Range(1, int.MaxValue, ErrorMessage = "Invalid measure.")]
        [DataType(DataType.Currency)]
        public double Measure { get; set; }

        [Range(0, int.MaxValue, ErrorMessage = "Invalid cuantity.")]
        public int cuantity { get; set; }

        [BindProperty, DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        public DateTime CreateOn { get; set; }
    }
}
