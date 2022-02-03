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

        //MembershipType _membershipType = new MembershipType
        //{
        //Name = membershipType.Name,
        //    Cost = membershipType.Cost,
        //    Duration = membershipType.Duration,
        //    CreatedOn = DateTime.Now
        //};

        private readonly IMembershipTypeAppService _membershipTypeAppService;
        public MembershipTypesController(IMembershipTypeAppService membershipTypeAppService)
        {
            _membershipTypeAppService = membershipTypeAppService;
        }

        public async Task<IActionResult> Index()
        {

            List<MembershipType> membershipTypes = await _membershipTypeAppService.GetMembershipTypesAsync();

            MembershipTypeListViewModel viewModel = new MembershipTypeListViewModel();

            viewModel.NewMembershipTypesCount = 2;
            viewModel.MembershipTypes = membershipTypes;

            return View(viewModel);
        }

        public IActionResult Create()
        {
            return View();
        }

        public async Task<IActionResult> Delete(int membershipTypeId)
        {
            await _membershipTypeAppService.DeleteMembershipTypeAsync(membershipTypeId);
            return RedirectToAction("Index");
        }

        public async Task<IActionResult> Edit(int membershipTypeId)
        {

            MembershipType membershipType = await _membershipTypeAppService.GetMembershipTypeAsync(membershipTypeId);

            MembershipTypeViewModel viewModel = new MembershipTypeViewModel
            {
                Id = membershipType.Id,
                Name = membershipType.Name,
                Cost = membershipType.Cost,
                Duration = membershipType.Duration,
                CreatedOn = DateTime.Now
            };

            return View(viewModel);
        }

        [HttpPost]
        public async Task<IActionResult> Create(MembershipTypeViewModel viewModel)
        {
            MembershipType membershipType = new MembershipType
            {
                Name = viewModel.Name,
                Cost = viewModel.Cost,
                Duration = viewModel.Duration,
                CreatedOn = DateTime.Now
            };

            await _membershipTypeAppService.AddMembershipTypeAsync(membershipType);
            return RedirectToAction("Index");
        }

        [HttpPost]
        public async Task<IActionResult> Edit(MembershipType membershipType)
        {
            await _membershipTypeAppService.EditMembershipTypeAsync(membershipType);
            return RedirectToAction("Index");
        }

        public IActionResult Test()
        {
            return View();
        }
    }
}
