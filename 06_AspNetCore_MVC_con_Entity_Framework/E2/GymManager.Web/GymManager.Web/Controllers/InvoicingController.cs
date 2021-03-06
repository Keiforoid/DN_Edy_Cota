using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Wkhtmltopdf.NetCore;

namespace GymManager.Web.Controllers
{
    [Authorize]
    public class InvoicingController : Controller
    {
        private readonly IGeneratePdf _generatePdf;


        public InvoicingController(IGeneratePdf generatedPdf)
        {
            _generatePdf = generatedPdf;
        }


        public IActionResult Index()
        {
            return View();
        }

        public IActionResult GenerateInvoice()
        {
            return View();
        }

        public async Task<IActionResult> Print()
        {
            return await _generatePdf.GetPdf("/Views/Invoicing/_PrintView.cshtml");


            // return View();


        }
    }
}
