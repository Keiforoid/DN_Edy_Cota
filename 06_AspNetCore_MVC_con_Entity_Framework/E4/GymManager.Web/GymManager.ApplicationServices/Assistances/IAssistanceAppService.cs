using GymManager.Core.Assists;
using GymManager.DataAccess.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GymManager.ApplicationServices.Assistances
{
    public interface IAssistanceAppService
    {
        Task<List<Assistance>> GetAssistancesAsync();

        Task<int> AddAssistanceAsync(Assistance assistance);

        Task DeleteAssistanceAsync(int assistanceId);

        Task<Assistance> GetAssistanceAsync(int assistanceId);

        Task EditAssistanceAsync(Assistance assistance);
    }
}
