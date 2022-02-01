using GymManager.ApplicationServices.EquipmentTypes;
using GymManager.Core.EquipmentTypes;
using GymManager.Web.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GymManager.Web.Controllers
{
    public class EquipmentTypesController : Controller
    {
        private readonly IEquipmentTypeAppService _equipmentTypeAppService;

        public EquipmentTypesController(IEquipmentTypeAppService membersAppService)
        {
            _equipmentTypeAppService = membersAppService;
        }

        public async Task<IActionResult> Index()
        {

            List<EquipmentType> equipmentTypes = await _equipmentTypeAppService.GetEquipmentTypesAsync();

            EquipmentTypeListViewModel viewModel = new EquipmentTypeListViewModel();

            viewModel.NewEquipmentTypesCount = 2;
            viewModel.EquipmentTypes = equipmentTypes;

            return View(viewModel);
        }

        public IActionResult Create()
        {
            return View();
        }

        public async Task<IActionResult> Delete(int equipmentTypeId)
        {
            await _equipmentTypeAppService.DeleteEquipmentTypeAsync(equipmentTypeId);
            return RedirectToAction("Index");
        }

        public async Task<IActionResult> Edit(int equipmentTypeId)
        {

            EquipmentType equipmentType = await _equipmentTypeAppService.GetEquipmentTypeAsync(equipmentTypeId);

            EquipmentTypeViewModel viewModel = new EquipmentTypeViewModel
            {
                Id = equipmentType.Id,
                Name = equipmentType.Name,
                Description = equipmentType.Description
            };

            return View(viewModel);
        }

        [HttpPost]
        public async Task<IActionResult> Create(EquipmentTypeViewModel viewModel)
        {
            EquipmentType equipmentType = new EquipmentType
            {
                Name = viewModel.Name,
                Description = viewModel.Description
            };

            await _equipmentTypeAppService.AddEquipmentTypeAsync(equipmentType);
            return RedirectToAction("Index");
        }

        [HttpPost]
        public async Task<IActionResult> Edit(EquipmentType equipmentType)
        {
            await _equipmentTypeAppService.EditEquipmentTypeAsync(equipmentType);
            return RedirectToAction("Index");
        }

        public IActionResult Test()
        {
            return View();
        }
    }
}
