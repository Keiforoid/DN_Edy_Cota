using GymManager.Core.Assists;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GymManager.ApplicationServices.AssistanceTypes
{
    public interface IAssistanceTypeAppService
    {
        Task<List<AssistanceType>> GetAssistancesAsync();

        Task<int> AddAssistanceAsync(AssistanceType assistanceType);

        Task DeleteAssistanceAsync(int assistanceTypeId);

        Task<AssistanceType> GetAssistanceAsync(int assistanceTypeId);

        Task EditAssistanceAsync(AssistanceType assistanceType);
    }
}
