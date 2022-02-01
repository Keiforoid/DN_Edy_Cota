using GymManager.ApplicationServices.Members;
using GymManager.ApplicationServices.MembershipTypes;
using GymManager.Core.Members;
using GymManager.Core.MembershipTypes;
using GymManager.Web.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GymManager.Web.Controllers
{
    public class MembershipController : Controller
    {

        private readonly IMemberAppService _membersAppService;
        private readonly IMembershipTypeAppService _membershipTypesAppService;

        public MembershipController(IMemberAppService membersAppService, IMembershipTypeAppService membershipTypesAppService)
        {
            _membershipTypesAppService = membershipTypesAppService;
            _membersAppService = membersAppService;
        }
        

        [HttpPost]
        public async Task<IActionResult> Renewal(string searchString)
        {
            List<Member> members = await _membersAppService.GetMembersAsync(searchString);

            MemberListViewModel viewModel = new MemberListViewModel();

            viewModel.Members = members;

            return View(viewModel);
        }

        public async Task<IActionResult> Renewal()
        {
            List<Member> members = await _membersAppService.GetMembersAsync();

            MemberListViewModel viewModel = new MemberListViewModel();

            viewModel.Members = members;

            return View(viewModel);
        }

        public async Task<IActionResult> RenewMembership(int memberId)
        {
            Member member = await _membersAppService.GetMemberAsync(memberId);
            List<MembershipType> membershipTypes = await _membershipTypesAppService.GetMembershipTypesAsync();

            ActualMembershipViewModel viewModel = new ActualMembershipViewModel
            {
                IdMember = memberId,
                Member = member,
                MembershipTypes = membershipTypes
            };

            return View(viewModel);
        }

        [HttpPost]
        public async Task<IActionResult> RenewMembership(ActualMembershipViewModel renewalViewModel)
        {
            Member member = await _membersAppService.GetMemberAsync(renewalViewModel.IdMember);
            MembershipType membershipType = await _membershipTypesAppService.GetMembershipTypeAsync(renewalViewModel.IdMembershipType);
            
            member.MembershipType = membershipType;
            membershipType.Members.Add(member);
            member.LastMembership = DateTime.Now;

            await _membersAppService.EditMemberAsync(member);
            await _membershipTypesAppService.EditMembershipTypeAsync(membershipType);
            return RedirectToAction("Renewal");
        }
    }
}
