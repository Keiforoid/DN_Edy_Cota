using GymManager.DataAccess.Reports;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Reporting.NETCore;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Wkhtmltopdf.NetCore;

namespace GymManager.Web.Controllers
{
    public class ReportsController : Controller
    {
        private readonly IGeneratePdf _generatePdf;
        private readonly IWebHostEnvironment _enviroment;

        public ReportsController(IWebHostEnvironment enviroment, IGeneratePdf generatePdf)
        {
            _generatePdf = generatePdf;
            _enviroment = enviroment;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult NewMembers()
        {
            string path = System.IO.Path.Combine(_enviroment.ContentRootPath, "Reports\\NewMembers.rdlc");
            Stream reportDefinition = System.IO.File.OpenRead(path);

            LocalReport report = new LocalReport();
            report.EnableExternalImages = true;
            report.LoadReportDefinition(reportDefinition);

            MembersDataSet dataSet = new MembersDataSet();
            Random random = new Random();

            string[] membershipTypes = new string[] { "Basic", "Family", "Gold" };

            for (int i = 0; i < 28; i++)
            {
                MembersDataSet.MemberRow row = dataSet.Member.NewMemberRow();
                
                
                int day = random.Next(1, 10) * -1;
                int membershipIndex = random.Next(0, 2);

                row.Name = $"Member Pérez {i}";
                row.RegisteredOn = DateTime.Today.AddDays(day);
                row.MembershipType = membershipTypes[membershipIndex];

                dataSet.Member.Rows.Add(row);
            }

            byte[] streamBytes = null;
            string mimeType = "";
            string encoding = "";
            string filenameExtension = "pdf";
            string reportName = "NewMembers";
            string[] streamids = null;
            Warning[] warnings = null;

            report.SetParameters(new ReportParameter[] { 
                new ReportParameter("DateFrom", DateTime.Today.AddDays(-10).ToString()),
                new ReportParameter("DateTo", DateTime.Today.ToString())
            });

            report.DataSources.Add(new ReportDataSource("Members", (System.Data.DataTable)dataSet.Member));

            streamBytes = report.Render("PDF", null, out mimeType, out encoding, out filenameExtension, out streamids, out warnings);

            return File(streamBytes, mimeType, $"{reportName}.{filenameExtension}");
        }
    }
}
