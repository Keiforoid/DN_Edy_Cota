using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApi.Exercise.ParamModels
{
    public class CreateSale
    {
        public int IdUser { get; set; }

        public int IdInventory { get; set; }

        public int Cuantity { get; set; }

    }
}
