using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using GymManager.Core.Navigation;


namespace GymManager.Web.Models
{
    public class MenuViewModel
    {
        public string CurrentPageName { get; set; }

        public List<UserMenuitem> Menu { get; set; }
    }
}
