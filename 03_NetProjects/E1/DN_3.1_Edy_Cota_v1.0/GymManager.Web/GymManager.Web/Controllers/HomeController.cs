using GymManager.ApplicationServices.Members;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GymManager.Web.Controllers
{
    public class HomeController : Controller
    {
        private readonly IMemberAppService _memberAppService;
        public HomeController(IMemberAppService memberAppService)
        {
            _memberAppService = memberAppService;
        }
        public IActionResult Index()
        {
            var members = _memberAppService.GetMembers();

            return View(members);
        }
    }
}
