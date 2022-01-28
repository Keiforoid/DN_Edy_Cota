using GymManager.ApplicationServices.MembershipTypes;
using GymManager.Core.MembershipTypes;
using GymManager.Web.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GymManager.Web.Controllers
{
    public class MembershipTypesController : Controller
    {
        private readonly IMembershipTypeAppService _membershipTypeAppService;
        public MembershipTypesController(IMembershipTypeAppService membershipTypeAppService)
        {
            _membershipTypeAppService = membershipTypeAppService;
        }

        public IActionResult Index()
        {
            List<MembershipType> membershipTypes = _membershipTypeAppService.GetMembershipTypes();

            MembershipTypeListViewModel viewModel = new MembershipTypeListViewModel();

            viewModel.NewMembershipTypesCount = membershipTypes.Count;
            viewModel.MembershipTypes = membershipTypes;

            return View(viewModel);
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Create(MembershipType membershipType)
        {
            _membershipTypeAppService.AddMembershipType(membershipType);

            return RedirectToAction("Index");
        }

        public IActionResult Delete(int membershipTypeId)
        {
            _membershipTypeAppService.DeleteMembershipType(membershipTypeId);

            return RedirectToAction("Index");
        }

        public IActionResult Edit(int membershipTypeId)
        {
            MembershipType membershipType = _membershipTypeAppService.GetMembershipType(membershipTypeId);

            return View(membershipType);
        }

        [HttpPost]
        public IActionResult Edit(MembershipType membershipType)
        {
            _membershipTypeAppService.EditMembershipType(membershipType);

            return RedirectToAction("Index");
        }
    }
}
