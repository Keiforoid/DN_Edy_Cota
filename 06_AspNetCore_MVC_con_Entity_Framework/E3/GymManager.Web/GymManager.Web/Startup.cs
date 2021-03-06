using GymManager.ApplicationServices.Assistances;
using GymManager.ApplicationServices.AssistanceTypes;
using GymManager.ApplicationServices.EquipmentTypes;
using GymManager.ApplicationServices.Members;
using GymManager.ApplicationServices.MembershipTypes;
using GymManager.ApplicationServices.Navigation;
using GymManager.Core.Assists;
using GymManager.Core.EquipmentTypes;
using GymManager.Core.Members;
using GymManager.Core.MembershipTypes;
using GymManager.DataAccess;
using GymManager.DataAccess.Repositories;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.AspNetCore.Localization;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Serilog;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading.Tasks;
using Wkhtmltopdf.NetCore;

namespace GymManager.Web
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        // For more information on how to configure your application, visit https://go.microsoft.com/fwlink/?LinkID=398940
        public void ConfigureServices(IServiceCollection services)
        {
            //Serilog service
            services.AddSingleton((ILogger)new LoggerConfiguration()
                .MinimumLevel.Information()
                .WriteTo.File("wwwroot/Serilogs.txt")
                .CreateLogger());

            string connectionString = Configuration.GetConnectionString("Default");

            services.AddDbContext<GymManagerContext>(options =>
                options.UseMySql(connectionString, ServerVersion.AutoDetect(connectionString)));

            services.AddDefaultIdentity<IdentityUser>(options => options.SignIn.RequireConfirmedAccount = true)
                .AddEntityFrameworkStores<GymManagerContext>()
                .AddUserStore<UserStore<IdentityUser, IdentityRole, GymManagerContext>>();

            services.ConfigureApplicationCookie(options => options.LoginPath = "/Account/LogIn");

            services.AddControllersWithViews()
                .AddRazorRuntimeCompilation();

            //Services
            services.AddTransient<IAssistanceAppService, AssistanceAppService>();
            services.AddTransient<IAssistanceTypeAppService, AssistanceTypeAppService>();
            services.AddTransient<IMemberAppService, MembersAppService>();
            services.AddTransient<IMembershipTypeAppService, MembershipTypeAppService>();
            services.AddTransient<IEquipmentTypeAppService, EquipmentTypeAppService>();
            services.AddTransient<IMenuAppService, MenuAppService>();
            

            //Repositories
            services.AddTransient<IRepository<int, Member>, MembersRepository>();
            services.AddTransient<IRepository<int, MembershipType>, MembershipTypesRepository>();
            services.AddTransient<IRepository<int, EquipmentType>, EquipmentTypeRepository>();
            services.AddTransient<IRepository<int, Assistance>, AssistanceRepository>();
            services.AddTransient<IRepository<int, AssistanceType>, AssistanceTypeRepository>();

            services.AddWkhtmltopdf();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            var defaultDateCulture = "es-MX";
            var ci = new CultureInfo(defaultDateCulture);

            app.UseRequestLocalization(new RequestLocalizationOptions { 
                DefaultRequestCulture = new RequestCulture(ci),
                SupportedCultures = new List<CultureInfo>
                { 
                    ci,
                },
                SupportedUICultures = new List<CultureInfo>
                { 
                    ci,
                }
            });

            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            app.UseRouting();

            app.UseStaticFiles();

            app.UseAuthentication();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute("default", "{controller=Home}/{action=Index}/{id?}");
            });
        }
    }
}
