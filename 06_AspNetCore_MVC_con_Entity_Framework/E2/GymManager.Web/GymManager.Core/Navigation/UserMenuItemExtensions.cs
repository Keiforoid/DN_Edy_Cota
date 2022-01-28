using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GymManager.Core.Navigation
{
    public static class UserMenuItemExtensions
    {
        public static bool IsMenuActive(this UserMenuitem menuitem, string currentPageName)
        {
            if (menuitem.Name ==currentPageName)
            {
                return true;
            }

            if (menuitem.Items !=null)
            {
                foreach (var subMenuItem in menuitem.Items)
                {
                    if (subMenuItem.IsMenuActive(currentPageName))
                    {
                        return true;
                    }
                }
            }
            return false;
        }
    }
}
