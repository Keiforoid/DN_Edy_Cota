using GymManager.Core.EquipmentTypes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GymManager.Web.Models
{
    public class EquipmentTypeListViewModel
    {
        public int NewEquipmentTypesCount { get; set; }
        public List<EquipmentType> EquipmentTypes { get; set; }
    }
}
