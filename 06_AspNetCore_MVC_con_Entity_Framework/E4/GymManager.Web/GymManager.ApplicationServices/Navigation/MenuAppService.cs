using GymManager.Core.Navigation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GymManager.ApplicationServices.Navigation
{
    public class MenuAppService : IMenuAppService
    {
        public List<UserMenuitem> GetMenu()
        {
            List<UserMenuitem> menu = new List<UserMenuitem>();
            
            menu.Add(new UserMenuitem
            {
                Name = "Home",
                DisplayName = "Home",
                Order = 0,
                Url = "/"
            });

            menu.Add(new UserMenuitem
            {
                Name = "Administration",
                DisplayName = "Administration",
                Order = 1,
                Url = "#",
                Items = new List<UserMenuitem>()
                {
                    new UserMenuitem
                    {
                        Name = "MembershipTypes",
                        DisplayName = "Membership Types",
                        Order = 0,
                        Url = "/MembershipTypes/"
                    },
                    new UserMenuitem
                    {
                        Name = "InventoryUnits",
                        DisplayName = "Inventory Units",
                        Order = 1,
                        Url = "/MembershipTypes/"
                    },
                    new UserMenuitem
                    {
                        Name = "EquipmentTypes",
                        DisplayName = "Equipment Types",
                        Order = 2,
                        Url = "/EquipmentTypes/"
                    },
                    new UserMenuitem
                    {
                        Name = "EquipmentInventory",
                        DisplayName = "Equipment Inventory",
                        Order = 3,
                        Url = "/EquipmentInventory/"
                    },
                    new UserMenuitem
                    {
                        Name = "UserManagment",
                        DisplayName = "Users",
                        Order = 4,
                        Url = "/Users/"
                    }
                }
            });

            menu.Add(new UserMenuitem
            {
                Name = "Store",
                DisplayName = "Store",
                Order = 2,
                Url = "#",
                Items = new List<UserMenuitem>
                { 
                    new UserMenuitem
                    {
                        Name = "Shopping",
                        DisplayName = "Shopping",
                        Order = 0,
                        Url = "/Shopping/",
                    },
                    new UserMenuitem
                    {
                        Name = "ProductInventory",
                        DisplayName = "Product Inventory",
                        Order = 1,
                        Url = "/ProductInventory/",
                    },
                    new UserMenuitem
                    {
                        Name = "ProducTypes",
                        DisplayName = "Produc Types",
                        Order = 2,
                        Url = "/ProducTypes/",
                    },
                    new UserMenuitem
                    {
                        Name = "ProductCategories",
                        DisplayName = "Product Categories",
                        Order = 3,
                        Url = "/ProductCategories/",
                    }
                }
            });

            menu.Add(new UserMenuitem
            {
                Name = "Members",
                DisplayName = "Members",
                Order = 3,
                Url = "#",
                Items = new List<UserMenuitem>()
                {
                    new UserMenuitem
                    {
                        Name = "MemberManager",
                        DisplayName = "Managment",
                        Order = 0,
                        Url = "/Members/"
                    },
                    new UserMenuitem
                    {
                        Name = "MembershipRenewal",
                        DisplayName = "Membership Renewal",
                        Order = 1,
                        Url = "/Membership/Renewal/"
                    },
                    new UserMenuitem
                    {
                        Name = "CheckIn",
                        DisplayName = "CheckIn",
                        Order = 2,
                        Url = "/Members/CheckIn/"
                    },
                    new UserMenuitem
                    {
                        Name = "CheckOut",
                        DisplayName = "CheckOut",
                        Order = 3,
                        Url = "/Members/CheckOut/"
                    }
                }
            });

            menu.Add(new UserMenuitem
            {
                Name = "Invoicing",
                DisplayName = "Invoicing",
                Order = 4,
                Url = "/Invoicing/GenerateInvoice/",
                Items = new List<UserMenuitem>()
                {
                    new UserMenuitem
                    {
                        Name = "GenerateInvoice",
                        DisplayName = "Generate Invoice",
                        Order = 0,
                        Url = "/Invoicing/GenerateInvoice/"
                    }
                }
            });

            menu.Add(new UserMenuitem
            {
                Name = "Reports",
                DisplayName = "Reports",
                Order = 5,
                Url = "#",
                Items = new List<UserMenuitem>()
                {
                    new UserMenuitem
                    {
                        Name = "NewMembersReport",
                        DisplayName = "New Members",
                        Order = 0,
                        Url = "/Reports/NewMembers/"
                    },
                    new UserMenuitem
                    {
                        Name = "AttendanceReport",
                        DisplayName = "Attendance",
                        Order = 1,
                        Url = "/Reports/Attendance/"
                    },
                    new UserMenuitem
                    {
                        Name = "MembershipRenewalReport",
                        DisplayName = "Membership Renewal",
                        Order = 2,
                        Url = "/Reports/MembershipRenewal/"
                    }
                }
            });

            return menu;
        }
    }
}
