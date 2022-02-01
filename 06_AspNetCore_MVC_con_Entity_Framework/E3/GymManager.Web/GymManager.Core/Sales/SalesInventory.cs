using System;
using System.Collections.Generic;
using GymManager.Core._Inventory;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GymManager.Core.Sales
{
    public class SalesInventory
    {
        public int IdSales { get; set; }

        public int IdInventory { get; set; }

        public Sales Sales { get; set; }

        public Inventory Inventory { get; set; }

        [Range(1, int.MaxValue, ErrorMessage = "Enter valid quantity.")]
        [Required]
        public int Cuantity { get; set; }
    }
}
