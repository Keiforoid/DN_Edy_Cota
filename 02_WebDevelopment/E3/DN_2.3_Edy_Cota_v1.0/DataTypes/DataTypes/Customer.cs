using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataTypes
{
    class Customer
    {
        public Customer(string name, DateTime registered)
        {
            Name = name;
            Registered = registered;
        }

        public string Name {get; set;}

        public DateTime Registered { get; set; }
    }
}
