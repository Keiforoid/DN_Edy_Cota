using GymManager.ApplicationServices.Assistances;
using GymManager.ApplicationServices.AssistanceTypes;
using GymManager.ApplicationServices.Members;
using GymManager.Core.Assists;
using GymManager.Core.Members;
using GymManager.Core.MembershipTypes;
using GymManager.Web.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Serilog;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GymManager.Web.Controllers
{
    [Authorize]
    public class MembersController : Controller
    {
        private readonly IMemberAppService _membersAppService;
        private readonly IAssistanceAppService _assistanceAppService;
        private readonly IAssistanceTypeAppService _assistanceTypeAppService;
        ILogger _logger;

        public MembersController(IMemberAppService membersAppService, ILogger logger,
            IAssistanceTypeAppService assistanceTypeAppService,
            IAssistanceAppService assistanceAppService)
        {
            _assistanceTypeAppService = assistanceTypeAppService;
            _assistanceAppService = assistanceAppService;
            _membersAppService = membersAppService;
            _logger = logger;
        }

        public async Task<IActionResult> Index()
        {

            List<Member> members = await _membersAppService.GetMembersAsync();

            MemberListViewModel viewModel = new MemberListViewModel();

            viewModel.NewMembersCount = 2;
            viewModel.Members = members;

            _logger.Information("Index in Members executed");

            return View(viewModel);
        }

        public IActionResult Create()
        {
            return View();
        }

        public async Task<IActionResult> Delete(int memberId)
        {
            await _membersAppService.DeleteMemberAsync(memberId);
            return RedirectToAction("Index");
        }

        public async Task<IActionResult> Edit(int memberId)
        {

            Member member = await _membersAppService.GetMemberAsync(memberId);

            MemberViewModel viewModel = new MemberViewModel
            {
                AllowNewsLetter = member.AllowNewsLetter,
                BirthDay = member.BirthDay,
                CityId = member.City.Id,
                Email = member.Email,
                Id = member.Id,
                LastName = member.LastName,
                Name = member.Name
            };

            return View(viewModel);
        }

        [HttpPost]
        public async Task<IActionResult> Create(MemberViewModel viewModel)
        {
            Member member = new Member
            {
                Name = viewModel.Name,
                LastName = viewModel.LastName,
                Email = viewModel.Email,
                City = new City
                {
                    Id = viewModel.CityId
                },
                BirthDay = viewModel.BirthDay,
                AllowNewsLetter = viewModel.AllowNewsLetter,
                MembershipType = new MembershipType
                {
                    Id = viewModel.MembershipTypeId
                },
                LastMembership = DateTime.Now,
                CreatedOn = DateTime.Now
            };

            await _membersAppService.AddMemberAsync(member);
            return RedirectToAction("Index");
        }

        [HttpPost]
        public async Task<IActionResult> Edit(Member member)
        {
            await _membersAppService.EditMemberAsync(member);
            return RedirectToAction("Index");
        }

        public IActionResult Test()
        {
            return View();
        }

        

        public IActionResult CheckIn()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> CheckIn(AttendanceViewModel viewModel)
        {
            var member = await _membersAppService.GetMemberAsync(viewModel.MemberId);
            var asistanceType = await _assistanceTypeAppService.GetAssistanceAsync(1);

            if (member == null)
            {
                viewModel.MemberFound = false;

                return View(viewModel);
            }

            Assistance assistance = new Assistance
            {
                DateTime = DateTime.Now,
                Member = member,
                AssitanceType = asistanceType
            };

            await _assistanceAppService.AddAssistanceAsync(assistance);

            return View();
        }

        public IActionResult CheckOut()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> CheckOut(AttendanceViewModel viewModel)
        {
            var member = await _membersAppService.GetMemberAsync(viewModel.MemberId);
            var asistanceType = await _assistanceTypeAppService.GetAssistanceAsync(2);

            if (member == null)
            {
                viewModel.MemberFound = false;

                return View(viewModel);
            }

            Assistance assistance = new Assistance
            {
                DateTime = DateTime.Now,
                Member = member,
                AssitanceType = asistanceType
            };

            await _assistanceAppService.AddAssistanceAsync(assistance);

            return View();
        }
    }
}
