using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Exercise.Entities
{
    public class ProductType
    {
        public int IdInventory { get; set; }
        public string ProductName { get; set; }
        public int IdProductType { get; set; }
        public string ProductTypeName { get; set; }
    }
}
