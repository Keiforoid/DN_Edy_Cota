using GymManager.ApplicationServices.Members;
using GymManager.Core.Members;
using GymManager.Web.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GymManager.Web.Controllers
{
    public class MembersController : Controller
    {
        private readonly IMemberAppService _memberAppService;
        public MembersController(IMemberAppService memberAppService)
        {
            _memberAppService = memberAppService;
        }

        public IActionResult Index()
        {
            List<Member> members = _memberAppService.GetMembers();

            MemberListViewModel viewModel = new MemberListViewModel();

            viewModel.NewMembersCount = 2;
            viewModel.Members = members;

            return View(viewModel);
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Create(Member member)
        {
            _memberAppService.AddMember(member);


            return  RedirectToAction("Index");
        }

        public IActionResult Delete(int memberId)
        {
            _memberAppService.DeleteMember(memberId);

            return RedirectToAction("Index");
        }

        public IActionResult Edit(int memberId)
        {
            Member member = _memberAppService.GetMember(memberId);

            return View(member);
        }

        [HttpPost]
        public IActionResult Edit(Member member)
        {
            _memberAppService.EditMember(member);


            return RedirectToAction("Index");
        }

        public IActionResult Test()
        {
            return View();
        }
    }
}
